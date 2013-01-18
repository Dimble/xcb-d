#!/usr/bin/env python
from xml.etree.cElementTree import *
from os.path import basename
from functools import reduce
import getopt
import sys
import re

# Jump to the bottom of this file for the main routine

# Mar 2012, Keith Johnson
# This was converted from c_client.py that was copied from libxcb 1.8.1
# - There is likely some leftover code that is only needed for .c files.
# - The comments should use D's documentation format.
# - Some of the consts should (probably) have a type other than int.
# - Enums are not handled well. (name collisions, should determine the type)

_module_location = 'interim.xcb'

_d_keywords = {'default' : '_default',
               'class' : '_class',
               'new'   : '_new',
               'delete': '_delete'}
#              'version': '_version',

_d_type_names = { 'uint8_t' : 'ubyte',
                  'uint16_t': 'ushort',
                  'uint32_t': 'uint',
                  'int8_t'  : 'byte',
                  'int16_t' : 'short',
                  'int32_t' : 'int',
                  'char'    : 'char',
                  'float'   : 'float',
                  'double'  : 'double',
                  'void'    : 'void',
                  'unsigned int' : 'uint'
                }

# Some hacks to make the API more readable, and to keep backwards compability
_cname_re = re.compile('([A-Z0-9][a-z]+|[A-Z0-9]+(?![a-z])|[a-z]+)')
_cname_special_cases = {'DECnet':'decnet'}
_extension_special_cases = ['XPrint', 'XCMisc', 'BigRequests']

_dlines = []
_dlevel = 0
_ns = None

# global variable to keep track of serializers and 
# switch data types due to weird dependencies
finished_serializers = []
finished_sizeof = []
finished_switch = []

def _d(fmt, *args):
    '''
    Writes the given line to the header file.
    '''
    _dlines[_dlevel].append(fmt % args)
    
# XXX See if this level thing is really necessary.
def _d_setlevel(idx):
    '''
    Changes the array that header lines are written to.
    Supports writing different sections of the header file.
    '''
    global _dlevel
    while len(_dlines) <= idx:
        _dlines.append([])
    _dlevel = idx

def _d_reserved(str):
    '''
    Checks for certain D reserved words and fixes them.
    '''
    if str in _d_keywords:
        return _d_keywords[str]
    else:
        return str

def _d_type_name(name):
    '''
    Checks for certain type names and uses the D linkable equivalent.
    '''
    if name in _d_type_names:
        return _d_type_names[name]
    else:
        return name
    
def _n_item(str):
    '''
    Does C-name conversion on a single string fragment.
    Uses a regexp with some hard-coded special cases.
    '''
    if str in _cname_special_cases:
        return _cname_special_cases[str]
    else:
        split = _cname_re.finditer(str)
        name_parts = [match.group(0) for match in split]
        return '_'.join(name_parts)

def _ext(str):
    '''
    Does C-name conversion on an extension name.
    Has some additional special cases on top of _n_item.
    '''
    if str in _extension_special_cases:
        return _n_item(str).lower()
    else:
        return str.lower()

def _n(list):
    '''
    Does C-name conversion on a tuple of strings.
    Different behavior depending on length of tuple, extension/not extension, etc.
    Basically C-name converts the individual pieces, then joins with underscores.
    '''
    if len(list) == 1:
        parts = list
    elif len(list) == 2:
        parts = [list[0], _n_item(list[1])]
    elif _ns.is_ext:
        parts = [list[0], _ext(list[1])] + [_n_item(i) for i in list[2:]]
    else:
        parts = [list[0]] + [_n_item(i) for i in list[1:]]
    return '_'.join(parts).lower()

def _N_item(str):
    '''
    CamelCase version of _n_item.
    XXX probably should capitalize() each part just in case
    '''
    if str in _cname_special_cases:
        return _cname_special_cases[str]
    else:
        split = _cname_re.finditer(str)
        name_parts = [match.group(0) for match in split]
        return ''.join(name_parts)

def _N(list):
    '''
    CamelCase version of _n.
    Currently used for enum names to (poorly) avoid collisions.
    '''
    if len(list) == 1:
        parts = list
    elif len(list) == 2:
        parts = [list[0].capitalize(), _N_item(list[1])]
    elif _ns.is_ext:
        parts = [list[0].capitalize(), _ext(list[1]).capitalize()] + [_N_item(i) for i in list[2:]]
    else:
        parts = [list[0].capitalize()] + [_N_item(i) for i in list[1:]]
    return ''.join(parts)

def _t(list):
    '''
    Does C-name conversion on a tuple of strings representing a type.
    Same as _n but adds a "_t" on the end.
    '''
    if len(list) == 1:
        parts = list
    elif len(list) == 2:
        parts = [list[0], _n_item(list[1]), 't']
    elif _ns.is_ext:
        parts = [list[0], _ext(list[1])] + [_n_item(i) for i in list[2:]] + ['t']
    else:
        parts = [list[0]] + [_n_item(i) for i in list[1:]] + ['t']
    return '_'.join(parts).lower()
        

def d_open(self):
    '''
    Exported function that handles module open.
    Opens the files and writes out the auto-generated comment, header file includes, etc.
    '''
    global _ns
    _ns = self.namespace
    _ns.c_ext_global_name = _n(_ns.prefix + ('id',))

    # Build the type-name collision avoidance table used by d_enum
    build_collision_table()

    _d_setlevel(0)

    _d('/*')
    _d(' * This file generated automatically from %s by d_client.py.', _ns.file)
    _d(' * Edit at your peril.')
    _d(' */')
    _d('')

    _d('/**')
    _d(' * @defgroup XCB_%s_API XCB %s API', _ns.ext_name, _ns.ext_name)
    _d(' * @brief %s XCB Protocol Implementation.', _ns.ext_name)
    _d(' * @{')
    _d(' **/')
    _d('')
    _d('module %s.%s;', _module_location, _ns.header.lower())
    _d('')
    if _ns.header != 'xcb':
        _d('import %s.xcb;', _module_location)

    if _ns.is_ext:
        for (n, h) in self.imports:
            _d('import %s.%s;', _module_location, h)

    if _ns.is_ext:
        _d('')
        _d('const int XCB_%s_MAJOR_VERSION = %s;', _ns.ext_name.upper(), _ns.major_version)
        _d('const int XCB_%s_MINOR_VERSION = %s;', _ns.ext_name.upper(), _ns.minor_version)
        _d('  ') #XXX
        _d('extern(C) xcb_extension_t %s;', _ns.c_ext_global_name)

def d_close(self):
    '''
    Exported function that handles module close.
    Writes out all the stored content lines, then closes the files.
    '''
    _d_setlevel(2)
    _d('')
    _d('/**')
    _d(' * @}')
    _d(' */')

    # Write header file
    dfile = open('xcb/%s.d' % _ns.header, 'w')
    for list in _dlines:
        for line in list:
            dfile.write(line)
            dfile.write('\n')
    dfile.close()

def build_collision_table():
    global namecount
    namecount = {}

    for v in module.types.values():
        name = _t(v[0])
        namecount[name] = (namecount.get(name) or 0) + 1

_d_enum_types = { 'XcbCirculate' : 'ubyte',
                  'XcbWindowClass' : 'ubyte',
                  'XcbModMask'     : 'ushort',
                  'XcbKeyButMask'  : 'ushort'
                }

# XXX possibly determine the type by looking through the structs for fields
#     linked to the enum rather than using hardcoded types
def _d_enum_name(name):
    name = _N(name)

    if name in _d_enum_types:
        _d('enum %s : %s {', name, _d_enum_types[name])
    else:
        _d('enum %s {', name)

def d_enum(self, name):
    '''
    Exported function that handles enum declarations.
    '''

    tname = _t(name)
    if namecount[tname] > 1:
        tname = _t(name + ('enum',))

    _d_setlevel(0)
    _d('')
    _d_enum_name(name);

    count = len(self.values)

    maxnamelen = 0
    for (enam, eval) in self.values:
        if eval:
            valuename = _n_item(enam)
            valuename = ('N' + valuename) if valuename.isdigit() else valuename
            maxnamelen = max(maxnamelen, len(valuename))

    count = len(self.values)
    for (enam, eval) in self.values:
        count = count - 1
        comma = ',' if count > 0 else ''
        valuename = _n_item(enam).upper();
        valuename = ('N' + valuename) if valuename.isdigit() else valuename
        if eval:
            spacing = ' ' * (maxnamelen - len(valuename))
            _d('    %s%s = %s%s', valuename, spacing, eval, comma)
        else:
            _d('    %s%s', valuename, comma)
    _d('}')
    _d('alias %s %s;', _N(name), tname)

#    tname = _t(name)
#    if namecount[tname] > 1:
#        tname = _t(name + ('enum',))
#    _d_enum_type(tname)
#        equals = ' = ' if eval != '' else ''
#        _d('    %s%s%s%s', _n(name + (enam,)).upper(), equals, eval, comma)

def _c_type_setup(self, name, postfix):
    '''
    Sets up all the C-related state by adding additional data fields to
    all Field and Type objects.  Here is where we figure out most of our
    variable and function names.

    Recurses into child fields and list member types.
    '''
    # Do all the various names in advance
    self.c_type = _t(name + postfix)
    self.c_wiretype = 'char' if self.c_type == 'void' else self.c_type

    self.c_iterator_type = _t(name + ('iterator',))
    self.c_next_name = _n(name + ('next',))
    self.c_end_name = _n(name + ('end',))

    self.c_request_name = _n(name)
    self.c_checked_name = _n(name + ('checked',))
    self.c_unchecked_name = _n(name + ('unchecked',))
    self.c_reply_name = _n(name + ('reply',))
    self.c_reply_type = _t(name + ('reply',))
    self.c_cookie_type = _t(name + ('cookie',))

    self.need_aux = False
    self.need_serialize = False
    self.need_sizeof = False

    self.c_aux_name = _n(name + ('aux',))
    self.c_aux_checked_name = _n(name + ('aux', 'checked'))
    self.c_aux_unchecked_name = _n(name + ('aux', 'unchecked'))
    self.c_serialize_name = _n(name + ('serialize',))
    self.c_unserialize_name = _n(name + ('unserialize',))
    self.c_unpack_name = _n(name + ('unpack',))
    self.c_sizeof_name = _n(name + ('sizeof',))

    # special case: structs where variable size fields are followed by fixed size fields
    self.var_followed_by_fixed_fields = False

    if self.is_switch:
        self.need_serialize = True
        self.c_container = 'struct'
        for bitcase in self.bitcases:
            bitcase.c_field_name = _d_reserved(bitcase.field_name)
            bitcase_name = bitcase.field_type if bitcase.type.has_name else name
            _c_type_setup(bitcase.type, bitcase_name, ())

    elif self.is_container:

        self.c_container = 'union' if self.is_union else 'struct'
        prev_varsized_field = None
        prev_varsized_offset = 0
        first_field_after_varsized = None

        for field in self.fields:
            _c_type_setup(field.type, field.field_type, ())
            if field.type.is_list:
                _c_type_setup(field.type.member, field.field_type, ())
                if (field.type.nmemb is None): 
                    self.need_sizeof = True

            field.c_field_type = _t(field.field_type)
            field.c_field_type = _d_type_name(field.c_field_type)
            field.c_field_const_type = ('' if field.type.nmemb == 1 else 'const ') + field.c_field_type
            field.c_field_name = _d_reserved(field.field_name)
            field.c_subscript = '[%d]' % field.type.nmemb if (field.type.nmemb and field.type.nmemb > 1) else ''
            field.c_pointer = ' ' if field.type.nmemb == 1 else '*'

            # correct the c_pointer field for variable size non-list types
            if not field.type.fixed_size() and field.c_pointer == ' ':
                field.c_pointer = '*'
            if field.type.is_list and not field.type.member.fixed_size():
                field.c_pointer = '*'

            if field.type.is_switch:
                field.c_pointer = '*'
                field.c_field_const_type = 'const ' + field.c_field_type
                self.need_aux = True
            elif not field.type.fixed_size() and not field.type.is_bitcase:
                self.need_sizeof = True

            field.c_iterator_type = _t(field.field_type + ('iterator',))      # xcb_fieldtype_iterator_t
            field.c_iterator_name = _n(name + (field.field_name, 'iterator')) # xcb_container_field_iterator
            field.c_accessor_name = _n(name + (field.field_name,))            # xcb_container_field
            field.c_length_name = _n(name + (field.field_name, 'length'))     # xcb_container_field_length
            field.c_end_name = _n(name + (field.field_name, 'end'))           # xcb_container_field_end

            field.prev_varsized_field = prev_varsized_field
            field.prev_varsized_offset = prev_varsized_offset

            if prev_varsized_offset == 0:
                first_field_after_varsized = field
            field.first_field_after_varsized = first_field_after_varsized

            if field.type.fixed_size():
                prev_varsized_offset += field.type.size
                # special case: intermixed fixed and variable size fields
                if prev_varsized_field is not None and not field.type.is_pad and field.wire:
                    if not self.is_union:
                        self.need_serialize = True
                        self.var_followed_by_fixed_fields = True
            else:
                self.last_varsized_field = field
                prev_varsized_field = field
                prev_varsized_offset = 0                    

            if self.var_followed_by_fixed_fields:
                if field.type.fixed_size():
                    field.prev_varsized_field = None
                            
    if self.need_serialize:
        # when _unserialize() is wanted, create _sizeof() as well for consistency reasons 
        self.need_sizeof = True

    # as switch does never appear at toplevel, 
    # continue here with type construction
    if self.is_switch:
        if self.c_type not in finished_switch:
            finished_switch.append(self.c_type)
            # special: switch C structs get pointer fields for variable-sized members
            _c_complex(self)
            for bitcase in self.bitcases:
                bitcase_name = bitcase.type.name if bitcase.type.has_name else name
                _c_accessors(bitcase.type, bitcase_name, bitcase_name)
                # no list with switch as element, so no call to 
                # _c_iterator(field.type, field_name) necessary

    if not self.is_bitcase:
        if self.need_serialize:
            if self.c_serialize_name not in finished_serializers:
                finished_serializers.append(self.c_serialize_name)
                _c_serialize('serialize', self)

                # _unpack() and _unserialize() are only needed for special cases:
                #   switch -> unpack
                #   special cases -> unserialize
                if self.is_switch or self.var_followed_by_fixed_fields:
                    _c_serialize('unserialize', self)
                    
        if self.need_sizeof:
            if self.c_sizeof_name not in finished_sizeof:
                if not module.namespace.is_ext or self.name[:2] == module.namespace.prefix:
                    finished_sizeof.append(self.c_sizeof_name)
                    _c_serialize('sizeof', self)
# _c_type_setup()

def _c_helper_absolute_name(prefix, field=None):
    """
    turn prefix, which is a list of tuples (name, separator, Type obj) into a string
    representing a valid name in C (based on the context)
    if field is not None, append the field name as well
    """
    prefix_str = ''
    for name, sep, obj in prefix:
        prefix_str += name
        if '' == sep:
            sep = '->'
            if ((obj.is_bitcase and obj.has_name) or     # named bitcase
                (obj.is_switch and len(obj.parents)>1)):
                sep = '.'
        prefix_str += sep
    if field is not None:
        prefix_str += _d_reserved(field.field_name)
    return prefix_str
# _c_absolute_name
    
def _c_helper_field_mapping(complex_type, prefix, flat=False):
    """
    generate absolute names, based on prefix, for all fields starting from complex_type
    if flat == True, nested complex types are not taken into account
    """
    all_fields = {}
    if complex_type.is_switch:
        for b in complex_type.bitcases:
            if b.type.has_name:
                switch_name, switch_sep, switch_type = prefix[-1]
                bitcase_prefix = prefix + [(b.type.name[-1], '.', b.type)]
            else:
                bitcase_prefix = prefix 

            if (True==flat and not b.type.has_name) or False==flat:
                all_fields.update(_c_helper_field_mapping(b.type, bitcase_prefix, flat))
    else:
        for f in complex_type.fields:
            fname = _c_helper_absolute_name(prefix, f)
            if f.field_name in all_fields:
                raise Exception("field name %s has been registered before" % f.field_name)

            all_fields[f.field_name] = (fname, f)
            if f.type.is_container and flat==False:
                if f.type.is_bitcase and not f.type.has_name:
                    new_prefix = prefix
                elif f.type.is_switch and len(f.type.parents)>1:
                    # nested switch gets another separator
                    new_prefix = prefix+[(f.c_field_name, '.', f.type)]
                else:
                    new_prefix = prefix+[(f.c_field_name, '->', f.type)]
                all_fields.update(_c_helper_field_mapping(f.type, new_prefix, flat))

    return all_fields
# _c_field_mapping()

def _c_helper_resolve_field_names (prefix):
    """
    get field names for all objects in the prefix array
    """
    all_fields = {}
    tmp_prefix = []
    # look for fields in the remaining containers
    for idx, p in enumerate(prefix):
        name, sep, obj = p
        if ''==sep:
            # sep can be preset in prefix, if not, make a sensible guess
            sep = '.' if (obj.is_switch or obj.is_bitcase) else '->'
            # exception: 'toplevel' object (switch as well!) always have sep '->'
            sep = '->' if idx<1 else sep
        if not obj.is_bitcase or (obj.is_bitcase and obj.has_name):
            tmp_prefix.append((name, sep, obj))
        all_fields.update(_c_helper_field_mapping(obj, tmp_prefix, flat=True))

    return all_fields
# _c_helper_resolve_field_names

def get_expr_fields(self):
    """
    get the Fields referenced by switch or list expression 
    """
    def get_expr_field_names(expr):
        if expr.op is None:
            if expr.lenfield_name is not None:
                return [expr.lenfield_name]
            else:
                # constant value expr
                return []
        else:
            if expr.op == '~':
                return get_expr_field_names(expr.rhs)
            elif expr.op == 'popcount':
                return get_expr_field_names(expr.rhs)
            elif expr.op == 'sumof':
                # sumof expr references another list, 
                # we need that list's length field here
                field = None
                for f in expr.lenfield_parent.fields:
                    if f.field_name == expr.lenfield_name:
                        field = f
                        break
                if field is None:
                    raise Exception("list field '%s' referenced by sumof not found" % expr.lenfield_name)
                # referenced list + its length field
                return [expr.lenfield_name] + get_expr_field_names(field.type.expr)
            elif expr.op == 'enumref':
                return []
            else:
                return get_expr_field_names(expr.lhs) + get_expr_field_names(expr.rhs)
    # get_expr_field_names()
    
    # resolve the field names with the parent structure(s)
    unresolved_fields_names = get_expr_field_names(self.expr)

    # construct prefix from self
    prefix = [('', '', p) for p in self.parents]
    if self.is_container:
        prefix.append(('', '', self))

    all_fields = _c_helper_resolve_field_names (prefix)
    resolved_fields_names = list(filter(lambda x: x in all_fields.keys(), unresolved_fields_names))
    if len(unresolved_fields_names) != len(resolved_fields_names):
        raise Exception("could not resolve all fields for %s" % self.name)
    
    resolved_fields = [all_fields[n][1] for n in resolved_fields_names]
    return resolved_fields
# get_expr_fields()

def resolve_expr_fields(complex_obj):
    """
    find expr fields appearing in complex_obj and descendents that cannot be resolved within complex_obj
    these are normally fields that need to be given as function parameters
    """
    all_fields = []
    expr_fields = []
    unresolved = []

    for field in complex_obj.fields:
        all_fields.append(field)
        if field.type.is_switch or field.type.is_list:
            expr_fields += get_expr_fields(field.type)
        if field.type.is_container:
            expr_fields += resolve_expr_fields(field.type)

    # try to resolve expr fields
    for e in expr_fields:
        if e not in all_fields and e not in unresolved:
            unresolved.append(e)
    return unresolved
# resolve_expr_fields()
            
def get_serialize_params(context, self, buffer_var='_buffer', aux_var='_aux'):
    """
    functions like _serialize(), _unserialize(), and _unpack() sometimes need additional parameters:
    E.g. in order to unpack switch, extra parameters might be needed to evaluate the switch 
    expression. This function tries to resolve all fields within a structure, and returns the 
    unresolved fields as the list of external parameters. 
    """
    def add_param(params, param):
        if param not in params:
            params.append(param)

    # collect all fields into param_fields
    param_fields = []
    wire_fields = []

    for field in self.fields:
        if field.visible:
            # the field should appear as a parameter in the function call
            param_fields.append(field)
        if field.wire and not field.auto:
            if field.type.fixed_size() and not self.is_switch:
                # field in the xcb_out structure
                wire_fields.append(field)
        # fields like 'pad0' are skipped!
               
    # in case of switch, parameters always contain any fields referenced in the switch expr
    # we do not need any variable size fields here, as the switch data type contains both 
    # fixed and variable size fields
    if self.is_switch:
        param_fields = get_expr_fields(self)

    # _serialize()/_unserialize()/_unpack() function parameters
    # note: don't use set() for params, it is unsorted
    params = []
    
    # 1. the parameter for the void * buffer
    if  'serialize' == context:
        params.append(('void', '**', buffer_var))
    elif context in ('unserialize', 'unpack', 'sizeof'):
        params.append(('const void', '*', buffer_var))

    # 2. any expr fields that cannot be resolved within self and descendants
    unresolved_fields = resolve_expr_fields(self)
    for f in unresolved_fields:
        add_param(params, (f.c_field_type, '', f.c_field_name))

    # 3. param_fields contain the fields necessary to evaluate the switch expr or any other fields
    #    that do not appear in the data type struct
    for p in param_fields:
        if self.is_switch:
            typespec = p.c_field_const_type
            pointerspec = p.c_pointer 
            add_param(params, (typespec, pointerspec, p.c_field_name))
        else:
            if p.visible and not p.wire and not p.auto:
                typespec = p.c_field_type
                pointerspec = ''
                add_param(params, (typespec, pointerspec, p.c_field_name))
  
    # 4. aux argument
    if 'serialize' == context:
        add_param(params, ('const %s' % self.c_type, '*', aux_var))
    elif 'unserialize' == context: 
        add_param(params, ('%s' % self.c_type, '**', aux_var))
    elif 'unpack' == context:
        add_param(params, ('%s' % self.c_type, '*', aux_var))

    # 5. switch contains all variable size fields as struct members
    #    for other data types though, these have to be supplied separately
    #    this is important for the special case of intermixed fixed and 
    #    variable size fields
    if not self.is_switch and 'serialize' == context:
        for p in param_fields:
            if not p.type.fixed_size():
                add_param(params, (p.c_field_const_type, '*', p.c_field_name))

    return (param_fields, wire_fields, params)
# get_serialize_params()

def _c_serialize_helper_insert_padding(context, code_lines, space, postpone):
    code_lines.append('%s    /* insert padding */' % space)
    code_lines.append('%s    xcb_pad = -xcb_block_len & (xcb_align_to - 1);' % space)
#    code_lines.append('%s    printf("automatically inserting padding: %%%%d\\n", xcb_pad);' % space)
    code_lines.append('%s    xcb_buffer_len += xcb_block_len + xcb_pad;' % space)

    if not postpone:
        code_lines.append('%s    if (0 != xcb_pad) {' % space)

        if 'serialize' == context:
            code_lines.append('%s        xcb_parts[xcb_parts_idx].iov_base = xcb_pad0;' % space)
            code_lines.append('%s        xcb_parts[xcb_parts_idx].iov_len = xcb_pad;' % space)
            code_lines.append('%s        xcb_parts_idx++;' % space)
        elif context in ('unserialize', 'unpack', 'sizeof'):
            code_lines.append('%s        xcb_tmp += xcb_pad;' % space)

        code_lines.append('%s        xcb_pad = 0;' % space)
        code_lines.append('%s    }' % space)
        
    code_lines.append('%s    xcb_block_len = 0;' % space)

    # keep tracking of xcb_parts entries for serialize
    return 1
# _c_serialize_helper_insert_padding()

def _c_serialize_helper_switch(context, self, complex_name, 
                               code_lines, temp_vars, 
                               space, prefix):
    count = 0
    switch_expr = _c_accessor_get_expr(self.expr, None)

    for b in self.bitcases:            
        bitcase_expr = _c_accessor_get_expr(b.type.expr, None)
        code_lines.append('    if(%s & %s) {' % (switch_expr, bitcase_expr))
#        code_lines.append('        printf("switch %s: entering bitcase section %s (mask=%%%%d)...\\n", %s);' % 
#                          (self.name[-1], b.type.name[-1], bitcase_expr))
        b_prefix = prefix
        if b.type.has_name:
            b_prefix = prefix + [(b.c_field_name, '.', b.type)]
            
        count += _c_serialize_helper_fields(context, b.type, 
                                            code_lines, temp_vars, 
                                            "%s    " % space, 
                                            b_prefix, 
                                            is_bitcase = True)
        code_lines.append('    }')

#    if 'serialize' == context:
#        count += _c_serialize_helper_insert_padding(context, code_lines, space, False)
#    elif context in ('unserialize', 'unpack', 'sizeof'):
#        # padding
#        code_lines.append('%s    xcb_pad = -xcb_block_len & 3;' % space)
#        code_lines.append('%s    xcb_buffer_len += xcb_block_len + xcb_pad;' % space)
   
    return count
# _c_serialize_helper_switch

def _c_serialize_helper_switch_field(context, self, field, c_switch_variable, prefix):
    """
    handle switch by calling _serialize() or _unpack(), depending on context
    """
    # switch is handled by this function as a special case
    param_fields, wire_fields, params = get_serialize_params(context, self)
    field_mapping = _c_helper_field_mapping(self, prefix)
    prefix_str = _c_helper_absolute_name(prefix)

    # find the parameters that need to be passed to _serialize()/_unpack():
    # all switch expr fields must be given as parameters
    args = get_expr_fields(field.type)
    # length fields for variable size types in switch, normally only some of need 
    # need to be passed as parameters
    switch_len_fields = resolve_expr_fields(field.type)

    # a switch field at this point _must_ be a bitcase field
    # we require that bitcases are "self-contiguous"
    bitcase_unresolved = resolve_expr_fields(self)
    if len(bitcase_unresolved) != 0:
        raise Exception('unresolved fields within bitcase is not supported at this point')

    # get the C names for the parameters  
    c_field_names = ''
    for a in switch_len_fields:
        c_field_names += "%s, " % field_mapping[a.c_field_name][0]
    for a in args:
        c_field_names += "%s, " % field_mapping[a.c_field_name][0]

    # call _serialize()/_unpack() to determine the actual size
    if 'serialize' == context:
        length = "%s(&%s, %s&%s%s)" % (field.type.c_serialize_name, c_switch_variable,
                                       c_field_names, prefix_str, field.c_field_name) 
    elif context in ('unserialize', 'unpack'):
        length = "%s(xcb_tmp, %s&%s%s)" % (field.type.c_unpack_name, 
                                           c_field_names, prefix_str, field.c_field_name)

    return length
# _c_serialize_helper_switch_field()

def _c_serialize_helper_list_field(context, self, field, 
                                   code_lines, temp_vars, 
                                   space, prefix):
    """
    helper function to cope with lists of variable length
    """
    expr = field.type.expr
    prefix_str = _c_helper_absolute_name(prefix)
    param_fields, wire_fields, params = get_serialize_params('sizeof', self)
    param_names = [p[2] for p in params]
    
    expr_fields_names = [f.field_name for f in get_expr_fields(field.type)]
    resolved = list(filter(lambda x: x in param_names, expr_fields_names))
    unresolved = list(filter(lambda x: x not in param_names, expr_fields_names))
    
    field_mapping = {}
    for r in resolved:
        field_mapping[r] = (r, None)
    
    if len(unresolved)>0:
        tmp_prefix = prefix
        if len(tmp_prefix)==0:
            raise Exception("found an empty prefix while resolving expr field names for list %s", 
                            field.c_field_name)        
        
        field_mapping.update(_c_helper_resolve_field_names(prefix))
        resolved += list(filter(lambda x: x in field_mapping, unresolved))
        unresolved = list(filter(lambda x: x not in field_mapping, unresolved))
        if len(unresolved)>0:
            raise Exception('could not resolve the length fields required for list %s' % field.c_field_name)

    list_length = _c_accessor_get_expr(expr, field_mapping)

    # default: list with fixed size elements
    length = '%s * sizeof(%s)' % (list_length, field.type.member.c_wiretype)

    # list with variable-sized elements 
    if not field.type.member.fixed_size():
        length = ''
        if context in ('unserialize', 'sizeof', 'unpack'):
            int_i = '    uint i;'
            xcb_tmp_len = '    uint xcb_tmp_len;'
            if int_i not in temp_vars:
                temp_vars.append(int_i)
            if xcb_tmp_len not in temp_vars:
                temp_vars.append(xcb_tmp_len)
            # loop over all list elements and call sizeof repeatedly
            # this should be a bit faster than using the iterators
            code_lines.append("%s    for(i=0; i<%s; i++) {" % (space, list_length))
            code_lines.append("%s        xcb_tmp_len = %s(xcb_tmp);" % 
                              (space, field.type.c_sizeof_name))
            code_lines.append("%s        xcb_block_len += xcb_tmp_len;" % space)
            code_lines.append("%s        xcb_tmp += xcb_tmp_len;" % space)
            code_lines.append("%s    }" % space)                  
      
        elif 'serialize' == context:
            code_lines.append('%s    xcb_parts[xcb_parts_idx].iov_len = 0;' % space)
            code_lines.append('%s    xcb_tmp = (char *) %s%s;' % (space, prefix_str, field.c_field_name))
            code_lines.append('%s    for(i=0; i<%s; i++) { ' % (space, list_length))
            code_lines.append('%s        xcb_block_len = %s(xcb_tmp);' % (space, field.type.c_sizeof_name))
            code_lines.append('%s        xcb_parts[xcb_parts_idx].iov_len += xcb_block_len;' % space)
            code_lines.append('%s    }' % space)
            code_lines.append('%s    xcb_block_len = xcb_parts[xcb_parts_idx].iov_len;' % space)
            
    return length
# _c_serialize_helper_list_field()

def _c_serialize_helper_fields_fixed_size(context, self, field, 
                                          code_lines, temp_vars, 
                                          space, prefix):
    # keep the C code a bit more readable by giving the field name
    if not self.is_bitcase:
        code_lines.append('%s    /* %s.%s */' % (space, self.c_type, field.c_field_name))
    else:
        scoped_name = [p[2].c_type if idx==0 else p[0] for idx, p in enumerate(prefix)]
        typename = reduce(lambda x,y: "%s.%s" % (x, y), scoped_name)
        code_lines.append('%s    /* %s.%s */' % (space, typename, field.c_field_name))

    abs_field_name = _c_helper_absolute_name(prefix, field)
    # default for simple cases: call sizeof()
    length = "sizeof(%s)" % field.c_field_type

    if context in ('unserialize', 'unpack', 'sizeof'):
        # default: simple cast
        value = '    %s = *(%s *)xcb_tmp;' % (abs_field_name, field.c_field_type) 
        
        # padding - we could probably just ignore it
        if field.type.is_pad and field.type.nmemb > 1:
            value = ''
            for i in range(field.type.nmemb):
                code_lines.append('%s    %s[%d] = *(%s *)xcb_tmp;' % 
                                  (space, abs_field_name, i, field.c_field_type)) 
            # total padding = sizeof(pad0) * nmemb
            length += " * %d" % field.type.nmemb

        if field.type.is_list:
            # no such case in the protocol, cannot be tested and therefore ignored for now
            raise Exception('list with fixed number of elemens unhandled in _unserialize()')

    elif 'serialize' == context:
        value = '    xcb_parts[xcb_parts_idx].iov_base = (char *) ' 

        if field.type.is_expr:
            # need to register a temporary variable for the expression in case we know its type
            if field.type.c_type is None:
                raise Exception("type for field '%s' (expression '%s') unkown" % 
                                (field.field_name, _c_accessor_get_expr(field.type.expr)))
            
            temp_vars.append('    %s xcb_expr_%s = %s;' % (field.type.c_type, _d_reserved(field.field_name), 
                                                           _c_accessor_get_expr(field.type.expr, prefix)))
            value += "&xcb_expr_%s;" % _d_reserved(field.field_name)

        elif field.type.is_pad:
            if field.type.nmemb == 1:
                value += "&xcb_pad;"
            else:
                # we could also set it to 0, see definition of xcb_send_request()
                value = '    xcb_parts[xcb_parts_idx].iov_base = xcb_pad0;'
                length += "*%d" % field.type.nmemb

        else:
            # non-list type with fixed size
            if field.type.nmemb == 1:
                value += "&%s;" % (abs_field_name)

            # list with nmemb (fixed size) elements
            else:
                value += '%s;' % (abs_field_name)
                length = '%d' % field.type.nmemb

    return (value, length)
# _c_serialize_helper_fields_fixed_size()

def _c_serialize_helper_fields_variable_size(context, self, field, 
                                             code_lines, temp_vars, 
                                             space, prefix):
    prefix_str = _c_helper_absolute_name(prefix)

    if context in ('unserialize', 'unpack', 'sizeof'):
        value = ''
        var_field_name = 'xcb_tmp'
        
        # special case: intermixed fixed and variable size fields
        if self.var_followed_by_fixed_fields and 'unserialize' == context:
            value = '    %s = (%s *)xcb_tmp;' % (field.c_field_name, field.c_field_type)
            temp_vars.append('    %s *%s;' % (field.type.c_type, field.c_field_name))
        # special case: switch
        if 'unpack' == context:
            value = '    %s%s = (%s *)xcb_tmp;' % (prefix_str, field.c_field_name, field.c_field_type)
            
    elif 'serialize' == context:
        # variable size fields appear as parameters to _serialize() if the 
        # 'toplevel' container is not a switch
        prefix_string = prefix_str if prefix[0][2].is_switch else ''
        var_field_name = "%s%s" % (prefix_string, field.c_field_name)
        value = '    xcb_parts[xcb_parts_idx].iov_base = (char *) %s;' % var_field_name

    length = ''

    code_lines.append('%s    /* %s */' % (space, field.c_field_name))

    if field.type.is_list:
        if value != '':
            # in any context, list is already a pointer, so the default assignment is ok
            code_lines.append("%s%s" % (space, value))
            value = ''
        length = _c_serialize_helper_list_field(context, self, field, 
                                                code_lines, temp_vars, 
                                                space, prefix)
        
    elif field.type.is_switch:
        value = ''
        if context == 'serialize':
            # the _serialize() function allocates the correct amount memory if given a NULL pointer
            value = '    xcb_parts[xcb_parts_idx].iov_base = (char *)0;'
        length = _c_serialize_helper_switch_field(context, self, field, 
                                                  'xcb_parts[xcb_parts_idx].iov_base', 
                                                  prefix)
        
    else:
        # in all remaining special cases - call _sizeof()
        length = "%s(%s)" % (field.type.c_sizeof_name, var_field_name)

    return (value, length)
# _c_serialize_helper_fields_variable_size

def _c_serialize_helper_fields(context, self, 
                               code_lines, temp_vars, 
                               space, prefix, is_bitcase):
    count = 0
    need_padding = False
    prev_field_was_variable = False

    for field in self.fields:
        if not field.visible:
            if not ((field.wire and not field.auto) or 'unserialize' == context):
                continue

        # switch/bitcase: fixed size fields must be considered explicitly 
        if field.type.fixed_size():
            if self.is_bitcase or self.var_followed_by_fixed_fields:
                if prev_field_was_variable and need_padding:
                    # insert padding
#                    count += _c_serialize_helper_insert_padding(context, code_lines, space, 
#                                                                self.var_followed_by_fixed_fields)
                    prev_field_was_variable = False

                # prefix for fixed size fields
                fixed_prefix = prefix

                value, length = _c_serialize_helper_fields_fixed_size(context, self, field, 
                                                                      code_lines, temp_vars, 
                                                                      space, fixed_prefix)
            else:
                continue

        # fields with variable size
        else:
            # switch/bitcase: always calculate padding before and after variable sized fields
            if need_padding or is_bitcase:
                count += _c_serialize_helper_insert_padding(context, code_lines, space, 
                                                            self.var_followed_by_fixed_fields)

            value, length = _c_serialize_helper_fields_variable_size(context, self, field, 
                                                                     code_lines, temp_vars, 
                                                                     space, prefix)
            prev_field_was_variable = True
        
        # save (un)serialization C code
        if '' != value:
            code_lines.append('%s%s' % (space, value))    
        
        if field.type.fixed_size():
            if is_bitcase or self.var_followed_by_fixed_fields:
                # keep track of (un)serialized object's size
                code_lines.append('%s    xcb_block_len += %s;' % (space, length))
                if context in ('unserialize', 'unpack', 'sizeof'):
                    code_lines.append('%s    xcb_tmp += %s;' % (space, length))
        else: 
            # variable size objects or bitcase:
            #   value & length might have been inserted earlier for special cases
            if '' != length:
                # special case: intermixed fixed and variable size fields
                if (not field.type.fixed_size() and 
                    self.var_followed_by_fixed_fields and 'unserialize' == context):
                    temp_vars.append('    int %s_len;' % field.c_field_name)
                    code_lines.append('%s    %s_len = %s;' % (space, field.c_field_name, length))
                    code_lines.append('%s    xcb_block_len += %s_len;' % (space, field.c_field_name))
                    code_lines.append('%s    xcb_tmp += %s_len;' % (space, field.c_field_name))
                else:
                    code_lines.append('%s    xcb_block_len += %s;' % (space, length))
                    # increase pointer into the byte stream accordingly
                    if context in ('unserialize', 'sizeof', 'unpack'):
                        code_lines.append('%s    xcb_tmp += xcb_block_len;' % space)
                        
        if 'serialize' == context:
            if '' != length:
                code_lines.append('%s    xcb_parts[xcb_parts_idx].iov_len = %s;' % (space, length))
            code_lines.append('%s    xcb_parts_idx++;' % space)
            count += 1

        code_lines.append('%s    xcb_align_to = ALIGNOF(%s);' % (space, 'char' if field.c_field_type == 'void' else field.c_field_type))

        need_padding = True
        if self.var_followed_by_fixed_fields:
            need_padding = False
        
    return count
# _c_serialize_helper_fields()    

def _c_serialize_helper(context, complex_type, 
                        code_lines, temp_vars, 
                        space='', prefix=[]):
    # count tracks the number of fields to serialize
    count = 0

    if hasattr(complex_type, 'type'):
        self = complex_type.type
        complex_name = complex_type.name
    else:
        self = complex_type
        if self.var_followed_by_fixed_fields and 'unserialize' == context:
            complex_name = 'xcb_out'
        else:
            complex_name = '_aux'
    
    # special case: switch is serialized by evaluating each bitcase separately
    if self.is_switch:
        count += _c_serialize_helper_switch(context, self, complex_name, 
                                            code_lines, temp_vars, 
                                            space, prefix)

    # all other data types can be evaluated one field a time
    else: 
        # unserialize & fixed size fields: simply cast the buffer to the respective xcb_out type
        if context in ('unserialize', 'unpack', 'sizeof') and not self.var_followed_by_fixed_fields:
            code_lines.append('%s    xcb_block_len += sizeof(%s);' % (space, self.c_type))
            code_lines.append('%s    xcb_tmp += xcb_block_len;' % space)
            # probably not needed
            #_c_serialize_helper_insert_padding(context, code_lines, space, False)

        count += _c_serialize_helper_fields(context, self, 
                                            code_lines, temp_vars, 
                                            space, prefix, False)
    # "final padding"
    count += _c_serialize_helper_insert_padding(context, code_lines, space, False)

    return count    
# _c_serialize_helper()

def _c_serialize(context, self):
    """
    depending on the context variable, generate _serialize(), _unserialize(), _unpack(), or _sizeof() 
    for the ComplexType variable self
    """
    _d_setlevel(1)

    _d('')
    # _serialize() returns the buffer size
    _d('extern(C) int')

    if self.is_switch and 'unserialize' == context:
        context = 'unpack'

    cases = { 'serialize'   : self.c_serialize_name, 
              'unserialize' : self.c_unserialize_name, 
              'unpack'      : self.c_unpack_name, 
              'sizeof'      : self.c_sizeof_name }
    func_name = cases[context]
            
    param_fields, wire_fields, params = get_serialize_params(context, self)
    variable_size_fields = 0
    # maximum space required for type definition of function arguments
    maxtypelen = 0

    # determine N(variable_fields) 
    for field in param_fields:
        # if self.is_switch, treat all fields as if they are variable sized
        if not field.type.fixed_size() or self.is_switch:
            variable_size_fields += 1
    # determine maxtypelen
    for p in params:
        maxtypelen = max(maxtypelen, len(p[0]) + len(p[1]))    

    # write to .d
    indent = ' '*(len(func_name)+2)
    param_str = []
    for p in params:
        typespec, pointerspec, field_name = p
        spacing = ' '*(maxtypelen-len(typespec)-len(pointerspec))
        param_str.append("%s%s%s  %s%s  /**< */" % (indent, typespec, spacing, pointerspec, field_name))
    # insert function name
    param_str[0] = "%s (%s" % (func_name, param_str[0].strip())
    param_str = list(map(lambda x: "%s," % x, param_str))
    for s in param_str[:-1]:
        _d(s)
    _d("%s);" % param_str[-1].rstrip(','))
    # pretty sure that everything that followed was just for .c

def _c_iterator_get_end(field, accum):
    '''
    Figures out what C code is needed to find the end of a variable-length structure field.
    For nested structures, recurses into its last variable-sized field.
    For lists, calls the end function
    '''
    if field.type.is_container:
        accum = field.c_accessor_name + '(' + accum + ')'
        return _c_iterator_get_end(field.type.last_varsized_field, accum)
    if field.type.is_list:
        # XXX we can always use the first way
        if field.type.member.is_simple:
            return field.c_end_name + '(' + accum + ')'
        else:
            return field.type.member.c_end_name + '(' + field.c_iterator_name + '(' + accum + '))'

def _c_iterator(self, name):
    '''
    Declares the iterator structure and next/end functions for a given type.
    '''
    _d_setlevel(0)
    _d('')
    _d('/**')
    _d(' * @brief %s', self.c_iterator_type)
    _d(' **/')
    _d('struct %s {', self.c_iterator_type)
    _d('    %s *data; /**<  */', self.c_type)
    _d('    int%s rem; /**<  */', ' ' * (len(self.c_type) - 2))
    _d('    int%s index; /**<  */', ' ' * (len(self.c_type) - 2))
    _d('}')

    _d_setlevel(1)
    _d('')
    _d('/**')
    _d(' * Get the next element of the iterator')
    _d(' * @param i Pointer to a %s', self.c_iterator_type)
    _d(' *')
    _d(' * Get the next element in the iterator. The member rem is')
    _d(' * decreased by one. The member data points to the next')
    _d(' * element. The member index is increased by sizeof(%s)', self.c_type)
    _d(' */')
    _d('')
    _d('/*****************************************************************************')
    _d(' **')
    _d(' ** void %s', self.c_next_name)
    _d(' ** ')
    _d(' ** @param %s *i', self.c_iterator_type)
    _d(' ** @returns void')
    _d(' **')
    _d(' *****************************************************************************/')
    _d(' ')
    _d('extern(C) void')
    _d('%s (%s *i  /**< */);', self.c_next_name, self.c_iterator_type)

    _d('')
    _d('/**')
    _d(' * Return the iterator pointing to the last element')
    _d(' * @param i An %s', self.c_iterator_type)
    _d(' * @return  The iterator pointing to the last element')
    _d(' *')
    _d(' * Set the current element in the iterator to the last element.')
    _d(' * The member rem is set to 0. The member data points to the')
    _d(' * last element.')
    _d(' */')
    _d('')
    _d('/*****************************************************************************')
    _d(' **')
    _d(' ** xcb_generic_iterator_t %s', self.c_end_name)
    _d(' ** ')
    _d(' ** @param %s i', self.c_iterator_type)
    _d(' ** @returns xcb_generic_iterator_t')
    _d(' **')
    _d(' *****************************************************************************/')
    _d(' ')
    _d('xcb_generic_iterator_t')
    _d('%s (%s i  /**< */);', self.c_end_name, self.c_iterator_type)

def _c_accessor_get_length(expr, field_mapping=None):
    '''
    Figures out what C code is needed to get a length field.
    The field_mapping parameter can be used to change the absolute name of a length field. 
    For fields that follow a variable-length field, use the accessor.
    Otherwise, just reference the structure field directly.
    '''

    lenfield_name = expr.lenfield_name
    if lenfield_name is not None:
        if field_mapping is not None:
            lenfield_name = field_mapping[lenfield_name][0]
 
    if expr.lenfield is not None and expr.lenfield.prev_varsized_field is not None:
        # special case: variable and fixed size fields are intermixed
        # if the lenfield is among the fixed size fields, there is no need
        # to call a special accessor function like <expr.lenfield.c_accessor_name + '(' + prefix + ')'>
        return field_mapping(expr.lenfield_name)
    elif expr.lenfield_name is not None:
        return lenfield_name
    else:
        return str(expr.nmemb)

def _c_accessor_get_expr(expr, field_mapping):
    '''
    Figures out what C code is needed to get the length of a list field.
    The field_mapping parameter can be used to change the absolute name of a length field. 
    Recurses for math operations.
    Returns bitcount for value-mask fields.
    Otherwise, uses the value of the length field.
    '''
    lenexp = _c_accessor_get_length(expr, field_mapping)

    if expr.op == '~':
        return '(' + '~' + _c_accessor_get_expr(expr.rhs, field_mapping) + ')'
    elif expr.op == 'popcount':
        return 'xcb_popcount(' + _c_accessor_get_expr(expr.rhs, field_mapping) + ')'
    elif expr.op == 'enumref':
        enum_name = expr.lenfield_type.name
        constant_name = expr.lenfield_name
        c_name = _n(enum_name + (constant_name,)).upper()
        return c_name
    elif expr.op == 'sumof':
        # locate the referenced list object
        list_obj = expr.lenfield_type
        field = None
        for f in expr.lenfield_parent.fields:
            if f.field_name == expr.lenfield_name:
                field = f
                break

        if field is None:
            raise Exception("list field '%s' referenced by sumof not found" % expr.lenfield_name)
        list_name = field_mapping[field.c_field_name][0]
        c_length_func = "%s(%s)" % (field.c_length_name, list_name)
        # note: xcb_sumof() has only been defined for integers
        c_length_func = _c_accessor_get_expr(field.type.expr, field_mapping)
        return 'xcb_sumof(%s, %s)' % (list_name, c_length_func)
    elif expr.op != None:
        return ('(' + _c_accessor_get_expr(expr.lhs, field_mapping) + 
                ' ' + expr.op + ' ' + 
                _c_accessor_get_expr(expr.rhs, field_mapping) + ')')
    elif expr.bitfield:
        return 'xcb_popcount(' + lenexp + ')'
    else:
        return lenexp

def type_pad_type(type):
    if type == 'void':
        return 'char'
    return type

def _c_accessors_field(self, field):
    '''
    Declares the accessor functions for a non-list field that follows a variable-length field.
    '''
    c_type = self.c_type

    # special case: switch
    switch_obj = self if self.is_switch else None
    if self.is_bitcase:
        switch_obj = self.parents[-1]
    if switch_obj is not None:
        c_type = switch_obj.c_type

    if field.type.is_simple:
        _d('')
        _d('')
        _d('/*****************************************************************************')
        _d(' ** ')
        _d(' ** %s %s', field.c_field_type, field.c_accessor_name)
        _d(' ** ')
        _d(' ** @param const %s *R', c_type)
        _d(' ** @returns %s', field.c_field_type)
        _d(' **')
        _d(' *****************************************************************************/')
        _d(' ')
        _d('%s', field.c_field_type)
        _d('%s (const %s *R  /**< */);', field.c_accessor_name, c_type)
    else:
        _d('')
        _d('')
        _d('/*****************************************************************************')
        _d(' **')
        _d(' ** %s * %s', field.c_field_type, field.c_accessor_name)
        _d(' ** ')
        _d(' ** @param const %s *R', c_type)
        _d(' ** @returns %s *', field.c_field_type)
        _d(' **')
        _d(' *****************************************************************************/')
        _d(' ')
        if field.type.is_switch and switch_obj is None:
            return_type = 'void *'
        else:
            return_type = '%s *' % field.c_field_type

        _d(return_type)
        _d('%s (const %s *R  /**< */);', field.c_accessor_name, c_type)
    
def _c_accessors_list(self, field):
    '''
    Declares the accessor functions for a list field.
    Declares a direct-accessor function only if the list members are fixed size.
    Declares length and get-iterator functions always.
    '''
    list = field.type
    c_type = self.c_type

    # special case: switch
    # in case of switch, 2 params have to be supplied to certain accessor functions:
    #   1. the anchestor object (request or reply)
    #   2. the (anchestor) switch object
    # the reason is that switch is either a child of a request/reply or nested in another switch, 
    # so whenever we need to access a length field, we might need to refer to some anchestor type
    switch_obj = self if self.is_switch else None
    if self.is_bitcase:
        switch_obj = self.parents[-1]
    if switch_obj is not None:
        c_type = switch_obj.c_type

    params = []
    fields = {}
    parents = self.parents if hasattr(self, 'parents') else [self]
    # 'R': parents[0] is always the 'toplevel' container type 
    params.append(('const %s *R' % parents[0].c_type, parents[0]))
    fields.update(_c_helper_field_mapping(parents[0], [('R', '->', parents[0])], flat=True))
    # auxiliary object for 'R' parameters
    R_obj = parents[0]

    if switch_obj is not None:
        # now look where the fields are defined that are needed to evaluate 
        # the switch expr, and store the parent objects in accessor_params and
        # the fields in switch_fields

        # 'S': name for the 'toplevel' switch
        toplevel_switch = parents[1]
        params.append(('const %s *S' % toplevel_switch.c_type, toplevel_switch))
        fields.update(_c_helper_field_mapping(toplevel_switch, [('S', '->', toplevel_switch)], flat=True))

        # initialize prefix for everything "below" S
        prefix_str = '/* %s */ S' % toplevel_switch.name[-1]
        prefix = [(prefix_str, '->', toplevel_switch)]

        # look for fields in the remaining containers
        for p in parents[2:] + [self]:
            # the separator between parent and child is always '.' here, 
            # because of nested switch statements
            if not p.is_bitcase or (p.is_bitcase and p.has_name):
                prefix.append((p.name[-1], '.', p))
            fields.update(_c_helper_field_mapping(p, prefix, flat=True))

        # auxiliary object for 'S' parameter
        S_obj = parents[1]

    _d_setlevel(1)
    if list.member.fixed_size():
        idx = 1 if switch_obj is not None else 0
        _d('')
        _d('')
        _d('/*****************************************************************************')
        _d(' **')
        _d(' ** %s * %s', field.c_field_type, field.c_accessor_name)
        _d(' ** ')
        _d(' ** @param %s', params[idx][0])
        _d(' ** @returns %s *', field.c_field_type)
        _d(' **')
        _d(' *****************************************************************************/')
        _d(' ')
        _d('%s *', field.c_field_type)

        _d('%s (%s  /**< */);', field.c_accessor_name, params[idx][0])

    _d('')
    _d('')
    _d('/*****************************************************************************')
    _d(' **')
    _d(' ** int %s', field.c_length_name)
    _d(' ** ')
    _d(' ** @param const %s *R', c_type)
    _d(' ** @returns int')
    _d(' **')
    _d(' *****************************************************************************/')
    _d(' ')
    _d('extern(C) int')
    if switch_obj is not None:
        _d('%s (const %s *R  /**< */,', field.c_length_name, R_obj.c_type)
        spacing = ' '*(len(field.c_length_name)+2)
        _d('%sconst %s *S /**< */);', spacing, S_obj.c_type)
        length = _c_accessor_get_expr(field.type.expr, fields)
    else:
        _d('%s (const %s *R  /**< */);', field.c_length_name, c_type)
        length = _c_accessor_get_expr(field.type.expr, fields)

    if field.type.member.is_simple:
        _d('')
        _d('')
        _d('/*****************************************************************************')
        _d(' **')
        _d(' ** xcb_generic_iterator_t %s', field.c_end_name)
        _d(' ** ')
        _d(' ** @param const %s *R', c_type)
        _d(' ** @returns xcb_generic_iterator_t')
        _d(' **')
        _d(' *****************************************************************************/')
        _d(' ')
        _d('extern(C) xcb_generic_iterator_t')
        if switch_obj is not None:
            _d('%s (const %s *R  /**< */,', field.c_end_name, R_obj.c_type)
            spacing = ' '*(len(field.c_end_name)+2)
            _d('%sconst %s *S /**< */);', spacing, S_obj.c_type)
        else:
            _d('%s (const %s *R  /**< */);', field.c_end_name, c_type)
    else:
        _d('')
        _d('')
        _d('/*****************************************************************************')
        _d(' **')
        _d(' ** %s %s', field.c_iterator_type, field.c_iterator_name)
        _d(' ** ')
        _d(' ** @param const %s *R', c_type)
        _d(' ** @returns %s', field.c_iterator_type)
        _d(' **')
        _d(' *****************************************************************************/')
        _d(' ')

        _d('extern(C) %s', field.c_iterator_type)
        if switch_obj is not None:
            _d('%s (const %s *R  /**< */,', field.c_iterator_name, R_obj.c_type)
            spacing = ' '*(len(field.c_iterator_name)+2)
            _d('%sconst %s *S /**< */);', spacing, S_obj.c_type)
        else:
            _d('%s (const %s *R  /**< */);', field.c_iterator_name, c_type)

def _c_accessors(self, name, base):
    '''
    Declares the accessor functions for the fields of a structure.
    '''
    # no accessors for switch itself - 
    # switch always needs to be unpacked explicitly
#    if self.is_switch:
#        pass
#    else:
    if True:
        for field in self.fields:
            if field.type.is_list and not field.type.fixed_size():
                _c_accessors_list(self, field)
            elif field.prev_varsized_field is not None or not field.type.fixed_size():
                _c_accessors_field(self, field)

def c_simple(self, name):
    '''
    Exported function that handles cardinal type declarations.
    These are types which are typedef'd to one of the CARDx's, char, float, etc.
    '''
    _c_type_setup(self, name, ())

    if (self.name != name):
        # Typedef
        _d_setlevel(0)
        my_name = _t(name)
        _d('')
        alias_name = _d_type_name(_t(self.name))
        _d('alias %s %s;', alias_name, my_name)

        # Iterator
        _c_iterator(self, name)

def _c_complex(self):
    '''
    Helper function for handling all structure types.
    Called for all structs, requests, replies, events, errors.
    '''
    _d_setlevel(0)
    _d('')
    _d('/**')
    _d(' * @brief %s', self.c_type)
    _d(' **/')
#    _d('typedef %s %s {', self.c_container, self.c_type)
    _d('%s %s {', self.c_container, self.c_type)

    struct_fields = []
    maxtypelen = 0

    varfield = None
    for field in self.fields:
        if not field.type.fixed_size() and not self.is_switch and not self.is_union:
            varfield = field.c_field_name
            continue
        if field.wire:
            struct_fields.append(field)
    
    for field in struct_fields:
        length = len(field.c_field_type)
        # account for '*' pointer_spec
        if not field.type.fixed_size():
            length += 1
        maxtypelen = max(maxtypelen, length)

    def _c_complex_field(self, field, space=''):
        if (field.type.fixed_size() or 
            # in case of switch with switch children, don't make the field a pointer
            # necessary for unserialize to work
            (self.is_switch and field.type.is_switch)):
            spacing = ' ' * (maxtypelen - len(field.c_field_type))
            _d('%s    %s%s %s%s; /**<  */', space, field.c_field_type, spacing, field.c_field_name, field.c_subscript)
        else:
            spacing = ' ' * (maxtypelen - (len(field.c_field_type) + 1))
            _d('%s    %s%s *%s%s; /**<  */', space, field.c_field_type, spacing, field.c_field_name, field.c_subscript)

    if not self.is_switch:
        for field in struct_fields:
            _c_complex_field(self, field)
    else:
        for b in self.bitcases:
            space = ''
            if b.type.has_name:
                _d('    struct _%s {', b.c_field_name)
                space = '    '
            for field in b.type.fields:
                _c_complex_field(self, field, space)
            if b.type.has_name:
                _d('    }')
    _d('}')

def c_struct(self, name):
    '''
    Exported function that handles structure declarations.
    '''
    _c_type_setup(self, name, ())
    _c_complex(self)
    _c_accessors(self, name, name)
    _c_iterator(self, name)

def c_union(self, name):
    '''
    Exported function that handles union declarations.
    '''
    _c_type_setup(self, name, ())
    _c_complex(self)
    _c_iterator(self, name)

def _c_request_helper(self, name, cookie_type, void, regular, aux=False):
    '''
    Declares a request function.
    '''

    # Four stunningly confusing possibilities here:
    #
    #   Void            Non-void
    # ------------------------------
    # "req"            "req"
    # 0 flag           CHECKED flag   Normal Mode
    # void_cookie      req_cookie
    # ------------------------------
    # "req_checked"    "req_unchecked"
    # CHECKED flag     0 flag         Abnormal Mode
    # void_cookie      req_cookie
    # ------------------------------


    # Whether we are _checked or _unchecked
    checked = void and not regular
    unchecked = not void and not regular

    # What kind of cookie we return
    func_cookie = 'xcb_void_cookie_t' if void else self.c_cookie_type

    # What flag is passed to xcb_request
    func_flags = '0' if (void and regular) or (not void and not regular) else 'XCB_REQUEST_CHECKED'

    # Global extension id variable or NULL for xproto
    func_ext_global = '&' + _ns.c_ext_global_name if _ns.is_ext else '0'

    # What our function name is
    func_name = self.c_request_name if not aux else self.c_aux_name
    if checked:
        func_name = self.c_checked_name if not aux else self.c_aux_checked_name
    if unchecked:
        func_name = self.c_unchecked_name if not aux else self.c_aux_unchecked_name

    param_fields = []
    wire_fields = []
    maxtypelen = len('xcb_connection_t')
    serial_fields = []
    # special case: list with variable size elements
    list_with_var_size_elems = False

    for field in self.fields:
        if field.visible:
            # The field should appear as a call parameter
            param_fields.append(field)
        if field.wire and not field.auto:
            # We need to set the field up in the structure
            wire_fields.append(field)
        if field.type.need_serialize or field.type.need_sizeof:
            serial_fields.append(field)
        
    for field in param_fields:
        c_field_const_type = field.c_field_const_type 
        if field.type.need_serialize and not aux:
            c_field_const_type = "const void"
        if len(c_field_const_type) > maxtypelen:
            maxtypelen = len(c_field_const_type)
        if field.type.is_list and not field.type.member.fixed_size():
            list_with_var_size_elems = True

    _d_setlevel(1)
    _d('')
    _d('/**')
    _d(' * Delivers a request to the X server')
    _d(' * @param c The connection')
    _d(' * @return A cookie')
    _d(' *')
    _d(' * Delivers a request to the X server.')
    _d(' * ')
    if checked:
        _d(' * This form can be used only if the request will not cause')
        _d(' * a reply to be generated. Any returned error will be')
        _d(' * saved for handling by xcb_request_check().')
    if unchecked:
        _d(' * This form can be used only if the request will cause')
        _d(' * a reply to be generated. Any returned error will be')
        _d(' * placed in the event queue.')
    _d(' */')
    _d('')
    _d('/*****************************************************************************')
    _d(' **')
    _d(' ** %s %s', cookie_type, func_name)
    _d(' ** ')

    spacing = ' ' * (maxtypelen - len('xcb_connection_t'))
    _d(' ** @param xcb_connection_t%s *c', spacing)

    for field in param_fields:
        c_field_const_type = field.c_field_const_type 
        if field.type.need_serialize and not aux:
            c_field_const_type = "const void"
        spacing = ' ' * (maxtypelen - len(c_field_const_type))
        _d(' ** @param %s%s %s%s', _d_type_name(c_field_const_type), spacing, field.c_pointer, field.c_field_name)

    _d(' ** @returns %s', cookie_type)
    _d(' **')
    _d(' *****************************************************************************/')
    _d(' ')
    _d('extern(C) %s', cookie_type)

    spacing = ' ' * (maxtypelen - len('xcb_connection_t'))
    comma = ',' if len(param_fields) else ');'
    _d('%s (xcb_connection_t%s *c  /**< */%s', func_name, spacing, comma)

    func_spacing = ' ' * (len(func_name) + 2)
    count = len(param_fields)
    for field in param_fields:
        count = count - 1
        c_field_const_type = field.c_field_const_type 
        c_pointer = field.c_pointer
        if field.type.need_serialize and not aux:
            c_field_const_type = "const void"
            c_pointer = '*'
        spacing = ' ' * (maxtypelen - len(c_field_const_type))
        comma = ',' if count else ');'
        _d('%s%s%s %s%s  /**< */%s', func_spacing, c_field_const_type, 
           spacing, c_pointer, field.c_field_name, comma)

def _c_reply(self, name):
    '''
    Declares the function that returns the reply structure.
    '''
    spacing1 = ' ' * (len(self.c_cookie_type) - len('xcb_connection_t'))
    spacing2 = ' ' * (len(self.c_cookie_type) - len('xcb_generic_error_t'))
    spacing3 = ' ' * (len(self.c_reply_name) + 2)
    
    # check if _unserialize() has to be called for any field
    def look_for_special_cases(complex_obj):
        unserialize_fields = []
        # no unserialize call in case of switch
        if not complex_obj.is_switch:
            for field in complex_obj.fields:
                # three cases: 1. field with special case
                #              2. container that contains special case field
                #              3. list with special case elements
                if field.type.var_followed_by_fixed_fields:
                    unserialize_fields.append(field)
                elif field.type.is_container:
                    unserialize_fields += look_for_special_cases(field.type)
                elif field.type.is_list:
                    if field.type.member.var_followed_by_fixed_fields:
                        unserialize_fields.append(field)
                    if field.type.member.is_container:
                        unserialize_fields += look_for_special_cases(field.type.member)
        return unserialize_fields
    
    unserialize_fields = look_for_special_cases(self.reply)
    
    _d('')
    _d('/**')
    _d(' * Return the reply')
    _d(' * @param c      The connection')
    _d(' * @param cookie The cookie')
    _d(' * @param e      The xcb_generic_error_t supplied')
    _d(' *')
    _d(' * Returns the reply of the request asked by')
    _d(' * ')
    _d(' * The parameter @p e supplied to this function must be NULL if')
    _d(' * %s(). is used.', self.c_unchecked_name)
    _d(' * Otherwise, it stores the error if any.')
    _d(' *')
    _d(' * The returned value must be freed by the caller using free().')
    _d(' */')
    _d('')
    _d('/*****************************************************************************')
    _d(' **')
    _d(' ** %s * %s', self.c_reply_type, self.c_reply_name)
    _d(' ** ')
    _d(' ** @param xcb_connection_t%s  *c', spacing1)
    _d(' ** @param %s   cookie', self.c_cookie_type)
    _d(' ** @param xcb_generic_error_t%s **e', spacing2)
    _d(' ** @returns %s *', self.c_reply_type)
    _d(' **')
    _d(' *****************************************************************************/')
    _d(' ')
    _d('extern(C) %s *', self.c_reply_type)
    _d('%s (xcb_connection_t%s  *c  /**< */,', self.c_reply_name, spacing1)
    _d('%s%s   cookie  /**< */,', spacing3, self.c_cookie_type)
    _d('%sxcb_generic_error_t%s **e  /**< */);', spacing3, spacing2)
    
def _c_opcode(name, opcode):
    '''
    Declares the opcode define for requests, events, and errors.
    '''
    _d_setlevel(0)
    _d('')
    _d('/** Opcode for %s. */', _n(name))
    _d('const ubyte %s = %s;', _n(name).upper(), opcode)
    
def _c_cookie(self, name):
    '''
    Declares the cookie type for a non-void request.
    '''
    _d_setlevel(0)
    _d('')
    _d('/**')
    _d(' * @brief %s', self.c_cookie_type)
    _d(' **/')
    _d('struct %s {', self.c_cookie_type)
    _d('    uint sequence; /**<  */')
    _d('}')

def c_request(self, name):
    '''
    Exported function that handles request declarations.
    '''
    _c_type_setup(self, name, ('request',))

    if self.reply:
        # Cookie type declaration
        _c_cookie(self, name)

    # Opcode define
    _c_opcode(name, self.opcode)

    # Request structure declaration
    _c_complex(self)

    if self.reply:
        _c_type_setup(self.reply, name, ('reply',))
        # Reply structure definition
        _c_complex(self.reply)
        # Request prototypes
        _c_request_helper(self, name, self.c_cookie_type, False, True)
        _c_request_helper(self, name, self.c_cookie_type, False, False)
        if self.need_aux:
            _c_request_helper(self, name, self.c_cookie_type, False, True, True)
            _c_request_helper(self, name, self.c_cookie_type, False, False, True)
        # Reply accessors
        _c_accessors(self.reply, name + ('reply',), name)
        _c_reply(self, name)
    else:
        # Request prototypes
        _c_request_helper(self, name, 'xcb_void_cookie_t', True, False)
        _c_request_helper(self, name, 'xcb_void_cookie_t', True, True)
        if self.need_aux:
            _c_request_helper(self, name, 'xcb_void_cookie_t', True, False, True)
            _c_request_helper(self, name, 'xcb_void_cookie_t', True, True, True)

def c_event(self, name):
    '''
    Exported function that handles event declarations.
    '''
    _c_type_setup(self, name, ('event',))

    # Opcode define
    _c_opcode(name, self.opcodes[name])

    if self.name == name:
        # Structure definition
        _c_complex(self)
    else:
        _d('')
        alias_name = _d_type_name(_t(self.name + ('event',)))
        _d('alias %s %s;', alias_name, _t(name + ('event',)))

def c_error(self, name):
    '''
    Exported function that handles error declarations.
    '''
    _c_type_setup(self, name, ('error',))

    # Opcode define
    _c_opcode(name, self.opcodes[name])

    if self.name == name:
        # Structure definition
        _c_complex(self)
    else:
        _d('')
        alias_name = _d_type_name(_t(self.name + ('error',)))
        _d('alias %s %s;', alias_name, _t(name + ('error',)))

# Main routine starts here

# Must create an "output" dictionary before any xcbgen imports.
output = {'open'    : d_open,
          'close'   : d_close,
          'simple'  : c_simple,
          'enum'    : d_enum,
          'struct'  : c_struct,
          'union'   : c_union,
          'request' : c_request,
          'event'   : c_event,
          'error'   : c_error, 
          }

# Boilerplate below this point

# Check for the argument that specifies path to the xcbgen python package.
try:
    opts, args = getopt.getopt(sys.argv[1:], 'pm:')
except getopt.GetoptError as err:
    print(err)
    print('Usage: d_client.py [-p path] file.xml [-m] module location')
    sys.exit(1)

for (opt, arg) in opts:
    if opt == '-p':
        sys.path.insert(1, arg)
    elif opt == '-m':
        _module_location = arg

# Import the module class
try:
    from xcbgen.state import Module
except ImportError:
    print('''
Failed to load the xcbgen Python package!
Make sure that xcb/proto installed it on your Python path.
If not, you will need to create a .pth file or define $PYTHONPATH
to extend the path.
Refer to the README file in xcb/proto for more info.
''')
    raise

# Parse the xml header
module = Module(args[0], output)

# Build type-registry and resolve type dependencies
module.register()
module.resolve()

# Output the code
module.generate()
