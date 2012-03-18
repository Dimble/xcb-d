/*
 * This file generated automatically from xkb.xml by d_client.py.
 * Edit at your peril.
 */

/**
 * @defgroup XCB_xkb_API XCB xkb API
 * @brief xkb XCB Protocol Implementation.
 * @{
 **/

module std.c.xcb.xkb;

import std.c.xcb.xcb;
import std.c.xcb.xproto;

const int XCB_XKB_MAJOR_VERSION = 1;
const int XCB_XKB_MINOR_VERSION = 0;
  
extern(C) xcb_extension_t xcb_xkb_id;

enum XcbXkbConst {
    MAX_LEGAL_KEY_CODE     = 255,
    PER_KEY_BIT_ARRAY_SIZE = 32,
    KEY_NAME_LENGTH        = 4
}

enum XcbXkbEventType {
    NEW_KEYBOARD_NOTIFY     = 1,
    MAP_NOTIFY              = 2,
    STATE_NOTIFY            = 4,
    CONTROLS_NOTIFY         = 8,
    INDICATOR_STATE_NOTIFY  = 16,
    INDICATOR_MAP_NOTIFY    = 32,
    NAMES_NOTIFY            = 64,
    COMPAT_MAP_NOTIFY       = 128,
    BELL_NOTIFY             = 256,
    ACTION_MESSAGE          = 512,
    ACCESS_X_NOTIFY         = 1024,
    EXTENSION_DEVICE_NOTIFY = 2048
}

enum XcbXkbNKNDetail {
    KEYCODES  = 1,
    GEOMETRY  = 2,
    DEVICE_ID = 4
}

enum XcbXkbAXNDetail {
    SK_PRESS    = 1,
    SK_ACCEPT   = 2,
    SK_REJECT   = 4,
    SK_RELEASE  = 8,
    BK_ACCEPT   = 16,
    BK_REJECT   = 32,
    AXK_WARNING = 64
}

enum XcbXkbMapPart {
    KEY_TYPES           = 1,
    KEY_SYMS            = 2,
    MODIFIER_MAP        = 4,
    EXPLICIT_COMPONENTS = 8,
    KEY_ACTIONS         = 16,
    KEY_BEHAVIORS       = 32,
    VIRTUAL_MODS        = 64,
    VIRTUAL_MOD_MAP     = 128
}

enum XcbXkbSetMapFlags {
    RESIZE_TYPES      = 1,
    RECOMPUTE_ACTIONS = 2
}

enum XcbXkbStatePart {
    MODIFIER_STATE     = 1,
    MODIFIER_BASE      = 2,
    MODIFIER_LATCH     = 4,
    MODIFIER_LOCK      = 8,
    GROUP_STATE        = 16,
    GROUP_BASE         = 32,
    GROUP_LATCH        = 64,
    GROUP_LOCK         = 128,
    COMPAT_STATE       = 256,
    GRAB_MODS          = 512,
    COMPAT_GRAB_MODS   = 1024,
    LOOKUP_MODS        = 2048,
    COMPAT_LOOKUP_MODS = 4096,
    POINTER_BUTTONS    = 8192
}

enum XcbXkbBoolCtrl {
    REPEAT_KEYS            = 1,
    SLOW_KEYS              = 2,
    BOUNCE_KEYS            = 4,
    STICKY_KEYS            = 8,
    MOUSE_KEYS             = 16,
    MOUSE_KEYS_ACCEL       = 32,
    ACCESS_X_KEYS          = 64,
    ACCESS_X_TIMEOUT_MASK  = 128,
    ACCESS_X_FEEDBACK_MASK = 256,
    AUDIBLE_BELL_MASK      = 512,
    OVERLAY_1_MASK         = 1024,
    OVERLAY_2_MASK         = 2048,
    IGNORE_GROUP_LOCK_MASK = 4096
}

enum XcbXkbControl {
    GROUPS_WRAP      = 134217728,
    INTERNAL_MODS    = 268435456,
    IGNORE_LOCK_MODS = 536870912,
    PER_KEY_REPEAT   = 1073741824,
    CONTROLS_ENABLED = 2147483648
}

enum XcbXkbAXFBOpt {
    SK_PRESS_FB    = 1,
    SK_ACCEPT_FB   = 2,
    FEATURE_FB     = 4,
    SLOW_WARN_FB   = 8,
    INDICATOR_FB   = 16,
    STICKY_KEYS_FB = 32,
    SK_RELEASE_FB  = 64,
    SK_REJECT_FB   = 128,
    BK_REJECT_FB   = 256,
    DUMB_BELL      = 512
}

enum XcbXkbAXSKOpt {
    TWO_KEYS      = 64,
    LATCH_TO_LOCK = 128
}

/**
 * @brief xcb_xkb_ax_option_t
 **/
union xcb_xkb_ax_option_t {
    ushort fbopt; /**<  */
    ushort skopt; /**<  */
}

/**
 * @brief xcb_xkb_ax_option_iterator_t
 **/
struct xcb_xkb_ax_option_iterator_t {
    xcb_xkb_ax_option_t *data; /**<  */
    int                  rem; /**<  */
    int                  index; /**<  */
}

alias ushort xcb_xkb_device_spec_t;

/**
 * @brief xcb_xkb_device_spec_iterator_t
 **/
struct xcb_xkb_device_spec_iterator_t {
    xcb_xkb_device_spec_t *data; /**<  */
    int                    rem; /**<  */
    int                    index; /**<  */
}

enum XcbXkbLedClassResult {
    KBD_FEEDBACK_CLASS = 0,
    LED_FEEDBACK_CLASS = 4
}

enum XcbXkbLedClass {
    DFLT_XI_CLASS  = 768,
    ALL_XI_CLASSES = 1280
}

alias ushort xcb_xkb_led_class_spec_t;

/**
 * @brief xcb_xkb_led_class_spec_iterator_t
 **/
struct xcb_xkb_led_class_spec_iterator_t {
    xcb_xkb_led_class_spec_t *data; /**<  */
    int                       rem; /**<  */
    int                       index; /**<  */
}

enum XcbXkbBellClassResult {
    KBD_FEEDBACK_CLASS  = 0,
    BELL_FEEDBACK_CLASS = 5
}

enum XcbXkbBellClass {
    DFLT_XI_CLASS = 768
}

alias ushort xcb_xkb_bell_class_spec_t;

/**
 * @brief xcb_xkb_bell_class_spec_iterator_t
 **/
struct xcb_xkb_bell_class_spec_iterator_t {
    xcb_xkb_bell_class_spec_t *data; /**<  */
    int                        rem; /**<  */
    int                        index; /**<  */
}

enum XcbXkbID {
    USE_CORE_KBD  = 256,
    USE_CORE_PTR  = 512,
    DFLT_XI_CLASS = 768,
    DFLT_XI_ID    = 1024,
    ALL_XI_CLASS  = 1280,
    ALL_XI_ID     = 1536,
    XI_NONE       = 65280
}

alias ushort xcb_xkb_id_spec_t;

/**
 * @brief xcb_xkb_id_spec_iterator_t
 **/
struct xcb_xkb_id_spec_iterator_t {
    xcb_xkb_id_spec_t *data; /**<  */
    int                rem; /**<  */
    int                index; /**<  */
}

enum XcbXkbGroup {
    N1 = 0,
    N2 = 1,
    N3 = 2,
    N4 = 3
}

enum XcbXkbGroups {
    ANY = 254,
    ALL = 255
}

enum XcbXkbSetOfGroup {
    GROUP_1 = 1,
    GROUP_2 = 2,
    GROUP_3 = 4,
    GROUP_4 = 8
}

enum XcbXkbSetOfGroups {
    ANY = 128
}

enum XcbXkbGroupsWrap {
    WRAP_INTO_RANGE     = 0,
    CLAMP_INTO_RANGE    = 64,
    REDIRECT_INTO_RANGE = 128
}

enum XcbXkbVModsHigh {
    N15 = 128,
    N14 = 64,
    N13 = 32,
    N12 = 16,
    N11 = 8,
    N10 = 4,
    N9  = 2,
    N8  = 1
}

enum XcbXkbVModsLow {
    N7 = 128,
    N6 = 64,
    N5 = 32,
    N4 = 16,
    N3 = 8,
    N2 = 4,
    N1 = 2,
    N0 = 1
}

enum XcbXkbVMod {
    N15 = 32768,
    N14 = 16384,
    N13 = 8192,
    N12 = 4096,
    N11 = 2048,
    N10 = 1024,
    N9  = 512,
    N8  = 256,
    N7  = 128,
    N6  = 64,
    N5  = 32,
    N4  = 16,
    N3  = 8,
    N2  = 4,
    N1  = 2,
    N0  = 1
}

enum XcbXkbExplicit {
    V_MOD_MAP   = 128,
    BEHAVIOR    = 64,
    AUTO_REPEAT = 32,
    INTERPRET   = 16,
    KEY_TYPE_4  = 8,
    KEY_TYPE_3  = 4,
    KEY_TYPE_2  = 2,
    KEY_TYPE_1  = 1
}

enum XcbXkbSymInterpret {
    NONE_OF        = 0,
    ANY_OF_OR_NONE = 1,
    ANY_OF         = 2,
    ALL_OF         = 3,
    EXACTLY        = 4
}

enum XcbXkbSymInterpMatch {
    LEVEL_ONE_ONLY = 128,
    OP_MASK        = 127
}

enum XcbXkbIMFlag {
    NO_EXPLICIT   = 128,
    NO_AUTOMATIC  = 64,
    LED_DRIVES_KB = 32
}

enum XcbXkbIMModsWhich {
    USE_COMPAT    = 16,
    USE_EFFECTIVE = 8,
    USE_LOCKED    = 4,
    USE_LATCHED   = 2,
    USE_BASE      = 1
}

enum XcbXkbIMGroupsWhich {
    USE_COMPAT    = 16,
    USE_EFFECTIVE = 8,
    USE_LOCKED    = 4,
    USE_LATCHED   = 2,
    USE_BASE      = 1
}

/**
 * @brief xcb_xkb_indicator_map_t
 **/
struct xcb_xkb_indicator_map_t {
    ubyte  flags; /**<  */
    ubyte  whichGroups; /**<  */
    ubyte  groups; /**<  */
    ubyte  whichMods; /**<  */
    ubyte  mods; /**<  */
    ubyte  realMods; /**<  */
    ushort vmods; /**<  */
    uint   ctrls; /**<  */
}

/**
 * @brief xcb_xkb_indicator_map_iterator_t
 **/
struct xcb_xkb_indicator_map_iterator_t {
    xcb_xkb_indicator_map_t *data; /**<  */
    int                      rem; /**<  */
    int                      index; /**<  */
}

enum XcbXkbCMDetail {
    SYM_INTERP   = 1,
    GROUP_COMPAT = 2
}

enum XcbXkbNameDetail {
    KEYCODES          = 1,
    GEOMETRY          = 2,
    SYMBOLS           = 4,
    PHYS_SYMBOLS      = 8,
    TYPES             = 16,
    COMPAT            = 32,
    KEY_TYPE_NAMES    = 64,
    KT_LEVEL_NAMES    = 128,
    INDICATOR_NAMES   = 256,
    KEY_NAMES         = 512,
    KEY_ALIASES       = 1024,
    VIRTUAL_MOD_NAMES = 2048,
    GROUP_NAMES       = 4096,
    RG_NAMES          = 8192
}

enum XcbXkbGBNDetail {
    TYPES          = 1,
    COMPAT_MAP     = 2,
    CLIENT_SYMBOLS = 4,
    SERVER_SYMBOLS = 8,
    INDICATOR_MAPS = 16,
    KEY_NAMES      = 32,
    GEOMETRY       = 64,
    OTHER_NAMES    = 128
}

enum XcbXkbXIFeature {
    KEYBOARDS       = 1,
    BUTTON_ACTIONS  = 2,
    INDICATOR_NAMES = 4,
    INDICATOR_MAPS  = 8,
    INDICATOR_STATE = 16
}

enum XcbXkbPerClientFlag {
    DETECTABLE_AUTO_REPEAT    = 1,
    GRABS_USE_XKB_STATE       = 2,
    AUTO_RESET_CONTROLS       = 4,
    LOOKUP_STATE_WHEN_GRABBED = 8,
    SEND_EVENT_USES_XKB_STATE = 16
}

/**
 * @brief xcb_xkb_mod_def_t
 **/
struct xcb_xkb_mod_def_t {
    ubyte  mask; /**<  */
    ubyte  realMods; /**<  */
    ushort vmods; /**<  */
}

/**
 * @brief xcb_xkb_mod_def_iterator_t
 **/
struct xcb_xkb_mod_def_iterator_t {
    xcb_xkb_mod_def_t *data; /**<  */
    int                rem; /**<  */
    int                index; /**<  */
}

/**
 * @brief xcb_xkb_key_name_t
 **/
struct xcb_xkb_key_name_t {
    ubyte name[4]; /**<  */
}

/**
 * @brief xcb_xkb_key_name_iterator_t
 **/
struct xcb_xkb_key_name_iterator_t {
    xcb_xkb_key_name_t *data; /**<  */
    int                 rem; /**<  */
    int                 index; /**<  */
}

/**
 * @brief xcb_xkb_key_alias_t
 **/
struct xcb_xkb_key_alias_t {
    ubyte real[4]; /**<  */
    ubyte alias[4]; /**<  */
}

/**
 * @brief xcb_xkb_key_alias_iterator_t
 **/
struct xcb_xkb_key_alias_iterator_t {
    xcb_xkb_key_alias_t *data; /**<  */
    int                  rem; /**<  */
    int                  index; /**<  */
}

/**
 * @brief xcb_xkb_counted_string_8_t
 **/
struct xcb_xkb_counted_string_8_t {
    ubyte length; /**<  */
}

/**
 * @brief xcb_xkb_counted_string_8_iterator_t
 **/
struct xcb_xkb_counted_string_8_iterator_t {
    xcb_xkb_counted_string_8_t *data; /**<  */
    int                         rem; /**<  */
    int                         index; /**<  */
}

/**
 * @brief xcb_xkb_counted_string_16_t
 **/
struct xcb_xkb_counted_string_16_t {
    ushort length; /**<  */
    ubyte  pad0; /**<  */
}

/**
 * @brief xcb_xkb_counted_string_16_iterator_t
 **/
struct xcb_xkb_counted_string_16_iterator_t {
    xcb_xkb_counted_string_16_t *data; /**<  */
    int                          rem; /**<  */
    int                          index; /**<  */
}

/**
 * @brief xcb_xkb_kt_map_entry_t
 **/
struct xcb_xkb_kt_map_entry_t {
    ubyte  active; /**<  */
    ubyte  level; /**<  */
    ubyte  mods_mask; /**<  */
    ubyte  mods_mods; /**<  */
    ushort mods_vmods; /**<  */
    ubyte  pad0[2]; /**<  */
}

/**
 * @brief xcb_xkb_kt_map_entry_iterator_t
 **/
struct xcb_xkb_kt_map_entry_iterator_t {
    xcb_xkb_kt_map_entry_t *data; /**<  */
    int                     rem; /**<  */
    int                     index; /**<  */
}

/**
 * @brief xcb_xkb_key_type_t
 **/
struct xcb_xkb_key_type_t {
    ubyte  mods_mask; /**<  */
    ubyte  mods_mods; /**<  */
    ushort mods_vmods; /**<  */
    ubyte  numLevels; /**<  */
    ubyte  nMapEntries; /**<  */
    ubyte  hasPreserve; /**<  */
    ubyte  pad0; /**<  */
}

/**
 * @brief xcb_xkb_key_type_iterator_t
 **/
struct xcb_xkb_key_type_iterator_t {
    xcb_xkb_key_type_t *data; /**<  */
    int                 rem; /**<  */
    int                 index; /**<  */
}

/**
 * @brief xcb_xkb_key_sym_map_t
 **/
struct xcb_xkb_key_sym_map_t {
    ubyte  kt_index[4]; /**<  */
    ubyte  groupInfo; /**<  */
    ubyte  width; /**<  */
    ushort nSyms; /**<  */
}

/**
 * @brief xcb_xkb_key_sym_map_iterator_t
 **/
struct xcb_xkb_key_sym_map_iterator_t {
    xcb_xkb_key_sym_map_t *data; /**<  */
    int                    rem; /**<  */
    int                    index; /**<  */
}

/**
 * @brief xcb_xkb_common_behavior_t
 **/
struct xcb_xkb_common_behavior_t {
    ubyte type; /**<  */
    ubyte data; /**<  */
}

/**
 * @brief xcb_xkb_common_behavior_iterator_t
 **/
struct xcb_xkb_common_behavior_iterator_t {
    xcb_xkb_common_behavior_t *data; /**<  */
    int                        rem; /**<  */
    int                        index; /**<  */
}

/**
 * @brief xcb_xkb_default_behavior_t
 **/
struct xcb_xkb_default_behavior_t {
    ubyte type; /**<  */
    ubyte pad0; /**<  */
}

/**
 * @brief xcb_xkb_default_behavior_iterator_t
 **/
struct xcb_xkb_default_behavior_iterator_t {
    xcb_xkb_default_behavior_t *data; /**<  */
    int                         rem; /**<  */
    int                         index; /**<  */
}

/**
 * @brief xcb_xkb_lock_behavior_t
 **/
struct xcb_xkb_lock_behavior_t {
    ubyte type; /**<  */
    ubyte pad0; /**<  */
}

/**
 * @brief xcb_xkb_lock_behavior_iterator_t
 **/
struct xcb_xkb_lock_behavior_iterator_t {
    xcb_xkb_lock_behavior_t *data; /**<  */
    int                      rem; /**<  */
    int                      index; /**<  */
}

/**
 * @brief xcb_xkb_radio_group_behavior_t
 **/
struct xcb_xkb_radio_group_behavior_t {
    ubyte type; /**<  */
    ubyte group; /**<  */
}

/**
 * @brief xcb_xkb_radio_group_behavior_iterator_t
 **/
struct xcb_xkb_radio_group_behavior_iterator_t {
    xcb_xkb_radio_group_behavior_t *data; /**<  */
    int                             rem; /**<  */
    int                             index; /**<  */
}

/**
 * @brief xcb_xkb_overlay_1_behavior_t
 **/
struct xcb_xkb_overlay_1_behavior_t {
    ubyte         type; /**<  */
    xcb_keycode_t key; /**<  */
}

/**
 * @brief xcb_xkb_overlay_1_behavior_iterator_t
 **/
struct xcb_xkb_overlay_1_behavior_iterator_t {
    xcb_xkb_overlay_1_behavior_t *data; /**<  */
    int                           rem; /**<  */
    int                           index; /**<  */
}

/**
 * @brief xcb_xkb_overlay_2_behavior_t
 **/
struct xcb_xkb_overlay_2_behavior_t {
    ubyte type; /**<  */
    ubyte key; /**<  */
}

/**
 * @brief xcb_xkb_overlay_2_behavior_iterator_t
 **/
struct xcb_xkb_overlay_2_behavior_iterator_t {
    xcb_xkb_overlay_2_behavior_t *data; /**<  */
    int                           rem; /**<  */
    int                           index; /**<  */
}

/**
 * @brief xcb_xkb_permament_lock_behavior_t
 **/
struct xcb_xkb_permament_lock_behavior_t {
    ubyte type; /**<  */
    ubyte pad0; /**<  */
}

/**
 * @brief xcb_xkb_permament_lock_behavior_iterator_t
 **/
struct xcb_xkb_permament_lock_behavior_iterator_t {
    xcb_xkb_permament_lock_behavior_t *data; /**<  */
    int                                rem; /**<  */
    int                                index; /**<  */
}

/**
 * @brief xcb_xkb_permament_radio_group_behavior_t
 **/
struct xcb_xkb_permament_radio_group_behavior_t {
    ubyte type; /**<  */
    ubyte group; /**<  */
}

/**
 * @brief xcb_xkb_permament_radio_group_behavior_iterator_t
 **/
struct xcb_xkb_permament_radio_group_behavior_iterator_t {
    xcb_xkb_permament_radio_group_behavior_t *data; /**<  */
    int                                       rem; /**<  */
    int                                       index; /**<  */
}

/**
 * @brief xcb_xkb_permament_overlay_1_behavior_t
 **/
struct xcb_xkb_permament_overlay_1_behavior_t {
    ubyte         type; /**<  */
    xcb_keycode_t key; /**<  */
}

/**
 * @brief xcb_xkb_permament_overlay_1_behavior_iterator_t
 **/
struct xcb_xkb_permament_overlay_1_behavior_iterator_t {
    xcb_xkb_permament_overlay_1_behavior_t *data; /**<  */
    int                                     rem; /**<  */
    int                                     index; /**<  */
}

/**
 * @brief xcb_xkb_permament_overlay_2_behavior_t
 **/
struct xcb_xkb_permament_overlay_2_behavior_t {
    ubyte type; /**<  */
    ubyte key; /**<  */
}

/**
 * @brief xcb_xkb_permament_overlay_2_behavior_iterator_t
 **/
struct xcb_xkb_permament_overlay_2_behavior_iterator_t {
    xcb_xkb_permament_overlay_2_behavior_t *data; /**<  */
    int                                     rem; /**<  */
    int                                     index; /**<  */
}

/**
 * @brief xcb_xkb_behavior_t
 **/
union xcb_xkb_behavior_t {
    xcb_xkb_common_behavior_t                common; /**<  */
    xcb_xkb_default_behavior_t               _default; /**<  */
    xcb_xkb_lock_behavior_t                  lock; /**<  */
    xcb_xkb_radio_group_behavior_t           radioGroup; /**<  */
    xcb_xkb_overlay_1_behavior_t             overlay1; /**<  */
    xcb_xkb_overlay_2_behavior_t             overlay2; /**<  */
    xcb_xkb_permament_lock_behavior_t        permamentLock; /**<  */
    xcb_xkb_permament_radio_group_behavior_t permamentRadioGroup; /**<  */
    xcb_xkb_permament_overlay_1_behavior_t   permamentOverlay1; /**<  */
    xcb_xkb_permament_overlay_2_behavior_t   permamentOverlay2; /**<  */
    ubyte                                    type; /**<  */
}

/**
 * @brief xcb_xkb_behavior_iterator_t
 **/
struct xcb_xkb_behavior_iterator_t {
    xcb_xkb_behavior_t *data; /**<  */
    int                 rem; /**<  */
    int                 index; /**<  */
}

enum XcbXkbBehaviorType {
    DEFAULT               = 0,
    LOCK                  = 1,
    RADIO_GROUP           = 2,
    OVERLAY_1             = 3,
    OVERLAY_2             = 4,
    PERMAMENT_LOCK        = 129,
    PERMAMENT_RADIO_GROUP = 130,
    PERMAMENT_OVERLAY_1   = 131,
    PERMAMENT_OVERLAY_2   = 132
}

/**
 * @brief xcb_xkb_set_behavior_t
 **/
struct xcb_xkb_set_behavior_t {
    xcb_keycode_t      keycode; /**<  */
    xcb_xkb_behavior_t behavior; /**<  */
    ubyte              pad0; /**<  */
}

/**
 * @brief xcb_xkb_set_behavior_iterator_t
 **/
struct xcb_xkb_set_behavior_iterator_t {
    xcb_xkb_set_behavior_t *data; /**<  */
    int                     rem; /**<  */
    int                     index; /**<  */
}

/**
 * @brief xcb_xkb_set_explicit_t
 **/
struct xcb_xkb_set_explicit_t {
    xcb_keycode_t keycode; /**<  */
    ubyte         explicit; /**<  */
}

/**
 * @brief xcb_xkb_set_explicit_iterator_t
 **/
struct xcb_xkb_set_explicit_iterator_t {
    xcb_xkb_set_explicit_t *data; /**<  */
    int                     rem; /**<  */
    int                     index; /**<  */
}

/**
 * @brief xcb_xkb_key_mod_map_t
 **/
struct xcb_xkb_key_mod_map_t {
    xcb_keycode_t keycode; /**<  */
    ubyte         mods; /**<  */
}

/**
 * @brief xcb_xkb_key_mod_map_iterator_t
 **/
struct xcb_xkb_key_mod_map_iterator_t {
    xcb_xkb_key_mod_map_t *data; /**<  */
    int                    rem; /**<  */
    int                    index; /**<  */
}

/**
 * @brief xcb_xkb_key_v_mod_map_t
 **/
struct xcb_xkb_key_v_mod_map_t {
    xcb_keycode_t keycode; /**<  */
    ubyte         pad0; /**<  */
    ushort        vmods; /**<  */
}

/**
 * @brief xcb_xkb_key_v_mod_map_iterator_t
 **/
struct xcb_xkb_key_v_mod_map_iterator_t {
    xcb_xkb_key_v_mod_map_t *data; /**<  */
    int                      rem; /**<  */
    int                      index; /**<  */
}

/**
 * @brief xcb_xkb_kt_set_map_entry_t
 **/
struct xcb_xkb_kt_set_map_entry_t {
    ubyte  level; /**<  */
    ubyte  realMods; /**<  */
    ushort virtualMods; /**<  */
}

/**
 * @brief xcb_xkb_kt_set_map_entry_iterator_t
 **/
struct xcb_xkb_kt_set_map_entry_iterator_t {
    xcb_xkb_kt_set_map_entry_t *data; /**<  */
    int                         rem; /**<  */
    int                         index; /**<  */
}

/**
 * @brief xcb_xkb_set_key_type_t
 **/
struct xcb_xkb_set_key_type_t {
    ubyte  mask; /**<  */
    ubyte  realMods; /**<  */
    ushort virtualMods; /**<  */
    ubyte  numLevels; /**<  */
    ubyte  nMapEntries; /**<  */
    ubyte  preserve; /**<  */
    ubyte  pad0; /**<  */
}

/**
 * @brief xcb_xkb_set_key_type_iterator_t
 **/
struct xcb_xkb_set_key_type_iterator_t {
    xcb_xkb_set_key_type_t *data; /**<  */
    int                     rem; /**<  */
    int                     index; /**<  */
}

alias char xcb_xkb_string8_t;

/**
 * @brief xcb_xkb_string8_iterator_t
 **/
struct xcb_xkb_string8_iterator_t {
    xcb_xkb_string8_t *data; /**<  */
    int                rem; /**<  */
    int                index; /**<  */
}

/**
 * @brief xcb_xkb_property_t
 **/
struct xcb_xkb_property_t {
    ushort nameLength; /**<  */
    ushort valueLength; /**<  */
}

/**
 * @brief xcb_xkb_property_iterator_t
 **/
struct xcb_xkb_property_iterator_t {
    xcb_xkb_property_t *data; /**<  */
    int                 rem; /**<  */
    int                 index; /**<  */
}

/**
 * @brief xcb_xkb_outline_t
 **/
struct xcb_xkb_outline_t {
    ubyte nPoints; /**<  */
    ubyte cornerRadius; /**<  */
    ubyte pad0[2]; /**<  */
}

/**
 * @brief xcb_xkb_outline_iterator_t
 **/
struct xcb_xkb_outline_iterator_t {
    xcb_xkb_outline_t *data; /**<  */
    int                rem; /**<  */
    int                index; /**<  */
}

/**
 * @brief xcb_xkb_shape_t
 **/
struct xcb_xkb_shape_t {
    xcb_atom_t name; /**<  */
    ubyte      nOutlines; /**<  */
    ubyte      primaryNdx; /**<  */
    ubyte      approxNdx; /**<  */
    ubyte      pad0; /**<  */
}

/**
 * @brief xcb_xkb_shape_iterator_t
 **/
struct xcb_xkb_shape_iterator_t {
    xcb_xkb_shape_t *data; /**<  */
    int              rem; /**<  */
    int              index; /**<  */
}

/**
 * @brief xcb_xkb_key_t
 **/
struct xcb_xkb_key_t {
    xcb_xkb_string8_t name[4]; /**<  */
    short             gap; /**<  */
    ubyte             shapeNdx; /**<  */
    ubyte             colorNdx; /**<  */
}

/**
 * @brief xcb_xkb_key_iterator_t
 **/
struct xcb_xkb_key_iterator_t {
    xcb_xkb_key_t *data; /**<  */
    int            rem; /**<  */
    int            index; /**<  */
}

/**
 * @brief xcb_xkb_overlay_key_t
 **/
struct xcb_xkb_overlay_key_t {
    xcb_xkb_string8_t over[4]; /**<  */
    xcb_xkb_string8_t under[4]; /**<  */
}

/**
 * @brief xcb_xkb_overlay_key_iterator_t
 **/
struct xcb_xkb_overlay_key_iterator_t {
    xcb_xkb_overlay_key_t *data; /**<  */
    int                    rem; /**<  */
    int                    index; /**<  */
}

/**
 * @brief xcb_xkb_overlay_row_t
 **/
struct xcb_xkb_overlay_row_t {
    ubyte rowUnder; /**<  */
    ubyte nKeys; /**<  */
    ubyte pad0[2]; /**<  */
}

/**
 * @brief xcb_xkb_overlay_row_iterator_t
 **/
struct xcb_xkb_overlay_row_iterator_t {
    xcb_xkb_overlay_row_t *data; /**<  */
    int                    rem; /**<  */
    int                    index; /**<  */
}

/**
 * @brief xcb_xkb_overlay_t
 **/
struct xcb_xkb_overlay_t {
    xcb_atom_t name; /**<  */
    ubyte      nRows; /**<  */
    ubyte      pad0[3]; /**<  */
}

/**
 * @brief xcb_xkb_overlay_iterator_t
 **/
struct xcb_xkb_overlay_iterator_t {
    xcb_xkb_overlay_t *data; /**<  */
    int                rem; /**<  */
    int                index; /**<  */
}

/**
 * @brief xcb_xkb_row_t
 **/
struct xcb_xkb_row_t {
    short top; /**<  */
    short left; /**<  */
    ubyte nKeys; /**<  */
    ubyte vertical; /**<  */
    ubyte pad0[2]; /**<  */
}

/**
 * @brief xcb_xkb_row_iterator_t
 **/
struct xcb_xkb_row_iterator_t {
    xcb_xkb_row_t *data; /**<  */
    int            rem; /**<  */
    int            index; /**<  */
}

enum XcbXkbDoodadType {
    OUTLINE   = 1,
    SOLID     = 2,
    TEXT      = 3,
    INDICATOR = 4,
    LOGO      = 5
}

/**
 * @brief xcb_xkb_common_doodad_t
 **/
struct xcb_xkb_common_doodad_t {
    xcb_atom_t name; /**<  */
    ubyte      type; /**<  */
    ubyte      priority; /**<  */
    short      top; /**<  */
    short      left; /**<  */
    short      angle; /**<  */
}

/**
 * @brief xcb_xkb_common_doodad_iterator_t
 **/
struct xcb_xkb_common_doodad_iterator_t {
    xcb_xkb_common_doodad_t *data; /**<  */
    int                      rem; /**<  */
    int                      index; /**<  */
}

/**
 * @brief xcb_xkb_shape_doodad_t
 **/
struct xcb_xkb_shape_doodad_t {
    xcb_atom_t name; /**<  */
    ubyte      type; /**<  */
    ubyte      priority; /**<  */
    short      top; /**<  */
    short      left; /**<  */
    short      angle; /**<  */
    ubyte      colorNdx; /**<  */
    ubyte      shapeNdx; /**<  */
    ubyte      pad0[6]; /**<  */
}

/**
 * @brief xcb_xkb_shape_doodad_iterator_t
 **/
struct xcb_xkb_shape_doodad_iterator_t {
    xcb_xkb_shape_doodad_t *data; /**<  */
    int                     rem; /**<  */
    int                     index; /**<  */
}

/**
 * @brief xcb_xkb_text_doodad_t
 **/
struct xcb_xkb_text_doodad_t {
    xcb_atom_t name; /**<  */
    ubyte      type; /**<  */
    ubyte      priority; /**<  */
    short      top; /**<  */
    short      left; /**<  */
    short      angle; /**<  */
    ushort     width; /**<  */
    ushort     height; /**<  */
    ubyte      colorNdx; /**<  */
    ubyte      pad0[3]; /**<  */
}


/*****************************************************************************
 **
 ** xcb_xkb_counted_string_16_t * xcb_xkb_text_doodad_text
 ** 
 ** @param const xcb_xkb_text_doodad_t *R
 ** @returns xcb_xkb_counted_string_16_t *
 **
 *****************************************************************************/
 
xcb_xkb_counted_string_16_t *
xcb_xkb_text_doodad_text (const xcb_xkb_text_doodad_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_counted_string_16_t * xcb_xkb_text_doodad_font
 ** 
 ** @param const xcb_xkb_text_doodad_t *R
 ** @returns xcb_xkb_counted_string_16_t *
 **
 *****************************************************************************/
 
xcb_xkb_counted_string_16_t *
xcb_xkb_text_doodad_font (const xcb_xkb_text_doodad_t *R  /**< */);

/**
 * @brief xcb_xkb_text_doodad_iterator_t
 **/
struct xcb_xkb_text_doodad_iterator_t {
    xcb_xkb_text_doodad_t *data; /**<  */
    int                    rem; /**<  */
    int                    index; /**<  */
}

/**
 * @brief xcb_xkb_indicator_doodad_t
 **/
struct xcb_xkb_indicator_doodad_t {
    xcb_atom_t name; /**<  */
    ubyte      type; /**<  */
    ubyte      priority; /**<  */
    short      top; /**<  */
    short      left; /**<  */
    short      angle; /**<  */
    ubyte      shapeNdx; /**<  */
    ubyte      onColorNdx; /**<  */
    ubyte      offColorNdx; /**<  */
    ubyte      pad0[5]; /**<  */
}

/**
 * @brief xcb_xkb_indicator_doodad_iterator_t
 **/
struct xcb_xkb_indicator_doodad_iterator_t {
    xcb_xkb_indicator_doodad_t *data; /**<  */
    int                         rem; /**<  */
    int                         index; /**<  */
}

/**
 * @brief xcb_xkb_logo_doodad_t
 **/
struct xcb_xkb_logo_doodad_t {
    xcb_atom_t name; /**<  */
    ubyte      type; /**<  */
    ubyte      priority; /**<  */
    short      top; /**<  */
    short      left; /**<  */
    short      angle; /**<  */
    ubyte      colorNdx; /**<  */
    ubyte      shapeNdx; /**<  */
    ubyte      pad0[6]; /**<  */
}


/*****************************************************************************
 **
 ** xcb_xkb_counted_string_16_t * xcb_xkb_logo_doodad_logo_name
 ** 
 ** @param const xcb_xkb_logo_doodad_t *R
 ** @returns xcb_xkb_counted_string_16_t *
 **
 *****************************************************************************/
 
xcb_xkb_counted_string_16_t *
xcb_xkb_logo_doodad_logo_name (const xcb_xkb_logo_doodad_t *R  /**< */);

/**
 * @brief xcb_xkb_logo_doodad_iterator_t
 **/
struct xcb_xkb_logo_doodad_iterator_t {
    xcb_xkb_logo_doodad_t *data; /**<  */
    int                    rem; /**<  */
    int                    index; /**<  */
}

/**
 * @brief xcb_xkb_doodad_t
 **/
union xcb_xkb_doodad_t {
    xcb_xkb_common_doodad_t    common; /**<  */
    xcb_xkb_shape_doodad_t     shape; /**<  */
    xcb_xkb_text_doodad_t     *text; /**<  */
    xcb_xkb_indicator_doodad_t indicator; /**<  */
    xcb_xkb_logo_doodad_t     *logo; /**<  */
}

/**
 * @brief xcb_xkb_doodad_iterator_t
 **/
struct xcb_xkb_doodad_iterator_t {
    xcb_xkb_doodad_t *data; /**<  */
    int               rem; /**<  */
    int               index; /**<  */
}

/**
 * @brief xcb_xkb_section_t
 **/
struct xcb_xkb_section_t {
    xcb_atom_t name; /**<  */
    short      top; /**<  */
    short      left; /**<  */
    ushort     width; /**<  */
    ushort     height; /**<  */
    short      angle; /**<  */
    ubyte      priority; /**<  */
    ubyte      nRows; /**<  */
    ubyte      nDoodads; /**<  */
    ubyte      nOverlays; /**<  */
    ubyte      pad0[2]; /**<  */
}

/**
 * @brief xcb_xkb_section_iterator_t
 **/
struct xcb_xkb_section_iterator_t {
    xcb_xkb_section_t *data; /**<  */
    int                rem; /**<  */
    int                index; /**<  */
}

/**
 * @brief xcb_xkb_listing_t
 **/
struct xcb_xkb_listing_t {
    ushort flags; /**<  */
    ushort length; /**<  */
}

/**
 * @brief xcb_xkb_listing_iterator_t
 **/
struct xcb_xkb_listing_iterator_t {
    xcb_xkb_listing_t *data; /**<  */
    int                rem; /**<  */
    int                index; /**<  */
}

/**
 * @brief xcb_xkb_device_led_info_t
 **/
struct xcb_xkb_device_led_info_t {
    xcb_xkb_led_class_spec_t ledClass; /**<  */
    xcb_xkb_id_spec_t        ledID; /**<  */
    uint                     namesPresent; /**<  */
    uint                     mapsPresent; /**<  */
    uint                     physIndicators; /**<  */
    uint                     state; /**<  */
}

/**
 * @brief xcb_xkb_device_led_info_iterator_t
 **/
struct xcb_xkb_device_led_info_iterator_t {
    xcb_xkb_device_led_info_t *data; /**<  */
    int                        rem; /**<  */
    int                        index; /**<  */
}

enum XcbXkbError {
    BAD_DEVICE = 255,
    BAD_CLASS  = 254,
    BAD_ID     = 253
}

/** Opcode for xcb_xkb_keyboard. */
const ubyte XCB_XKB_KEYBOARD = 0;

/**
 * @brief xcb_xkb_keyboard_error_t
 **/
struct xcb_xkb_keyboard_error_t {
    ubyte  response_type; /**<  */
    ubyte  error_code; /**<  */
    ushort sequence; /**<  */
    uint   value; /**<  */
    ushort minorOpcode; /**<  */
    ubyte  majorOpcode; /**<  */
    ubyte  pad0[21]; /**<  */
}

enum XcbXkbSA {
    CLEAR_LOCKS      = 1,
    LATCH_TO_LOCK    = 2,
    USE_MOD_MAP_MODS = 4,
    GROUP_ABSOLUTE   = 4
}

enum XcbXkbSAType {
    NO_ACTION       = 0,
    SET_MODS        = 1,
    LATCH_MODS      = 2,
    LOCK_MODS       = 3,
    SET_GROUP       = 4,
    LATCH_GROUP     = 5,
    LOCK_GROUP      = 6,
    MOVE_PTR        = 7,
    PTR_BTN         = 8,
    LOCK_PTR_BTN    = 9,
    SET_PTR_DFLT    = 10,
    ISO_LOCK        = 11,
    TERMINATE       = 12,
    SWITCH_SCREEN   = 13,
    SET_CONTROLS    = 14,
    LOCK_CONTROLS   = 15,
    ACTION_MESSAGE  = 16,
    REDIRECT_KEY    = 17,
    DEVICE_BTN      = 18,
    LOCK_DEVICE_BTN = 19,
    DEVICE_VALUATOR = 20
}

/**
 * @brief xcb_xkb_sa_no_action_t
 **/
struct xcb_xkb_sa_no_action_t {
    ubyte type; /**<  */
    ubyte pad0[7]; /**<  */
}

/**
 * @brief xcb_xkb_sa_no_action_iterator_t
 **/
struct xcb_xkb_sa_no_action_iterator_t {
    xcb_xkb_sa_no_action_t *data; /**<  */
    int                     rem; /**<  */
    int                     index; /**<  */
}

/**
 * @brief xcb_xkb_sa_set_mods_t
 **/
struct xcb_xkb_sa_set_mods_t {
    ubyte type; /**<  */
    ubyte flags; /**<  */
    ubyte mask; /**<  */
    ubyte realMods; /**<  */
    ubyte vmodsHigh; /**<  */
    ubyte vmodsLow; /**<  */
    ubyte pad0[2]; /**<  */
}

/**
 * @brief xcb_xkb_sa_set_mods_iterator_t
 **/
struct xcb_xkb_sa_set_mods_iterator_t {
    xcb_xkb_sa_set_mods_t *data; /**<  */
    int                    rem; /**<  */
    int                    index; /**<  */
}

/**
 * @brief xcb_xkb_sa_latch_mods_t
 **/
struct xcb_xkb_sa_latch_mods_t {
    ubyte type; /**<  */
    ubyte flags; /**<  */
    ubyte mask; /**<  */
    ubyte realMods; /**<  */
    ubyte vmodsHigh; /**<  */
    ubyte vmodsLow; /**<  */
    ubyte pad0[2]; /**<  */
}

/**
 * @brief xcb_xkb_sa_latch_mods_iterator_t
 **/
struct xcb_xkb_sa_latch_mods_iterator_t {
    xcb_xkb_sa_latch_mods_t *data; /**<  */
    int                      rem; /**<  */
    int                      index; /**<  */
}

/**
 * @brief xcb_xkb_sa_lock_mods_t
 **/
struct xcb_xkb_sa_lock_mods_t {
    ubyte type; /**<  */
    ubyte flags; /**<  */
    ubyte mask; /**<  */
    ubyte realMods; /**<  */
    ubyte vmodsHigh; /**<  */
    ubyte vmodsLow; /**<  */
    ubyte pad0[2]; /**<  */
}

/**
 * @brief xcb_xkb_sa_lock_mods_iterator_t
 **/
struct xcb_xkb_sa_lock_mods_iterator_t {
    xcb_xkb_sa_lock_mods_t *data; /**<  */
    int                     rem; /**<  */
    int                     index; /**<  */
}

/**
 * @brief xcb_xkb_sa_set_group_t
 **/
struct xcb_xkb_sa_set_group_t {
    ubyte type; /**<  */
    ubyte flags; /**<  */
    byte  group; /**<  */
    ubyte pad0[5]; /**<  */
}

/**
 * @brief xcb_xkb_sa_set_group_iterator_t
 **/
struct xcb_xkb_sa_set_group_iterator_t {
    xcb_xkb_sa_set_group_t *data; /**<  */
    int                     rem; /**<  */
    int                     index; /**<  */
}

/**
 * @brief xcb_xkb_sa_latch_group_t
 **/
struct xcb_xkb_sa_latch_group_t {
    ubyte type; /**<  */
    ubyte flags; /**<  */
    byte  group; /**<  */
    ubyte pad0[5]; /**<  */
}

/**
 * @brief xcb_xkb_sa_latch_group_iterator_t
 **/
struct xcb_xkb_sa_latch_group_iterator_t {
    xcb_xkb_sa_latch_group_t *data; /**<  */
    int                       rem; /**<  */
    int                       index; /**<  */
}

/**
 * @brief xcb_xkb_sa_lock_group_t
 **/
struct xcb_xkb_sa_lock_group_t {
    ubyte type; /**<  */
    ubyte flags; /**<  */
    byte  group; /**<  */
    ubyte pad0[5]; /**<  */
}

/**
 * @brief xcb_xkb_sa_lock_group_iterator_t
 **/
struct xcb_xkb_sa_lock_group_iterator_t {
    xcb_xkb_sa_lock_group_t *data; /**<  */
    int                      rem; /**<  */
    int                      index; /**<  */
}

enum XcbXkbSAMovePtrFlag {
    NO_ACCELERATION = 1,
    MOVE_ABSOLUTE_X = 2,
    MOVE_ABSOLUTE_Y = 4
}

/**
 * @brief xcb_xkb_sa_move_ptr_t
 **/
struct xcb_xkb_sa_move_ptr_t {
    ubyte type; /**<  */
    ubyte flags; /**<  */
    byte  xHigh; /**<  */
    ubyte xLow; /**<  */
    byte  yHigh; /**<  */
    ubyte yLow; /**<  */
    ubyte pad0[2]; /**<  */
}

/**
 * @brief xcb_xkb_sa_move_ptr_iterator_t
 **/
struct xcb_xkb_sa_move_ptr_iterator_t {
    xcb_xkb_sa_move_ptr_t *data; /**<  */
    int                    rem; /**<  */
    int                    index; /**<  */
}

/**
 * @brief xcb_xkb_sa_ptr_btn_t
 **/
struct xcb_xkb_sa_ptr_btn_t {
    ubyte type; /**<  */
    ubyte flags; /**<  */
    ubyte count; /**<  */
    ubyte button; /**<  */
    ubyte pad0[4]; /**<  */
}

/**
 * @brief xcb_xkb_sa_ptr_btn_iterator_t
 **/
struct xcb_xkb_sa_ptr_btn_iterator_t {
    xcb_xkb_sa_ptr_btn_t *data; /**<  */
    int                   rem; /**<  */
    int                   index; /**<  */
}

/**
 * @brief xcb_xkb_sa_lock_ptr_btn_t
 **/
struct xcb_xkb_sa_lock_ptr_btn_t {
    ubyte type; /**<  */
    ubyte flags; /**<  */
    ubyte pad0; /**<  */
    ubyte button; /**<  */
    ubyte pad1[4]; /**<  */
}

/**
 * @brief xcb_xkb_sa_lock_ptr_btn_iterator_t
 **/
struct xcb_xkb_sa_lock_ptr_btn_iterator_t {
    xcb_xkb_sa_lock_ptr_btn_t *data; /**<  */
    int                        rem; /**<  */
    int                        index; /**<  */
}

enum XcbXkbSASetPtrDfltFlag {
    DFLT_BTN_ABSOLUTE  = 2,
    AFFECT_DFLT_BUTTON = 1
}

/**
 * @brief xcb_xkb_sa_set_ptr_dflt_t
 **/
struct xcb_xkb_sa_set_ptr_dflt_t {
    ubyte type; /**<  */
    ubyte flags; /**<  */
    ubyte affect; /**<  */
    byte  value; /**<  */
    ubyte pad0[4]; /**<  */
}

/**
 * @brief xcb_xkb_sa_set_ptr_dflt_iterator_t
 **/
struct xcb_xkb_sa_set_ptr_dflt_iterator_t {
    xcb_xkb_sa_set_ptr_dflt_t *data; /**<  */
    int                        rem; /**<  */
    int                        index; /**<  */
}

enum XcbXkbSAIsoLockFlag {
    NO_LOCK           = 1,
    NO_UNLOCK         = 2,
    USE_MOD_MAP_MODS  = 4,
    GROUP_ABSOLUTE    = 4,
    ISO_DFLT_IS_GROUP = 8
}

enum XcbXkbSAIsoLockNoAffect {
    CTRLS = 8,
    PTR   = 16,
    GROUP = 32,
    MODS  = 64
}

/**
 * @brief xcb_xkb_sa_iso_lock_t
 **/
struct xcb_xkb_sa_iso_lock_t {
    ubyte type; /**<  */
    ubyte flags; /**<  */
    ubyte mask; /**<  */
    ubyte realMods; /**<  */
    byte  group; /**<  */
    ubyte affect; /**<  */
    ubyte vmodsHigh; /**<  */
    ubyte vmodsLow; /**<  */
}

/**
 * @brief xcb_xkb_sa_iso_lock_iterator_t
 **/
struct xcb_xkb_sa_iso_lock_iterator_t {
    xcb_xkb_sa_iso_lock_t *data; /**<  */
    int                    rem; /**<  */
    int                    index; /**<  */
}

/**
 * @brief xcb_xkb_sa_terminate_t
 **/
struct xcb_xkb_sa_terminate_t {
    ubyte type; /**<  */
    ubyte pad0[7]; /**<  */
}

/**
 * @brief xcb_xkb_sa_terminate_iterator_t
 **/
struct xcb_xkb_sa_terminate_iterator_t {
    xcb_xkb_sa_terminate_t *data; /**<  */
    int                     rem; /**<  */
    int                     index; /**<  */
}

enum XcbXkbSwitchScreenFlag {
    APPLICATION = 1,
    ABSOLUTE    = 4
}

/**
 * @brief xcb_xkb_sa_switch_screen_t
 **/
struct xcb_xkb_sa_switch_screen_t {
    ubyte type; /**<  */
    ubyte flags; /**<  */
    byte  newScreen; /**<  */
    ubyte pad0[5]; /**<  */
}

/**
 * @brief xcb_xkb_sa_switch_screen_iterator_t
 **/
struct xcb_xkb_sa_switch_screen_iterator_t {
    xcb_xkb_sa_switch_screen_t *data; /**<  */
    int                         rem; /**<  */
    int                         index; /**<  */
}

enum XcbXkbBoolCtrlsHigh {
    ACCESS_X_FEEDBACK = 1,
    AUDIBLE_BELL      = 2,
    OVERLAY_1         = 4,
    OVERLAY_2         = 8,
    IGNORE_GROUP_LOCK = 16
}

enum XcbXkbBoolCtrlsLow {
    REPEAT_KEYS      = 1,
    SLOW_KEYS        = 2,
    BOUNCE_KEYS      = 4,
    STICKY_KEYS      = 8,
    MOUSE_KEYS       = 16,
    MOUSE_KEYS_ACCEL = 32,
    ACCESS_X_KEYS    = 64,
    ACCESS_X_TIMEOUT = 128
}

/**
 * @brief xcb_xkb_sa_set_controls_t
 **/
struct xcb_xkb_sa_set_controls_t {
    ubyte type; /**<  */
    ubyte pad0[3]; /**<  */
    ubyte boolCtrlsHigh; /**<  */
    ubyte boolCtrlsLow; /**<  */
    ubyte pad1[2]; /**<  */
}

/**
 * @brief xcb_xkb_sa_set_controls_iterator_t
 **/
struct xcb_xkb_sa_set_controls_iterator_t {
    xcb_xkb_sa_set_controls_t *data; /**<  */
    int                        rem; /**<  */
    int                        index; /**<  */
}

/**
 * @brief xcb_xkb_sa_lock_controls_t
 **/
struct xcb_xkb_sa_lock_controls_t {
    ubyte type; /**<  */
    ubyte pad0[3]; /**<  */
    ubyte boolCtrlsHigh; /**<  */
    ubyte boolCtrlsLow; /**<  */
    ubyte pad1[2]; /**<  */
}

/**
 * @brief xcb_xkb_sa_lock_controls_iterator_t
 **/
struct xcb_xkb_sa_lock_controls_iterator_t {
    xcb_xkb_sa_lock_controls_t *data; /**<  */
    int                         rem; /**<  */
    int                         index; /**<  */
}

enum XcbXkbActionMessageFlag {
    ON_PRESS      = 1,
    ON_RELEASE    = 2,
    GEN_KEY_EVENT = 4
}

/**
 * @brief xcb_xkb_sa_action_message_t
 **/
struct xcb_xkb_sa_action_message_t {
    ubyte type; /**<  */
    ubyte flags; /**<  */
    ubyte message[6]; /**<  */
}

/**
 * @brief xcb_xkb_sa_action_message_iterator_t
 **/
struct xcb_xkb_sa_action_message_iterator_t {
    xcb_xkb_sa_action_message_t *data; /**<  */
    int                          rem; /**<  */
    int                          index; /**<  */
}

/**
 * @brief xcb_xkb_sa_redirect_key_t
 **/
struct xcb_xkb_sa_redirect_key_t {
    ubyte         type; /**<  */
    xcb_keycode_t newkey; /**<  */
    ubyte         mask; /**<  */
    ubyte         realModifiers; /**<  */
    ubyte         vmodsMaskHigh; /**<  */
    ubyte         vmodsMaskLow; /**<  */
    ubyte         vmodsHigh; /**<  */
    ubyte         vmodsLow; /**<  */
}

/**
 * @brief xcb_xkb_sa_redirect_key_iterator_t
 **/
struct xcb_xkb_sa_redirect_key_iterator_t {
    xcb_xkb_sa_redirect_key_t *data; /**<  */
    int                        rem; /**<  */
    int                        index; /**<  */
}

/**
 * @brief xcb_xkb_sa_device_btn_t
 **/
struct xcb_xkb_sa_device_btn_t {
    ubyte type; /**<  */
    ubyte flags; /**<  */
    ubyte count; /**<  */
    ubyte button; /**<  */
    ubyte device; /**<  */
    ubyte pad0[3]; /**<  */
}

/**
 * @brief xcb_xkb_sa_device_btn_iterator_t
 **/
struct xcb_xkb_sa_device_btn_iterator_t {
    xcb_xkb_sa_device_btn_t *data; /**<  */
    int                      rem; /**<  */
    int                      index; /**<  */
}

enum XcbXkbLockDeviceFlags {
    NO_LOCK   = 1,
    NO_UNLOCK = 2
}

/**
 * @brief xcb_xkb_sa_lock_device_btn_t
 **/
struct xcb_xkb_sa_lock_device_btn_t {
    ubyte type; /**<  */
    ubyte flags; /**<  */
    ubyte pad0; /**<  */
    ubyte button; /**<  */
    ubyte device; /**<  */
}

/**
 * @brief xcb_xkb_sa_lock_device_btn_iterator_t
 **/
struct xcb_xkb_sa_lock_device_btn_iterator_t {
    xcb_xkb_sa_lock_device_btn_t *data; /**<  */
    int                           rem; /**<  */
    int                           index; /**<  */
}

enum XcbXkbSAValWhat {
    IGNORE_VAL       = 0,
    SET_VAL_MIN      = 1,
    SET_VAL_CENTER   = 2,
    SET_VAL_MAX      = 3,
    SET_VAL_RELATIVE = 4,
    SET_VAL_ABSOLUTE = 5
}

/**
 * @brief xcb_xkb_sa_device_valuator_t
 **/
struct xcb_xkb_sa_device_valuator_t {
    ubyte type; /**<  */
    ubyte device; /**<  */
    ubyte val1what; /**<  */
    ubyte val1index; /**<  */
    ubyte val1value; /**<  */
    ubyte val2what; /**<  */
    ubyte val2index; /**<  */
    ubyte val2value; /**<  */
}

/**
 * @brief xcb_xkb_sa_device_valuator_iterator_t
 **/
struct xcb_xkb_sa_device_valuator_iterator_t {
    xcb_xkb_sa_device_valuator_t *data; /**<  */
    int                           rem; /**<  */
    int                           index; /**<  */
}

/**
 * @brief xcb_xkb_action_t
 **/
union xcb_xkb_action_t {
    xcb_xkb_sa_no_action_t       noaction; /**<  */
    xcb_xkb_sa_set_mods_t        setmods; /**<  */
    xcb_xkb_sa_latch_mods_t      latchmods; /**<  */
    xcb_xkb_sa_lock_mods_t       lockmods; /**<  */
    xcb_xkb_sa_set_group_t       setgroup; /**<  */
    xcb_xkb_sa_latch_group_t     latchgroup; /**<  */
    xcb_xkb_sa_lock_group_t      lockgroup; /**<  */
    xcb_xkb_sa_move_ptr_t        moveptr; /**<  */
    xcb_xkb_sa_ptr_btn_t         ptrbtn; /**<  */
    xcb_xkb_sa_lock_ptr_btn_t    lockptrbtn; /**<  */
    xcb_xkb_sa_set_ptr_dflt_t    setptrdflt; /**<  */
    xcb_xkb_sa_iso_lock_t        isolock; /**<  */
    xcb_xkb_sa_terminate_t       terminate; /**<  */
    xcb_xkb_sa_switch_screen_t   switchscreen; /**<  */
    xcb_xkb_sa_set_controls_t    setcontrols; /**<  */
    xcb_xkb_sa_lock_controls_t   lockcontrols; /**<  */
    xcb_xkb_sa_action_message_t  message; /**<  */
    xcb_xkb_sa_redirect_key_t    redirect; /**<  */
    xcb_xkb_sa_device_btn_t      devbtn; /**<  */
    xcb_xkb_sa_lock_device_btn_t lockdevbtn; /**<  */
    xcb_xkb_sa_device_valuator_t devval; /**<  */
    ubyte                        type; /**<  */
}

/**
 * @brief xcb_xkb_action_iterator_t
 **/
struct xcb_xkb_action_iterator_t {
    xcb_xkb_action_t *data; /**<  */
    int               rem; /**<  */
    int               index; /**<  */
}

/**
 * @brief xcb_xkb_use_extension_cookie_t
 **/
struct xcb_xkb_use_extension_cookie_t {
    uint sequence; /**<  */
}

/** Opcode for xcb_xkb_use_extension. */
const ubyte XCB_XKB_USE_EXTENSION = 0;

/**
 * @brief xcb_xkb_use_extension_request_t
 **/
struct xcb_xkb_use_extension_request_t {
    ubyte  major_opcode; /**<  */
    ubyte  minor_opcode; /**<  */
    ushort length; /**<  */
    ushort wantedMajor; /**<  */
    ushort wantedMinor; /**<  */
}

/**
 * @brief xcb_xkb_use_extension_reply_t
 **/
struct xcb_xkb_use_extension_reply_t {
    ubyte  response_type; /**<  */
    ubyte  supported; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    ushort serverMajor; /**<  */
    ushort serverMinor; /**<  */
    ubyte  pad0[20]; /**<  */
}

/**
 * @brief xcb_xkb_select_events_details_t
 **/
struct xcb_xkb_select_events_details_t {
    ushort affectNewKeyboard; /**<  */
    ushort newKeyboardDetails; /**<  */
    ushort affectState; /**<  */
    ushort stateDetails; /**<  */
    uint   affectCtrls; /**<  */
    uint   ctrlDetails; /**<  */
    uint   affectIndicatorState; /**<  */
    uint   indicatorStateDetails; /**<  */
    uint   affectIndicatorMap; /**<  */
    uint   indicatorMapDetails; /**<  */
    ushort affectNames; /**<  */
    ushort namesDetails; /**<  */
    ubyte  affectCompat; /**<  */
    ubyte  compatDetails; /**<  */
    ubyte  affectBell; /**<  */
    ubyte  bellDetails; /**<  */
    ubyte  affectMsgDetails; /**<  */
    ubyte  msgDetails; /**<  */
    ushort affectAccessX; /**<  */
    ushort accessXDetails; /**<  */
    ushort affectExtDev; /**<  */
    ushort extdevDetails; /**<  */
}

/** Opcode for xcb_xkb_select_events. */
const ubyte XCB_XKB_SELECT_EVENTS = 1;

/**
 * @brief xcb_xkb_select_events_request_t
 **/
struct xcb_xkb_select_events_request_t {
    ubyte                 major_opcode; /**<  */
    ubyte                 minor_opcode; /**<  */
    ushort                length; /**<  */
    xcb_xkb_device_spec_t deviceSpec; /**<  */
    ushort                affectWhich; /**<  */
    ushort                clear; /**<  */
    ushort                selectAll; /**<  */
    ushort                affectMap; /**<  */
    ushort                map; /**<  */
}

/** Opcode for xcb_xkb_bell. */
const ubyte XCB_XKB_BELL = 3;

/**
 * @brief xcb_xkb_bell_request_t
 **/
struct xcb_xkb_bell_request_t {
    ubyte                     major_opcode; /**<  */
    ubyte                     minor_opcode; /**<  */
    ushort                    length; /**<  */
    xcb_xkb_device_spec_t     deviceSpec; /**<  */
    xcb_xkb_bell_class_spec_t bellClass; /**<  */
    xcb_xkb_id_spec_t         bellID; /**<  */
    byte                      percent; /**<  */
    ubyte                     forceSound; /**<  */
    ubyte                     eventOnly; /**<  */
    ubyte                     pad0; /**<  */
    short                     pitch; /**<  */
    short                     duration; /**<  */
    ubyte                     pad1[2]; /**<  */
    xcb_atom_t                name; /**<  */
    xcb_window_t              window; /**<  */
}

/**
 * @brief xcb_xkb_get_state_cookie_t
 **/
struct xcb_xkb_get_state_cookie_t {
    uint sequence; /**<  */
}

/** Opcode for xcb_xkb_get_state. */
const ubyte XCB_XKB_GET_STATE = 4;

/**
 * @brief xcb_xkb_get_state_request_t
 **/
struct xcb_xkb_get_state_request_t {
    ubyte                 major_opcode; /**<  */
    ubyte                 minor_opcode; /**<  */
    ushort                length; /**<  */
    xcb_xkb_device_spec_t deviceSpec; /**<  */
    ubyte                 pad0[2]; /**<  */
}

/**
 * @brief xcb_xkb_get_state_reply_t
 **/
struct xcb_xkb_get_state_reply_t {
    ubyte  response_type; /**<  */
    ubyte  deviceID; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    ubyte  mods; /**<  */
    ubyte  baseMods; /**<  */
    ubyte  latchedMods; /**<  */
    ubyte  lockedMods; /**<  */
    ubyte  group; /**<  */
    ubyte  lockedGroup; /**<  */
    short  baseGroup; /**<  */
    short  latchedGroup; /**<  */
    ubyte  compatState; /**<  */
    ubyte  grabMods; /**<  */
    ubyte  compatGrabMods; /**<  */
    ubyte  lookupMods; /**<  */
    ubyte  compatLookupMods; /**<  */
    ubyte  pad0; /**<  */
    ushort ptrBtnState; /**<  */
    ubyte  pad1[6]; /**<  */
}

/** Opcode for xcb_xkb_latch_lock_state. */
const ubyte XCB_XKB_LATCH_LOCK_STATE = 5;

/**
 * @brief xcb_xkb_latch_lock_state_request_t
 **/
struct xcb_xkb_latch_lock_state_request_t {
    ubyte                 major_opcode; /**<  */
    ubyte                 minor_opcode; /**<  */
    ushort                length; /**<  */
    xcb_xkb_device_spec_t deviceSpec; /**<  */
    ubyte                 affectModLocks; /**<  */
    ubyte                 modLocks; /**<  */
    ubyte                 lockGroup; /**<  */
    ubyte                 groupLock; /**<  */
    ubyte                 affectModLatches; /**<  */
    ubyte                 pad0; /**<  */
    ubyte                 latchGroup; /**<  */
    ushort                groupLatch; /**<  */
}

/**
 * @brief xcb_xkb_get_controls_cookie_t
 **/
struct xcb_xkb_get_controls_cookie_t {
    uint sequence; /**<  */
}

/** Opcode for xcb_xkb_get_controls. */
const ubyte XCB_XKB_GET_CONTROLS = 6;

/**
 * @brief xcb_xkb_get_controls_request_t
 **/
struct xcb_xkb_get_controls_request_t {
    ubyte                 major_opcode; /**<  */
    ubyte                 minor_opcode; /**<  */
    ushort                length; /**<  */
    xcb_xkb_device_spec_t deviceSpec; /**<  */
    ubyte                 pad0[2]; /**<  */
}

/**
 * @brief xcb_xkb_get_controls_reply_t
 **/
struct xcb_xkb_get_controls_reply_t {
    ubyte               response_type; /**<  */
    ubyte               deviceID; /**<  */
    ushort              sequence; /**<  */
    uint                length; /**<  */
    ubyte               mouseKeysDfltBtn; /**<  */
    ubyte               numGroups; /**<  */
    ubyte               groupsWrap; /**<  */
    ubyte               internalModsMask; /**<  */
    ubyte               ignoreLockModsMask; /**<  */
    ubyte               internalModsRealMods; /**<  */
    ubyte               ignoreLockModsRealMods; /**<  */
    ubyte               pad0; /**<  */
    ushort              internalModsVmods; /**<  */
    ushort              ignoreLockModsVmods; /**<  */
    ushort              repeatDelay; /**<  */
    ushort              repeatInterval; /**<  */
    ushort              slowKeysDelay; /**<  */
    ushort              debounceDelay; /**<  */
    ushort              mouseKeysDelay; /**<  */
    ushort              mouseKeysInterval; /**<  */
    ushort              mouseKeysTimeToMax; /**<  */
    ushort              mouseKeysMaxSpeed; /**<  */
    short               mouseKeysCurve; /**<  */
    xcb_xkb_ax_option_t accessXOption; /**<  */
    ushort              accessXTimeout; /**<  */
    xcb_xkb_ax_option_t accessXTimeoutOptionsMask; /**<  */
    xcb_xkb_ax_option_t accessXTimeoutOptionsValues; /**<  */
    ubyte               pad1[2]; /**<  */
    uint                accessXTimeoutMask; /**<  */
    uint                accessXTimeoutValues; /**<  */
    uint                enabledControls; /**<  */
    ubyte               perKeyRepeat[32]; /**<  */
}

/** Opcode for xcb_xkb_set_controls. */
const ubyte XCB_XKB_SET_CONTROLS = 7;

/**
 * @brief xcb_xkb_set_controls_request_t
 **/
struct xcb_xkb_set_controls_request_t {
    ubyte                 major_opcode; /**<  */
    ubyte                 minor_opcode; /**<  */
    ushort                length; /**<  */
    xcb_xkb_device_spec_t deviceSpec; /**<  */
    ubyte                 affectInternalRealMods; /**<  */
    ubyte                 internalRealMods; /**<  */
    ubyte                 affectIgnoreLockRealMods; /**<  */
    ubyte                 ignoreLockRealMods; /**<  */
    ushort                affectInternalVirtualMods; /**<  */
    ushort                internalVirtualMods; /**<  */
    ushort                affectIgnoreLockVirtualMods; /**<  */
    ushort                ignoreLockVirtualMods; /**<  */
    ubyte                 mouseKeysDfltBtn; /**<  */
    ubyte                 groupsWrap; /**<  */
    xcb_xkb_ax_option_t   accessXOptions; /**<  */
    ubyte                 pad0[2]; /**<  */
    uint                  affectEnabledControls; /**<  */
    uint                  enabledControls; /**<  */
    uint                  changeControls; /**<  */
    ushort                repeatDelay; /**<  */
    ushort                repeatInterval; /**<  */
    ushort                slowKeysDelay; /**<  */
    ushort                debounceDelay; /**<  */
    ushort                mouseKeysDelay; /**<  */
    ushort                mouseKeysInterval; /**<  */
    ushort                mouseKeysTimeToMax; /**<  */
    ushort                mouseKeysMaxSpeed; /**<  */
    short                 mouseKeysCurve; /**<  */
    ushort                accessXTimeout; /**<  */
    uint                  accessXTimeoutMask; /**<  */
    uint                  accessXTimeoutValues; /**<  */
    xcb_xkb_ax_option_t   accessXTimeoutOptionsMask; /**<  */
    xcb_xkb_ax_option_t   accessXTimeoutOptionsValues; /**<  */
    ubyte                 perKeyRepeat[32]; /**<  */
}

/**
 * @brief xcb_xkb_get_map_cookie_t
 **/
struct xcb_xkb_get_map_cookie_t {
    uint sequence; /**<  */
}

/** Opcode for xcb_xkb_get_map. */
const ubyte XCB_XKB_GET_MAP = 8;

/**
 * @brief xcb_xkb_get_map_request_t
 **/
struct xcb_xkb_get_map_request_t {
    ubyte                 major_opcode; /**<  */
    ubyte                 minor_opcode; /**<  */
    ushort                length; /**<  */
    xcb_xkb_device_spec_t deviceSpec; /**<  */
    ushort                full; /**<  */
    ushort                partial; /**<  */
    ubyte                 firstType; /**<  */
    ubyte                 nTypes; /**<  */
    xcb_keycode_t         firstKeySym; /**<  */
    ubyte                 nKeySyms; /**<  */
    xcb_keycode_t         firstKeyAction; /**<  */
    ubyte                 nKeyActions; /**<  */
    xcb_keycode_t         firstKeyBehavior; /**<  */
    ubyte                 nKeyBehaviors; /**<  */
    ushort                virtualMods; /**<  */
    xcb_keycode_t         firstKeyExplicit; /**<  */
    ubyte                 nKeyExplicit; /**<  */
    xcb_keycode_t         firstModMapKey; /**<  */
    ubyte                 nModMapKeys; /**<  */
    xcb_keycode_t         firstVModMapKey; /**<  */
    ubyte                 nVModMapKeys; /**<  */
    ubyte                 pad0[2]; /**<  */
}

/**
 * @brief xcb_xkb_get_map_map_t
 **/
struct xcb_xkb_get_map_map_t {
    xcb_xkb_key_type_t      *types_rtrn; /**<  */
    xcb_xkb_key_sym_map_t   *syms_rtrn; /**<  */
    ubyte                   *acts_rtrn_count; /**<  */
    xcb_xkb_action_t        *acts_rtrn_acts; /**<  */
    xcb_xkb_set_behavior_t  *behaviors_rtrn; /**<  */
    ubyte                   *vmods_rtrn; /**<  */
    xcb_xkb_set_explicit_t  *explicit_rtrn; /**<  */
    xcb_xkb_key_mod_map_t   *modmap_rtrn; /**<  */
    xcb_xkb_key_v_mod_map_t *vmodmap_rtrn; /**<  */
}

/**
 * @brief xcb_xkb_get_map_reply_t
 **/
struct xcb_xkb_get_map_reply_t {
    ubyte         response_type; /**<  */
    ubyte         deviceID; /**<  */
    ushort        sequence; /**<  */
    uint          length; /**<  */
    ubyte         pad0[2]; /**<  */
    xcb_keycode_t minKeyCode; /**<  */
    xcb_keycode_t maxKeyCode; /**<  */
    ushort        present; /**<  */
    ubyte         firstType; /**<  */
    ubyte         nTypes; /**<  */
    ubyte         totalTypes; /**<  */
    xcb_keycode_t firstKeySym; /**<  */
    ushort        totalSyms; /**<  */
    ubyte         nKeySyms; /**<  */
    xcb_keycode_t firstKeyAction; /**<  */
    ushort        totalActions; /**<  */
    ubyte         nKeyActions; /**<  */
    xcb_keycode_t firstKeyBehavior; /**<  */
    ubyte         nKeyBehaviors; /**<  */
    ubyte         totalKeyBehaviors; /**<  */
    xcb_keycode_t firstKeyExplicit; /**<  */
    ubyte         nKeyExplicit; /**<  */
    ubyte         totalKeyExplicit; /**<  */
    xcb_keycode_t firstModMapKey; /**<  */
    ubyte         nModMapKeys; /**<  */
    ubyte         totalModMapKeys; /**<  */
    xcb_keycode_t firstVModMapKey; /**<  */
    ubyte         nVModMapKeys; /**<  */
    ubyte         totalVModMapKeys; /**<  */
    ubyte         pad1; /**<  */
    ushort        virtualMods; /**<  */
}

/**
 * @brief xcb_xkb_set_map_values_t
 **/
struct xcb_xkb_set_map_values_t {
    xcb_xkb_set_key_type_t  *types; /**<  */
    xcb_xkb_key_sym_map_t   *syms; /**<  */
    ubyte                   *actionsCount; /**<  */
    xcb_xkb_action_t        *actions; /**<  */
    xcb_xkb_set_behavior_t  *behaviors; /**<  */
    ubyte                   *vmods; /**<  */
    xcb_xkb_set_explicit_t  *explicit; /**<  */
    xcb_xkb_key_mod_map_t   *modmap; /**<  */
    xcb_xkb_key_v_mod_map_t *vmodmap; /**<  */
}

/** Opcode for xcb_xkb_set_map. */
const ubyte XCB_XKB_SET_MAP = 9;

/**
 * @brief xcb_xkb_set_map_request_t
 **/
struct xcb_xkb_set_map_request_t {
    ubyte                 major_opcode; /**<  */
    ubyte                 minor_opcode; /**<  */
    ushort                length; /**<  */
    xcb_xkb_device_spec_t deviceSpec; /**<  */
    ushort                present; /**<  */
    ushort                flags; /**<  */
    xcb_keycode_t         minKeyCode; /**<  */
    xcb_keycode_t         maxKeyCode; /**<  */
    ubyte                 firstType; /**<  */
    ubyte                 nTypes; /**<  */
    xcb_keycode_t         firstKeySym; /**<  */
    ubyte                 nKeySyms; /**<  */
    ushort                totalSyms; /**<  */
    xcb_keycode_t         firstKeyAction; /**<  */
    ubyte                 nKeyActions; /**<  */
    ushort                totalActions; /**<  */
    xcb_keycode_t         firstKeyBehavior; /**<  */
    ubyte                 nKeyBehaviors; /**<  */
    ubyte                 totalKeyBehaviors; /**<  */
    xcb_keycode_t         firstKeyExplicit; /**<  */
    ubyte                 nKeyExplicit; /**<  */
    ubyte                 totalKeyExplicit; /**<  */
    xcb_keycode_t         firstModMapKey; /**<  */
    ubyte                 nModMapKeys; /**<  */
    ubyte                 totalModMapKeys; /**<  */
    xcb_keycode_t         firstVModMapKey; /**<  */
    ubyte                 nVModMapKeys; /**<  */
    ubyte                 totalVModMapKeys; /**<  */
    ushort                virtualMods; /**<  */
}

/**
 * @brief xcb_xkb_get_compat_map_cookie_t
 **/
struct xcb_xkb_get_compat_map_cookie_t {
    uint sequence; /**<  */
}

/** Opcode for xcb_xkb_get_compat_map. */
const ubyte XCB_XKB_GET_COMPAT_MAP = 10;

/**
 * @brief xcb_xkb_get_compat_map_request_t
 **/
struct xcb_xkb_get_compat_map_request_t {
    ubyte                 major_opcode; /**<  */
    ubyte                 minor_opcode; /**<  */
    ushort                length; /**<  */
    xcb_xkb_device_spec_t deviceSpec; /**<  */
    ubyte                 groups; /**<  */
    ubyte                 getAllSI; /**<  */
    ushort                firstSI; /**<  */
    ushort                nSI; /**<  */
}

/**
 * @brief xcb_xkb_get_compat_map_reply_t
 **/
struct xcb_xkb_get_compat_map_reply_t {
    ubyte  response_type; /**<  */
    ubyte  deviceID; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    ubyte  groupsRtrn; /**<  */
    ubyte  pad0; /**<  */
    ushort firstSIRtrn; /**<  */
    ushort nSIRtrn; /**<  */
    ushort nTotalSI; /**<  */
    ubyte  pad1[16]; /**<  */
}

/** Opcode for xcb_xkb_set_compat_map. */
const ubyte XCB_XKB_SET_COMPAT_MAP = 11;

/**
 * @brief xcb_xkb_set_compat_map_request_t
 **/
struct xcb_xkb_set_compat_map_request_t {
    ubyte                 major_opcode; /**<  */
    ubyte                 minor_opcode; /**<  */
    ushort                length; /**<  */
    xcb_xkb_device_spec_t deviceSpec; /**<  */
    ubyte                 pad0; /**<  */
    ubyte                 recomputeActions; /**<  */
    ubyte                 truncateSI; /**<  */
    ubyte                 groups; /**<  */
    ushort                firstSI; /**<  */
    ushort                nSI; /**<  */
    ubyte                 pad1[2]; /**<  */
}

/**
 * @brief xcb_xkb_get_indicator_state_cookie_t
 **/
struct xcb_xkb_get_indicator_state_cookie_t {
    uint sequence; /**<  */
}

/** Opcode for xcb_xkb_get_indicator_state. */
const ubyte XCB_XKB_GET_INDICATOR_STATE = 12;

/**
 * @brief xcb_xkb_get_indicator_state_request_t
 **/
struct xcb_xkb_get_indicator_state_request_t {
    ubyte                 major_opcode; /**<  */
    ubyte                 minor_opcode; /**<  */
    ushort                length; /**<  */
    xcb_xkb_device_spec_t deviceSpec; /**<  */
    ubyte                 pad0[2]; /**<  */
}

/**
 * @brief xcb_xkb_get_indicator_state_reply_t
 **/
struct xcb_xkb_get_indicator_state_reply_t {
    ubyte  response_type; /**<  */
    ubyte  deviceID; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    uint   state; /**<  */
    ubyte  pad0[20]; /**<  */
}

/**
 * @brief xcb_xkb_get_indicator_map_cookie_t
 **/
struct xcb_xkb_get_indicator_map_cookie_t {
    uint sequence; /**<  */
}

/** Opcode for xcb_xkb_get_indicator_map. */
const ubyte XCB_XKB_GET_INDICATOR_MAP = 13;

/**
 * @brief xcb_xkb_get_indicator_map_request_t
 **/
struct xcb_xkb_get_indicator_map_request_t {
    ubyte                 major_opcode; /**<  */
    ubyte                 minor_opcode; /**<  */
    ushort                length; /**<  */
    xcb_xkb_device_spec_t deviceSpec; /**<  */
    ubyte                 pad0[2]; /**<  */
    uint                  which; /**<  */
}

/**
 * @brief xcb_xkb_get_indicator_map_reply_t
 **/
struct xcb_xkb_get_indicator_map_reply_t {
    ubyte  response_type; /**<  */
    ubyte  deviceID; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    uint   which; /**<  */
    uint   realIndicators; /**<  */
    ubyte  nIndicators; /**<  */
    ubyte  pad0[15]; /**<  */
}

/** Opcode for xcb_xkb_set_indicator_map. */
const ubyte XCB_XKB_SET_INDICATOR_MAP = 14;

/**
 * @brief xcb_xkb_set_indicator_map_request_t
 **/
struct xcb_xkb_set_indicator_map_request_t {
    ubyte                 major_opcode; /**<  */
    ubyte                 minor_opcode; /**<  */
    ushort                length; /**<  */
    xcb_xkb_device_spec_t deviceSpec; /**<  */
    ubyte                 pad0[2]; /**<  */
    uint                  which; /**<  */
}

/**
 * @brief xcb_xkb_get_named_indicator_cookie_t
 **/
struct xcb_xkb_get_named_indicator_cookie_t {
    uint sequence; /**<  */
}

/** Opcode for xcb_xkb_get_named_indicator. */
const ubyte XCB_XKB_GET_NAMED_INDICATOR = 15;

/**
 * @brief xcb_xkb_get_named_indicator_request_t
 **/
struct xcb_xkb_get_named_indicator_request_t {
    ubyte                    major_opcode; /**<  */
    ubyte                    minor_opcode; /**<  */
    ushort                   length; /**<  */
    xcb_xkb_device_spec_t    deviceSpec; /**<  */
    xcb_xkb_led_class_spec_t ledClass; /**<  */
    xcb_xkb_id_spec_t        ledID; /**<  */
    ubyte                    pad0[2]; /**<  */
    xcb_atom_t               indicator; /**<  */
}

/**
 * @brief xcb_xkb_get_named_indicator_reply_t
 **/
struct xcb_xkb_get_named_indicator_reply_t {
    ubyte      response_type; /**<  */
    ubyte      deviceID; /**<  */
    ushort     sequence; /**<  */
    uint       length; /**<  */
    xcb_atom_t indicator; /**<  */
    ubyte      found; /**<  */
    ubyte      on; /**<  */
    ubyte      realIndicator; /**<  */
    ubyte      ndx; /**<  */
    ubyte      map_flags; /**<  */
    ubyte      map_whichGroups; /**<  */
    ubyte      map_groups; /**<  */
    ubyte      map_whichMods; /**<  */
    ubyte      map_mods; /**<  */
    ubyte      map_realMods; /**<  */
    ushort     map_vmod; /**<  */
    uint       map_ctrls; /**<  */
    ubyte      pad0[3]; /**<  */
}

/** Opcode for xcb_xkb_set_named_indicator. */
const ubyte XCB_XKB_SET_NAMED_INDICATOR = 16;

/**
 * @brief xcb_xkb_set_named_indicator_request_t
 **/
struct xcb_xkb_set_named_indicator_request_t {
    ubyte                    major_opcode; /**<  */
    ubyte                    minor_opcode; /**<  */
    ushort                   length; /**<  */
    xcb_xkb_device_spec_t    deviceSpec; /**<  */
    xcb_xkb_led_class_spec_t ledClass; /**<  */
    xcb_xkb_id_spec_t        ledID; /**<  */
    ubyte                    pad0[2]; /**<  */
    xcb_atom_t               indicator; /**<  */
    ubyte                    setState; /**<  */
    ubyte                    on; /**<  */
    ubyte                    setMap; /**<  */
    ubyte                    createMap; /**<  */
    ubyte                    pad1; /**<  */
    ubyte                    map_flags; /**<  */
    ubyte                    map_whichGroups; /**<  */
    ubyte                    map_groups; /**<  */
    ubyte                    map_whichMods; /**<  */
    ubyte                    map_realMods; /**<  */
    ushort                   map_vmods; /**<  */
    uint                     map_ctrls; /**<  */
}

/**
 * @brief xcb_xkb_get_names_cookie_t
 **/
struct xcb_xkb_get_names_cookie_t {
    uint sequence; /**<  */
}

/** Opcode for xcb_xkb_get_names. */
const ubyte XCB_XKB_GET_NAMES = 17;

/**
 * @brief xcb_xkb_get_names_request_t
 **/
struct xcb_xkb_get_names_request_t {
    ubyte                 major_opcode; /**<  */
    ubyte                 minor_opcode; /**<  */
    ushort                length; /**<  */
    xcb_xkb_device_spec_t deviceSpec; /**<  */
    ubyte                 pad0[2]; /**<  */
    uint                  which; /**<  */
}

/**
 * @brief xcb_xkb_get_names_value_list_t
 **/
struct xcb_xkb_get_names_value_list_t {
    xcb_atom_t           keycodesName; /**<  */
    xcb_atom_t           geometryName; /**<  */
    xcb_atom_t           symbolsName; /**<  */
    xcb_atom_t           physSymbolsName; /**<  */
    xcb_atom_t           typesName; /**<  */
    xcb_atom_t           compatName; /**<  */
    xcb_atom_t          *typeNames; /**<  */
    ubyte               *nLevelsPerType; /**<  */
    xcb_atom_t          *ktLevelNames; /**<  */
    xcb_atom_t          *indicatorNames; /**<  */
    xcb_atom_t          *virtualModNames; /**<  */
    xcb_atom_t          *groups; /**<  */
    xcb_xkb_key_name_t  *keyNames; /**<  */
    xcb_xkb_key_alias_t *keyAliases; /**<  */
    xcb_atom_t          *radioGroupNames; /**<  */
}

/**
 * @brief xcb_xkb_get_names_reply_t
 **/
struct xcb_xkb_get_names_reply_t {
    ubyte         response_type; /**<  */
    ubyte         deviceID; /**<  */
    ushort        sequence; /**<  */
    uint          length; /**<  */
    uint          which; /**<  */
    xcb_keycode_t minKeyCode; /**<  */
    xcb_keycode_t maxKeyCode; /**<  */
    ubyte         nTypes; /**<  */
    ubyte         groupNames; /**<  */
    ushort        virtualMods; /**<  */
    xcb_keycode_t firstKey; /**<  */
    ubyte         nKeys; /**<  */
    uint          indicators; /**<  */
    ubyte         nRadioGroups; /**<  */
    ubyte         nKeyAliases; /**<  */
    ushort        nKTLevels; /**<  */
    ubyte         pad0[4]; /**<  */
}

/**
 * @brief xcb_xkb_set_names_values_t
 **/
struct xcb_xkb_set_names_values_t {
    xcb_atom_t           keycodesName; /**<  */
    xcb_atom_t           geometryName; /**<  */
    xcb_atom_t           symbolsName; /**<  */
    xcb_atom_t           physSymbolsName; /**<  */
    xcb_atom_t           typesName; /**<  */
    xcb_atom_t           compatName; /**<  */
    xcb_atom_t          *typeNames; /**<  */
    ubyte               *nLevelsPerType; /**<  */
    xcb_atom_t          *ktLevelNames; /**<  */
    xcb_atom_t          *indicatorNames; /**<  */
    xcb_atom_t          *virtualModNames; /**<  */
    xcb_atom_t          *groups; /**<  */
    xcb_xkb_key_name_t  *keyNames; /**<  */
    xcb_xkb_key_alias_t *keyAliases; /**<  */
    xcb_atom_t          *radioGroupNames; /**<  */
}

/** Opcode for xcb_xkb_set_names. */
const ubyte XCB_XKB_SET_NAMES = 18;

/**
 * @brief xcb_xkb_set_names_request_t
 **/
struct xcb_xkb_set_names_request_t {
    ubyte                 major_opcode; /**<  */
    ubyte                 minor_opcode; /**<  */
    ushort                length; /**<  */
    xcb_xkb_device_spec_t deviceSpec; /**<  */
    ushort                virtualMods; /**<  */
    uint                  which; /**<  */
    ubyte                 firstType; /**<  */
    ubyte                 nTypes; /**<  */
    ubyte                 firstKTLevelt; /**<  */
    ubyte                 nKTLevels; /**<  */
    uint                  indicators; /**<  */
    ubyte                 groupNames; /**<  */
    ubyte                 nRadioGroups; /**<  */
    xcb_keycode_t         firstKey; /**<  */
    ubyte                 nKeys; /**<  */
    ubyte                 nKeyAliases; /**<  */
    ubyte                 pad0; /**<  */
    ushort                totalKTLevelNames; /**<  */
}

/**
 * @brief xcb_xkb_get_geometry_cookie_t
 **/
struct xcb_xkb_get_geometry_cookie_t {
    uint sequence; /**<  */
}

/** Opcode for xcb_xkb_get_geometry. */
const ubyte XCB_XKB_GET_GEOMETRY = 19;

/**
 * @brief xcb_xkb_get_geometry_request_t
 **/
struct xcb_xkb_get_geometry_request_t {
    ubyte                 major_opcode; /**<  */
    ubyte                 minor_opcode; /**<  */
    ushort                length; /**<  */
    xcb_xkb_device_spec_t deviceSpec; /**<  */
    ubyte                 pad0[2]; /**<  */
    xcb_atom_t            name; /**<  */
}

/**
 * @brief xcb_xkb_get_geometry_reply_t
 **/
struct xcb_xkb_get_geometry_reply_t {
    ubyte      response_type; /**<  */
    ubyte      deviceID; /**<  */
    ushort     sequence; /**<  */
    uint       length; /**<  */
    xcb_atom_t name; /**<  */
    ubyte      found; /**<  */
    ubyte      pad0; /**<  */
    ushort     widthMM; /**<  */
    ushort     heightMM; /**<  */
    ushort     nProperties; /**<  */
    ushort     nColors; /**<  */
    ushort     nShapes; /**<  */
    ushort     nSections; /**<  */
    ushort     nDoodads; /**<  */
    ushort     nKeyAliases; /**<  */
    ubyte      baseColorNdx; /**<  */
    ubyte      labelColorNdx; /**<  */
}

/** Opcode for xcb_xkb_set_geometry. */
const ubyte XCB_XKB_SET_GEOMETRY = 20;

/**
 * @brief xcb_xkb_set_geometry_request_t
 **/
struct xcb_xkb_set_geometry_request_t {
    ubyte                 major_opcode; /**<  */
    ubyte                 minor_opcode; /**<  */
    ushort                length; /**<  */
    xcb_xkb_device_spec_t deviceSpec; /**<  */
    ubyte                 nShapes; /**<  */
    ubyte                 nSections; /**<  */
    xcb_atom_t            name; /**<  */
    ushort                widthMM; /**<  */
    ushort                heightMM; /**<  */
    ushort                nProperties; /**<  */
    ushort                nColors; /**<  */
    ushort                nDoodads; /**<  */
    ushort                nKeyAliases; /**<  */
    ubyte                 baseColorNdx; /**<  */
    ubyte                 labelColorNdx; /**<  */
    ubyte                 pad0[2]; /**<  */
}

/**
 * @brief xcb_xkb_per_client_flags_cookie_t
 **/
struct xcb_xkb_per_client_flags_cookie_t {
    uint sequence; /**<  */
}

/** Opcode for xcb_xkb_per_client_flags. */
const ubyte XCB_XKB_PER_CLIENT_FLAGS = 21;

/**
 * @brief xcb_xkb_per_client_flags_request_t
 **/
struct xcb_xkb_per_client_flags_request_t {
    ubyte                 major_opcode; /**<  */
    ubyte                 minor_opcode; /**<  */
    ushort                length; /**<  */
    xcb_xkb_device_spec_t deviceSpec; /**<  */
    ubyte                 pad0[2]; /**<  */
    uint                  change; /**<  */
    uint                  value; /**<  */
    uint                  ctrlsToChange; /**<  */
    uint                  autoCtrls; /**<  */
    uint                  autoCtrlsValues; /**<  */
}

/**
 * @brief xcb_xkb_per_client_flags_reply_t
 **/
struct xcb_xkb_per_client_flags_reply_t {
    ubyte  response_type; /**<  */
    ubyte  deviceID; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    uint   supported; /**<  */
    uint   value; /**<  */
    uint   autoCtrls; /**<  */
    uint   autoCtrlsValues; /**<  */
    ubyte  pad0[8]; /**<  */
}

/**
 * @brief xcb_xkb_list_components_cookie_t
 **/
struct xcb_xkb_list_components_cookie_t {
    uint sequence; /**<  */
}

/** Opcode for xcb_xkb_list_components. */
const ubyte XCB_XKB_LIST_COMPONENTS = 22;

/**
 * @brief xcb_xkb_list_components_request_t
 **/
struct xcb_xkb_list_components_request_t {
    ubyte                 major_opcode; /**<  */
    ubyte                 minor_opcode; /**<  */
    ushort                length; /**<  */
    xcb_xkb_device_spec_t deviceSpec; /**<  */
    ushort                maxNames; /**<  */
    ubyte                 keymapsSpecLen; /**<  */
    ubyte                 keycodesSpecLen; /**<  */
    ubyte                 typesSpecLen; /**<  */
    ubyte                 compatMapSpecLen; /**<  */
    ubyte                 symbolsSpecLen; /**<  */
    ubyte                 geometrySpecLen; /**<  */
}

/**
 * @brief xcb_xkb_list_components_reply_t
 **/
struct xcb_xkb_list_components_reply_t {
    ubyte  response_type; /**<  */
    ubyte  deviceID; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    ushort nKeymaps; /**<  */
    ushort nKeycodes; /**<  */
    ushort nTypes; /**<  */
    ushort nCompatMaps; /**<  */
    ushort nSymbols; /**<  */
    ushort nGeometries; /**<  */
    ushort extra; /**<  */
    ubyte  pad0[10]; /**<  */
}

/**
 * @brief xcb_xkb_get_kbd_by_name_cookie_t
 **/
struct xcb_xkb_get_kbd_by_name_cookie_t {
    uint sequence; /**<  */
}

/** Opcode for xcb_xkb_get_kbd_by_name. */
const ubyte XCB_XKB_GET_KBD_BY_NAME = 23;

/**
 * @brief xcb_xkb_get_kbd_by_name_request_t
 **/
struct xcb_xkb_get_kbd_by_name_request_t {
    ubyte                 major_opcode; /**<  */
    ubyte                 minor_opcode; /**<  */
    ushort                length; /**<  */
    xcb_xkb_device_spec_t deviceSpec; /**<  */
    ushort                need; /**<  */
    ushort                want; /**<  */
    ubyte                 load; /**<  */
    ubyte                 pad0; /**<  */
    ubyte                 keymapsSpecLen; /**<  */
    ubyte                 keycodesSpecLen; /**<  */
    ubyte                 typesSpecLen; /**<  */
    ubyte                 compatMapSpecLen; /**<  */
    ubyte                 symbolsSpecLen; /**<  */
    ubyte                 geometrySpecLen; /**<  */
}

/**
 * @brief xcb_xkb_get_kbd_by_name_replies_types_map_t
 **/
struct xcb_xkb_get_kbd_by_name_replies_types_map_t {
    xcb_xkb_key_type_t      *types_rtrn; /**<  */
    xcb_xkb_key_sym_map_t   *syms_rtrn; /**<  */
    ubyte                   *acts_rtrn_count; /**<  */
    xcb_xkb_action_t        *acts_rtrn_acts; /**<  */
    xcb_xkb_set_behavior_t  *behaviors_rtrn; /**<  */
    ubyte                   *vmods_rtrn; /**<  */
    xcb_xkb_set_explicit_t  *explicit_rtrn; /**<  */
    xcb_xkb_key_mod_map_t   *modmap_rtrn; /**<  */
    xcb_xkb_key_v_mod_map_t *vmodmap_rtrn; /**<  */
}

/**
 * @brief xcb_xkb_get_kbd_by_name_replies_client_symbols_map_t
 **/
struct xcb_xkb_get_kbd_by_name_replies_client_symbols_map_t {
    xcb_xkb_key_type_t      *types_rtrn; /**<  */
    xcb_xkb_key_sym_map_t   *syms_rtrn; /**<  */
    ubyte                   *acts_rtrn_count; /**<  */
    xcb_xkb_action_t        *acts_rtrn_acts; /**<  */
    xcb_xkb_set_behavior_t  *behaviors_rtrn; /**<  */
    ubyte                   *vmods_rtrn; /**<  */
    xcb_xkb_set_explicit_t  *explicit_rtrn; /**<  */
    xcb_xkb_key_mod_map_t   *modmap_rtrn; /**<  */
    xcb_xkb_key_v_mod_map_t *vmodmap_rtrn; /**<  */
}

/**
 * @brief xcb_xkb_get_kbd_by_name_replies_server_symbols_map_t
 **/
struct xcb_xkb_get_kbd_by_name_replies_server_symbols_map_t {
    xcb_xkb_key_type_t      *types_rtrn; /**<  */
    xcb_xkb_key_sym_map_t   *syms_rtrn; /**<  */
    ubyte                   *acts_rtrn_count; /**<  */
    xcb_xkb_action_t        *acts_rtrn_acts; /**<  */
    xcb_xkb_set_behavior_t  *behaviors_rtrn; /**<  */
    ubyte                   *vmods_rtrn; /**<  */
    xcb_xkb_set_explicit_t  *explicit_rtrn; /**<  */
    xcb_xkb_key_mod_map_t   *modmap_rtrn; /**<  */
    xcb_xkb_key_v_mod_map_t *vmodmap_rtrn; /**<  */
}

/**
 * @brief xcb_xkb_get_kbd_by_name_replies_key_names_value_list_t
 **/
struct xcb_xkb_get_kbd_by_name_replies_key_names_value_list_t {
    xcb_atom_t           keycodesName; /**<  */
    xcb_atom_t           geometryName; /**<  */
    xcb_atom_t           symbolsName; /**<  */
    xcb_atom_t           physSymbolsName; /**<  */
    xcb_atom_t           typesName; /**<  */
    xcb_atom_t           compatName; /**<  */
    xcb_atom_t          *typeNames; /**<  */
    ubyte               *nLevelsPerType; /**<  */
    xcb_atom_t          *ktLevelNames; /**<  */
    xcb_atom_t          *indicatorNames; /**<  */
    xcb_atom_t          *virtualModNames; /**<  */
    xcb_atom_t          *groups; /**<  */
    xcb_xkb_key_name_t  *keyNames; /**<  */
    xcb_xkb_key_alias_t *keyAliases; /**<  */
    xcb_atom_t          *radioGroupNames; /**<  */
}

/**
 * @brief xcb_xkb_get_kbd_by_name_replies_other_names_value_list_t
 **/
struct xcb_xkb_get_kbd_by_name_replies_other_names_value_list_t {
    xcb_atom_t           keycodesName; /**<  */
    xcb_atom_t           geometryName; /**<  */
    xcb_atom_t           symbolsName; /**<  */
    xcb_atom_t           physSymbolsName; /**<  */
    xcb_atom_t           typesName; /**<  */
    xcb_atom_t           compatName; /**<  */
    xcb_atom_t          *typeNames; /**<  */
    ubyte               *nLevelsPerType; /**<  */
    xcb_atom_t          *ktLevelNames; /**<  */
    xcb_atom_t          *indicatorNames; /**<  */
    xcb_atom_t          *virtualModNames; /**<  */
    xcb_atom_t          *groups; /**<  */
    xcb_xkb_key_name_t  *keyNames; /**<  */
    xcb_xkb_key_alias_t *keyAliases; /**<  */
    xcb_atom_t          *radioGroupNames; /**<  */
}

/**
 * @brief xcb_xkb_get_kbd_by_name_replies_t
 **/
struct xcb_xkb_get_kbd_by_name_replies_t {
    struct _types {
        ubyte                                                     getmap_type; /**<  */
        ubyte                                                     typeDeviceID; /**<  */
        ushort                                                    getmap_sequence; /**<  */
        uint                                                      getmap_length; /**<  */
        ubyte                                                     pad0[2]; /**<  */
        xcb_keycode_t                                             typeMinKeyCode; /**<  */
        xcb_keycode_t                                             typeMaxKeyCode; /**<  */
        ushort                                                    present; /**<  */
        ubyte                                                     firstType; /**<  */
        ubyte                                                     nTypes; /**<  */
        ubyte                                                     totalTypes; /**<  */
        xcb_keycode_t                                             firstKeySym; /**<  */
        ushort                                                    totalSyms; /**<  */
        ubyte                                                     nKeySyms; /**<  */
        xcb_keycode_t                                             firstKeyAction; /**<  */
        ushort                                                    totalActions; /**<  */
        ubyte                                                     nKeyActions; /**<  */
        xcb_keycode_t                                             firstKeyBehavior; /**<  */
        ubyte                                                     nKeyBehaviors; /**<  */
        ubyte                                                     totalKeyBehaviors; /**<  */
        xcb_keycode_t                                             firstKeyExplicit; /**<  */
        ubyte                                                     nKeyExplicit; /**<  */
        ubyte                                                     totalKeyExplicit; /**<  */
        xcb_keycode_t                                             firstModMapKey; /**<  */
        ubyte                                                     nModMapKeys; /**<  */
        ubyte                                                     totalModMapKeys; /**<  */
        xcb_keycode_t                                             firstVModMapKey; /**<  */
        ubyte                                                     nVModMapKeys; /**<  */
        ubyte                                                     totalVModMapKeys; /**<  */
        ubyte                                                     pad1; /**<  */
        ushort                                                    virtualMods; /**<  */
        xcb_xkb_get_kbd_by_name_replies_types_map_t               map; /**<  */
    }
    struct _compat_map {
        ubyte                                                     compatDeviceID; /**<  */
        ubyte                                                     groupsRtrn; /**<  */
        ubyte                                                     pad0; /**<  */
        ushort                                                    firstSIRtrn; /**<  */
        ushort                                                    nSIRtrn; /**<  */
        ushort                                                    nTotalSI; /**<  */
        ubyte                                                     pad1[16]; /**<  */
        ubyte                                                    *si_rtrn; /**<  */
        xcb_xkb_mod_def_t                                        *group_rtrn; /**<  */
    }
    struct _client_symbols {
        ubyte                                                     clientDeviceID; /**<  */
        ubyte                                                     pad0[2]; /**<  */
        xcb_keycode_t                                             clientMinKeyCode; /**<  */
        xcb_keycode_t                                             clientMaxKeyCode; /**<  */
        ushort                                                    present; /**<  */
        ubyte                                                     firstType; /**<  */
        ubyte                                                     nTypes; /**<  */
        ubyte                                                     totalTypes; /**<  */
        xcb_keycode_t                                             firstKeySym; /**<  */
        ushort                                                    totalSyms; /**<  */
        ubyte                                                     nKeySyms; /**<  */
        xcb_keycode_t                                             firstKeyAction; /**<  */
        ushort                                                    totalActions; /**<  */
        ubyte                                                     nKeyActions; /**<  */
        xcb_keycode_t                                             firstKeyBehavior; /**<  */
        ubyte                                                     nKeyBehaviors; /**<  */
        ubyte                                                     totalKeyBehaviors; /**<  */
        xcb_keycode_t                                             firstKeyExplicit; /**<  */
        ubyte                                                     nKeyExplicit; /**<  */
        ubyte                                                     totalKeyExplicit; /**<  */
        xcb_keycode_t                                             firstModMapKey; /**<  */
        ubyte                                                     nModMapKeys; /**<  */
        ubyte                                                     totalModMapKeys; /**<  */
        xcb_keycode_t                                             firstVModMapKey; /**<  */
        ubyte                                                     nVModMapKeys; /**<  */
        ubyte                                                     totalVModMapKeys; /**<  */
        ubyte                                                     pad1; /**<  */
        ushort                                                    virtualMods; /**<  */
        xcb_xkb_get_kbd_by_name_replies_client_symbols_map_t      map; /**<  */
    }
    struct _server_symbols {
        ubyte                                                     serverDeviceID; /**<  */
        ubyte                                                     pad0[2]; /**<  */
        xcb_keycode_t                                             serverMinKeyCode; /**<  */
        xcb_keycode_t                                             serverMaxKeyCode; /**<  */
        ushort                                                    present; /**<  */
        ubyte                                                     firstType; /**<  */
        ubyte                                                     nTypes; /**<  */
        ubyte                                                     totalTypes; /**<  */
        xcb_keycode_t                                             firstKeySym; /**<  */
        ushort                                                    totalSyms; /**<  */
        ubyte                                                     nKeySyms; /**<  */
        xcb_keycode_t                                             firstKeyAction; /**<  */
        ushort                                                    totalActions; /**<  */
        ubyte                                                     nKeyActions; /**<  */
        xcb_keycode_t                                             firstKeyBehavior; /**<  */
        ubyte                                                     nKeyBehaviors; /**<  */
        ubyte                                                     totalKeyBehaviors; /**<  */
        xcb_keycode_t                                             firstKeyExplicit; /**<  */
        ubyte                                                     nKeyExplicit; /**<  */
        ubyte                                                     totalKeyExplicit; /**<  */
        xcb_keycode_t                                             firstModMapKey; /**<  */
        ubyte                                                     nModMapKeys; /**<  */
        ubyte                                                     totalModMapKeys; /**<  */
        xcb_keycode_t                                             firstVModMapKey; /**<  */
        ubyte                                                     nVModMapKeys; /**<  */
        ubyte                                                     totalVModMapKeys; /**<  */
        ubyte                                                     pad1; /**<  */
        ushort                                                    virtualMods; /**<  */
        xcb_xkb_get_kbd_by_name_replies_server_symbols_map_t      map; /**<  */
    }
    struct _indicator_maps {
        ubyte                                                     indicatorDeviceID; /**<  */
        uint                                                      which; /**<  */
        uint                                                      realIndicators; /**<  */
        ubyte                                                     nIndicators; /**<  */
        ubyte                                                     pad0[15]; /**<  */
        xcb_xkb_indicator_map_t                                  *maps; /**<  */
    }
    struct _key_names {
        ubyte                                                     keyDeviceID; /**<  */
        uint                                                      which; /**<  */
        xcb_keycode_t                                             keyMinKeyCode; /**<  */
        xcb_keycode_t                                             keyMaxKeyCode; /**<  */
        ubyte                                                     nTypes; /**<  */
        ubyte                                                     groupNames; /**<  */
        ushort                                                    virtualMods; /**<  */
        xcb_keycode_t                                             firstKey; /**<  */
        ubyte                                                     nKeys; /**<  */
        uint                                                      indicators; /**<  */
        ubyte                                                     nRadioGroups; /**<  */
        ubyte                                                     nKeyAliases; /**<  */
        ushort                                                    nKTLevels; /**<  */
        ubyte                                                     pad0[4]; /**<  */
        xcb_xkb_get_kbd_by_name_replies_key_names_value_list_t    valueList; /**<  */
    }
    struct _other_names {
        ubyte                                                     otherDeviceID; /**<  */
        uint                                                      which; /**<  */
        xcb_keycode_t                                             otherMinKeyCode; /**<  */
        xcb_keycode_t                                             otherMaxKeyCode; /**<  */
        ubyte                                                     nTypes; /**<  */
        ubyte                                                     groupNames; /**<  */
        ushort                                                    virtualMods; /**<  */
        xcb_keycode_t                                             firstKey; /**<  */
        ubyte                                                     nKeys; /**<  */
        uint                                                      indicators; /**<  */
        ubyte                                                     nRadioGroups; /**<  */
        ubyte                                                     nKeyAliases; /**<  */
        ushort                                                    nKTLevels; /**<  */
        ubyte                                                     pad0[4]; /**<  */
        xcb_xkb_get_kbd_by_name_replies_other_names_value_list_t  valueList; /**<  */
    }
    struct _geometry {
        ubyte                                                     geometryDeviceID; /**<  */
        xcb_atom_t                                                name; /**<  */
        ubyte                                                     geometryFound; /**<  */
        ubyte                                                     pad0; /**<  */
        ushort                                                    widthMM; /**<  */
        ushort                                                    heightMM; /**<  */
        ushort                                                    nProperties; /**<  */
        ushort                                                    nColors; /**<  */
        ushort                                                    nShapes; /**<  */
        ushort                                                    nSections; /**<  */
        ushort                                                    nDoodads; /**<  */
        ushort                                                    nKeyAliases; /**<  */
        ubyte                                                     baseColorNdx; /**<  */
        ubyte                                                     labelColorNdx; /**<  */
        xcb_xkb_counted_string_16_t                              *labelFont; /**<  */
        xcb_xkb_property_t                                       *properties; /**<  */
        xcb_xkb_counted_string_16_t                              *colors; /**<  */
        xcb_xkb_shape_t                                          *shapes; /**<  */
        xcb_xkb_section_t                                        *sections; /**<  */
        xcb_xkb_doodad_t                                         *doodads; /**<  */
        xcb_xkb_key_alias_t                                      *keyAliases; /**<  */
    }
}


/*****************************************************************************
 **
 ** xcb_xkb_get_kbd_by_name_replies_types_map_t * xcb_xkb_get_kbd_by_name_replies_types_map
 ** 
 ** @param const xcb_xkb_get_kbd_by_name_replies_t *R
 ** @returns xcb_xkb_get_kbd_by_name_replies_types_map_t *
 **
 *****************************************************************************/
 
xcb_xkb_get_kbd_by_name_replies_types_map_t *
xcb_xkb_get_kbd_by_name_replies_types_map (const xcb_xkb_get_kbd_by_name_replies_t *R  /**< */);

/**
 * @brief xcb_xkb_get_kbd_by_name_reply_t
 **/
struct xcb_xkb_get_kbd_by_name_reply_t {
    ubyte         response_type; /**<  */
    ubyte         deviceID; /**<  */
    ushort        sequence; /**<  */
    uint          length; /**<  */
    xcb_keycode_t minKeyCode; /**<  */
    xcb_keycode_t maxKeyCode; /**<  */
    ubyte         loaded; /**<  */
    ubyte         newKeyboard; /**<  */
    ushort        found; /**<  */
    ushort        reported; /**<  */
    ubyte         pad0[16]; /**<  */
}

/**
 * @brief xcb_xkb_get_device_info_cookie_t
 **/
struct xcb_xkb_get_device_info_cookie_t {
    uint sequence; /**<  */
}

/** Opcode for xcb_xkb_get_device_info. */
const ubyte XCB_XKB_GET_DEVICE_INFO = 24;

/**
 * @brief xcb_xkb_get_device_info_request_t
 **/
struct xcb_xkb_get_device_info_request_t {
    ubyte                    major_opcode; /**<  */
    ubyte                    minor_opcode; /**<  */
    ushort                   length; /**<  */
    xcb_xkb_device_spec_t    deviceSpec; /**<  */
    ushort                   wanted; /**<  */
    ubyte                    allButtons; /**<  */
    ubyte                    firstButton; /**<  */
    ubyte                    nButtons; /**<  */
    ubyte                    pad0; /**<  */
    xcb_xkb_led_class_spec_t ledClass; /**<  */
    xcb_xkb_id_spec_t        ledID; /**<  */
}

/**
 * @brief xcb_xkb_get_device_info_reply_t
 **/
struct xcb_xkb_get_device_info_reply_t {
    ubyte      response_type; /**<  */
    ubyte      deviceID; /**<  */
    ushort     sequence; /**<  */
    uint       length; /**<  */
    ushort     present; /**<  */
    ushort     supported; /**<  */
    ushort     unsupported; /**<  */
    ushort     nDeviceLedFBs; /**<  */
    ubyte      firstBtnWanted; /**<  */
    ubyte      nBtnsWanted; /**<  */
    ubyte      firstBtnRtrn; /**<  */
    ubyte      nBtnsRtrn; /**<  */
    ubyte      totalBtns; /**<  */
    ubyte      hasOwnState; /**<  */
    ushort     dfltKbdFB; /**<  */
    ushort     dfltLedFB; /**<  */
    ubyte      pad0[2]; /**<  */
    xcb_atom_t devType; /**<  */
    ushort     nameLen; /**<  */
}

/** Opcode for xcb_xkb_set_device_info. */
const ubyte XCB_XKB_SET_DEVICE_INFO = 25;

/**
 * @brief xcb_xkb_set_device_info_request_t
 **/
struct xcb_xkb_set_device_info_request_t {
    ubyte                 major_opcode; /**<  */
    ubyte                 minor_opcode; /**<  */
    ushort                length; /**<  */
    xcb_xkb_device_spec_t deviceSpec; /**<  */
    ubyte                 firstBtn; /**<  */
    ubyte                 nBtns; /**<  */
    ushort                change; /**<  */
    ushort                nDeviceLedFBs; /**<  */
}

/**
 * @brief xcb_xkb_set_debugging_flags_cookie_t
 **/
struct xcb_xkb_set_debugging_flags_cookie_t {
    uint sequence; /**<  */
}

/** Opcode for xcb_xkb_set_debugging_flags. */
const ubyte XCB_XKB_SET_DEBUGGING_FLAGS = 101;

/**
 * @brief xcb_xkb_set_debugging_flags_request_t
 **/
struct xcb_xkb_set_debugging_flags_request_t {
    ubyte  major_opcode; /**<  */
    ubyte  minor_opcode; /**<  */
    ushort length; /**<  */
    ushort msgLength; /**<  */
    ubyte  pad0[2]; /**<  */
    uint   affectFlags; /**<  */
    uint   flags; /**<  */
    uint   affectCtrls; /**<  */
    uint   ctrls; /**<  */
}

/**
 * @brief xcb_xkb_set_debugging_flags_reply_t
 **/
struct xcb_xkb_set_debugging_flags_reply_t {
    ubyte  response_type; /**<  */
    ubyte  pad0; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    uint   currentFlags; /**<  */
    uint   currentCtrls; /**<  */
    uint   supportedFlags; /**<  */
    uint   supportedCtrls; /**<  */
    ubyte  pad1[8]; /**<  */
}

/** Opcode for xcb_xkb_new_keyboard_notify. */
const ubyte XCB_XKB_NEW_KEYBOARD_NOTIFY = 0;

/**
 * @brief xcb_xkb_new_keyboard_notify_event_t
 **/
struct xcb_xkb_new_keyboard_notify_event_t {
    ubyte           response_type; /**<  */
    xcb_timestamp_t time; /**<  */
    ushort          sequence; /**<  */
    ubyte           deviceID; /**<  */
    ubyte           oldDeviceID; /**<  */
    xcb_keycode_t   minKeyCode; /**<  */
    xcb_keycode_t   maxKeyCode; /**<  */
    xcb_keycode_t   oldMinKeyCode; /**<  */
    xcb_keycode_t   oldMaxKeyCode; /**<  */
    ubyte           requestMajor; /**<  */
    ubyte           requestMinor; /**<  */
    ushort          changed; /**<  */
    ubyte           pad0[14]; /**<  */
}

/** Opcode for xcb_xkb_map_notify. */
const ubyte XCB_XKB_MAP_NOTIFY = 1;

/**
 * @brief xcb_xkb_map_notify_event_t
 **/
struct xcb_xkb_map_notify_event_t {
    ubyte           response_type; /**<  */
    xcb_timestamp_t time; /**<  */
    ushort          sequence; /**<  */
    ubyte           deviceID; /**<  */
    ubyte           ptrBtnActions; /**<  */
    ushort          changed; /**<  */
    xcb_keycode_t   minKeyCode; /**<  */
    xcb_keycode_t   maxKeyCode; /**<  */
    ubyte           firstType; /**<  */
    ubyte           nTypes; /**<  */
    xcb_keycode_t   firstKeySym; /**<  */
    ubyte           nKeySyms; /**<  */
    xcb_keycode_t   firstKeyAct; /**<  */
    ubyte           nKeyActs; /**<  */
    xcb_keycode_t   firstKeyBehavior; /**<  */
    ubyte           nKeyBehavior; /**<  */
    xcb_keycode_t   firstKeyExplicit; /**<  */
    ubyte           nKeyExplicit; /**<  */
    xcb_keycode_t   firstModMapKey; /**<  */
    ubyte           nModMapKeys; /**<  */
    xcb_keycode_t   firstVModMapKey; /**<  */
    ubyte           nVModMapKeys; /**<  */
    ushort          virtualMods; /**<  */
    ubyte           pad0[2]; /**<  */
}

/** Opcode for xcb_xkb_state_notify. */
const ubyte XCB_XKB_STATE_NOTIFY = 2;

/**
 * @brief xcb_xkb_state_notify_event_t
 **/
struct xcb_xkb_state_notify_event_t {
    ubyte           response_type; /**<  */
    xcb_timestamp_t time; /**<  */
    ushort          sequence; /**<  */
    ubyte           deviceID; /**<  */
    ubyte           mods; /**<  */
    ubyte           baseMods; /**<  */
    ubyte           latchedMods; /**<  */
    ubyte           lockedMods; /**<  */
    ubyte           group; /**<  */
    short           baseGroup; /**<  */
    short           latchedGroup; /**<  */
    ubyte           lockedGroup; /**<  */
    ubyte           compatState; /**<  */
    ubyte           grabMods; /**<  */
    ubyte           compatGrabMods; /**<  */
    ubyte           lookupMods; /**<  */
    ubyte           compatLoockupMods; /**<  */
    ushort          ptrBtnState; /**<  */
    ushort          changed; /**<  */
    xcb_keycode_t   keycode; /**<  */
    ubyte           eventType; /**<  */
    ubyte           requestMajor; /**<  */
    ubyte           requestMinor; /**<  */
}

/** Opcode for xcb_xkb_controls_notify. */
const ubyte XCB_XKB_CONTROLS_NOTIFY = 3;

/**
 * @brief xcb_xkb_controls_notify_event_t
 **/
struct xcb_xkb_controls_notify_event_t {
    ubyte           response_type; /**<  */
    xcb_timestamp_t time; /**<  */
    ushort          sequence; /**<  */
    ubyte           deviceID; /**<  */
    ubyte           numGroups; /**<  */
    ubyte           pad0[2]; /**<  */
    uint            changedControls; /**<  */
    uint            enabledControls; /**<  */
    uint            enabledControlChanges; /**<  */
    xcb_keycode_t   keycode; /**<  */
    ubyte           eventType; /**<  */
    ubyte           requestMajor; /**<  */
    ubyte           requestMinor; /**<  */
    ubyte           pad1[4]; /**<  */
}

/** Opcode for xcb_xkb_indicator_state_notify. */
const ubyte XCB_XKB_INDICATOR_STATE_NOTIFY = 4;

/**
 * @brief xcb_xkb_indicator_state_notify_event_t
 **/
struct xcb_xkb_indicator_state_notify_event_t {
    ubyte           response_type; /**<  */
    xcb_timestamp_t time; /**<  */
    ushort          sequence; /**<  */
    ubyte           deviceID; /**<  */
    ubyte           pad0[3]; /**<  */
    uint            state; /**<  */
    uint            stateChanged; /**<  */
    ubyte           pad1[12]; /**<  */
}

/** Opcode for xcb_xkb_indicator_map_notify. */
const ubyte XCB_XKB_INDICATOR_MAP_NOTIFY = 5;

/**
 * @brief xcb_xkb_indicator_map_notify_event_t
 **/
struct xcb_xkb_indicator_map_notify_event_t {
    ubyte           response_type; /**<  */
    xcb_timestamp_t time; /**<  */
    ushort          sequence; /**<  */
    ubyte           deviceID; /**<  */
    ubyte           pad0[3]; /**<  */
    uint            state; /**<  */
    uint            mapChanged; /**<  */
    ubyte           pad1[12]; /**<  */
}

/** Opcode for xcb_xkb_names_notify. */
const ubyte XCB_XKB_NAMES_NOTIFY = 6;

/**
 * @brief xcb_xkb_names_notify_event_t
 **/
struct xcb_xkb_names_notify_event_t {
    ubyte           response_type; /**<  */
    xcb_timestamp_t time; /**<  */
    ushort          sequence; /**<  */
    ubyte           deviceID; /**<  */
    ubyte           pad0; /**<  */
    ushort          changed; /**<  */
    ubyte           firstType; /**<  */
    ubyte           nTypes; /**<  */
    ubyte           firstLevelName; /**<  */
    ubyte           nLevelNames; /**<  */
    ubyte           pad1; /**<  */
    ubyte           nRadioGroups; /**<  */
    ubyte           nKeyAliases; /**<  */
    ubyte           changedGroupNames; /**<  */
    ushort          changedVirtualMods; /**<  */
    xcb_keycode_t   firstKey; /**<  */
    ubyte           nKeys; /**<  */
    uint            changedIndicators; /**<  */
    ubyte           pad2[4]; /**<  */
}

/** Opcode for xcb_xkb_compat_map_notify. */
const ubyte XCB_XKB_COMPAT_MAP_NOTIFY = 7;

/**
 * @brief xcb_xkb_compat_map_notify_event_t
 **/
struct xcb_xkb_compat_map_notify_event_t {
    ubyte           response_type; /**<  */
    xcb_timestamp_t time; /**<  */
    ushort          sequence; /**<  */
    ubyte           deviceID; /**<  */
    ubyte           changedGroups; /**<  */
    ushort          firstSI; /**<  */
    ushort          nSI; /**<  */
    ushort          nTotalSI; /**<  */
    ubyte           pad0[16]; /**<  */
}

/** Opcode for xcb_xkb_bell_notify. */
const ubyte XCB_XKB_BELL_NOTIFY = 8;

/**
 * @brief xcb_xkb_bell_notify_event_t
 **/
struct xcb_xkb_bell_notify_event_t {
    ubyte           response_type; /**<  */
    xcb_timestamp_t time; /**<  */
    ushort          sequence; /**<  */
    ubyte           deviceID; /**<  */
    ubyte           bellClass; /**<  */
    ubyte           bellID; /**<  */
    ubyte           percent; /**<  */
    ushort          pitch; /**<  */
    ushort          duration; /**<  */
    xcb_atom_t      name; /**<  */
    xcb_window_t    window; /**<  */
    ubyte           eventOnly; /**<  */
    ubyte           pad0[7]; /**<  */
}

/** Opcode for xcb_xkb_action_message. */
const ubyte XCB_XKB_ACTION_MESSAGE = 9;

/**
 * @brief xcb_xkb_action_message_event_t
 **/
struct xcb_xkb_action_message_event_t {
    ubyte             response_type; /**<  */
    xcb_timestamp_t   time; /**<  */
    ushort            sequence; /**<  */
    ubyte             deviceID; /**<  */
    xcb_keycode_t     keycode; /**<  */
    ubyte             press; /**<  */
    ubyte             keyEventFollows; /**<  */
    ubyte             mods; /**<  */
    ubyte             group; /**<  */
    xcb_xkb_string8_t message[8]; /**<  */
    ubyte             pad0[10]; /**<  */
}

/** Opcode for xcb_xkb_access_x_notify. */
const ubyte XCB_XKB_ACCESS_X_NOTIFY = 10;

/**
 * @brief xcb_xkb_access_x_notify_event_t
 **/
struct xcb_xkb_access_x_notify_event_t {
    ubyte           response_type; /**<  */
    xcb_timestamp_t time; /**<  */
    ushort          sequence; /**<  */
    ubyte           deviceID; /**<  */
    xcb_keycode_t   keycode; /**<  */
    ushort          detailt; /**<  */
    ushort          slowKeysDelay; /**<  */
    ushort          debounceDelay; /**<  */
    ubyte           pad0[16]; /**<  */
}

/** Opcode for xcb_xkb_extension_device_notify. */
const ubyte XCB_XKB_EXTENSION_DEVICE_NOTIFY = 11;

/**
 * @brief xcb_xkb_extension_device_notify_event_t
 **/
struct xcb_xkb_extension_device_notify_event_t {
    ubyte           response_type; /**<  */
    xcb_timestamp_t time; /**<  */
    ushort          sequence; /**<  */
    ubyte           deviceID; /**<  */
    ubyte           pad0; /**<  */
    ushort          reason; /**<  */
    ushort          ledClass; /**<  */
    ubyte           ledID; /**<  */
    uint            ledsDefined; /**<  */
    uint            ledState; /**<  */
    ubyte           firstButton; /**<  */
    ubyte           nButtons; /**<  */
    ushort          supported; /**<  */
    ushort          unsupported; /**<  */
    ubyte           pad1[2]; /**<  */
}

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_xkb_ax_option_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_xkb_ax_option_t)
 */

/*****************************************************************************
 **
 ** void xcb_xkb_ax_option_next
 ** 
 ** @param xcb_xkb_ax_option_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_xkb_ax_option_next (xcb_xkb_ax_option_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_xkb_ax_option_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xkb_ax_option_end
 ** 
 ** @param xcb_xkb_ax_option_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
xcb_generic_iterator_t
xcb_xkb_ax_option_end (xcb_xkb_ax_option_iterator_t i  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_xkb_device_spec_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_xkb_device_spec_t)
 */

/*****************************************************************************
 **
 ** void xcb_xkb_device_spec_next
 ** 
 ** @param xcb_xkb_device_spec_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_xkb_device_spec_next (xcb_xkb_device_spec_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_xkb_device_spec_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xkb_device_spec_end
 ** 
 ** @param xcb_xkb_device_spec_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
xcb_generic_iterator_t
xcb_xkb_device_spec_end (xcb_xkb_device_spec_iterator_t i  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_xkb_led_class_spec_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_xkb_led_class_spec_t)
 */

/*****************************************************************************
 **
 ** void xcb_xkb_led_class_spec_next
 ** 
 ** @param xcb_xkb_led_class_spec_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_xkb_led_class_spec_next (xcb_xkb_led_class_spec_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_xkb_led_class_spec_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xkb_led_class_spec_end
 ** 
 ** @param xcb_xkb_led_class_spec_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
xcb_generic_iterator_t
xcb_xkb_led_class_spec_end (xcb_xkb_led_class_spec_iterator_t i  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_xkb_bell_class_spec_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_xkb_bell_class_spec_t)
 */

/*****************************************************************************
 **
 ** void xcb_xkb_bell_class_spec_next
 ** 
 ** @param xcb_xkb_bell_class_spec_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_xkb_bell_class_spec_next (xcb_xkb_bell_class_spec_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_xkb_bell_class_spec_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xkb_bell_class_spec_end
 ** 
 ** @param xcb_xkb_bell_class_spec_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
xcb_generic_iterator_t
xcb_xkb_bell_class_spec_end (xcb_xkb_bell_class_spec_iterator_t i  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_xkb_id_spec_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_xkb_id_spec_t)
 */

/*****************************************************************************
 **
 ** void xcb_xkb_id_spec_next
 ** 
 ** @param xcb_xkb_id_spec_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_xkb_id_spec_next (xcb_xkb_id_spec_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_xkb_id_spec_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xkb_id_spec_end
 ** 
 ** @param xcb_xkb_id_spec_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
xcb_generic_iterator_t
xcb_xkb_id_spec_end (xcb_xkb_id_spec_iterator_t i  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_xkb_indicator_map_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_xkb_indicator_map_t)
 */

/*****************************************************************************
 **
 ** void xcb_xkb_indicator_map_next
 ** 
 ** @param xcb_xkb_indicator_map_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_xkb_indicator_map_next (xcb_xkb_indicator_map_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_xkb_indicator_map_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xkb_indicator_map_end
 ** 
 ** @param xcb_xkb_indicator_map_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
xcb_generic_iterator_t
xcb_xkb_indicator_map_end (xcb_xkb_indicator_map_iterator_t i  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_xkb_mod_def_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_xkb_mod_def_t)
 */

/*****************************************************************************
 **
 ** void xcb_xkb_mod_def_next
 ** 
 ** @param xcb_xkb_mod_def_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_xkb_mod_def_next (xcb_xkb_mod_def_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_xkb_mod_def_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xkb_mod_def_end
 ** 
 ** @param xcb_xkb_mod_def_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
xcb_generic_iterator_t
xcb_xkb_mod_def_end (xcb_xkb_mod_def_iterator_t i  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_xkb_key_name_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_xkb_key_name_t)
 */

/*****************************************************************************
 **
 ** void xcb_xkb_key_name_next
 ** 
 ** @param xcb_xkb_key_name_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_xkb_key_name_next (xcb_xkb_key_name_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_xkb_key_name_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xkb_key_name_end
 ** 
 ** @param xcb_xkb_key_name_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
xcb_generic_iterator_t
xcb_xkb_key_name_end (xcb_xkb_key_name_iterator_t i  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_xkb_key_alias_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_xkb_key_alias_t)
 */

/*****************************************************************************
 **
 ** void xcb_xkb_key_alias_next
 ** 
 ** @param xcb_xkb_key_alias_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_xkb_key_alias_next (xcb_xkb_key_alias_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_xkb_key_alias_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xkb_key_alias_end
 ** 
 ** @param xcb_xkb_key_alias_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
xcb_generic_iterator_t
xcb_xkb_key_alias_end (xcb_xkb_key_alias_iterator_t i  /**< */);

extern(C) int
xcb_xkb_counted_string_8_sizeof (const void  *_buffer  /**< */);


/*****************************************************************************
 **
 ** ubyte * xcb_xkb_counted_string_8_string
 ** 
 ** @param const xcb_xkb_counted_string_8_t *R
 ** @returns ubyte *
 **
 *****************************************************************************/
 
ubyte *
xcb_xkb_counted_string_8_string (const xcb_xkb_counted_string_8_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_xkb_counted_string_8_string_length
 ** 
 ** @param const xcb_xkb_counted_string_8_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xkb_counted_string_8_string_length (const xcb_xkb_counted_string_8_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xkb_counted_string_8_string_end
 ** 
 ** @param const xcb_xkb_counted_string_8_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_xkb_counted_string_8_string_end (const xcb_xkb_counted_string_8_t *R  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_xkb_counted_string_8_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_xkb_counted_string_8_t)
 */

/*****************************************************************************
 **
 ** void xcb_xkb_counted_string_8_next
 ** 
 ** @param xcb_xkb_counted_string_8_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_xkb_counted_string_8_next (xcb_xkb_counted_string_8_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_xkb_counted_string_8_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xkb_counted_string_8_end
 ** 
 ** @param xcb_xkb_counted_string_8_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
xcb_generic_iterator_t
xcb_xkb_counted_string_8_end (xcb_xkb_counted_string_8_iterator_t i  /**< */);

extern(C) int
xcb_xkb_counted_string_16_sizeof (const void  *_buffer  /**< */);


/*****************************************************************************
 **
 ** ubyte * xcb_xkb_counted_string_16_string
 ** 
 ** @param const xcb_xkb_counted_string_16_t *R
 ** @returns ubyte *
 **
 *****************************************************************************/
 
ubyte *
xcb_xkb_counted_string_16_string (const xcb_xkb_counted_string_16_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_xkb_counted_string_16_string_length
 ** 
 ** @param const xcb_xkb_counted_string_16_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xkb_counted_string_16_string_length (const xcb_xkb_counted_string_16_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xkb_counted_string_16_string_end
 ** 
 ** @param const xcb_xkb_counted_string_16_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_xkb_counted_string_16_string_end (const xcb_xkb_counted_string_16_t *R  /**< */);


/*****************************************************************************
 **
 ** ubyte * xcb_xkb_counted_string_16_pad_0
 ** 
 ** @param const xcb_xkb_counted_string_16_t *R
 ** @returns ubyte *
 **
 *****************************************************************************/
 
ubyte *
xcb_xkb_counted_string_16_pad_0 (const xcb_xkb_counted_string_16_t *R  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_xkb_counted_string_16_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_xkb_counted_string_16_t)
 */

/*****************************************************************************
 **
 ** void xcb_xkb_counted_string_16_next
 ** 
 ** @param xcb_xkb_counted_string_16_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_xkb_counted_string_16_next (xcb_xkb_counted_string_16_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_xkb_counted_string_16_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xkb_counted_string_16_end
 ** 
 ** @param xcb_xkb_counted_string_16_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
xcb_generic_iterator_t
xcb_xkb_counted_string_16_end (xcb_xkb_counted_string_16_iterator_t i  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_xkb_kt_map_entry_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_xkb_kt_map_entry_t)
 */

/*****************************************************************************
 **
 ** void xcb_xkb_kt_map_entry_next
 ** 
 ** @param xcb_xkb_kt_map_entry_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_xkb_kt_map_entry_next (xcb_xkb_kt_map_entry_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_xkb_kt_map_entry_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xkb_kt_map_entry_end
 ** 
 ** @param xcb_xkb_kt_map_entry_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
xcb_generic_iterator_t
xcb_xkb_kt_map_entry_end (xcb_xkb_kt_map_entry_iterator_t i  /**< */);

extern(C) int
xcb_xkb_key_type_sizeof (const void  *_buffer  /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_kt_map_entry_t * xcb_xkb_key_type_map
 ** 
 ** @param const xcb_xkb_key_type_t *R
 ** @returns xcb_xkb_kt_map_entry_t *
 **
 *****************************************************************************/
 
xcb_xkb_kt_map_entry_t *
xcb_xkb_key_type_map (const xcb_xkb_key_type_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_xkb_key_type_map_length
 ** 
 ** @param const xcb_xkb_key_type_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xkb_key_type_map_length (const xcb_xkb_key_type_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_kt_map_entry_iterator_t xcb_xkb_key_type_map_iterator
 ** 
 ** @param const xcb_xkb_key_type_t *R
 ** @returns xcb_xkb_kt_map_entry_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_kt_map_entry_iterator_t
xcb_xkb_key_type_map_iterator (const xcb_xkb_key_type_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_mod_def_t * xcb_xkb_key_type_preserve
 ** 
 ** @param const xcb_xkb_key_type_t *R
 ** @returns xcb_xkb_mod_def_t *
 **
 *****************************************************************************/
 
xcb_xkb_mod_def_t *
xcb_xkb_key_type_preserve (const xcb_xkb_key_type_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_xkb_key_type_preserve_length
 ** 
 ** @param const xcb_xkb_key_type_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xkb_key_type_preserve_length (const xcb_xkb_key_type_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_mod_def_iterator_t xcb_xkb_key_type_preserve_iterator
 ** 
 ** @param const xcb_xkb_key_type_t *R
 ** @returns xcb_xkb_mod_def_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_mod_def_iterator_t
xcb_xkb_key_type_preserve_iterator (const xcb_xkb_key_type_t *R  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_xkb_key_type_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_xkb_key_type_t)
 */

/*****************************************************************************
 **
 ** void xcb_xkb_key_type_next
 ** 
 ** @param xcb_xkb_key_type_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_xkb_key_type_next (xcb_xkb_key_type_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_xkb_key_type_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xkb_key_type_end
 ** 
 ** @param xcb_xkb_key_type_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
xcb_generic_iterator_t
xcb_xkb_key_type_end (xcb_xkb_key_type_iterator_t i  /**< */);

extern(C) int
xcb_xkb_key_sym_map_sizeof (const void  *_buffer  /**< */);


/*****************************************************************************
 **
 ** xcb_keysym_t * xcb_xkb_key_sym_map_syms
 ** 
 ** @param const xcb_xkb_key_sym_map_t *R
 ** @returns xcb_keysym_t *
 **
 *****************************************************************************/
 
xcb_keysym_t *
xcb_xkb_key_sym_map_syms (const xcb_xkb_key_sym_map_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_xkb_key_sym_map_syms_length
 ** 
 ** @param const xcb_xkb_key_sym_map_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xkb_key_sym_map_syms_length (const xcb_xkb_key_sym_map_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xkb_key_sym_map_syms_end
 ** 
 ** @param const xcb_xkb_key_sym_map_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_xkb_key_sym_map_syms_end (const xcb_xkb_key_sym_map_t *R  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_xkb_key_sym_map_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_xkb_key_sym_map_t)
 */

/*****************************************************************************
 **
 ** void xcb_xkb_key_sym_map_next
 ** 
 ** @param xcb_xkb_key_sym_map_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_xkb_key_sym_map_next (xcb_xkb_key_sym_map_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_xkb_key_sym_map_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xkb_key_sym_map_end
 ** 
 ** @param xcb_xkb_key_sym_map_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
xcb_generic_iterator_t
xcb_xkb_key_sym_map_end (xcb_xkb_key_sym_map_iterator_t i  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_xkb_common_behavior_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_xkb_common_behavior_t)
 */

/*****************************************************************************
 **
 ** void xcb_xkb_common_behavior_next
 ** 
 ** @param xcb_xkb_common_behavior_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_xkb_common_behavior_next (xcb_xkb_common_behavior_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_xkb_common_behavior_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xkb_common_behavior_end
 ** 
 ** @param xcb_xkb_common_behavior_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
xcb_generic_iterator_t
xcb_xkb_common_behavior_end (xcb_xkb_common_behavior_iterator_t i  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_xkb_default_behavior_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_xkb_default_behavior_t)
 */

/*****************************************************************************
 **
 ** void xcb_xkb_default_behavior_next
 ** 
 ** @param xcb_xkb_default_behavior_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_xkb_default_behavior_next (xcb_xkb_default_behavior_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_xkb_default_behavior_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xkb_default_behavior_end
 ** 
 ** @param xcb_xkb_default_behavior_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
xcb_generic_iterator_t
xcb_xkb_default_behavior_end (xcb_xkb_default_behavior_iterator_t i  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_xkb_lock_behavior_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_xkb_lock_behavior_t)
 */

/*****************************************************************************
 **
 ** void xcb_xkb_lock_behavior_next
 ** 
 ** @param xcb_xkb_lock_behavior_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_xkb_lock_behavior_next (xcb_xkb_lock_behavior_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_xkb_lock_behavior_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xkb_lock_behavior_end
 ** 
 ** @param xcb_xkb_lock_behavior_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
xcb_generic_iterator_t
xcb_xkb_lock_behavior_end (xcb_xkb_lock_behavior_iterator_t i  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_xkb_radio_group_behavior_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_xkb_radio_group_behavior_t)
 */

/*****************************************************************************
 **
 ** void xcb_xkb_radio_group_behavior_next
 ** 
 ** @param xcb_xkb_radio_group_behavior_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_xkb_radio_group_behavior_next (xcb_xkb_radio_group_behavior_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_xkb_radio_group_behavior_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xkb_radio_group_behavior_end
 ** 
 ** @param xcb_xkb_radio_group_behavior_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
xcb_generic_iterator_t
xcb_xkb_radio_group_behavior_end (xcb_xkb_radio_group_behavior_iterator_t i  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_xkb_overlay_1_behavior_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_xkb_overlay_1_behavior_t)
 */

/*****************************************************************************
 **
 ** void xcb_xkb_overlay_1_behavior_next
 ** 
 ** @param xcb_xkb_overlay_1_behavior_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_xkb_overlay_1_behavior_next (xcb_xkb_overlay_1_behavior_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_xkb_overlay_1_behavior_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xkb_overlay_1_behavior_end
 ** 
 ** @param xcb_xkb_overlay_1_behavior_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
xcb_generic_iterator_t
xcb_xkb_overlay_1_behavior_end (xcb_xkb_overlay_1_behavior_iterator_t i  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_xkb_overlay_2_behavior_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_xkb_overlay_2_behavior_t)
 */

/*****************************************************************************
 **
 ** void xcb_xkb_overlay_2_behavior_next
 ** 
 ** @param xcb_xkb_overlay_2_behavior_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_xkb_overlay_2_behavior_next (xcb_xkb_overlay_2_behavior_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_xkb_overlay_2_behavior_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xkb_overlay_2_behavior_end
 ** 
 ** @param xcb_xkb_overlay_2_behavior_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
xcb_generic_iterator_t
xcb_xkb_overlay_2_behavior_end (xcb_xkb_overlay_2_behavior_iterator_t i  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_xkb_permament_lock_behavior_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_xkb_permament_lock_behavior_t)
 */

/*****************************************************************************
 **
 ** void xcb_xkb_permament_lock_behavior_next
 ** 
 ** @param xcb_xkb_permament_lock_behavior_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_xkb_permament_lock_behavior_next (xcb_xkb_permament_lock_behavior_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_xkb_permament_lock_behavior_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xkb_permament_lock_behavior_end
 ** 
 ** @param xcb_xkb_permament_lock_behavior_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
xcb_generic_iterator_t
xcb_xkb_permament_lock_behavior_end (xcb_xkb_permament_lock_behavior_iterator_t i  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_xkb_permament_radio_group_behavior_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_xkb_permament_radio_group_behavior_t)
 */

/*****************************************************************************
 **
 ** void xcb_xkb_permament_radio_group_behavior_next
 ** 
 ** @param xcb_xkb_permament_radio_group_behavior_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_xkb_permament_radio_group_behavior_next (xcb_xkb_permament_radio_group_behavior_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_xkb_permament_radio_group_behavior_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xkb_permament_radio_group_behavior_end
 ** 
 ** @param xcb_xkb_permament_radio_group_behavior_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
xcb_generic_iterator_t
xcb_xkb_permament_radio_group_behavior_end (xcb_xkb_permament_radio_group_behavior_iterator_t i  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_xkb_permament_overlay_1_behavior_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_xkb_permament_overlay_1_behavior_t)
 */

/*****************************************************************************
 **
 ** void xcb_xkb_permament_overlay_1_behavior_next
 ** 
 ** @param xcb_xkb_permament_overlay_1_behavior_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_xkb_permament_overlay_1_behavior_next (xcb_xkb_permament_overlay_1_behavior_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_xkb_permament_overlay_1_behavior_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xkb_permament_overlay_1_behavior_end
 ** 
 ** @param xcb_xkb_permament_overlay_1_behavior_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
xcb_generic_iterator_t
xcb_xkb_permament_overlay_1_behavior_end (xcb_xkb_permament_overlay_1_behavior_iterator_t i  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_xkb_permament_overlay_2_behavior_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_xkb_permament_overlay_2_behavior_t)
 */

/*****************************************************************************
 **
 ** void xcb_xkb_permament_overlay_2_behavior_next
 ** 
 ** @param xcb_xkb_permament_overlay_2_behavior_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_xkb_permament_overlay_2_behavior_next (xcb_xkb_permament_overlay_2_behavior_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_xkb_permament_overlay_2_behavior_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xkb_permament_overlay_2_behavior_end
 ** 
 ** @param xcb_xkb_permament_overlay_2_behavior_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
xcb_generic_iterator_t
xcb_xkb_permament_overlay_2_behavior_end (xcb_xkb_permament_overlay_2_behavior_iterator_t i  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_xkb_behavior_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_xkb_behavior_t)
 */

/*****************************************************************************
 **
 ** void xcb_xkb_behavior_next
 ** 
 ** @param xcb_xkb_behavior_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_xkb_behavior_next (xcb_xkb_behavior_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_xkb_behavior_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xkb_behavior_end
 ** 
 ** @param xcb_xkb_behavior_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
xcb_generic_iterator_t
xcb_xkb_behavior_end (xcb_xkb_behavior_iterator_t i  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_xkb_set_behavior_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_xkb_set_behavior_t)
 */

/*****************************************************************************
 **
 ** void xcb_xkb_set_behavior_next
 ** 
 ** @param xcb_xkb_set_behavior_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_xkb_set_behavior_next (xcb_xkb_set_behavior_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_xkb_set_behavior_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xkb_set_behavior_end
 ** 
 ** @param xcb_xkb_set_behavior_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
xcb_generic_iterator_t
xcb_xkb_set_behavior_end (xcb_xkb_set_behavior_iterator_t i  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_xkb_set_explicit_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_xkb_set_explicit_t)
 */

/*****************************************************************************
 **
 ** void xcb_xkb_set_explicit_next
 ** 
 ** @param xcb_xkb_set_explicit_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_xkb_set_explicit_next (xcb_xkb_set_explicit_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_xkb_set_explicit_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xkb_set_explicit_end
 ** 
 ** @param xcb_xkb_set_explicit_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
xcb_generic_iterator_t
xcb_xkb_set_explicit_end (xcb_xkb_set_explicit_iterator_t i  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_xkb_key_mod_map_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_xkb_key_mod_map_t)
 */

/*****************************************************************************
 **
 ** void xcb_xkb_key_mod_map_next
 ** 
 ** @param xcb_xkb_key_mod_map_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_xkb_key_mod_map_next (xcb_xkb_key_mod_map_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_xkb_key_mod_map_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xkb_key_mod_map_end
 ** 
 ** @param xcb_xkb_key_mod_map_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
xcb_generic_iterator_t
xcb_xkb_key_mod_map_end (xcb_xkb_key_mod_map_iterator_t i  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_xkb_key_v_mod_map_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_xkb_key_v_mod_map_t)
 */

/*****************************************************************************
 **
 ** void xcb_xkb_key_v_mod_map_next
 ** 
 ** @param xcb_xkb_key_v_mod_map_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_xkb_key_v_mod_map_next (xcb_xkb_key_v_mod_map_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_xkb_key_v_mod_map_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xkb_key_v_mod_map_end
 ** 
 ** @param xcb_xkb_key_v_mod_map_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
xcb_generic_iterator_t
xcb_xkb_key_v_mod_map_end (xcb_xkb_key_v_mod_map_iterator_t i  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_xkb_kt_set_map_entry_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_xkb_kt_set_map_entry_t)
 */

/*****************************************************************************
 **
 ** void xcb_xkb_kt_set_map_entry_next
 ** 
 ** @param xcb_xkb_kt_set_map_entry_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_xkb_kt_set_map_entry_next (xcb_xkb_kt_set_map_entry_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_xkb_kt_set_map_entry_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xkb_kt_set_map_entry_end
 ** 
 ** @param xcb_xkb_kt_set_map_entry_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
xcb_generic_iterator_t
xcb_xkb_kt_set_map_entry_end (xcb_xkb_kt_set_map_entry_iterator_t i  /**< */);

extern(C) int
xcb_xkb_set_key_type_sizeof (const void  *_buffer  /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_kt_set_map_entry_t * xcb_xkb_set_key_type_entries
 ** 
 ** @param const xcb_xkb_set_key_type_t *R
 ** @returns xcb_xkb_kt_set_map_entry_t *
 **
 *****************************************************************************/
 
xcb_xkb_kt_set_map_entry_t *
xcb_xkb_set_key_type_entries (const xcb_xkb_set_key_type_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_xkb_set_key_type_entries_length
 ** 
 ** @param const xcb_xkb_set_key_type_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xkb_set_key_type_entries_length (const xcb_xkb_set_key_type_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_kt_set_map_entry_iterator_t xcb_xkb_set_key_type_entries_iterator
 ** 
 ** @param const xcb_xkb_set_key_type_t *R
 ** @returns xcb_xkb_kt_set_map_entry_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_kt_set_map_entry_iterator_t
xcb_xkb_set_key_type_entries_iterator (const xcb_xkb_set_key_type_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_kt_set_map_entry_t * xcb_xkb_set_key_type_preserve_entries
 ** 
 ** @param const xcb_xkb_set_key_type_t *R
 ** @returns xcb_xkb_kt_set_map_entry_t *
 **
 *****************************************************************************/
 
xcb_xkb_kt_set_map_entry_t *
xcb_xkb_set_key_type_preserve_entries (const xcb_xkb_set_key_type_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_xkb_set_key_type_preserve_entries_length
 ** 
 ** @param const xcb_xkb_set_key_type_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xkb_set_key_type_preserve_entries_length (const xcb_xkb_set_key_type_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_kt_set_map_entry_iterator_t xcb_xkb_set_key_type_preserve_entries_iterator
 ** 
 ** @param const xcb_xkb_set_key_type_t *R
 ** @returns xcb_xkb_kt_set_map_entry_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_kt_set_map_entry_iterator_t
xcb_xkb_set_key_type_preserve_entries_iterator (const xcb_xkb_set_key_type_t *R  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_xkb_set_key_type_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_xkb_set_key_type_t)
 */

/*****************************************************************************
 **
 ** void xcb_xkb_set_key_type_next
 ** 
 ** @param xcb_xkb_set_key_type_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_xkb_set_key_type_next (xcb_xkb_set_key_type_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_xkb_set_key_type_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xkb_set_key_type_end
 ** 
 ** @param xcb_xkb_set_key_type_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
xcb_generic_iterator_t
xcb_xkb_set_key_type_end (xcb_xkb_set_key_type_iterator_t i  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_xkb_string8_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_xkb_string8_t)
 */

/*****************************************************************************
 **
 ** void xcb_xkb_string8_next
 ** 
 ** @param xcb_xkb_string8_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_xkb_string8_next (xcb_xkb_string8_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_xkb_string8_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xkb_string8_end
 ** 
 ** @param xcb_xkb_string8_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
xcb_generic_iterator_t
xcb_xkb_string8_end (xcb_xkb_string8_iterator_t i  /**< */);

extern(C) int
xcb_xkb_property_serialize (void                     **_buffer  /**< */,
                            const xcb_xkb_property_t  *_aux  /**< */,
                            const xcb_xkb_string8_t   *name  /**< */,
                            const xcb_xkb_string8_t   *value  /**< */);

extern(C) int
xcb_xkb_property_unserialize (const void           *_buffer  /**< */,
                              xcb_xkb_property_t  **_aux  /**< */);

extern(C) int
xcb_xkb_property_sizeof (const void  *_buffer  /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_string8_t * xcb_xkb_property_name
 ** 
 ** @param const xcb_xkb_property_t *R
 ** @returns xcb_xkb_string8_t *
 **
 *****************************************************************************/
 
xcb_xkb_string8_t *
xcb_xkb_property_name (const xcb_xkb_property_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_xkb_property_name_length
 ** 
 ** @param const xcb_xkb_property_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xkb_property_name_length (const xcb_xkb_property_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xkb_property_name_end
 ** 
 ** @param const xcb_xkb_property_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_xkb_property_name_end (const xcb_xkb_property_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_string8_t * xcb_xkb_property_value
 ** 
 ** @param const xcb_xkb_property_t *R
 ** @returns xcb_xkb_string8_t *
 **
 *****************************************************************************/
 
xcb_xkb_string8_t *
xcb_xkb_property_value (const xcb_xkb_property_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_xkb_property_value_length
 ** 
 ** @param const xcb_xkb_property_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xkb_property_value_length (const xcb_xkb_property_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xkb_property_value_end
 ** 
 ** @param const xcb_xkb_property_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_xkb_property_value_end (const xcb_xkb_property_t *R  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_xkb_property_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_xkb_property_t)
 */

/*****************************************************************************
 **
 ** void xcb_xkb_property_next
 ** 
 ** @param xcb_xkb_property_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_xkb_property_next (xcb_xkb_property_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_xkb_property_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xkb_property_end
 ** 
 ** @param xcb_xkb_property_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
xcb_generic_iterator_t
xcb_xkb_property_end (xcb_xkb_property_iterator_t i  /**< */);

extern(C) int
xcb_xkb_outline_sizeof (const void  *_buffer  /**< */);


/*****************************************************************************
 **
 ** xcb_point_t * xcb_xkb_outline_points
 ** 
 ** @param const xcb_xkb_outline_t *R
 ** @returns xcb_point_t *
 **
 *****************************************************************************/
 
xcb_point_t *
xcb_xkb_outline_points (const xcb_xkb_outline_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_xkb_outline_points_length
 ** 
 ** @param const xcb_xkb_outline_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xkb_outline_points_length (const xcb_xkb_outline_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_point_iterator_t xcb_xkb_outline_points_iterator
 ** 
 ** @param const xcb_xkb_outline_t *R
 ** @returns xcb_point_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_point_iterator_t
xcb_xkb_outline_points_iterator (const xcb_xkb_outline_t *R  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_xkb_outline_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_xkb_outline_t)
 */

/*****************************************************************************
 **
 ** void xcb_xkb_outline_next
 ** 
 ** @param xcb_xkb_outline_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_xkb_outline_next (xcb_xkb_outline_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_xkb_outline_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xkb_outline_end
 ** 
 ** @param xcb_xkb_outline_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
xcb_generic_iterator_t
xcb_xkb_outline_end (xcb_xkb_outline_iterator_t i  /**< */);

extern(C) int
xcb_xkb_shape_sizeof (const void  *_buffer  /**< */);


/*****************************************************************************
 **
 ** int xcb_xkb_shape_outlines_length
 ** 
 ** @param const xcb_xkb_shape_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xkb_shape_outlines_length (const xcb_xkb_shape_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_outline_iterator_t xcb_xkb_shape_outlines_iterator
 ** 
 ** @param const xcb_xkb_shape_t *R
 ** @returns xcb_xkb_outline_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_outline_iterator_t
xcb_xkb_shape_outlines_iterator (const xcb_xkb_shape_t *R  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_xkb_shape_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_xkb_shape_t)
 */

/*****************************************************************************
 **
 ** void xcb_xkb_shape_next
 ** 
 ** @param xcb_xkb_shape_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_xkb_shape_next (xcb_xkb_shape_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_xkb_shape_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xkb_shape_end
 ** 
 ** @param xcb_xkb_shape_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
xcb_generic_iterator_t
xcb_xkb_shape_end (xcb_xkb_shape_iterator_t i  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_xkb_key_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_xkb_key_t)
 */

/*****************************************************************************
 **
 ** void xcb_xkb_key_next
 ** 
 ** @param xcb_xkb_key_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_xkb_key_next (xcb_xkb_key_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_xkb_key_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xkb_key_end
 ** 
 ** @param xcb_xkb_key_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
xcb_generic_iterator_t
xcb_xkb_key_end (xcb_xkb_key_iterator_t i  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_xkb_overlay_key_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_xkb_overlay_key_t)
 */

/*****************************************************************************
 **
 ** void xcb_xkb_overlay_key_next
 ** 
 ** @param xcb_xkb_overlay_key_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_xkb_overlay_key_next (xcb_xkb_overlay_key_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_xkb_overlay_key_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xkb_overlay_key_end
 ** 
 ** @param xcb_xkb_overlay_key_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
xcb_generic_iterator_t
xcb_xkb_overlay_key_end (xcb_xkb_overlay_key_iterator_t i  /**< */);

extern(C) int
xcb_xkb_overlay_row_sizeof (const void  *_buffer  /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_overlay_key_t * xcb_xkb_overlay_row_keys
 ** 
 ** @param const xcb_xkb_overlay_row_t *R
 ** @returns xcb_xkb_overlay_key_t *
 **
 *****************************************************************************/
 
xcb_xkb_overlay_key_t *
xcb_xkb_overlay_row_keys (const xcb_xkb_overlay_row_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_xkb_overlay_row_keys_length
 ** 
 ** @param const xcb_xkb_overlay_row_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xkb_overlay_row_keys_length (const xcb_xkb_overlay_row_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_overlay_key_iterator_t xcb_xkb_overlay_row_keys_iterator
 ** 
 ** @param const xcb_xkb_overlay_row_t *R
 ** @returns xcb_xkb_overlay_key_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_overlay_key_iterator_t
xcb_xkb_overlay_row_keys_iterator (const xcb_xkb_overlay_row_t *R  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_xkb_overlay_row_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_xkb_overlay_row_t)
 */

/*****************************************************************************
 **
 ** void xcb_xkb_overlay_row_next
 ** 
 ** @param xcb_xkb_overlay_row_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_xkb_overlay_row_next (xcb_xkb_overlay_row_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_xkb_overlay_row_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xkb_overlay_row_end
 ** 
 ** @param xcb_xkb_overlay_row_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
xcb_generic_iterator_t
xcb_xkb_overlay_row_end (xcb_xkb_overlay_row_iterator_t i  /**< */);

extern(C) int
xcb_xkb_overlay_sizeof (const void  *_buffer  /**< */);


/*****************************************************************************
 **
 ** int xcb_xkb_overlay_rows_length
 ** 
 ** @param const xcb_xkb_overlay_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xkb_overlay_rows_length (const xcb_xkb_overlay_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_overlay_row_iterator_t xcb_xkb_overlay_rows_iterator
 ** 
 ** @param const xcb_xkb_overlay_t *R
 ** @returns xcb_xkb_overlay_row_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_overlay_row_iterator_t
xcb_xkb_overlay_rows_iterator (const xcb_xkb_overlay_t *R  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_xkb_overlay_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_xkb_overlay_t)
 */

/*****************************************************************************
 **
 ** void xcb_xkb_overlay_next
 ** 
 ** @param xcb_xkb_overlay_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_xkb_overlay_next (xcb_xkb_overlay_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_xkb_overlay_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xkb_overlay_end
 ** 
 ** @param xcb_xkb_overlay_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
xcb_generic_iterator_t
xcb_xkb_overlay_end (xcb_xkb_overlay_iterator_t i  /**< */);

extern(C) int
xcb_xkb_row_sizeof (const void  *_buffer  /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_key_t * xcb_xkb_row_keys
 ** 
 ** @param const xcb_xkb_row_t *R
 ** @returns xcb_xkb_key_t *
 **
 *****************************************************************************/
 
xcb_xkb_key_t *
xcb_xkb_row_keys (const xcb_xkb_row_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_xkb_row_keys_length
 ** 
 ** @param const xcb_xkb_row_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xkb_row_keys_length (const xcb_xkb_row_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_key_iterator_t xcb_xkb_row_keys_iterator
 ** 
 ** @param const xcb_xkb_row_t *R
 ** @returns xcb_xkb_key_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_key_iterator_t
xcb_xkb_row_keys_iterator (const xcb_xkb_row_t *R  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_xkb_row_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_xkb_row_t)
 */

/*****************************************************************************
 **
 ** void xcb_xkb_row_next
 ** 
 ** @param xcb_xkb_row_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_xkb_row_next (xcb_xkb_row_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_xkb_row_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xkb_row_end
 ** 
 ** @param xcb_xkb_row_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
xcb_generic_iterator_t
xcb_xkb_row_end (xcb_xkb_row_iterator_t i  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_xkb_common_doodad_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_xkb_common_doodad_t)
 */

/*****************************************************************************
 **
 ** void xcb_xkb_common_doodad_next
 ** 
 ** @param xcb_xkb_common_doodad_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_xkb_common_doodad_next (xcb_xkb_common_doodad_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_xkb_common_doodad_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xkb_common_doodad_end
 ** 
 ** @param xcb_xkb_common_doodad_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
xcb_generic_iterator_t
xcb_xkb_common_doodad_end (xcb_xkb_common_doodad_iterator_t i  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_xkb_shape_doodad_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_xkb_shape_doodad_t)
 */

/*****************************************************************************
 **
 ** void xcb_xkb_shape_doodad_next
 ** 
 ** @param xcb_xkb_shape_doodad_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_xkb_shape_doodad_next (xcb_xkb_shape_doodad_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_xkb_shape_doodad_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xkb_shape_doodad_end
 ** 
 ** @param xcb_xkb_shape_doodad_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
xcb_generic_iterator_t
xcb_xkb_shape_doodad_end (xcb_xkb_shape_doodad_iterator_t i  /**< */);

extern(C) int
xcb_xkb_text_doodad_sizeof (const void  *_buffer  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_xkb_text_doodad_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_xkb_text_doodad_t)
 */

/*****************************************************************************
 **
 ** void xcb_xkb_text_doodad_next
 ** 
 ** @param xcb_xkb_text_doodad_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_xkb_text_doodad_next (xcb_xkb_text_doodad_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_xkb_text_doodad_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xkb_text_doodad_end
 ** 
 ** @param xcb_xkb_text_doodad_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
xcb_generic_iterator_t
xcb_xkb_text_doodad_end (xcb_xkb_text_doodad_iterator_t i  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_xkb_indicator_doodad_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_xkb_indicator_doodad_t)
 */

/*****************************************************************************
 **
 ** void xcb_xkb_indicator_doodad_next
 ** 
 ** @param xcb_xkb_indicator_doodad_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_xkb_indicator_doodad_next (xcb_xkb_indicator_doodad_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_xkb_indicator_doodad_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xkb_indicator_doodad_end
 ** 
 ** @param xcb_xkb_indicator_doodad_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
xcb_generic_iterator_t
xcb_xkb_indicator_doodad_end (xcb_xkb_indicator_doodad_iterator_t i  /**< */);

extern(C) int
xcb_xkb_logo_doodad_sizeof (const void  *_buffer  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_xkb_logo_doodad_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_xkb_logo_doodad_t)
 */

/*****************************************************************************
 **
 ** void xcb_xkb_logo_doodad_next
 ** 
 ** @param xcb_xkb_logo_doodad_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_xkb_logo_doodad_next (xcb_xkb_logo_doodad_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_xkb_logo_doodad_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xkb_logo_doodad_end
 ** 
 ** @param xcb_xkb_logo_doodad_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
xcb_generic_iterator_t
xcb_xkb_logo_doodad_end (xcb_xkb_logo_doodad_iterator_t i  /**< */);

extern(C) int
xcb_xkb_doodad_sizeof (const void  *_buffer  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_xkb_doodad_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_xkb_doodad_t)
 */

/*****************************************************************************
 **
 ** void xcb_xkb_doodad_next
 ** 
 ** @param xcb_xkb_doodad_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_xkb_doodad_next (xcb_xkb_doodad_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_xkb_doodad_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xkb_doodad_end
 ** 
 ** @param xcb_xkb_doodad_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
xcb_generic_iterator_t
xcb_xkb_doodad_end (xcb_xkb_doodad_iterator_t i  /**< */);

extern(C) int
xcb_xkb_section_sizeof (const void  *_buffer  /**< */);


/*****************************************************************************
 **
 ** int xcb_xkb_section_rows_length
 ** 
 ** @param const xcb_xkb_section_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xkb_section_rows_length (const xcb_xkb_section_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_row_iterator_t xcb_xkb_section_rows_iterator
 ** 
 ** @param const xcb_xkb_section_t *R
 ** @returns xcb_xkb_row_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_row_iterator_t
xcb_xkb_section_rows_iterator (const xcb_xkb_section_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_xkb_section_doodads_length
 ** 
 ** @param const xcb_xkb_section_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xkb_section_doodads_length (const xcb_xkb_section_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_doodad_iterator_t xcb_xkb_section_doodads_iterator
 ** 
 ** @param const xcb_xkb_section_t *R
 ** @returns xcb_xkb_doodad_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_doodad_iterator_t
xcb_xkb_section_doodads_iterator (const xcb_xkb_section_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_xkb_section_overlays_length
 ** 
 ** @param const xcb_xkb_section_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xkb_section_overlays_length (const xcb_xkb_section_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_overlay_iterator_t xcb_xkb_section_overlays_iterator
 ** 
 ** @param const xcb_xkb_section_t *R
 ** @returns xcb_xkb_overlay_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_overlay_iterator_t
xcb_xkb_section_overlays_iterator (const xcb_xkb_section_t *R  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_xkb_section_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_xkb_section_t)
 */

/*****************************************************************************
 **
 ** void xcb_xkb_section_next
 ** 
 ** @param xcb_xkb_section_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_xkb_section_next (xcb_xkb_section_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_xkb_section_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xkb_section_end
 ** 
 ** @param xcb_xkb_section_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
xcb_generic_iterator_t
xcb_xkb_section_end (xcb_xkb_section_iterator_t i  /**< */);

extern(C) int
xcb_xkb_listing_sizeof (const void  *_buffer  /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_string8_t * xcb_xkb_listing_string
 ** 
 ** @param const xcb_xkb_listing_t *R
 ** @returns xcb_xkb_string8_t *
 **
 *****************************************************************************/
 
xcb_xkb_string8_t *
xcb_xkb_listing_string (const xcb_xkb_listing_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_xkb_listing_string_length
 ** 
 ** @param const xcb_xkb_listing_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xkb_listing_string_length (const xcb_xkb_listing_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xkb_listing_string_end
 ** 
 ** @param const xcb_xkb_listing_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_xkb_listing_string_end (const xcb_xkb_listing_t *R  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_xkb_listing_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_xkb_listing_t)
 */

/*****************************************************************************
 **
 ** void xcb_xkb_listing_next
 ** 
 ** @param xcb_xkb_listing_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_xkb_listing_next (xcb_xkb_listing_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_xkb_listing_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xkb_listing_end
 ** 
 ** @param xcb_xkb_listing_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
xcb_generic_iterator_t
xcb_xkb_listing_end (xcb_xkb_listing_iterator_t i  /**< */);

extern(C) int
xcb_xkb_device_led_info_sizeof (const void  *_buffer  /**< */);


/*****************************************************************************
 **
 ** xcb_atom_t * xcb_xkb_device_led_info_names
 ** 
 ** @param const xcb_xkb_device_led_info_t *R
 ** @returns xcb_atom_t *
 **
 *****************************************************************************/
 
xcb_atom_t *
xcb_xkb_device_led_info_names (const xcb_xkb_device_led_info_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_xkb_device_led_info_names_length
 ** 
 ** @param const xcb_xkb_device_led_info_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xkb_device_led_info_names_length (const xcb_xkb_device_led_info_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xkb_device_led_info_names_end
 ** 
 ** @param const xcb_xkb_device_led_info_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_xkb_device_led_info_names_end (const xcb_xkb_device_led_info_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_indicator_map_t * xcb_xkb_device_led_info_maps
 ** 
 ** @param const xcb_xkb_device_led_info_t *R
 ** @returns xcb_xkb_indicator_map_t *
 **
 *****************************************************************************/
 
xcb_xkb_indicator_map_t *
xcb_xkb_device_led_info_maps (const xcb_xkb_device_led_info_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_xkb_device_led_info_maps_length
 ** 
 ** @param const xcb_xkb_device_led_info_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xkb_device_led_info_maps_length (const xcb_xkb_device_led_info_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_indicator_map_iterator_t xcb_xkb_device_led_info_maps_iterator
 ** 
 ** @param const xcb_xkb_device_led_info_t *R
 ** @returns xcb_xkb_indicator_map_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_indicator_map_iterator_t
xcb_xkb_device_led_info_maps_iterator (const xcb_xkb_device_led_info_t *R  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_xkb_device_led_info_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_xkb_device_led_info_t)
 */

/*****************************************************************************
 **
 ** void xcb_xkb_device_led_info_next
 ** 
 ** @param xcb_xkb_device_led_info_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_xkb_device_led_info_next (xcb_xkb_device_led_info_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_xkb_device_led_info_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xkb_device_led_info_end
 ** 
 ** @param xcb_xkb_device_led_info_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
xcb_generic_iterator_t
xcb_xkb_device_led_info_end (xcb_xkb_device_led_info_iterator_t i  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_xkb_sa_no_action_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_xkb_sa_no_action_t)
 */

/*****************************************************************************
 **
 ** void xcb_xkb_sa_no_action_next
 ** 
 ** @param xcb_xkb_sa_no_action_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_xkb_sa_no_action_next (xcb_xkb_sa_no_action_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_xkb_sa_no_action_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xkb_sa_no_action_end
 ** 
 ** @param xcb_xkb_sa_no_action_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
xcb_generic_iterator_t
xcb_xkb_sa_no_action_end (xcb_xkb_sa_no_action_iterator_t i  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_xkb_sa_set_mods_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_xkb_sa_set_mods_t)
 */

/*****************************************************************************
 **
 ** void xcb_xkb_sa_set_mods_next
 ** 
 ** @param xcb_xkb_sa_set_mods_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_xkb_sa_set_mods_next (xcb_xkb_sa_set_mods_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_xkb_sa_set_mods_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xkb_sa_set_mods_end
 ** 
 ** @param xcb_xkb_sa_set_mods_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
xcb_generic_iterator_t
xcb_xkb_sa_set_mods_end (xcb_xkb_sa_set_mods_iterator_t i  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_xkb_sa_latch_mods_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_xkb_sa_latch_mods_t)
 */

/*****************************************************************************
 **
 ** void xcb_xkb_sa_latch_mods_next
 ** 
 ** @param xcb_xkb_sa_latch_mods_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_xkb_sa_latch_mods_next (xcb_xkb_sa_latch_mods_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_xkb_sa_latch_mods_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xkb_sa_latch_mods_end
 ** 
 ** @param xcb_xkb_sa_latch_mods_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
xcb_generic_iterator_t
xcb_xkb_sa_latch_mods_end (xcb_xkb_sa_latch_mods_iterator_t i  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_xkb_sa_lock_mods_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_xkb_sa_lock_mods_t)
 */

/*****************************************************************************
 **
 ** void xcb_xkb_sa_lock_mods_next
 ** 
 ** @param xcb_xkb_sa_lock_mods_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_xkb_sa_lock_mods_next (xcb_xkb_sa_lock_mods_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_xkb_sa_lock_mods_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xkb_sa_lock_mods_end
 ** 
 ** @param xcb_xkb_sa_lock_mods_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
xcb_generic_iterator_t
xcb_xkb_sa_lock_mods_end (xcb_xkb_sa_lock_mods_iterator_t i  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_xkb_sa_set_group_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_xkb_sa_set_group_t)
 */

/*****************************************************************************
 **
 ** void xcb_xkb_sa_set_group_next
 ** 
 ** @param xcb_xkb_sa_set_group_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_xkb_sa_set_group_next (xcb_xkb_sa_set_group_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_xkb_sa_set_group_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xkb_sa_set_group_end
 ** 
 ** @param xcb_xkb_sa_set_group_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
xcb_generic_iterator_t
xcb_xkb_sa_set_group_end (xcb_xkb_sa_set_group_iterator_t i  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_xkb_sa_latch_group_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_xkb_sa_latch_group_t)
 */

/*****************************************************************************
 **
 ** void xcb_xkb_sa_latch_group_next
 ** 
 ** @param xcb_xkb_sa_latch_group_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_xkb_sa_latch_group_next (xcb_xkb_sa_latch_group_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_xkb_sa_latch_group_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xkb_sa_latch_group_end
 ** 
 ** @param xcb_xkb_sa_latch_group_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
xcb_generic_iterator_t
xcb_xkb_sa_latch_group_end (xcb_xkb_sa_latch_group_iterator_t i  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_xkb_sa_lock_group_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_xkb_sa_lock_group_t)
 */

/*****************************************************************************
 **
 ** void xcb_xkb_sa_lock_group_next
 ** 
 ** @param xcb_xkb_sa_lock_group_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_xkb_sa_lock_group_next (xcb_xkb_sa_lock_group_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_xkb_sa_lock_group_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xkb_sa_lock_group_end
 ** 
 ** @param xcb_xkb_sa_lock_group_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
xcb_generic_iterator_t
xcb_xkb_sa_lock_group_end (xcb_xkb_sa_lock_group_iterator_t i  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_xkb_sa_move_ptr_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_xkb_sa_move_ptr_t)
 */

/*****************************************************************************
 **
 ** void xcb_xkb_sa_move_ptr_next
 ** 
 ** @param xcb_xkb_sa_move_ptr_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_xkb_sa_move_ptr_next (xcb_xkb_sa_move_ptr_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_xkb_sa_move_ptr_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xkb_sa_move_ptr_end
 ** 
 ** @param xcb_xkb_sa_move_ptr_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
xcb_generic_iterator_t
xcb_xkb_sa_move_ptr_end (xcb_xkb_sa_move_ptr_iterator_t i  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_xkb_sa_ptr_btn_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_xkb_sa_ptr_btn_t)
 */

/*****************************************************************************
 **
 ** void xcb_xkb_sa_ptr_btn_next
 ** 
 ** @param xcb_xkb_sa_ptr_btn_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_xkb_sa_ptr_btn_next (xcb_xkb_sa_ptr_btn_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_xkb_sa_ptr_btn_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xkb_sa_ptr_btn_end
 ** 
 ** @param xcb_xkb_sa_ptr_btn_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
xcb_generic_iterator_t
xcb_xkb_sa_ptr_btn_end (xcb_xkb_sa_ptr_btn_iterator_t i  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_xkb_sa_lock_ptr_btn_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_xkb_sa_lock_ptr_btn_t)
 */

/*****************************************************************************
 **
 ** void xcb_xkb_sa_lock_ptr_btn_next
 ** 
 ** @param xcb_xkb_sa_lock_ptr_btn_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_xkb_sa_lock_ptr_btn_next (xcb_xkb_sa_lock_ptr_btn_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_xkb_sa_lock_ptr_btn_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xkb_sa_lock_ptr_btn_end
 ** 
 ** @param xcb_xkb_sa_lock_ptr_btn_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
xcb_generic_iterator_t
xcb_xkb_sa_lock_ptr_btn_end (xcb_xkb_sa_lock_ptr_btn_iterator_t i  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_xkb_sa_set_ptr_dflt_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_xkb_sa_set_ptr_dflt_t)
 */

/*****************************************************************************
 **
 ** void xcb_xkb_sa_set_ptr_dflt_next
 ** 
 ** @param xcb_xkb_sa_set_ptr_dflt_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_xkb_sa_set_ptr_dflt_next (xcb_xkb_sa_set_ptr_dflt_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_xkb_sa_set_ptr_dflt_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xkb_sa_set_ptr_dflt_end
 ** 
 ** @param xcb_xkb_sa_set_ptr_dflt_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
xcb_generic_iterator_t
xcb_xkb_sa_set_ptr_dflt_end (xcb_xkb_sa_set_ptr_dflt_iterator_t i  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_xkb_sa_iso_lock_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_xkb_sa_iso_lock_t)
 */

/*****************************************************************************
 **
 ** void xcb_xkb_sa_iso_lock_next
 ** 
 ** @param xcb_xkb_sa_iso_lock_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_xkb_sa_iso_lock_next (xcb_xkb_sa_iso_lock_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_xkb_sa_iso_lock_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xkb_sa_iso_lock_end
 ** 
 ** @param xcb_xkb_sa_iso_lock_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
xcb_generic_iterator_t
xcb_xkb_sa_iso_lock_end (xcb_xkb_sa_iso_lock_iterator_t i  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_xkb_sa_terminate_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_xkb_sa_terminate_t)
 */

/*****************************************************************************
 **
 ** void xcb_xkb_sa_terminate_next
 ** 
 ** @param xcb_xkb_sa_terminate_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_xkb_sa_terminate_next (xcb_xkb_sa_terminate_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_xkb_sa_terminate_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xkb_sa_terminate_end
 ** 
 ** @param xcb_xkb_sa_terminate_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
xcb_generic_iterator_t
xcb_xkb_sa_terminate_end (xcb_xkb_sa_terminate_iterator_t i  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_xkb_sa_switch_screen_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_xkb_sa_switch_screen_t)
 */

/*****************************************************************************
 **
 ** void xcb_xkb_sa_switch_screen_next
 ** 
 ** @param xcb_xkb_sa_switch_screen_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_xkb_sa_switch_screen_next (xcb_xkb_sa_switch_screen_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_xkb_sa_switch_screen_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xkb_sa_switch_screen_end
 ** 
 ** @param xcb_xkb_sa_switch_screen_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
xcb_generic_iterator_t
xcb_xkb_sa_switch_screen_end (xcb_xkb_sa_switch_screen_iterator_t i  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_xkb_sa_set_controls_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_xkb_sa_set_controls_t)
 */

/*****************************************************************************
 **
 ** void xcb_xkb_sa_set_controls_next
 ** 
 ** @param xcb_xkb_sa_set_controls_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_xkb_sa_set_controls_next (xcb_xkb_sa_set_controls_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_xkb_sa_set_controls_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xkb_sa_set_controls_end
 ** 
 ** @param xcb_xkb_sa_set_controls_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
xcb_generic_iterator_t
xcb_xkb_sa_set_controls_end (xcb_xkb_sa_set_controls_iterator_t i  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_xkb_sa_lock_controls_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_xkb_sa_lock_controls_t)
 */

/*****************************************************************************
 **
 ** void xcb_xkb_sa_lock_controls_next
 ** 
 ** @param xcb_xkb_sa_lock_controls_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_xkb_sa_lock_controls_next (xcb_xkb_sa_lock_controls_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_xkb_sa_lock_controls_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xkb_sa_lock_controls_end
 ** 
 ** @param xcb_xkb_sa_lock_controls_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
xcb_generic_iterator_t
xcb_xkb_sa_lock_controls_end (xcb_xkb_sa_lock_controls_iterator_t i  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_xkb_sa_action_message_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_xkb_sa_action_message_t)
 */

/*****************************************************************************
 **
 ** void xcb_xkb_sa_action_message_next
 ** 
 ** @param xcb_xkb_sa_action_message_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_xkb_sa_action_message_next (xcb_xkb_sa_action_message_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_xkb_sa_action_message_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xkb_sa_action_message_end
 ** 
 ** @param xcb_xkb_sa_action_message_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
xcb_generic_iterator_t
xcb_xkb_sa_action_message_end (xcb_xkb_sa_action_message_iterator_t i  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_xkb_sa_redirect_key_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_xkb_sa_redirect_key_t)
 */

/*****************************************************************************
 **
 ** void xcb_xkb_sa_redirect_key_next
 ** 
 ** @param xcb_xkb_sa_redirect_key_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_xkb_sa_redirect_key_next (xcb_xkb_sa_redirect_key_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_xkb_sa_redirect_key_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xkb_sa_redirect_key_end
 ** 
 ** @param xcb_xkb_sa_redirect_key_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
xcb_generic_iterator_t
xcb_xkb_sa_redirect_key_end (xcb_xkb_sa_redirect_key_iterator_t i  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_xkb_sa_device_btn_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_xkb_sa_device_btn_t)
 */

/*****************************************************************************
 **
 ** void xcb_xkb_sa_device_btn_next
 ** 
 ** @param xcb_xkb_sa_device_btn_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_xkb_sa_device_btn_next (xcb_xkb_sa_device_btn_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_xkb_sa_device_btn_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xkb_sa_device_btn_end
 ** 
 ** @param xcb_xkb_sa_device_btn_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
xcb_generic_iterator_t
xcb_xkb_sa_device_btn_end (xcb_xkb_sa_device_btn_iterator_t i  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_xkb_sa_lock_device_btn_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_xkb_sa_lock_device_btn_t)
 */

/*****************************************************************************
 **
 ** void xcb_xkb_sa_lock_device_btn_next
 ** 
 ** @param xcb_xkb_sa_lock_device_btn_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_xkb_sa_lock_device_btn_next (xcb_xkb_sa_lock_device_btn_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_xkb_sa_lock_device_btn_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xkb_sa_lock_device_btn_end
 ** 
 ** @param xcb_xkb_sa_lock_device_btn_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
xcb_generic_iterator_t
xcb_xkb_sa_lock_device_btn_end (xcb_xkb_sa_lock_device_btn_iterator_t i  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_xkb_sa_device_valuator_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_xkb_sa_device_valuator_t)
 */

/*****************************************************************************
 **
 ** void xcb_xkb_sa_device_valuator_next
 ** 
 ** @param xcb_xkb_sa_device_valuator_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_xkb_sa_device_valuator_next (xcb_xkb_sa_device_valuator_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_xkb_sa_device_valuator_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xkb_sa_device_valuator_end
 ** 
 ** @param xcb_xkb_sa_device_valuator_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
xcb_generic_iterator_t
xcb_xkb_sa_device_valuator_end (xcb_xkb_sa_device_valuator_iterator_t i  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_xkb_action_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_xkb_action_t)
 */

/*****************************************************************************
 **
 ** void xcb_xkb_action_next
 ** 
 ** @param xcb_xkb_action_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_xkb_action_next (xcb_xkb_action_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_xkb_action_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xkb_action_end
 ** 
 ** @param xcb_xkb_action_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
xcb_generic_iterator_t
xcb_xkb_action_end (xcb_xkb_action_iterator_t i  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 * 
 */

/*****************************************************************************
 **
 ** xcb_xkb_use_extension_cookie_t xcb_xkb_use_extension
 ** 
 ** @param xcb_connection_t *c
 ** @param ushort            wantedMajor
 ** @param ushort            wantedMinor
 ** @returns xcb_xkb_use_extension_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_use_extension_cookie_t
xcb_xkb_use_extension (xcb_connection_t *c  /**< */,
                       ushort            wantedMajor  /**< */,
                       ushort            wantedMinor  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 * 
 * This form can be used only if the request will cause
 * a reply to be generated. Any returned error will be
 * placed in the event queue.
 */

/*****************************************************************************
 **
 ** xcb_xkb_use_extension_cookie_t xcb_xkb_use_extension_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @param ushort            wantedMajor
 ** @param ushort            wantedMinor
 ** @returns xcb_xkb_use_extension_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_use_extension_cookie_t
xcb_xkb_use_extension_unchecked (xcb_connection_t *c  /**< */,
                                 ushort            wantedMajor  /**< */,
                                 ushort            wantedMinor  /**< */);

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 * 
 * The parameter @p e supplied to this function must be NULL if
 * xcb_xkb_use_extension_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */

/*****************************************************************************
 **
 ** xcb_xkb_use_extension_reply_t * xcb_xkb_use_extension_reply
 ** 
 ** @param xcb_connection_t                *c
 ** @param xcb_xkb_use_extension_cookie_t   cookie
 ** @param xcb_generic_error_t            **e
 ** @returns xcb_xkb_use_extension_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_use_extension_reply_t *
xcb_xkb_use_extension_reply (xcb_connection_t                *c  /**< */,
                             xcb_xkb_use_extension_cookie_t   cookie  /**< */,
                             xcb_generic_error_t            **e  /**< */);

extern(C) int
xcb_xkb_select_events_details_serialize (void                                  **_buffer  /**< */,
                                         ushort                                  affectWhich  /**< */,
                                         ushort                                  clear  /**< */,
                                         ushort                                  selectAll  /**< */,
                                         const xcb_xkb_select_events_details_t  *_aux  /**< */);

extern(C) int
xcb_xkb_select_events_details_unpack (const void                       *_buffer  /**< */,
                                      ushort                            affectWhich  /**< */,
                                      ushort                            clear  /**< */,
                                      ushort                            selectAll  /**< */,
                                      xcb_xkb_select_events_details_t  *_aux  /**< */);

extern(C) int
xcb_xkb_select_events_details_sizeof (const void  *_buffer  /**< */,
                                      ushort       affectWhich  /**< */,
                                      ushort       clear  /**< */,
                                      ushort       selectAll  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 * 
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_xkb_select_events_checked
 ** 
 ** @param xcb_connection_t      *c
 ** @param xcb_xkb_device_spec_t  deviceSpec
 ** @param ushort                 affectWhich
 ** @param ushort                 clear
 ** @param ushort                 selectAll
 ** @param ushort                 affectMap
 ** @param ushort                 map
 ** @param const void            *details
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_xkb_select_events_checked (xcb_connection_t      *c  /**< */,
                               xcb_xkb_device_spec_t  deviceSpec  /**< */,
                               ushort                 affectWhich  /**< */,
                               ushort                 clear  /**< */,
                               ushort                 selectAll  /**< */,
                               ushort                 affectMap  /**< */,
                               ushort                 map  /**< */,
                               const void            *details  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 * 
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_xkb_select_events
 ** 
 ** @param xcb_connection_t      *c
 ** @param xcb_xkb_device_spec_t  deviceSpec
 ** @param ushort                 affectWhich
 ** @param ushort                 clear
 ** @param ushort                 selectAll
 ** @param ushort                 affectMap
 ** @param ushort                 map
 ** @param const void            *details
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_xkb_select_events (xcb_connection_t      *c  /**< */,
                       xcb_xkb_device_spec_t  deviceSpec  /**< */,
                       ushort                 affectWhich  /**< */,
                       ushort                 clear  /**< */,
                       ushort                 selectAll  /**< */,
                       ushort                 affectMap  /**< */,
                       ushort                 map  /**< */,
                       const void            *details  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 * 
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_xkb_select_events_aux_checked
 ** 
 ** @param xcb_connection_t                      *c
 ** @param xcb_xkb_device_spec_t                  deviceSpec
 ** @param ushort                                 affectWhich
 ** @param ushort                                 clear
 ** @param ushort                                 selectAll
 ** @param ushort                                 affectMap
 ** @param ushort                                 map
 ** @param const xcb_xkb_select_events_details_t *details
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_xkb_select_events_aux_checked (xcb_connection_t                      *c  /**< */,
                                   xcb_xkb_device_spec_t                  deviceSpec  /**< */,
                                   ushort                                 affectWhich  /**< */,
                                   ushort                                 clear  /**< */,
                                   ushort                                 selectAll  /**< */,
                                   ushort                                 affectMap  /**< */,
                                   ushort                                 map  /**< */,
                                   const xcb_xkb_select_events_details_t *details  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 * 
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_xkb_select_events_aux
 ** 
 ** @param xcb_connection_t                      *c
 ** @param xcb_xkb_device_spec_t                  deviceSpec
 ** @param ushort                                 affectWhich
 ** @param ushort                                 clear
 ** @param ushort                                 selectAll
 ** @param ushort                                 affectMap
 ** @param ushort                                 map
 ** @param const xcb_xkb_select_events_details_t *details
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_xkb_select_events_aux (xcb_connection_t                      *c  /**< */,
                           xcb_xkb_device_spec_t                  deviceSpec  /**< */,
                           ushort                                 affectWhich  /**< */,
                           ushort                                 clear  /**< */,
                           ushort                                 selectAll  /**< */,
                           ushort                                 affectMap  /**< */,
                           ushort                                 map  /**< */,
                           const xcb_xkb_select_events_details_t *details  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 * 
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_xkb_bell_checked
 ** 
 ** @param xcb_connection_t          *c
 ** @param xcb_xkb_device_spec_t      deviceSpec
 ** @param xcb_xkb_bell_class_spec_t  bellClass
 ** @param xcb_xkb_id_spec_t          bellID
 ** @param byte                       percent
 ** @param ubyte                      forceSound
 ** @param ubyte                      eventOnly
 ** @param short                      pitch
 ** @param short                      duration
 ** @param xcb_atom_t                 name
 ** @param xcb_window_t               window
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_xkb_bell_checked (xcb_connection_t          *c  /**< */,
                      xcb_xkb_device_spec_t      deviceSpec  /**< */,
                      xcb_xkb_bell_class_spec_t  bellClass  /**< */,
                      xcb_xkb_id_spec_t          bellID  /**< */,
                      byte                       percent  /**< */,
                      ubyte                      forceSound  /**< */,
                      ubyte                      eventOnly  /**< */,
                      short                      pitch  /**< */,
                      short                      duration  /**< */,
                      xcb_atom_t                 name  /**< */,
                      xcb_window_t               window  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 * 
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_xkb_bell
 ** 
 ** @param xcb_connection_t          *c
 ** @param xcb_xkb_device_spec_t      deviceSpec
 ** @param xcb_xkb_bell_class_spec_t  bellClass
 ** @param xcb_xkb_id_spec_t          bellID
 ** @param byte                       percent
 ** @param ubyte                      forceSound
 ** @param ubyte                      eventOnly
 ** @param short                      pitch
 ** @param short                      duration
 ** @param xcb_atom_t                 name
 ** @param xcb_window_t               window
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_xkb_bell (xcb_connection_t          *c  /**< */,
              xcb_xkb_device_spec_t      deviceSpec  /**< */,
              xcb_xkb_bell_class_spec_t  bellClass  /**< */,
              xcb_xkb_id_spec_t          bellID  /**< */,
              byte                       percent  /**< */,
              ubyte                      forceSound  /**< */,
              ubyte                      eventOnly  /**< */,
              short                      pitch  /**< */,
              short                      duration  /**< */,
              xcb_atom_t                 name  /**< */,
              xcb_window_t               window  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 * 
 */

/*****************************************************************************
 **
 ** xcb_xkb_get_state_cookie_t xcb_xkb_get_state
 ** 
 ** @param xcb_connection_t      *c
 ** @param xcb_xkb_device_spec_t  deviceSpec
 ** @returns xcb_xkb_get_state_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_get_state_cookie_t
xcb_xkb_get_state (xcb_connection_t      *c  /**< */,
                   xcb_xkb_device_spec_t  deviceSpec  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 * 
 * This form can be used only if the request will cause
 * a reply to be generated. Any returned error will be
 * placed in the event queue.
 */

/*****************************************************************************
 **
 ** xcb_xkb_get_state_cookie_t xcb_xkb_get_state_unchecked
 ** 
 ** @param xcb_connection_t      *c
 ** @param xcb_xkb_device_spec_t  deviceSpec
 ** @returns xcb_xkb_get_state_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_get_state_cookie_t
xcb_xkb_get_state_unchecked (xcb_connection_t      *c  /**< */,
                             xcb_xkb_device_spec_t  deviceSpec  /**< */);

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 * 
 * The parameter @p e supplied to this function must be NULL if
 * xcb_xkb_get_state_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */

/*****************************************************************************
 **
 ** xcb_xkb_get_state_reply_t * xcb_xkb_get_state_reply
 ** 
 ** @param xcb_connection_t            *c
 ** @param xcb_xkb_get_state_cookie_t   cookie
 ** @param xcb_generic_error_t        **e
 ** @returns xcb_xkb_get_state_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_get_state_reply_t *
xcb_xkb_get_state_reply (xcb_connection_t            *c  /**< */,
                         xcb_xkb_get_state_cookie_t   cookie  /**< */,
                         xcb_generic_error_t        **e  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 * 
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_xkb_latch_lock_state_checked
 ** 
 ** @param xcb_connection_t      *c
 ** @param xcb_xkb_device_spec_t  deviceSpec
 ** @param ubyte                  affectModLocks
 ** @param ubyte                  modLocks
 ** @param ubyte                  lockGroup
 ** @param ubyte                  groupLock
 ** @param ubyte                  affectModLatches
 ** @param ubyte                  latchGroup
 ** @param ushort                 groupLatch
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_xkb_latch_lock_state_checked (xcb_connection_t      *c  /**< */,
                                  xcb_xkb_device_spec_t  deviceSpec  /**< */,
                                  ubyte                  affectModLocks  /**< */,
                                  ubyte                  modLocks  /**< */,
                                  ubyte                  lockGroup  /**< */,
                                  ubyte                  groupLock  /**< */,
                                  ubyte                  affectModLatches  /**< */,
                                  ubyte                  latchGroup  /**< */,
                                  ushort                 groupLatch  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 * 
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_xkb_latch_lock_state
 ** 
 ** @param xcb_connection_t      *c
 ** @param xcb_xkb_device_spec_t  deviceSpec
 ** @param ubyte                  affectModLocks
 ** @param ubyte                  modLocks
 ** @param ubyte                  lockGroup
 ** @param ubyte                  groupLock
 ** @param ubyte                  affectModLatches
 ** @param ubyte                  latchGroup
 ** @param ushort                 groupLatch
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_xkb_latch_lock_state (xcb_connection_t      *c  /**< */,
                          xcb_xkb_device_spec_t  deviceSpec  /**< */,
                          ubyte                  affectModLocks  /**< */,
                          ubyte                  modLocks  /**< */,
                          ubyte                  lockGroup  /**< */,
                          ubyte                  groupLock  /**< */,
                          ubyte                  affectModLatches  /**< */,
                          ubyte                  latchGroup  /**< */,
                          ushort                 groupLatch  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 * 
 */

/*****************************************************************************
 **
 ** xcb_xkb_get_controls_cookie_t xcb_xkb_get_controls
 ** 
 ** @param xcb_connection_t      *c
 ** @param xcb_xkb_device_spec_t  deviceSpec
 ** @returns xcb_xkb_get_controls_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_get_controls_cookie_t
xcb_xkb_get_controls (xcb_connection_t      *c  /**< */,
                      xcb_xkb_device_spec_t  deviceSpec  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 * 
 * This form can be used only if the request will cause
 * a reply to be generated. Any returned error will be
 * placed in the event queue.
 */

/*****************************************************************************
 **
 ** xcb_xkb_get_controls_cookie_t xcb_xkb_get_controls_unchecked
 ** 
 ** @param xcb_connection_t      *c
 ** @param xcb_xkb_device_spec_t  deviceSpec
 ** @returns xcb_xkb_get_controls_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_get_controls_cookie_t
xcb_xkb_get_controls_unchecked (xcb_connection_t      *c  /**< */,
                                xcb_xkb_device_spec_t  deviceSpec  /**< */);

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 * 
 * The parameter @p e supplied to this function must be NULL if
 * xcb_xkb_get_controls_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */

/*****************************************************************************
 **
 ** xcb_xkb_get_controls_reply_t * xcb_xkb_get_controls_reply
 ** 
 ** @param xcb_connection_t               *c
 ** @param xcb_xkb_get_controls_cookie_t   cookie
 ** @param xcb_generic_error_t           **e
 ** @returns xcb_xkb_get_controls_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_get_controls_reply_t *
xcb_xkb_get_controls_reply (xcb_connection_t               *c  /**< */,
                            xcb_xkb_get_controls_cookie_t   cookie  /**< */,
                            xcb_generic_error_t           **e  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 * 
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_xkb_set_controls_checked
 ** 
 ** @param xcb_connection_t      *c
 ** @param xcb_xkb_device_spec_t  deviceSpec
 ** @param ubyte                  affectInternalRealMods
 ** @param ubyte                  internalRealMods
 ** @param ubyte                  affectIgnoreLockRealMods
 ** @param ubyte                  ignoreLockRealMods
 ** @param ushort                 affectInternalVirtualMods
 ** @param ushort                 internalVirtualMods
 ** @param ushort                 affectIgnoreLockVirtualMods
 ** @param ushort                 ignoreLockVirtualMods
 ** @param ubyte                  mouseKeysDfltBtn
 ** @param ubyte                  groupsWrap
 ** @param xcb_xkb_ax_option_t    accessXOptions
 ** @param uint                   affectEnabledControls
 ** @param uint                   enabledControls
 ** @param uint                   changeControls
 ** @param ushort                 repeatDelay
 ** @param ushort                 repeatInterval
 ** @param ushort                 slowKeysDelay
 ** @param ushort                 debounceDelay
 ** @param ushort                 mouseKeysDelay
 ** @param ushort                 mouseKeysInterval
 ** @param ushort                 mouseKeysTimeToMax
 ** @param ushort                 mouseKeysMaxSpeed
 ** @param short                  mouseKeysCurve
 ** @param ushort                 accessXTimeout
 ** @param uint                   accessXTimeoutMask
 ** @param uint                   accessXTimeoutValues
 ** @param xcb_xkb_ax_option_t    accessXTimeoutOptionsMask
 ** @param xcb_xkb_ax_option_t    accessXTimeoutOptionsValues
 ** @param const ubyte           *perKeyRepeat
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_xkb_set_controls_checked (xcb_connection_t      *c  /**< */,
                              xcb_xkb_device_spec_t  deviceSpec  /**< */,
                              ubyte                  affectInternalRealMods  /**< */,
                              ubyte                  internalRealMods  /**< */,
                              ubyte                  affectIgnoreLockRealMods  /**< */,
                              ubyte                  ignoreLockRealMods  /**< */,
                              ushort                 affectInternalVirtualMods  /**< */,
                              ushort                 internalVirtualMods  /**< */,
                              ushort                 affectIgnoreLockVirtualMods  /**< */,
                              ushort                 ignoreLockVirtualMods  /**< */,
                              ubyte                  mouseKeysDfltBtn  /**< */,
                              ubyte                  groupsWrap  /**< */,
                              xcb_xkb_ax_option_t    accessXOptions  /**< */,
                              uint                   affectEnabledControls  /**< */,
                              uint                   enabledControls  /**< */,
                              uint                   changeControls  /**< */,
                              ushort                 repeatDelay  /**< */,
                              ushort                 repeatInterval  /**< */,
                              ushort                 slowKeysDelay  /**< */,
                              ushort                 debounceDelay  /**< */,
                              ushort                 mouseKeysDelay  /**< */,
                              ushort                 mouseKeysInterval  /**< */,
                              ushort                 mouseKeysTimeToMax  /**< */,
                              ushort                 mouseKeysMaxSpeed  /**< */,
                              short                  mouseKeysCurve  /**< */,
                              ushort                 accessXTimeout  /**< */,
                              uint                   accessXTimeoutMask  /**< */,
                              uint                   accessXTimeoutValues  /**< */,
                              xcb_xkb_ax_option_t    accessXTimeoutOptionsMask  /**< */,
                              xcb_xkb_ax_option_t    accessXTimeoutOptionsValues  /**< */,
                              const ubyte           *perKeyRepeat  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 * 
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_xkb_set_controls
 ** 
 ** @param xcb_connection_t      *c
 ** @param xcb_xkb_device_spec_t  deviceSpec
 ** @param ubyte                  affectInternalRealMods
 ** @param ubyte                  internalRealMods
 ** @param ubyte                  affectIgnoreLockRealMods
 ** @param ubyte                  ignoreLockRealMods
 ** @param ushort                 affectInternalVirtualMods
 ** @param ushort                 internalVirtualMods
 ** @param ushort                 affectIgnoreLockVirtualMods
 ** @param ushort                 ignoreLockVirtualMods
 ** @param ubyte                  mouseKeysDfltBtn
 ** @param ubyte                  groupsWrap
 ** @param xcb_xkb_ax_option_t    accessXOptions
 ** @param uint                   affectEnabledControls
 ** @param uint                   enabledControls
 ** @param uint                   changeControls
 ** @param ushort                 repeatDelay
 ** @param ushort                 repeatInterval
 ** @param ushort                 slowKeysDelay
 ** @param ushort                 debounceDelay
 ** @param ushort                 mouseKeysDelay
 ** @param ushort                 mouseKeysInterval
 ** @param ushort                 mouseKeysTimeToMax
 ** @param ushort                 mouseKeysMaxSpeed
 ** @param short                  mouseKeysCurve
 ** @param ushort                 accessXTimeout
 ** @param uint                   accessXTimeoutMask
 ** @param uint                   accessXTimeoutValues
 ** @param xcb_xkb_ax_option_t    accessXTimeoutOptionsMask
 ** @param xcb_xkb_ax_option_t    accessXTimeoutOptionsValues
 ** @param const ubyte           *perKeyRepeat
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_xkb_set_controls (xcb_connection_t      *c  /**< */,
                      xcb_xkb_device_spec_t  deviceSpec  /**< */,
                      ubyte                  affectInternalRealMods  /**< */,
                      ubyte                  internalRealMods  /**< */,
                      ubyte                  affectIgnoreLockRealMods  /**< */,
                      ubyte                  ignoreLockRealMods  /**< */,
                      ushort                 affectInternalVirtualMods  /**< */,
                      ushort                 internalVirtualMods  /**< */,
                      ushort                 affectIgnoreLockVirtualMods  /**< */,
                      ushort                 ignoreLockVirtualMods  /**< */,
                      ubyte                  mouseKeysDfltBtn  /**< */,
                      ubyte                  groupsWrap  /**< */,
                      xcb_xkb_ax_option_t    accessXOptions  /**< */,
                      uint                   affectEnabledControls  /**< */,
                      uint                   enabledControls  /**< */,
                      uint                   changeControls  /**< */,
                      ushort                 repeatDelay  /**< */,
                      ushort                 repeatInterval  /**< */,
                      ushort                 slowKeysDelay  /**< */,
                      ushort                 debounceDelay  /**< */,
                      ushort                 mouseKeysDelay  /**< */,
                      ushort                 mouseKeysInterval  /**< */,
                      ushort                 mouseKeysTimeToMax  /**< */,
                      ushort                 mouseKeysMaxSpeed  /**< */,
                      short                  mouseKeysCurve  /**< */,
                      ushort                 accessXTimeout  /**< */,
                      uint                   accessXTimeoutMask  /**< */,
                      uint                   accessXTimeoutValues  /**< */,
                      xcb_xkb_ax_option_t    accessXTimeoutOptionsMask  /**< */,
                      xcb_xkb_ax_option_t    accessXTimeoutOptionsValues  /**< */,
                      const ubyte           *perKeyRepeat  /**< */);


/*****************************************************************************
 **
 ** int xcb_xkb_get_map_map_types_rtrn_length
 ** 
 ** @param const xcb_xkb_get_map_map_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xkb_get_map_map_types_rtrn_length (const xcb_xkb_get_map_reply_t *R  /**< */,
                                       const xcb_xkb_get_map_map_t *S /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_key_type_iterator_t xcb_xkb_get_map_map_types_rtrn_iterator
 ** 
 ** @param const xcb_xkb_get_map_map_t *R
 ** @returns xcb_xkb_key_type_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_key_type_iterator_t
xcb_xkb_get_map_map_types_rtrn_iterator (const xcb_xkb_get_map_reply_t *R  /**< */,
                                         const xcb_xkb_get_map_map_t *S /**< */);


/*****************************************************************************
 **
 ** int xcb_xkb_get_map_map_syms_rtrn_length
 ** 
 ** @param const xcb_xkb_get_map_map_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xkb_get_map_map_syms_rtrn_length (const xcb_xkb_get_map_reply_t *R  /**< */,
                                      const xcb_xkb_get_map_map_t *S /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_key_sym_map_iterator_t xcb_xkb_get_map_map_syms_rtrn_iterator
 ** 
 ** @param const xcb_xkb_get_map_map_t *R
 ** @returns xcb_xkb_key_sym_map_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_key_sym_map_iterator_t
xcb_xkb_get_map_map_syms_rtrn_iterator (const xcb_xkb_get_map_reply_t *R  /**< */,
                                        const xcb_xkb_get_map_map_t *S /**< */);


/*****************************************************************************
 **
 ** ubyte * xcb_xkb_get_map_map_acts_rtrn_count
 ** 
 ** @param const xcb_xkb_get_map_map_t *S
 ** @returns ubyte *
 **
 *****************************************************************************/
 
ubyte *
xcb_xkb_get_map_map_acts_rtrn_count (const xcb_xkb_get_map_map_t *S  /**< */);


/*****************************************************************************
 **
 ** int xcb_xkb_get_map_map_acts_rtrn_count_length
 ** 
 ** @param const xcb_xkb_get_map_map_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xkb_get_map_map_acts_rtrn_count_length (const xcb_xkb_get_map_reply_t *R  /**< */,
                                            const xcb_xkb_get_map_map_t *S /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xkb_get_map_map_acts_rtrn_count_end
 ** 
 ** @param const xcb_xkb_get_map_map_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_xkb_get_map_map_acts_rtrn_count_end (const xcb_xkb_get_map_reply_t *R  /**< */,
                                         const xcb_xkb_get_map_map_t *S /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_action_t * xcb_xkb_get_map_map_acts_rtrn_acts
 ** 
 ** @param const xcb_xkb_get_map_map_t *S
 ** @returns xcb_xkb_action_t *
 **
 *****************************************************************************/
 
xcb_xkb_action_t *
xcb_xkb_get_map_map_acts_rtrn_acts (const xcb_xkb_get_map_map_t *S  /**< */);


/*****************************************************************************
 **
 ** int xcb_xkb_get_map_map_acts_rtrn_acts_length
 ** 
 ** @param const xcb_xkb_get_map_map_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xkb_get_map_map_acts_rtrn_acts_length (const xcb_xkb_get_map_reply_t *R  /**< */,
                                           const xcb_xkb_get_map_map_t *S /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_action_iterator_t xcb_xkb_get_map_map_acts_rtrn_acts_iterator
 ** 
 ** @param const xcb_xkb_get_map_map_t *R
 ** @returns xcb_xkb_action_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_action_iterator_t
xcb_xkb_get_map_map_acts_rtrn_acts_iterator (const xcb_xkb_get_map_reply_t *R  /**< */,
                                             const xcb_xkb_get_map_map_t *S /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_set_behavior_t * xcb_xkb_get_map_map_behaviors_rtrn
 ** 
 ** @param const xcb_xkb_get_map_map_t *S
 ** @returns xcb_xkb_set_behavior_t *
 **
 *****************************************************************************/
 
xcb_xkb_set_behavior_t *
xcb_xkb_get_map_map_behaviors_rtrn (const xcb_xkb_get_map_map_t *S  /**< */);


/*****************************************************************************
 **
 ** int xcb_xkb_get_map_map_behaviors_rtrn_length
 ** 
 ** @param const xcb_xkb_get_map_map_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xkb_get_map_map_behaviors_rtrn_length (const xcb_xkb_get_map_reply_t *R  /**< */,
                                           const xcb_xkb_get_map_map_t *S /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_set_behavior_iterator_t xcb_xkb_get_map_map_behaviors_rtrn_iterator
 ** 
 ** @param const xcb_xkb_get_map_map_t *R
 ** @returns xcb_xkb_set_behavior_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_set_behavior_iterator_t
xcb_xkb_get_map_map_behaviors_rtrn_iterator (const xcb_xkb_get_map_reply_t *R  /**< */,
                                             const xcb_xkb_get_map_map_t *S /**< */);


/*****************************************************************************
 **
 ** ubyte * xcb_xkb_get_map_map_vmods_rtrn
 ** 
 ** @param const xcb_xkb_get_map_map_t *S
 ** @returns ubyte *
 **
 *****************************************************************************/
 
ubyte *
xcb_xkb_get_map_map_vmods_rtrn (const xcb_xkb_get_map_map_t *S  /**< */);


/*****************************************************************************
 **
 ** int xcb_xkb_get_map_map_vmods_rtrn_length
 ** 
 ** @param const xcb_xkb_get_map_map_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xkb_get_map_map_vmods_rtrn_length (const xcb_xkb_get_map_reply_t *R  /**< */,
                                       const xcb_xkb_get_map_map_t *S /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xkb_get_map_map_vmods_rtrn_end
 ** 
 ** @param const xcb_xkb_get_map_map_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_xkb_get_map_map_vmods_rtrn_end (const xcb_xkb_get_map_reply_t *R  /**< */,
                                    const xcb_xkb_get_map_map_t *S /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_set_explicit_t * xcb_xkb_get_map_map_explicit_rtrn
 ** 
 ** @param const xcb_xkb_get_map_map_t *S
 ** @returns xcb_xkb_set_explicit_t *
 **
 *****************************************************************************/
 
xcb_xkb_set_explicit_t *
xcb_xkb_get_map_map_explicit_rtrn (const xcb_xkb_get_map_map_t *S  /**< */);


/*****************************************************************************
 **
 ** int xcb_xkb_get_map_map_explicit_rtrn_length
 ** 
 ** @param const xcb_xkb_get_map_map_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xkb_get_map_map_explicit_rtrn_length (const xcb_xkb_get_map_reply_t *R  /**< */,
                                          const xcb_xkb_get_map_map_t *S /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_set_explicit_iterator_t xcb_xkb_get_map_map_explicit_rtrn_iterator
 ** 
 ** @param const xcb_xkb_get_map_map_t *R
 ** @returns xcb_xkb_set_explicit_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_set_explicit_iterator_t
xcb_xkb_get_map_map_explicit_rtrn_iterator (const xcb_xkb_get_map_reply_t *R  /**< */,
                                            const xcb_xkb_get_map_map_t *S /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_key_mod_map_t * xcb_xkb_get_map_map_modmap_rtrn
 ** 
 ** @param const xcb_xkb_get_map_map_t *S
 ** @returns xcb_xkb_key_mod_map_t *
 **
 *****************************************************************************/
 
xcb_xkb_key_mod_map_t *
xcb_xkb_get_map_map_modmap_rtrn (const xcb_xkb_get_map_map_t *S  /**< */);


/*****************************************************************************
 **
 ** int xcb_xkb_get_map_map_modmap_rtrn_length
 ** 
 ** @param const xcb_xkb_get_map_map_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xkb_get_map_map_modmap_rtrn_length (const xcb_xkb_get_map_reply_t *R  /**< */,
                                        const xcb_xkb_get_map_map_t *S /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_key_mod_map_iterator_t xcb_xkb_get_map_map_modmap_rtrn_iterator
 ** 
 ** @param const xcb_xkb_get_map_map_t *R
 ** @returns xcb_xkb_key_mod_map_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_key_mod_map_iterator_t
xcb_xkb_get_map_map_modmap_rtrn_iterator (const xcb_xkb_get_map_reply_t *R  /**< */,
                                          const xcb_xkb_get_map_map_t *S /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_key_v_mod_map_t * xcb_xkb_get_map_map_vmodmap_rtrn
 ** 
 ** @param const xcb_xkb_get_map_map_t *S
 ** @returns xcb_xkb_key_v_mod_map_t *
 **
 *****************************************************************************/
 
xcb_xkb_key_v_mod_map_t *
xcb_xkb_get_map_map_vmodmap_rtrn (const xcb_xkb_get_map_map_t *S  /**< */);


/*****************************************************************************
 **
 ** int xcb_xkb_get_map_map_vmodmap_rtrn_length
 ** 
 ** @param const xcb_xkb_get_map_map_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xkb_get_map_map_vmodmap_rtrn_length (const xcb_xkb_get_map_reply_t *R  /**< */,
                                         const xcb_xkb_get_map_map_t *S /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_key_v_mod_map_iterator_t xcb_xkb_get_map_map_vmodmap_rtrn_iterator
 ** 
 ** @param const xcb_xkb_get_map_map_t *R
 ** @returns xcb_xkb_key_v_mod_map_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_key_v_mod_map_iterator_t
xcb_xkb_get_map_map_vmodmap_rtrn_iterator (const xcb_xkb_get_map_reply_t *R  /**< */,
                                           const xcb_xkb_get_map_map_t *S /**< */);

extern(C) int
xcb_xkb_get_map_map_serialize (void                        **_buffer  /**< */,
                               ubyte                         nTypes  /**< */,
                               ubyte                         nKeySyms  /**< */,
                               ubyte                         nKeyActions  /**< */,
                               ushort                        totalActions  /**< */,
                               ubyte                         totalKeyBehaviors  /**< */,
                               ubyte                         nVModMapKeys  /**< */,
                               ubyte                         totalKeyExplicit  /**< */,
                               ubyte                         totalModMapKeys  /**< */,
                               ubyte                         totalVModMapKeys  /**< */,
                               ushort                        present  /**< */,
                               const xcb_xkb_get_map_map_t  *_aux  /**< */);

extern(C) int
xcb_xkb_get_map_map_unpack (const void             *_buffer  /**< */,
                            ubyte                   nTypes  /**< */,
                            ubyte                   nKeySyms  /**< */,
                            ubyte                   nKeyActions  /**< */,
                            ushort                  totalActions  /**< */,
                            ubyte                   totalKeyBehaviors  /**< */,
                            ubyte                   nVModMapKeys  /**< */,
                            ubyte                   totalKeyExplicit  /**< */,
                            ubyte                   totalModMapKeys  /**< */,
                            ubyte                   totalVModMapKeys  /**< */,
                            ushort                  present  /**< */,
                            xcb_xkb_get_map_map_t  *_aux  /**< */);

extern(C) int
xcb_xkb_get_map_map_sizeof (const void  *_buffer  /**< */,
                            ubyte        nTypes  /**< */,
                            ubyte        nKeySyms  /**< */,
                            ubyte        nKeyActions  /**< */,
                            ushort       totalActions  /**< */,
                            ubyte        totalKeyBehaviors  /**< */,
                            ubyte        nVModMapKeys  /**< */,
                            ubyte        totalKeyExplicit  /**< */,
                            ubyte        totalModMapKeys  /**< */,
                            ubyte        totalVModMapKeys  /**< */,
                            ushort       present  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 * 
 */

/*****************************************************************************
 **
 ** xcb_xkb_get_map_cookie_t xcb_xkb_get_map
 ** 
 ** @param xcb_connection_t      *c
 ** @param xcb_xkb_device_spec_t  deviceSpec
 ** @param ushort                 full
 ** @param ushort                 partial
 ** @param ubyte                  firstType
 ** @param ubyte                  nTypes
 ** @param xcb_keycode_t          firstKeySym
 ** @param ubyte                  nKeySyms
 ** @param xcb_keycode_t          firstKeyAction
 ** @param ubyte                  nKeyActions
 ** @param xcb_keycode_t          firstKeyBehavior
 ** @param ubyte                  nKeyBehaviors
 ** @param ushort                 virtualMods
 ** @param xcb_keycode_t          firstKeyExplicit
 ** @param ubyte                  nKeyExplicit
 ** @param xcb_keycode_t          firstModMapKey
 ** @param ubyte                  nModMapKeys
 ** @param xcb_keycode_t          firstVModMapKey
 ** @param ubyte                  nVModMapKeys
 ** @returns xcb_xkb_get_map_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_get_map_cookie_t
xcb_xkb_get_map (xcb_connection_t      *c  /**< */,
                 xcb_xkb_device_spec_t  deviceSpec  /**< */,
                 ushort                 full  /**< */,
                 ushort                 partial  /**< */,
                 ubyte                  firstType  /**< */,
                 ubyte                  nTypes  /**< */,
                 xcb_keycode_t          firstKeySym  /**< */,
                 ubyte                  nKeySyms  /**< */,
                 xcb_keycode_t          firstKeyAction  /**< */,
                 ubyte                  nKeyActions  /**< */,
                 xcb_keycode_t          firstKeyBehavior  /**< */,
                 ubyte                  nKeyBehaviors  /**< */,
                 ushort                 virtualMods  /**< */,
                 xcb_keycode_t          firstKeyExplicit  /**< */,
                 ubyte                  nKeyExplicit  /**< */,
                 xcb_keycode_t          firstModMapKey  /**< */,
                 ubyte                  nModMapKeys  /**< */,
                 xcb_keycode_t          firstVModMapKey  /**< */,
                 ubyte                  nVModMapKeys  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 * 
 * This form can be used only if the request will cause
 * a reply to be generated. Any returned error will be
 * placed in the event queue.
 */

/*****************************************************************************
 **
 ** xcb_xkb_get_map_cookie_t xcb_xkb_get_map_unchecked
 ** 
 ** @param xcb_connection_t      *c
 ** @param xcb_xkb_device_spec_t  deviceSpec
 ** @param ushort                 full
 ** @param ushort                 partial
 ** @param ubyte                  firstType
 ** @param ubyte                  nTypes
 ** @param xcb_keycode_t          firstKeySym
 ** @param ubyte                  nKeySyms
 ** @param xcb_keycode_t          firstKeyAction
 ** @param ubyte                  nKeyActions
 ** @param xcb_keycode_t          firstKeyBehavior
 ** @param ubyte                  nKeyBehaviors
 ** @param ushort                 virtualMods
 ** @param xcb_keycode_t          firstKeyExplicit
 ** @param ubyte                  nKeyExplicit
 ** @param xcb_keycode_t          firstModMapKey
 ** @param ubyte                  nModMapKeys
 ** @param xcb_keycode_t          firstVModMapKey
 ** @param ubyte                  nVModMapKeys
 ** @returns xcb_xkb_get_map_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_get_map_cookie_t
xcb_xkb_get_map_unchecked (xcb_connection_t      *c  /**< */,
                           xcb_xkb_device_spec_t  deviceSpec  /**< */,
                           ushort                 full  /**< */,
                           ushort                 partial  /**< */,
                           ubyte                  firstType  /**< */,
                           ubyte                  nTypes  /**< */,
                           xcb_keycode_t          firstKeySym  /**< */,
                           ubyte                  nKeySyms  /**< */,
                           xcb_keycode_t          firstKeyAction  /**< */,
                           ubyte                  nKeyActions  /**< */,
                           xcb_keycode_t          firstKeyBehavior  /**< */,
                           ubyte                  nKeyBehaviors  /**< */,
                           ushort                 virtualMods  /**< */,
                           xcb_keycode_t          firstKeyExplicit  /**< */,
                           ubyte                  nKeyExplicit  /**< */,
                           xcb_keycode_t          firstModMapKey  /**< */,
                           ubyte                  nModMapKeys  /**< */,
                           xcb_keycode_t          firstVModMapKey  /**< */,
                           ubyte                  nVModMapKeys  /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_get_map_map_t * xcb_xkb_get_map_map
 ** 
 ** @param const xcb_xkb_get_map_reply_t *R
 ** @returns xcb_xkb_get_map_map_t *
 **
 *****************************************************************************/
 
void *
xcb_xkb_get_map_map (const xcb_xkb_get_map_reply_t *R  /**< */);

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 * 
 * The parameter @p e supplied to this function must be NULL if
 * xcb_xkb_get_map_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */

/*****************************************************************************
 **
 ** xcb_xkb_get_map_reply_t * xcb_xkb_get_map_reply
 ** 
 ** @param xcb_connection_t          *c
 ** @param xcb_xkb_get_map_cookie_t   cookie
 ** @param xcb_generic_error_t      **e
 ** @returns xcb_xkb_get_map_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_get_map_reply_t *
xcb_xkb_get_map_reply (xcb_connection_t          *c  /**< */,
                       xcb_xkb_get_map_cookie_t   cookie  /**< */,
                       xcb_generic_error_t      **e  /**< */);


/*****************************************************************************
 **
 ** int xcb_xkb_set_map_values_types_length
 ** 
 ** @param const xcb_xkb_set_map_values_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xkb_set_map_values_types_length (const xcb_xkb_set_map_request_t *R  /**< */,
                                     const xcb_xkb_set_map_values_t *S /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_set_key_type_iterator_t xcb_xkb_set_map_values_types_iterator
 ** 
 ** @param const xcb_xkb_set_map_values_t *R
 ** @returns xcb_xkb_set_key_type_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_set_key_type_iterator_t
xcb_xkb_set_map_values_types_iterator (const xcb_xkb_set_map_request_t *R  /**< */,
                                       const xcb_xkb_set_map_values_t *S /**< */);


/*****************************************************************************
 **
 ** int xcb_xkb_set_map_values_syms_length
 ** 
 ** @param const xcb_xkb_set_map_values_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xkb_set_map_values_syms_length (const xcb_xkb_set_map_request_t *R  /**< */,
                                    const xcb_xkb_set_map_values_t *S /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_key_sym_map_iterator_t xcb_xkb_set_map_values_syms_iterator
 ** 
 ** @param const xcb_xkb_set_map_values_t *R
 ** @returns xcb_xkb_key_sym_map_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_key_sym_map_iterator_t
xcb_xkb_set_map_values_syms_iterator (const xcb_xkb_set_map_request_t *R  /**< */,
                                      const xcb_xkb_set_map_values_t *S /**< */);


/*****************************************************************************
 **
 ** ubyte * xcb_xkb_set_map_values_actions_count
 ** 
 ** @param const xcb_xkb_set_map_values_t *S
 ** @returns ubyte *
 **
 *****************************************************************************/
 
ubyte *
xcb_xkb_set_map_values_actions_count (const xcb_xkb_set_map_values_t *S  /**< */);


/*****************************************************************************
 **
 ** int xcb_xkb_set_map_values_actions_count_length
 ** 
 ** @param const xcb_xkb_set_map_values_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xkb_set_map_values_actions_count_length (const xcb_xkb_set_map_request_t *R  /**< */,
                                             const xcb_xkb_set_map_values_t *S /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xkb_set_map_values_actions_count_end
 ** 
 ** @param const xcb_xkb_set_map_values_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_xkb_set_map_values_actions_count_end (const xcb_xkb_set_map_request_t *R  /**< */,
                                          const xcb_xkb_set_map_values_t *S /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_action_t * xcb_xkb_set_map_values_actions
 ** 
 ** @param const xcb_xkb_set_map_values_t *S
 ** @returns xcb_xkb_action_t *
 **
 *****************************************************************************/
 
xcb_xkb_action_t *
xcb_xkb_set_map_values_actions (const xcb_xkb_set_map_values_t *S  /**< */);


/*****************************************************************************
 **
 ** int xcb_xkb_set_map_values_actions_length
 ** 
 ** @param const xcb_xkb_set_map_values_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xkb_set_map_values_actions_length (const xcb_xkb_set_map_request_t *R  /**< */,
                                       const xcb_xkb_set_map_values_t *S /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_action_iterator_t xcb_xkb_set_map_values_actions_iterator
 ** 
 ** @param const xcb_xkb_set_map_values_t *R
 ** @returns xcb_xkb_action_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_action_iterator_t
xcb_xkb_set_map_values_actions_iterator (const xcb_xkb_set_map_request_t *R  /**< */,
                                         const xcb_xkb_set_map_values_t *S /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_set_behavior_t * xcb_xkb_set_map_values_behaviors
 ** 
 ** @param const xcb_xkb_set_map_values_t *S
 ** @returns xcb_xkb_set_behavior_t *
 **
 *****************************************************************************/
 
xcb_xkb_set_behavior_t *
xcb_xkb_set_map_values_behaviors (const xcb_xkb_set_map_values_t *S  /**< */);


/*****************************************************************************
 **
 ** int xcb_xkb_set_map_values_behaviors_length
 ** 
 ** @param const xcb_xkb_set_map_values_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xkb_set_map_values_behaviors_length (const xcb_xkb_set_map_request_t *R  /**< */,
                                         const xcb_xkb_set_map_values_t *S /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_set_behavior_iterator_t xcb_xkb_set_map_values_behaviors_iterator
 ** 
 ** @param const xcb_xkb_set_map_values_t *R
 ** @returns xcb_xkb_set_behavior_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_set_behavior_iterator_t
xcb_xkb_set_map_values_behaviors_iterator (const xcb_xkb_set_map_request_t *R  /**< */,
                                           const xcb_xkb_set_map_values_t *S /**< */);


/*****************************************************************************
 **
 ** ubyte * xcb_xkb_set_map_values_vmods
 ** 
 ** @param const xcb_xkb_set_map_values_t *S
 ** @returns ubyte *
 **
 *****************************************************************************/
 
ubyte *
xcb_xkb_set_map_values_vmods (const xcb_xkb_set_map_values_t *S  /**< */);


/*****************************************************************************
 **
 ** int xcb_xkb_set_map_values_vmods_length
 ** 
 ** @param const xcb_xkb_set_map_values_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xkb_set_map_values_vmods_length (const xcb_xkb_set_map_request_t *R  /**< */,
                                     const xcb_xkb_set_map_values_t *S /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xkb_set_map_values_vmods_end
 ** 
 ** @param const xcb_xkb_set_map_values_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_xkb_set_map_values_vmods_end (const xcb_xkb_set_map_request_t *R  /**< */,
                                  const xcb_xkb_set_map_values_t *S /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_set_explicit_t * xcb_xkb_set_map_values_explicit
 ** 
 ** @param const xcb_xkb_set_map_values_t *S
 ** @returns xcb_xkb_set_explicit_t *
 **
 *****************************************************************************/
 
xcb_xkb_set_explicit_t *
xcb_xkb_set_map_values_explicit (const xcb_xkb_set_map_values_t *S  /**< */);


/*****************************************************************************
 **
 ** int xcb_xkb_set_map_values_explicit_length
 ** 
 ** @param const xcb_xkb_set_map_values_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xkb_set_map_values_explicit_length (const xcb_xkb_set_map_request_t *R  /**< */,
                                        const xcb_xkb_set_map_values_t *S /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_set_explicit_iterator_t xcb_xkb_set_map_values_explicit_iterator
 ** 
 ** @param const xcb_xkb_set_map_values_t *R
 ** @returns xcb_xkb_set_explicit_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_set_explicit_iterator_t
xcb_xkb_set_map_values_explicit_iterator (const xcb_xkb_set_map_request_t *R  /**< */,
                                          const xcb_xkb_set_map_values_t *S /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_key_mod_map_t * xcb_xkb_set_map_values_modmap
 ** 
 ** @param const xcb_xkb_set_map_values_t *S
 ** @returns xcb_xkb_key_mod_map_t *
 **
 *****************************************************************************/
 
xcb_xkb_key_mod_map_t *
xcb_xkb_set_map_values_modmap (const xcb_xkb_set_map_values_t *S  /**< */);


/*****************************************************************************
 **
 ** int xcb_xkb_set_map_values_modmap_length
 ** 
 ** @param const xcb_xkb_set_map_values_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xkb_set_map_values_modmap_length (const xcb_xkb_set_map_request_t *R  /**< */,
                                      const xcb_xkb_set_map_values_t *S /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_key_mod_map_iterator_t xcb_xkb_set_map_values_modmap_iterator
 ** 
 ** @param const xcb_xkb_set_map_values_t *R
 ** @returns xcb_xkb_key_mod_map_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_key_mod_map_iterator_t
xcb_xkb_set_map_values_modmap_iterator (const xcb_xkb_set_map_request_t *R  /**< */,
                                        const xcb_xkb_set_map_values_t *S /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_key_v_mod_map_t * xcb_xkb_set_map_values_vmodmap
 ** 
 ** @param const xcb_xkb_set_map_values_t *S
 ** @returns xcb_xkb_key_v_mod_map_t *
 **
 *****************************************************************************/
 
xcb_xkb_key_v_mod_map_t *
xcb_xkb_set_map_values_vmodmap (const xcb_xkb_set_map_values_t *S  /**< */);


/*****************************************************************************
 **
 ** int xcb_xkb_set_map_values_vmodmap_length
 ** 
 ** @param const xcb_xkb_set_map_values_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xkb_set_map_values_vmodmap_length (const xcb_xkb_set_map_request_t *R  /**< */,
                                       const xcb_xkb_set_map_values_t *S /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_key_v_mod_map_iterator_t xcb_xkb_set_map_values_vmodmap_iterator
 ** 
 ** @param const xcb_xkb_set_map_values_t *R
 ** @returns xcb_xkb_key_v_mod_map_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_key_v_mod_map_iterator_t
xcb_xkb_set_map_values_vmodmap_iterator (const xcb_xkb_set_map_request_t *R  /**< */,
                                         const xcb_xkb_set_map_values_t *S /**< */);

extern(C) int
xcb_xkb_set_map_values_serialize (void                           **_buffer  /**< */,
                                  ubyte                            nTypes  /**< */,
                                  ubyte                            nKeySyms  /**< */,
                                  ubyte                            nKeyActions  /**< */,
                                  ushort                           totalActions  /**< */,
                                  ubyte                            totalKeyBehaviors  /**< */,
                                  ubyte                            nVModMapKeys  /**< */,
                                  ubyte                            totalKeyExplicit  /**< */,
                                  ubyte                            totalModMapKeys  /**< */,
                                  ubyte                            totalVModMapKeys  /**< */,
                                  ushort                           present  /**< */,
                                  const xcb_xkb_set_map_values_t  *_aux  /**< */);

extern(C) int
xcb_xkb_set_map_values_unpack (const void                *_buffer  /**< */,
                               ubyte                      nTypes  /**< */,
                               ubyte                      nKeySyms  /**< */,
                               ubyte                      nKeyActions  /**< */,
                               ushort                     totalActions  /**< */,
                               ubyte                      totalKeyBehaviors  /**< */,
                               ubyte                      nVModMapKeys  /**< */,
                               ubyte                      totalKeyExplicit  /**< */,
                               ubyte                      totalModMapKeys  /**< */,
                               ubyte                      totalVModMapKeys  /**< */,
                               ushort                     present  /**< */,
                               xcb_xkb_set_map_values_t  *_aux  /**< */);

extern(C) int
xcb_xkb_set_map_values_sizeof (const void  *_buffer  /**< */,
                               ubyte        nTypes  /**< */,
                               ubyte        nKeySyms  /**< */,
                               ubyte        nKeyActions  /**< */,
                               ushort       totalActions  /**< */,
                               ubyte        totalKeyBehaviors  /**< */,
                               ubyte        nVModMapKeys  /**< */,
                               ubyte        totalKeyExplicit  /**< */,
                               ubyte        totalModMapKeys  /**< */,
                               ubyte        totalVModMapKeys  /**< */,
                               ushort       present  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 * 
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_xkb_set_map_checked
 ** 
 ** @param xcb_connection_t      *c
 ** @param xcb_xkb_device_spec_t  deviceSpec
 ** @param ushort                 present
 ** @param ushort                 flags
 ** @param xcb_keycode_t          minKeyCode
 ** @param xcb_keycode_t          maxKeyCode
 ** @param ubyte                  firstType
 ** @param ubyte                  nTypes
 ** @param xcb_keycode_t          firstKeySym
 ** @param ubyte                  nKeySyms
 ** @param ushort                 totalSyms
 ** @param xcb_keycode_t          firstKeyAction
 ** @param ubyte                  nKeyActions
 ** @param ushort                 totalActions
 ** @param xcb_keycode_t          firstKeyBehavior
 ** @param ubyte                  nKeyBehaviors
 ** @param ubyte                  totalKeyBehaviors
 ** @param xcb_keycode_t          firstKeyExplicit
 ** @param ubyte                  nKeyExplicit
 ** @param ubyte                  totalKeyExplicit
 ** @param xcb_keycode_t          firstModMapKey
 ** @param ubyte                  nModMapKeys
 ** @param ubyte                  totalModMapKeys
 ** @param xcb_keycode_t          firstVModMapKey
 ** @param ubyte                  nVModMapKeys
 ** @param ubyte                  totalVModMapKeys
 ** @param ushort                 virtualMods
 ** @param const void            *values
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_xkb_set_map_checked (xcb_connection_t      *c  /**< */,
                         xcb_xkb_device_spec_t  deviceSpec  /**< */,
                         ushort                 present  /**< */,
                         ushort                 flags  /**< */,
                         xcb_keycode_t          minKeyCode  /**< */,
                         xcb_keycode_t          maxKeyCode  /**< */,
                         ubyte                  firstType  /**< */,
                         ubyte                  nTypes  /**< */,
                         xcb_keycode_t          firstKeySym  /**< */,
                         ubyte                  nKeySyms  /**< */,
                         ushort                 totalSyms  /**< */,
                         xcb_keycode_t          firstKeyAction  /**< */,
                         ubyte                  nKeyActions  /**< */,
                         ushort                 totalActions  /**< */,
                         xcb_keycode_t          firstKeyBehavior  /**< */,
                         ubyte                  nKeyBehaviors  /**< */,
                         ubyte                  totalKeyBehaviors  /**< */,
                         xcb_keycode_t          firstKeyExplicit  /**< */,
                         ubyte                  nKeyExplicit  /**< */,
                         ubyte                  totalKeyExplicit  /**< */,
                         xcb_keycode_t          firstModMapKey  /**< */,
                         ubyte                  nModMapKeys  /**< */,
                         ubyte                  totalModMapKeys  /**< */,
                         xcb_keycode_t          firstVModMapKey  /**< */,
                         ubyte                  nVModMapKeys  /**< */,
                         ubyte                  totalVModMapKeys  /**< */,
                         ushort                 virtualMods  /**< */,
                         const void            *values  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 * 
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_xkb_set_map
 ** 
 ** @param xcb_connection_t      *c
 ** @param xcb_xkb_device_spec_t  deviceSpec
 ** @param ushort                 present
 ** @param ushort                 flags
 ** @param xcb_keycode_t          minKeyCode
 ** @param xcb_keycode_t          maxKeyCode
 ** @param ubyte                  firstType
 ** @param ubyte                  nTypes
 ** @param xcb_keycode_t          firstKeySym
 ** @param ubyte                  nKeySyms
 ** @param ushort                 totalSyms
 ** @param xcb_keycode_t          firstKeyAction
 ** @param ubyte                  nKeyActions
 ** @param ushort                 totalActions
 ** @param xcb_keycode_t          firstKeyBehavior
 ** @param ubyte                  nKeyBehaviors
 ** @param ubyte                  totalKeyBehaviors
 ** @param xcb_keycode_t          firstKeyExplicit
 ** @param ubyte                  nKeyExplicit
 ** @param ubyte                  totalKeyExplicit
 ** @param xcb_keycode_t          firstModMapKey
 ** @param ubyte                  nModMapKeys
 ** @param ubyte                  totalModMapKeys
 ** @param xcb_keycode_t          firstVModMapKey
 ** @param ubyte                  nVModMapKeys
 ** @param ubyte                  totalVModMapKeys
 ** @param ushort                 virtualMods
 ** @param const void            *values
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_xkb_set_map (xcb_connection_t      *c  /**< */,
                 xcb_xkb_device_spec_t  deviceSpec  /**< */,
                 ushort                 present  /**< */,
                 ushort                 flags  /**< */,
                 xcb_keycode_t          minKeyCode  /**< */,
                 xcb_keycode_t          maxKeyCode  /**< */,
                 ubyte                  firstType  /**< */,
                 ubyte                  nTypes  /**< */,
                 xcb_keycode_t          firstKeySym  /**< */,
                 ubyte                  nKeySyms  /**< */,
                 ushort                 totalSyms  /**< */,
                 xcb_keycode_t          firstKeyAction  /**< */,
                 ubyte                  nKeyActions  /**< */,
                 ushort                 totalActions  /**< */,
                 xcb_keycode_t          firstKeyBehavior  /**< */,
                 ubyte                  nKeyBehaviors  /**< */,
                 ubyte                  totalKeyBehaviors  /**< */,
                 xcb_keycode_t          firstKeyExplicit  /**< */,
                 ubyte                  nKeyExplicit  /**< */,
                 ubyte                  totalKeyExplicit  /**< */,
                 xcb_keycode_t          firstModMapKey  /**< */,
                 ubyte                  nModMapKeys  /**< */,
                 ubyte                  totalModMapKeys  /**< */,
                 xcb_keycode_t          firstVModMapKey  /**< */,
                 ubyte                  nVModMapKeys  /**< */,
                 ubyte                  totalVModMapKeys  /**< */,
                 ushort                 virtualMods  /**< */,
                 const void            *values  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 * 
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_xkb_set_map_aux_checked
 ** 
 ** @param xcb_connection_t               *c
 ** @param xcb_xkb_device_spec_t           deviceSpec
 ** @param ushort                          present
 ** @param ushort                          flags
 ** @param xcb_keycode_t                   minKeyCode
 ** @param xcb_keycode_t                   maxKeyCode
 ** @param ubyte                           firstType
 ** @param ubyte                           nTypes
 ** @param xcb_keycode_t                   firstKeySym
 ** @param ubyte                           nKeySyms
 ** @param ushort                          totalSyms
 ** @param xcb_keycode_t                   firstKeyAction
 ** @param ubyte                           nKeyActions
 ** @param ushort                          totalActions
 ** @param xcb_keycode_t                   firstKeyBehavior
 ** @param ubyte                           nKeyBehaviors
 ** @param ubyte                           totalKeyBehaviors
 ** @param xcb_keycode_t                   firstKeyExplicit
 ** @param ubyte                           nKeyExplicit
 ** @param ubyte                           totalKeyExplicit
 ** @param xcb_keycode_t                   firstModMapKey
 ** @param ubyte                           nModMapKeys
 ** @param ubyte                           totalModMapKeys
 ** @param xcb_keycode_t                   firstVModMapKey
 ** @param ubyte                           nVModMapKeys
 ** @param ubyte                           totalVModMapKeys
 ** @param ushort                          virtualMods
 ** @param const xcb_xkb_set_map_values_t *values
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_xkb_set_map_aux_checked (xcb_connection_t               *c  /**< */,
                             xcb_xkb_device_spec_t           deviceSpec  /**< */,
                             ushort                          present  /**< */,
                             ushort                          flags  /**< */,
                             xcb_keycode_t                   minKeyCode  /**< */,
                             xcb_keycode_t                   maxKeyCode  /**< */,
                             ubyte                           firstType  /**< */,
                             ubyte                           nTypes  /**< */,
                             xcb_keycode_t                   firstKeySym  /**< */,
                             ubyte                           nKeySyms  /**< */,
                             ushort                          totalSyms  /**< */,
                             xcb_keycode_t                   firstKeyAction  /**< */,
                             ubyte                           nKeyActions  /**< */,
                             ushort                          totalActions  /**< */,
                             xcb_keycode_t                   firstKeyBehavior  /**< */,
                             ubyte                           nKeyBehaviors  /**< */,
                             ubyte                           totalKeyBehaviors  /**< */,
                             xcb_keycode_t                   firstKeyExplicit  /**< */,
                             ubyte                           nKeyExplicit  /**< */,
                             ubyte                           totalKeyExplicit  /**< */,
                             xcb_keycode_t                   firstModMapKey  /**< */,
                             ubyte                           nModMapKeys  /**< */,
                             ubyte                           totalModMapKeys  /**< */,
                             xcb_keycode_t                   firstVModMapKey  /**< */,
                             ubyte                           nVModMapKeys  /**< */,
                             ubyte                           totalVModMapKeys  /**< */,
                             ushort                          virtualMods  /**< */,
                             const xcb_xkb_set_map_values_t *values  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 * 
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_xkb_set_map_aux
 ** 
 ** @param xcb_connection_t               *c
 ** @param xcb_xkb_device_spec_t           deviceSpec
 ** @param ushort                          present
 ** @param ushort                          flags
 ** @param xcb_keycode_t                   minKeyCode
 ** @param xcb_keycode_t                   maxKeyCode
 ** @param ubyte                           firstType
 ** @param ubyte                           nTypes
 ** @param xcb_keycode_t                   firstKeySym
 ** @param ubyte                           nKeySyms
 ** @param ushort                          totalSyms
 ** @param xcb_keycode_t                   firstKeyAction
 ** @param ubyte                           nKeyActions
 ** @param ushort                          totalActions
 ** @param xcb_keycode_t                   firstKeyBehavior
 ** @param ubyte                           nKeyBehaviors
 ** @param ubyte                           totalKeyBehaviors
 ** @param xcb_keycode_t                   firstKeyExplicit
 ** @param ubyte                           nKeyExplicit
 ** @param ubyte                           totalKeyExplicit
 ** @param xcb_keycode_t                   firstModMapKey
 ** @param ubyte                           nModMapKeys
 ** @param ubyte                           totalModMapKeys
 ** @param xcb_keycode_t                   firstVModMapKey
 ** @param ubyte                           nVModMapKeys
 ** @param ubyte                           totalVModMapKeys
 ** @param ushort                          virtualMods
 ** @param const xcb_xkb_set_map_values_t *values
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_xkb_set_map_aux (xcb_connection_t               *c  /**< */,
                     xcb_xkb_device_spec_t           deviceSpec  /**< */,
                     ushort                          present  /**< */,
                     ushort                          flags  /**< */,
                     xcb_keycode_t                   minKeyCode  /**< */,
                     xcb_keycode_t                   maxKeyCode  /**< */,
                     ubyte                           firstType  /**< */,
                     ubyte                           nTypes  /**< */,
                     xcb_keycode_t                   firstKeySym  /**< */,
                     ubyte                           nKeySyms  /**< */,
                     ushort                          totalSyms  /**< */,
                     xcb_keycode_t                   firstKeyAction  /**< */,
                     ubyte                           nKeyActions  /**< */,
                     ushort                          totalActions  /**< */,
                     xcb_keycode_t                   firstKeyBehavior  /**< */,
                     ubyte                           nKeyBehaviors  /**< */,
                     ubyte                           totalKeyBehaviors  /**< */,
                     xcb_keycode_t                   firstKeyExplicit  /**< */,
                     ubyte                           nKeyExplicit  /**< */,
                     ubyte                           totalKeyExplicit  /**< */,
                     xcb_keycode_t                   firstModMapKey  /**< */,
                     ubyte                           nModMapKeys  /**< */,
                     ubyte                           totalModMapKeys  /**< */,
                     xcb_keycode_t                   firstVModMapKey  /**< */,
                     ubyte                           nVModMapKeys  /**< */,
                     ubyte                           totalVModMapKeys  /**< */,
                     ushort                          virtualMods  /**< */,
                     const xcb_xkb_set_map_values_t *values  /**< */);

extern(C) int
xcb_xkb_get_compat_map_sizeof (const void  *_buffer  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 * 
 */

/*****************************************************************************
 **
 ** xcb_xkb_get_compat_map_cookie_t xcb_xkb_get_compat_map
 ** 
 ** @param xcb_connection_t      *c
 ** @param xcb_xkb_device_spec_t  deviceSpec
 ** @param ubyte                  groups
 ** @param ubyte                  getAllSI
 ** @param ushort                 firstSI
 ** @param ushort                 nSI
 ** @returns xcb_xkb_get_compat_map_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_get_compat_map_cookie_t
xcb_xkb_get_compat_map (xcb_connection_t      *c  /**< */,
                        xcb_xkb_device_spec_t  deviceSpec  /**< */,
                        ubyte                  groups  /**< */,
                        ubyte                  getAllSI  /**< */,
                        ushort                 firstSI  /**< */,
                        ushort                 nSI  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 * 
 * This form can be used only if the request will cause
 * a reply to be generated. Any returned error will be
 * placed in the event queue.
 */

/*****************************************************************************
 **
 ** xcb_xkb_get_compat_map_cookie_t xcb_xkb_get_compat_map_unchecked
 ** 
 ** @param xcb_connection_t      *c
 ** @param xcb_xkb_device_spec_t  deviceSpec
 ** @param ubyte                  groups
 ** @param ubyte                  getAllSI
 ** @param ushort                 firstSI
 ** @param ushort                 nSI
 ** @returns xcb_xkb_get_compat_map_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_get_compat_map_cookie_t
xcb_xkb_get_compat_map_unchecked (xcb_connection_t      *c  /**< */,
                                  xcb_xkb_device_spec_t  deviceSpec  /**< */,
                                  ubyte                  groups  /**< */,
                                  ubyte                  getAllSI  /**< */,
                                  ushort                 firstSI  /**< */,
                                  ushort                 nSI  /**< */);


/*****************************************************************************
 **
 ** ubyte * xcb_xkb_get_compat_map_si_rtrn
 ** 
 ** @param const xcb_xkb_get_compat_map_reply_t *R
 ** @returns ubyte *
 **
 *****************************************************************************/
 
ubyte *
xcb_xkb_get_compat_map_si_rtrn (const xcb_xkb_get_compat_map_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_xkb_get_compat_map_si_rtrn_length
 ** 
 ** @param const xcb_xkb_get_compat_map_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xkb_get_compat_map_si_rtrn_length (const xcb_xkb_get_compat_map_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xkb_get_compat_map_si_rtrn_end
 ** 
 ** @param const xcb_xkb_get_compat_map_reply_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_xkb_get_compat_map_si_rtrn_end (const xcb_xkb_get_compat_map_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_mod_def_t * xcb_xkb_get_compat_map_group_rtrn
 ** 
 ** @param const xcb_xkb_get_compat_map_reply_t *R
 ** @returns xcb_xkb_mod_def_t *
 **
 *****************************************************************************/
 
xcb_xkb_mod_def_t *
xcb_xkb_get_compat_map_group_rtrn (const xcb_xkb_get_compat_map_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_xkb_get_compat_map_group_rtrn_length
 ** 
 ** @param const xcb_xkb_get_compat_map_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xkb_get_compat_map_group_rtrn_length (const xcb_xkb_get_compat_map_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_mod_def_iterator_t xcb_xkb_get_compat_map_group_rtrn_iterator
 ** 
 ** @param const xcb_xkb_get_compat_map_reply_t *R
 ** @returns xcb_xkb_mod_def_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_mod_def_iterator_t
xcb_xkb_get_compat_map_group_rtrn_iterator (const xcb_xkb_get_compat_map_reply_t *R  /**< */);

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 * 
 * The parameter @p e supplied to this function must be NULL if
 * xcb_xkb_get_compat_map_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */

/*****************************************************************************
 **
 ** xcb_xkb_get_compat_map_reply_t * xcb_xkb_get_compat_map_reply
 ** 
 ** @param xcb_connection_t                 *c
 ** @param xcb_xkb_get_compat_map_cookie_t   cookie
 ** @param xcb_generic_error_t             **e
 ** @returns xcb_xkb_get_compat_map_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_get_compat_map_reply_t *
xcb_xkb_get_compat_map_reply (xcb_connection_t                 *c  /**< */,
                              xcb_xkb_get_compat_map_cookie_t   cookie  /**< */,
                              xcb_generic_error_t             **e  /**< */);

extern(C) int
xcb_xkb_set_compat_map_sizeof (const void  *_buffer  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 * 
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_xkb_set_compat_map_checked
 ** 
 ** @param xcb_connection_t        *c
 ** @param xcb_xkb_device_spec_t    deviceSpec
 ** @param ubyte                    recomputeActions
 ** @param ubyte                    truncateSI
 ** @param ubyte                    groups
 ** @param ushort                   firstSI
 ** @param ushort                   nSI
 ** @param const ubyte             *si
 ** @param const xcb_xkb_mod_def_t *groupMaps
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_xkb_set_compat_map_checked (xcb_connection_t        *c  /**< */,
                                xcb_xkb_device_spec_t    deviceSpec  /**< */,
                                ubyte                    recomputeActions  /**< */,
                                ubyte                    truncateSI  /**< */,
                                ubyte                    groups  /**< */,
                                ushort                   firstSI  /**< */,
                                ushort                   nSI  /**< */,
                                const ubyte             *si  /**< */,
                                const xcb_xkb_mod_def_t *groupMaps  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 * 
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_xkb_set_compat_map
 ** 
 ** @param xcb_connection_t        *c
 ** @param xcb_xkb_device_spec_t    deviceSpec
 ** @param ubyte                    recomputeActions
 ** @param ubyte                    truncateSI
 ** @param ubyte                    groups
 ** @param ushort                   firstSI
 ** @param ushort                   nSI
 ** @param const ubyte             *si
 ** @param const xcb_xkb_mod_def_t *groupMaps
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_xkb_set_compat_map (xcb_connection_t        *c  /**< */,
                        xcb_xkb_device_spec_t    deviceSpec  /**< */,
                        ubyte                    recomputeActions  /**< */,
                        ubyte                    truncateSI  /**< */,
                        ubyte                    groups  /**< */,
                        ushort                   firstSI  /**< */,
                        ushort                   nSI  /**< */,
                        const ubyte             *si  /**< */,
                        const xcb_xkb_mod_def_t *groupMaps  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 * 
 */

/*****************************************************************************
 **
 ** xcb_xkb_get_indicator_state_cookie_t xcb_xkb_get_indicator_state
 ** 
 ** @param xcb_connection_t      *c
 ** @param xcb_xkb_device_spec_t  deviceSpec
 ** @returns xcb_xkb_get_indicator_state_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_get_indicator_state_cookie_t
xcb_xkb_get_indicator_state (xcb_connection_t      *c  /**< */,
                             xcb_xkb_device_spec_t  deviceSpec  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 * 
 * This form can be used only if the request will cause
 * a reply to be generated. Any returned error will be
 * placed in the event queue.
 */

/*****************************************************************************
 **
 ** xcb_xkb_get_indicator_state_cookie_t xcb_xkb_get_indicator_state_unchecked
 ** 
 ** @param xcb_connection_t      *c
 ** @param xcb_xkb_device_spec_t  deviceSpec
 ** @returns xcb_xkb_get_indicator_state_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_get_indicator_state_cookie_t
xcb_xkb_get_indicator_state_unchecked (xcb_connection_t      *c  /**< */,
                                       xcb_xkb_device_spec_t  deviceSpec  /**< */);

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 * 
 * The parameter @p e supplied to this function must be NULL if
 * xcb_xkb_get_indicator_state_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */

/*****************************************************************************
 **
 ** xcb_xkb_get_indicator_state_reply_t * xcb_xkb_get_indicator_state_reply
 ** 
 ** @param xcb_connection_t                      *c
 ** @param xcb_xkb_get_indicator_state_cookie_t   cookie
 ** @param xcb_generic_error_t                  **e
 ** @returns xcb_xkb_get_indicator_state_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_get_indicator_state_reply_t *
xcb_xkb_get_indicator_state_reply (xcb_connection_t                      *c  /**< */,
                                   xcb_xkb_get_indicator_state_cookie_t   cookie  /**< */,
                                   xcb_generic_error_t                  **e  /**< */);

extern(C) int
xcb_xkb_get_indicator_map_sizeof (const void  *_buffer  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 * 
 */

/*****************************************************************************
 **
 ** xcb_xkb_get_indicator_map_cookie_t xcb_xkb_get_indicator_map
 ** 
 ** @param xcb_connection_t      *c
 ** @param xcb_xkb_device_spec_t  deviceSpec
 ** @param uint                   which
 ** @returns xcb_xkb_get_indicator_map_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_get_indicator_map_cookie_t
xcb_xkb_get_indicator_map (xcb_connection_t      *c  /**< */,
                           xcb_xkb_device_spec_t  deviceSpec  /**< */,
                           uint                   which  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 * 
 * This form can be used only if the request will cause
 * a reply to be generated. Any returned error will be
 * placed in the event queue.
 */

/*****************************************************************************
 **
 ** xcb_xkb_get_indicator_map_cookie_t xcb_xkb_get_indicator_map_unchecked
 ** 
 ** @param xcb_connection_t      *c
 ** @param xcb_xkb_device_spec_t  deviceSpec
 ** @param uint                   which
 ** @returns xcb_xkb_get_indicator_map_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_get_indicator_map_cookie_t
xcb_xkb_get_indicator_map_unchecked (xcb_connection_t      *c  /**< */,
                                     xcb_xkb_device_spec_t  deviceSpec  /**< */,
                                     uint                   which  /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_indicator_map_t * xcb_xkb_get_indicator_map_maps
 ** 
 ** @param const xcb_xkb_get_indicator_map_reply_t *R
 ** @returns xcb_xkb_indicator_map_t *
 **
 *****************************************************************************/
 
xcb_xkb_indicator_map_t *
xcb_xkb_get_indicator_map_maps (const xcb_xkb_get_indicator_map_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_xkb_get_indicator_map_maps_length
 ** 
 ** @param const xcb_xkb_get_indicator_map_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xkb_get_indicator_map_maps_length (const xcb_xkb_get_indicator_map_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_indicator_map_iterator_t xcb_xkb_get_indicator_map_maps_iterator
 ** 
 ** @param const xcb_xkb_get_indicator_map_reply_t *R
 ** @returns xcb_xkb_indicator_map_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_indicator_map_iterator_t
xcb_xkb_get_indicator_map_maps_iterator (const xcb_xkb_get_indicator_map_reply_t *R  /**< */);

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 * 
 * The parameter @p e supplied to this function must be NULL if
 * xcb_xkb_get_indicator_map_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */

/*****************************************************************************
 **
 ** xcb_xkb_get_indicator_map_reply_t * xcb_xkb_get_indicator_map_reply
 ** 
 ** @param xcb_connection_t                    *c
 ** @param xcb_xkb_get_indicator_map_cookie_t   cookie
 ** @param xcb_generic_error_t                **e
 ** @returns xcb_xkb_get_indicator_map_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_get_indicator_map_reply_t *
xcb_xkb_get_indicator_map_reply (xcb_connection_t                    *c  /**< */,
                                 xcb_xkb_get_indicator_map_cookie_t   cookie  /**< */,
                                 xcb_generic_error_t                **e  /**< */);

extern(C) int
xcb_xkb_set_indicator_map_sizeof (const void  *_buffer  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 * 
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_xkb_set_indicator_map_checked
 ** 
 ** @param xcb_connection_t              *c
 ** @param xcb_xkb_device_spec_t          deviceSpec
 ** @param uint                           which
 ** @param const xcb_xkb_indicator_map_t *maps
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_xkb_set_indicator_map_checked (xcb_connection_t              *c  /**< */,
                                   xcb_xkb_device_spec_t          deviceSpec  /**< */,
                                   uint                           which  /**< */,
                                   const xcb_xkb_indicator_map_t *maps  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 * 
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_xkb_set_indicator_map
 ** 
 ** @param xcb_connection_t              *c
 ** @param xcb_xkb_device_spec_t          deviceSpec
 ** @param uint                           which
 ** @param const xcb_xkb_indicator_map_t *maps
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_xkb_set_indicator_map (xcb_connection_t              *c  /**< */,
                           xcb_xkb_device_spec_t          deviceSpec  /**< */,
                           uint                           which  /**< */,
                           const xcb_xkb_indicator_map_t *maps  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 * 
 */

/*****************************************************************************
 **
 ** xcb_xkb_get_named_indicator_cookie_t xcb_xkb_get_named_indicator
 ** 
 ** @param xcb_connection_t         *c
 ** @param xcb_xkb_device_spec_t     deviceSpec
 ** @param xcb_xkb_led_class_spec_t  ledClass
 ** @param xcb_xkb_id_spec_t         ledID
 ** @param xcb_atom_t                indicator
 ** @returns xcb_xkb_get_named_indicator_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_get_named_indicator_cookie_t
xcb_xkb_get_named_indicator (xcb_connection_t         *c  /**< */,
                             xcb_xkb_device_spec_t     deviceSpec  /**< */,
                             xcb_xkb_led_class_spec_t  ledClass  /**< */,
                             xcb_xkb_id_spec_t         ledID  /**< */,
                             xcb_atom_t                indicator  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 * 
 * This form can be used only if the request will cause
 * a reply to be generated. Any returned error will be
 * placed in the event queue.
 */

/*****************************************************************************
 **
 ** xcb_xkb_get_named_indicator_cookie_t xcb_xkb_get_named_indicator_unchecked
 ** 
 ** @param xcb_connection_t         *c
 ** @param xcb_xkb_device_spec_t     deviceSpec
 ** @param xcb_xkb_led_class_spec_t  ledClass
 ** @param xcb_xkb_id_spec_t         ledID
 ** @param xcb_atom_t                indicator
 ** @returns xcb_xkb_get_named_indicator_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_get_named_indicator_cookie_t
xcb_xkb_get_named_indicator_unchecked (xcb_connection_t         *c  /**< */,
                                       xcb_xkb_device_spec_t     deviceSpec  /**< */,
                                       xcb_xkb_led_class_spec_t  ledClass  /**< */,
                                       xcb_xkb_id_spec_t         ledID  /**< */,
                                       xcb_atom_t                indicator  /**< */);

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 * 
 * The parameter @p e supplied to this function must be NULL if
 * xcb_xkb_get_named_indicator_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */

/*****************************************************************************
 **
 ** xcb_xkb_get_named_indicator_reply_t * xcb_xkb_get_named_indicator_reply
 ** 
 ** @param xcb_connection_t                      *c
 ** @param xcb_xkb_get_named_indicator_cookie_t   cookie
 ** @param xcb_generic_error_t                  **e
 ** @returns xcb_xkb_get_named_indicator_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_get_named_indicator_reply_t *
xcb_xkb_get_named_indicator_reply (xcb_connection_t                      *c  /**< */,
                                   xcb_xkb_get_named_indicator_cookie_t   cookie  /**< */,
                                   xcb_generic_error_t                  **e  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 * 
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_xkb_set_named_indicator_checked
 ** 
 ** @param xcb_connection_t         *c
 ** @param xcb_xkb_device_spec_t     deviceSpec
 ** @param xcb_xkb_led_class_spec_t  ledClass
 ** @param xcb_xkb_id_spec_t         ledID
 ** @param xcb_atom_t                indicator
 ** @param ubyte                     setState
 ** @param ubyte                     on
 ** @param ubyte                     setMap
 ** @param ubyte                     createMap
 ** @param ubyte                     map_flags
 ** @param ubyte                     map_whichGroups
 ** @param ubyte                     map_groups
 ** @param ubyte                     map_whichMods
 ** @param ubyte                     map_realMods
 ** @param ushort                    map_vmods
 ** @param uint                      map_ctrls
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_xkb_set_named_indicator_checked (xcb_connection_t         *c  /**< */,
                                     xcb_xkb_device_spec_t     deviceSpec  /**< */,
                                     xcb_xkb_led_class_spec_t  ledClass  /**< */,
                                     xcb_xkb_id_spec_t         ledID  /**< */,
                                     xcb_atom_t                indicator  /**< */,
                                     ubyte                     setState  /**< */,
                                     ubyte                     on  /**< */,
                                     ubyte                     setMap  /**< */,
                                     ubyte                     createMap  /**< */,
                                     ubyte                     map_flags  /**< */,
                                     ubyte                     map_whichGroups  /**< */,
                                     ubyte                     map_groups  /**< */,
                                     ubyte                     map_whichMods  /**< */,
                                     ubyte                     map_realMods  /**< */,
                                     ushort                    map_vmods  /**< */,
                                     uint                      map_ctrls  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 * 
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_xkb_set_named_indicator
 ** 
 ** @param xcb_connection_t         *c
 ** @param xcb_xkb_device_spec_t     deviceSpec
 ** @param xcb_xkb_led_class_spec_t  ledClass
 ** @param xcb_xkb_id_spec_t         ledID
 ** @param xcb_atom_t                indicator
 ** @param ubyte                     setState
 ** @param ubyte                     on
 ** @param ubyte                     setMap
 ** @param ubyte                     createMap
 ** @param ubyte                     map_flags
 ** @param ubyte                     map_whichGroups
 ** @param ubyte                     map_groups
 ** @param ubyte                     map_whichMods
 ** @param ubyte                     map_realMods
 ** @param ushort                    map_vmods
 ** @param uint                      map_ctrls
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_xkb_set_named_indicator (xcb_connection_t         *c  /**< */,
                             xcb_xkb_device_spec_t     deviceSpec  /**< */,
                             xcb_xkb_led_class_spec_t  ledClass  /**< */,
                             xcb_xkb_id_spec_t         ledID  /**< */,
                             xcb_atom_t                indicator  /**< */,
                             ubyte                     setState  /**< */,
                             ubyte                     on  /**< */,
                             ubyte                     setMap  /**< */,
                             ubyte                     createMap  /**< */,
                             ubyte                     map_flags  /**< */,
                             ubyte                     map_whichGroups  /**< */,
                             ubyte                     map_groups  /**< */,
                             ubyte                     map_whichMods  /**< */,
                             ubyte                     map_realMods  /**< */,
                             ushort                    map_vmods  /**< */,
                             uint                      map_ctrls  /**< */);


/*****************************************************************************
 **
 ** xcb_atom_t * xcb_xkb_get_names_value_list_type_names
 ** 
 ** @param const xcb_xkb_get_names_value_list_t *S
 ** @returns xcb_atom_t *
 **
 *****************************************************************************/
 
xcb_atom_t *
xcb_xkb_get_names_value_list_type_names (const xcb_xkb_get_names_value_list_t *S  /**< */);


/*****************************************************************************
 **
 ** int xcb_xkb_get_names_value_list_type_names_length
 ** 
 ** @param const xcb_xkb_get_names_value_list_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xkb_get_names_value_list_type_names_length (const xcb_xkb_get_names_reply_t *R  /**< */,
                                                const xcb_xkb_get_names_value_list_t *S /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xkb_get_names_value_list_type_names_end
 ** 
 ** @param const xcb_xkb_get_names_value_list_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_xkb_get_names_value_list_type_names_end (const xcb_xkb_get_names_reply_t *R  /**< */,
                                             const xcb_xkb_get_names_value_list_t *S /**< */);


/*****************************************************************************
 **
 ** ubyte * xcb_xkb_get_names_value_list_n_levels_per_type
 ** 
 ** @param const xcb_xkb_get_names_value_list_t *S
 ** @returns ubyte *
 **
 *****************************************************************************/
 
ubyte *
xcb_xkb_get_names_value_list_n_levels_per_type (const xcb_xkb_get_names_value_list_t *S  /**< */);


/*****************************************************************************
 **
 ** int xcb_xkb_get_names_value_list_n_levels_per_type_length
 ** 
 ** @param const xcb_xkb_get_names_value_list_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xkb_get_names_value_list_n_levels_per_type_length (const xcb_xkb_get_names_reply_t *R  /**< */,
                                                       const xcb_xkb_get_names_value_list_t *S /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xkb_get_names_value_list_n_levels_per_type_end
 ** 
 ** @param const xcb_xkb_get_names_value_list_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_xkb_get_names_value_list_n_levels_per_type_end (const xcb_xkb_get_names_reply_t *R  /**< */,
                                                    const xcb_xkb_get_names_value_list_t *S /**< */);


/*****************************************************************************
 **
 ** xcb_atom_t * xcb_xkb_get_names_value_list_kt_level_names
 ** 
 ** @param const xcb_xkb_get_names_value_list_t *S
 ** @returns xcb_atom_t *
 **
 *****************************************************************************/
 
xcb_atom_t *
xcb_xkb_get_names_value_list_kt_level_names (const xcb_xkb_get_names_value_list_t *S  /**< */);


/*****************************************************************************
 **
 ** int xcb_xkb_get_names_value_list_kt_level_names_length
 ** 
 ** @param const xcb_xkb_get_names_value_list_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xkb_get_names_value_list_kt_level_names_length (const xcb_xkb_get_names_reply_t *R  /**< */,
                                                    const xcb_xkb_get_names_value_list_t *S /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xkb_get_names_value_list_kt_level_names_end
 ** 
 ** @param const xcb_xkb_get_names_value_list_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_xkb_get_names_value_list_kt_level_names_end (const xcb_xkb_get_names_reply_t *R  /**< */,
                                                 const xcb_xkb_get_names_value_list_t *S /**< */);


/*****************************************************************************
 **
 ** xcb_atom_t * xcb_xkb_get_names_value_list_indicator_names
 ** 
 ** @param const xcb_xkb_get_names_value_list_t *S
 ** @returns xcb_atom_t *
 **
 *****************************************************************************/
 
xcb_atom_t *
xcb_xkb_get_names_value_list_indicator_names (const xcb_xkb_get_names_value_list_t *S  /**< */);


/*****************************************************************************
 **
 ** int xcb_xkb_get_names_value_list_indicator_names_length
 ** 
 ** @param const xcb_xkb_get_names_value_list_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xkb_get_names_value_list_indicator_names_length (const xcb_xkb_get_names_reply_t *R  /**< */,
                                                     const xcb_xkb_get_names_value_list_t *S /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xkb_get_names_value_list_indicator_names_end
 ** 
 ** @param const xcb_xkb_get_names_value_list_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_xkb_get_names_value_list_indicator_names_end (const xcb_xkb_get_names_reply_t *R  /**< */,
                                                  const xcb_xkb_get_names_value_list_t *S /**< */);


/*****************************************************************************
 **
 ** xcb_atom_t * xcb_xkb_get_names_value_list_virtual_mod_names
 ** 
 ** @param const xcb_xkb_get_names_value_list_t *S
 ** @returns xcb_atom_t *
 **
 *****************************************************************************/
 
xcb_atom_t *
xcb_xkb_get_names_value_list_virtual_mod_names (const xcb_xkb_get_names_value_list_t *S  /**< */);


/*****************************************************************************
 **
 ** int xcb_xkb_get_names_value_list_virtual_mod_names_length
 ** 
 ** @param const xcb_xkb_get_names_value_list_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xkb_get_names_value_list_virtual_mod_names_length (const xcb_xkb_get_names_reply_t *R  /**< */,
                                                       const xcb_xkb_get_names_value_list_t *S /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xkb_get_names_value_list_virtual_mod_names_end
 ** 
 ** @param const xcb_xkb_get_names_value_list_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_xkb_get_names_value_list_virtual_mod_names_end (const xcb_xkb_get_names_reply_t *R  /**< */,
                                                    const xcb_xkb_get_names_value_list_t *S /**< */);


/*****************************************************************************
 **
 ** xcb_atom_t * xcb_xkb_get_names_value_list_groups
 ** 
 ** @param const xcb_xkb_get_names_value_list_t *S
 ** @returns xcb_atom_t *
 **
 *****************************************************************************/
 
xcb_atom_t *
xcb_xkb_get_names_value_list_groups (const xcb_xkb_get_names_value_list_t *S  /**< */);


/*****************************************************************************
 **
 ** int xcb_xkb_get_names_value_list_groups_length
 ** 
 ** @param const xcb_xkb_get_names_value_list_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xkb_get_names_value_list_groups_length (const xcb_xkb_get_names_reply_t *R  /**< */,
                                            const xcb_xkb_get_names_value_list_t *S /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xkb_get_names_value_list_groups_end
 ** 
 ** @param const xcb_xkb_get_names_value_list_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_xkb_get_names_value_list_groups_end (const xcb_xkb_get_names_reply_t *R  /**< */,
                                         const xcb_xkb_get_names_value_list_t *S /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_key_name_t * xcb_xkb_get_names_value_list_key_names
 ** 
 ** @param const xcb_xkb_get_names_value_list_t *S
 ** @returns xcb_xkb_key_name_t *
 **
 *****************************************************************************/
 
xcb_xkb_key_name_t *
xcb_xkb_get_names_value_list_key_names (const xcb_xkb_get_names_value_list_t *S  /**< */);


/*****************************************************************************
 **
 ** int xcb_xkb_get_names_value_list_key_names_length
 ** 
 ** @param const xcb_xkb_get_names_value_list_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xkb_get_names_value_list_key_names_length (const xcb_xkb_get_names_reply_t *R  /**< */,
                                               const xcb_xkb_get_names_value_list_t *S /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_key_name_iterator_t xcb_xkb_get_names_value_list_key_names_iterator
 ** 
 ** @param const xcb_xkb_get_names_value_list_t *R
 ** @returns xcb_xkb_key_name_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_key_name_iterator_t
xcb_xkb_get_names_value_list_key_names_iterator (const xcb_xkb_get_names_reply_t *R  /**< */,
                                                 const xcb_xkb_get_names_value_list_t *S /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_key_alias_t * xcb_xkb_get_names_value_list_key_aliases
 ** 
 ** @param const xcb_xkb_get_names_value_list_t *S
 ** @returns xcb_xkb_key_alias_t *
 **
 *****************************************************************************/
 
xcb_xkb_key_alias_t *
xcb_xkb_get_names_value_list_key_aliases (const xcb_xkb_get_names_value_list_t *S  /**< */);


/*****************************************************************************
 **
 ** int xcb_xkb_get_names_value_list_key_aliases_length
 ** 
 ** @param const xcb_xkb_get_names_value_list_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xkb_get_names_value_list_key_aliases_length (const xcb_xkb_get_names_reply_t *R  /**< */,
                                                 const xcb_xkb_get_names_value_list_t *S /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_key_alias_iterator_t xcb_xkb_get_names_value_list_key_aliases_iterator
 ** 
 ** @param const xcb_xkb_get_names_value_list_t *R
 ** @returns xcb_xkb_key_alias_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_key_alias_iterator_t
xcb_xkb_get_names_value_list_key_aliases_iterator (const xcb_xkb_get_names_reply_t *R  /**< */,
                                                   const xcb_xkb_get_names_value_list_t *S /**< */);


/*****************************************************************************
 **
 ** xcb_atom_t * xcb_xkb_get_names_value_list_radio_group_names
 ** 
 ** @param const xcb_xkb_get_names_value_list_t *S
 ** @returns xcb_atom_t *
 **
 *****************************************************************************/
 
xcb_atom_t *
xcb_xkb_get_names_value_list_radio_group_names (const xcb_xkb_get_names_value_list_t *S  /**< */);


/*****************************************************************************
 **
 ** int xcb_xkb_get_names_value_list_radio_group_names_length
 ** 
 ** @param const xcb_xkb_get_names_value_list_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xkb_get_names_value_list_radio_group_names_length (const xcb_xkb_get_names_reply_t *R  /**< */,
                                                       const xcb_xkb_get_names_value_list_t *S /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xkb_get_names_value_list_radio_group_names_end
 ** 
 ** @param const xcb_xkb_get_names_value_list_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_xkb_get_names_value_list_radio_group_names_end (const xcb_xkb_get_names_reply_t *R  /**< */,
                                                    const xcb_xkb_get_names_value_list_t *S /**< */);

extern(C) int
xcb_xkb_get_names_value_list_serialize (void                                 **_buffer  /**< */,
                                        ubyte                                  nTypes  /**< */,
                                        uint                                   indicators  /**< */,
                                        ushort                                 virtualMods  /**< */,
                                        ubyte                                  groupNames  /**< */,
                                        ubyte                                  nKeys  /**< */,
                                        ubyte                                  nKeyAliases  /**< */,
                                        ubyte                                  nRadioGroups  /**< */,
                                        uint                                   which  /**< */,
                                        const xcb_xkb_get_names_value_list_t  *_aux  /**< */);

extern(C) int
xcb_xkb_get_names_value_list_unpack (const void                      *_buffer  /**< */,
                                     ubyte                            nTypes  /**< */,
                                     uint                             indicators  /**< */,
                                     ushort                           virtualMods  /**< */,
                                     ubyte                            groupNames  /**< */,
                                     ubyte                            nKeys  /**< */,
                                     ubyte                            nKeyAliases  /**< */,
                                     ubyte                            nRadioGroups  /**< */,
                                     uint                             which  /**< */,
                                     xcb_xkb_get_names_value_list_t  *_aux  /**< */);

extern(C) int
xcb_xkb_get_names_value_list_sizeof (const void  *_buffer  /**< */,
                                     ubyte        nTypes  /**< */,
                                     uint         indicators  /**< */,
                                     ushort       virtualMods  /**< */,
                                     ubyte        groupNames  /**< */,
                                     ubyte        nKeys  /**< */,
                                     ubyte        nKeyAliases  /**< */,
                                     ubyte        nRadioGroups  /**< */,
                                     uint         which  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 * 
 */

/*****************************************************************************
 **
 ** xcb_xkb_get_names_cookie_t xcb_xkb_get_names
 ** 
 ** @param xcb_connection_t      *c
 ** @param xcb_xkb_device_spec_t  deviceSpec
 ** @param uint                   which
 ** @returns xcb_xkb_get_names_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_get_names_cookie_t
xcb_xkb_get_names (xcb_connection_t      *c  /**< */,
                   xcb_xkb_device_spec_t  deviceSpec  /**< */,
                   uint                   which  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 * 
 * This form can be used only if the request will cause
 * a reply to be generated. Any returned error will be
 * placed in the event queue.
 */

/*****************************************************************************
 **
 ** xcb_xkb_get_names_cookie_t xcb_xkb_get_names_unchecked
 ** 
 ** @param xcb_connection_t      *c
 ** @param xcb_xkb_device_spec_t  deviceSpec
 ** @param uint                   which
 ** @returns xcb_xkb_get_names_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_get_names_cookie_t
xcb_xkb_get_names_unchecked (xcb_connection_t      *c  /**< */,
                             xcb_xkb_device_spec_t  deviceSpec  /**< */,
                             uint                   which  /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_get_names_value_list_t * xcb_xkb_get_names_value_list
 ** 
 ** @param const xcb_xkb_get_names_reply_t *R
 ** @returns xcb_xkb_get_names_value_list_t *
 **
 *****************************************************************************/
 
void *
xcb_xkb_get_names_value_list (const xcb_xkb_get_names_reply_t *R  /**< */);

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 * 
 * The parameter @p e supplied to this function must be NULL if
 * xcb_xkb_get_names_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */

/*****************************************************************************
 **
 ** xcb_xkb_get_names_reply_t * xcb_xkb_get_names_reply
 ** 
 ** @param xcb_connection_t            *c
 ** @param xcb_xkb_get_names_cookie_t   cookie
 ** @param xcb_generic_error_t        **e
 ** @returns xcb_xkb_get_names_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_get_names_reply_t *
xcb_xkb_get_names_reply (xcb_connection_t            *c  /**< */,
                         xcb_xkb_get_names_cookie_t   cookie  /**< */,
                         xcb_generic_error_t        **e  /**< */);


/*****************************************************************************
 **
 ** xcb_atom_t * xcb_xkb_set_names_values_type_names
 ** 
 ** @param const xcb_xkb_set_names_values_t *S
 ** @returns xcb_atom_t *
 **
 *****************************************************************************/
 
xcb_atom_t *
xcb_xkb_set_names_values_type_names (const xcb_xkb_set_names_values_t *S  /**< */);


/*****************************************************************************
 **
 ** int xcb_xkb_set_names_values_type_names_length
 ** 
 ** @param const xcb_xkb_set_names_values_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xkb_set_names_values_type_names_length (const xcb_xkb_set_names_request_t *R  /**< */,
                                            const xcb_xkb_set_names_values_t *S /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xkb_set_names_values_type_names_end
 ** 
 ** @param const xcb_xkb_set_names_values_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_xkb_set_names_values_type_names_end (const xcb_xkb_set_names_request_t *R  /**< */,
                                         const xcb_xkb_set_names_values_t *S /**< */);


/*****************************************************************************
 **
 ** ubyte * xcb_xkb_set_names_values_n_levels_per_type
 ** 
 ** @param const xcb_xkb_set_names_values_t *S
 ** @returns ubyte *
 **
 *****************************************************************************/
 
ubyte *
xcb_xkb_set_names_values_n_levels_per_type (const xcb_xkb_set_names_values_t *S  /**< */);


/*****************************************************************************
 **
 ** int xcb_xkb_set_names_values_n_levels_per_type_length
 ** 
 ** @param const xcb_xkb_set_names_values_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xkb_set_names_values_n_levels_per_type_length (const xcb_xkb_set_names_request_t *R  /**< */,
                                                   const xcb_xkb_set_names_values_t *S /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xkb_set_names_values_n_levels_per_type_end
 ** 
 ** @param const xcb_xkb_set_names_values_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_xkb_set_names_values_n_levels_per_type_end (const xcb_xkb_set_names_request_t *R  /**< */,
                                                const xcb_xkb_set_names_values_t *S /**< */);


/*****************************************************************************
 **
 ** xcb_atom_t * xcb_xkb_set_names_values_kt_level_names
 ** 
 ** @param const xcb_xkb_set_names_values_t *S
 ** @returns xcb_atom_t *
 **
 *****************************************************************************/
 
xcb_atom_t *
xcb_xkb_set_names_values_kt_level_names (const xcb_xkb_set_names_values_t *S  /**< */);


/*****************************************************************************
 **
 ** int xcb_xkb_set_names_values_kt_level_names_length
 ** 
 ** @param const xcb_xkb_set_names_values_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xkb_set_names_values_kt_level_names_length (const xcb_xkb_set_names_request_t *R  /**< */,
                                                const xcb_xkb_set_names_values_t *S /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xkb_set_names_values_kt_level_names_end
 ** 
 ** @param const xcb_xkb_set_names_values_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_xkb_set_names_values_kt_level_names_end (const xcb_xkb_set_names_request_t *R  /**< */,
                                             const xcb_xkb_set_names_values_t *S /**< */);


/*****************************************************************************
 **
 ** xcb_atom_t * xcb_xkb_set_names_values_indicator_names
 ** 
 ** @param const xcb_xkb_set_names_values_t *S
 ** @returns xcb_atom_t *
 **
 *****************************************************************************/
 
xcb_atom_t *
xcb_xkb_set_names_values_indicator_names (const xcb_xkb_set_names_values_t *S  /**< */);


/*****************************************************************************
 **
 ** int xcb_xkb_set_names_values_indicator_names_length
 ** 
 ** @param const xcb_xkb_set_names_values_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xkb_set_names_values_indicator_names_length (const xcb_xkb_set_names_request_t *R  /**< */,
                                                 const xcb_xkb_set_names_values_t *S /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xkb_set_names_values_indicator_names_end
 ** 
 ** @param const xcb_xkb_set_names_values_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_xkb_set_names_values_indicator_names_end (const xcb_xkb_set_names_request_t *R  /**< */,
                                              const xcb_xkb_set_names_values_t *S /**< */);


/*****************************************************************************
 **
 ** xcb_atom_t * xcb_xkb_set_names_values_virtual_mod_names
 ** 
 ** @param const xcb_xkb_set_names_values_t *S
 ** @returns xcb_atom_t *
 **
 *****************************************************************************/
 
xcb_atom_t *
xcb_xkb_set_names_values_virtual_mod_names (const xcb_xkb_set_names_values_t *S  /**< */);


/*****************************************************************************
 **
 ** int xcb_xkb_set_names_values_virtual_mod_names_length
 ** 
 ** @param const xcb_xkb_set_names_values_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xkb_set_names_values_virtual_mod_names_length (const xcb_xkb_set_names_request_t *R  /**< */,
                                                   const xcb_xkb_set_names_values_t *S /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xkb_set_names_values_virtual_mod_names_end
 ** 
 ** @param const xcb_xkb_set_names_values_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_xkb_set_names_values_virtual_mod_names_end (const xcb_xkb_set_names_request_t *R  /**< */,
                                                const xcb_xkb_set_names_values_t *S /**< */);


/*****************************************************************************
 **
 ** xcb_atom_t * xcb_xkb_set_names_values_groups
 ** 
 ** @param const xcb_xkb_set_names_values_t *S
 ** @returns xcb_atom_t *
 **
 *****************************************************************************/
 
xcb_atom_t *
xcb_xkb_set_names_values_groups (const xcb_xkb_set_names_values_t *S  /**< */);


/*****************************************************************************
 **
 ** int xcb_xkb_set_names_values_groups_length
 ** 
 ** @param const xcb_xkb_set_names_values_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xkb_set_names_values_groups_length (const xcb_xkb_set_names_request_t *R  /**< */,
                                        const xcb_xkb_set_names_values_t *S /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xkb_set_names_values_groups_end
 ** 
 ** @param const xcb_xkb_set_names_values_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_xkb_set_names_values_groups_end (const xcb_xkb_set_names_request_t *R  /**< */,
                                     const xcb_xkb_set_names_values_t *S /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_key_name_t * xcb_xkb_set_names_values_key_names
 ** 
 ** @param const xcb_xkb_set_names_values_t *S
 ** @returns xcb_xkb_key_name_t *
 **
 *****************************************************************************/
 
xcb_xkb_key_name_t *
xcb_xkb_set_names_values_key_names (const xcb_xkb_set_names_values_t *S  /**< */);


/*****************************************************************************
 **
 ** int xcb_xkb_set_names_values_key_names_length
 ** 
 ** @param const xcb_xkb_set_names_values_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xkb_set_names_values_key_names_length (const xcb_xkb_set_names_request_t *R  /**< */,
                                           const xcb_xkb_set_names_values_t *S /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_key_name_iterator_t xcb_xkb_set_names_values_key_names_iterator
 ** 
 ** @param const xcb_xkb_set_names_values_t *R
 ** @returns xcb_xkb_key_name_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_key_name_iterator_t
xcb_xkb_set_names_values_key_names_iterator (const xcb_xkb_set_names_request_t *R  /**< */,
                                             const xcb_xkb_set_names_values_t *S /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_key_alias_t * xcb_xkb_set_names_values_key_aliases
 ** 
 ** @param const xcb_xkb_set_names_values_t *S
 ** @returns xcb_xkb_key_alias_t *
 **
 *****************************************************************************/
 
xcb_xkb_key_alias_t *
xcb_xkb_set_names_values_key_aliases (const xcb_xkb_set_names_values_t *S  /**< */);


/*****************************************************************************
 **
 ** int xcb_xkb_set_names_values_key_aliases_length
 ** 
 ** @param const xcb_xkb_set_names_values_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xkb_set_names_values_key_aliases_length (const xcb_xkb_set_names_request_t *R  /**< */,
                                             const xcb_xkb_set_names_values_t *S /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_key_alias_iterator_t xcb_xkb_set_names_values_key_aliases_iterator
 ** 
 ** @param const xcb_xkb_set_names_values_t *R
 ** @returns xcb_xkb_key_alias_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_key_alias_iterator_t
xcb_xkb_set_names_values_key_aliases_iterator (const xcb_xkb_set_names_request_t *R  /**< */,
                                               const xcb_xkb_set_names_values_t *S /**< */);


/*****************************************************************************
 **
 ** xcb_atom_t * xcb_xkb_set_names_values_radio_group_names
 ** 
 ** @param const xcb_xkb_set_names_values_t *S
 ** @returns xcb_atom_t *
 **
 *****************************************************************************/
 
xcb_atom_t *
xcb_xkb_set_names_values_radio_group_names (const xcb_xkb_set_names_values_t *S  /**< */);


/*****************************************************************************
 **
 ** int xcb_xkb_set_names_values_radio_group_names_length
 ** 
 ** @param const xcb_xkb_set_names_values_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xkb_set_names_values_radio_group_names_length (const xcb_xkb_set_names_request_t *R  /**< */,
                                                   const xcb_xkb_set_names_values_t *S /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xkb_set_names_values_radio_group_names_end
 ** 
 ** @param const xcb_xkb_set_names_values_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_xkb_set_names_values_radio_group_names_end (const xcb_xkb_set_names_request_t *R  /**< */,
                                                const xcb_xkb_set_names_values_t *S /**< */);

extern(C) int
xcb_xkb_set_names_values_serialize (void                             **_buffer  /**< */,
                                    ubyte                              nTypes  /**< */,
                                    ubyte                              nKTLevels  /**< */,
                                    uint                               indicators  /**< */,
                                    ushort                             virtualMods  /**< */,
                                    ubyte                              groupNames  /**< */,
                                    ubyte                              nKeys  /**< */,
                                    ubyte                              nKeyAliases  /**< */,
                                    ubyte                              nRadioGroups  /**< */,
                                    uint                               which  /**< */,
                                    const xcb_xkb_set_names_values_t  *_aux  /**< */);

extern(C) int
xcb_xkb_set_names_values_unpack (const void                  *_buffer  /**< */,
                                 ubyte                        nTypes  /**< */,
                                 ubyte                        nKTLevels  /**< */,
                                 uint                         indicators  /**< */,
                                 ushort                       virtualMods  /**< */,
                                 ubyte                        groupNames  /**< */,
                                 ubyte                        nKeys  /**< */,
                                 ubyte                        nKeyAliases  /**< */,
                                 ubyte                        nRadioGroups  /**< */,
                                 uint                         which  /**< */,
                                 xcb_xkb_set_names_values_t  *_aux  /**< */);

extern(C) int
xcb_xkb_set_names_values_sizeof (const void  *_buffer  /**< */,
                                 ubyte        nTypes  /**< */,
                                 ubyte        nKTLevels  /**< */,
                                 uint         indicators  /**< */,
                                 ushort       virtualMods  /**< */,
                                 ubyte        groupNames  /**< */,
                                 ubyte        nKeys  /**< */,
                                 ubyte        nKeyAliases  /**< */,
                                 ubyte        nRadioGroups  /**< */,
                                 uint         which  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 * 
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_xkb_set_names_checked
 ** 
 ** @param xcb_connection_t      *c
 ** @param xcb_xkb_device_spec_t  deviceSpec
 ** @param ushort                 virtualMods
 ** @param uint                   which
 ** @param ubyte                  firstType
 ** @param ubyte                  nTypes
 ** @param ubyte                  firstKTLevelt
 ** @param ubyte                  nKTLevels
 ** @param uint                   indicators
 ** @param ubyte                  groupNames
 ** @param ubyte                  nRadioGroups
 ** @param xcb_keycode_t          firstKey
 ** @param ubyte                  nKeys
 ** @param ubyte                  nKeyAliases
 ** @param ushort                 totalKTLevelNames
 ** @param const void            *values
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_xkb_set_names_checked (xcb_connection_t      *c  /**< */,
                           xcb_xkb_device_spec_t  deviceSpec  /**< */,
                           ushort                 virtualMods  /**< */,
                           uint                   which  /**< */,
                           ubyte                  firstType  /**< */,
                           ubyte                  nTypes  /**< */,
                           ubyte                  firstKTLevelt  /**< */,
                           ubyte                  nKTLevels  /**< */,
                           uint                   indicators  /**< */,
                           ubyte                  groupNames  /**< */,
                           ubyte                  nRadioGroups  /**< */,
                           xcb_keycode_t          firstKey  /**< */,
                           ubyte                  nKeys  /**< */,
                           ubyte                  nKeyAliases  /**< */,
                           ushort                 totalKTLevelNames  /**< */,
                           const void            *values  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 * 
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_xkb_set_names
 ** 
 ** @param xcb_connection_t      *c
 ** @param xcb_xkb_device_spec_t  deviceSpec
 ** @param ushort                 virtualMods
 ** @param uint                   which
 ** @param ubyte                  firstType
 ** @param ubyte                  nTypes
 ** @param ubyte                  firstKTLevelt
 ** @param ubyte                  nKTLevels
 ** @param uint                   indicators
 ** @param ubyte                  groupNames
 ** @param ubyte                  nRadioGroups
 ** @param xcb_keycode_t          firstKey
 ** @param ubyte                  nKeys
 ** @param ubyte                  nKeyAliases
 ** @param ushort                 totalKTLevelNames
 ** @param const void            *values
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_xkb_set_names (xcb_connection_t      *c  /**< */,
                   xcb_xkb_device_spec_t  deviceSpec  /**< */,
                   ushort                 virtualMods  /**< */,
                   uint                   which  /**< */,
                   ubyte                  firstType  /**< */,
                   ubyte                  nTypes  /**< */,
                   ubyte                  firstKTLevelt  /**< */,
                   ubyte                  nKTLevels  /**< */,
                   uint                   indicators  /**< */,
                   ubyte                  groupNames  /**< */,
                   ubyte                  nRadioGroups  /**< */,
                   xcb_keycode_t          firstKey  /**< */,
                   ubyte                  nKeys  /**< */,
                   ubyte                  nKeyAliases  /**< */,
                   ushort                 totalKTLevelNames  /**< */,
                   const void            *values  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 * 
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_xkb_set_names_aux_checked
 ** 
 ** @param xcb_connection_t                 *c
 ** @param xcb_xkb_device_spec_t             deviceSpec
 ** @param ushort                            virtualMods
 ** @param uint                              which
 ** @param ubyte                             firstType
 ** @param ubyte                             nTypes
 ** @param ubyte                             firstKTLevelt
 ** @param ubyte                             nKTLevels
 ** @param uint                              indicators
 ** @param ubyte                             groupNames
 ** @param ubyte                             nRadioGroups
 ** @param xcb_keycode_t                     firstKey
 ** @param ubyte                             nKeys
 ** @param ubyte                             nKeyAliases
 ** @param ushort                            totalKTLevelNames
 ** @param const xcb_xkb_set_names_values_t *values
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_xkb_set_names_aux_checked (xcb_connection_t                 *c  /**< */,
                               xcb_xkb_device_spec_t             deviceSpec  /**< */,
                               ushort                            virtualMods  /**< */,
                               uint                              which  /**< */,
                               ubyte                             firstType  /**< */,
                               ubyte                             nTypes  /**< */,
                               ubyte                             firstKTLevelt  /**< */,
                               ubyte                             nKTLevels  /**< */,
                               uint                              indicators  /**< */,
                               ubyte                             groupNames  /**< */,
                               ubyte                             nRadioGroups  /**< */,
                               xcb_keycode_t                     firstKey  /**< */,
                               ubyte                             nKeys  /**< */,
                               ubyte                             nKeyAliases  /**< */,
                               ushort                            totalKTLevelNames  /**< */,
                               const xcb_xkb_set_names_values_t *values  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 * 
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_xkb_set_names_aux
 ** 
 ** @param xcb_connection_t                 *c
 ** @param xcb_xkb_device_spec_t             deviceSpec
 ** @param ushort                            virtualMods
 ** @param uint                              which
 ** @param ubyte                             firstType
 ** @param ubyte                             nTypes
 ** @param ubyte                             firstKTLevelt
 ** @param ubyte                             nKTLevels
 ** @param uint                              indicators
 ** @param ubyte                             groupNames
 ** @param ubyte                             nRadioGroups
 ** @param xcb_keycode_t                     firstKey
 ** @param ubyte                             nKeys
 ** @param ubyte                             nKeyAliases
 ** @param ushort                            totalKTLevelNames
 ** @param const xcb_xkb_set_names_values_t *values
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_xkb_set_names_aux (xcb_connection_t                 *c  /**< */,
                       xcb_xkb_device_spec_t             deviceSpec  /**< */,
                       ushort                            virtualMods  /**< */,
                       uint                              which  /**< */,
                       ubyte                             firstType  /**< */,
                       ubyte                             nTypes  /**< */,
                       ubyte                             firstKTLevelt  /**< */,
                       ubyte                             nKTLevels  /**< */,
                       uint                              indicators  /**< */,
                       ubyte                             groupNames  /**< */,
                       ubyte                             nRadioGroups  /**< */,
                       xcb_keycode_t                     firstKey  /**< */,
                       ubyte                             nKeys  /**< */,
                       ubyte                             nKeyAliases  /**< */,
                       ushort                            totalKTLevelNames  /**< */,
                       const xcb_xkb_set_names_values_t *values  /**< */);

extern(C) int
xcb_xkb_get_geometry_sizeof (const void  *_buffer  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 * 
 */

/*****************************************************************************
 **
 ** xcb_xkb_get_geometry_cookie_t xcb_xkb_get_geometry
 ** 
 ** @param xcb_connection_t      *c
 ** @param xcb_xkb_device_spec_t  deviceSpec
 ** @param xcb_atom_t             name
 ** @returns xcb_xkb_get_geometry_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_get_geometry_cookie_t
xcb_xkb_get_geometry (xcb_connection_t      *c  /**< */,
                      xcb_xkb_device_spec_t  deviceSpec  /**< */,
                      xcb_atom_t             name  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 * 
 * This form can be used only if the request will cause
 * a reply to be generated. Any returned error will be
 * placed in the event queue.
 */

/*****************************************************************************
 **
 ** xcb_xkb_get_geometry_cookie_t xcb_xkb_get_geometry_unchecked
 ** 
 ** @param xcb_connection_t      *c
 ** @param xcb_xkb_device_spec_t  deviceSpec
 ** @param xcb_atom_t             name
 ** @returns xcb_xkb_get_geometry_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_get_geometry_cookie_t
xcb_xkb_get_geometry_unchecked (xcb_connection_t      *c  /**< */,
                                xcb_xkb_device_spec_t  deviceSpec  /**< */,
                                xcb_atom_t             name  /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_counted_string_16_t * xcb_xkb_get_geometry_label_font
 ** 
 ** @param const xcb_xkb_get_geometry_reply_t *R
 ** @returns xcb_xkb_counted_string_16_t *
 **
 *****************************************************************************/
 
xcb_xkb_counted_string_16_t *
xcb_xkb_get_geometry_label_font (const xcb_xkb_get_geometry_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_xkb_get_geometry_properties_length
 ** 
 ** @param const xcb_xkb_get_geometry_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xkb_get_geometry_properties_length (const xcb_xkb_get_geometry_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_property_iterator_t xcb_xkb_get_geometry_properties_iterator
 ** 
 ** @param const xcb_xkb_get_geometry_reply_t *R
 ** @returns xcb_xkb_property_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_property_iterator_t
xcb_xkb_get_geometry_properties_iterator (const xcb_xkb_get_geometry_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_xkb_get_geometry_colors_length
 ** 
 ** @param const xcb_xkb_get_geometry_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xkb_get_geometry_colors_length (const xcb_xkb_get_geometry_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_counted_string_16_iterator_t xcb_xkb_get_geometry_colors_iterator
 ** 
 ** @param const xcb_xkb_get_geometry_reply_t *R
 ** @returns xcb_xkb_counted_string_16_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_counted_string_16_iterator_t
xcb_xkb_get_geometry_colors_iterator (const xcb_xkb_get_geometry_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_xkb_get_geometry_shapes_length
 ** 
 ** @param const xcb_xkb_get_geometry_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xkb_get_geometry_shapes_length (const xcb_xkb_get_geometry_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_shape_iterator_t xcb_xkb_get_geometry_shapes_iterator
 ** 
 ** @param const xcb_xkb_get_geometry_reply_t *R
 ** @returns xcb_xkb_shape_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_shape_iterator_t
xcb_xkb_get_geometry_shapes_iterator (const xcb_xkb_get_geometry_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_xkb_get_geometry_sections_length
 ** 
 ** @param const xcb_xkb_get_geometry_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xkb_get_geometry_sections_length (const xcb_xkb_get_geometry_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_section_iterator_t xcb_xkb_get_geometry_sections_iterator
 ** 
 ** @param const xcb_xkb_get_geometry_reply_t *R
 ** @returns xcb_xkb_section_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_section_iterator_t
xcb_xkb_get_geometry_sections_iterator (const xcb_xkb_get_geometry_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_xkb_get_geometry_doodads_length
 ** 
 ** @param const xcb_xkb_get_geometry_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xkb_get_geometry_doodads_length (const xcb_xkb_get_geometry_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_doodad_iterator_t xcb_xkb_get_geometry_doodads_iterator
 ** 
 ** @param const xcb_xkb_get_geometry_reply_t *R
 ** @returns xcb_xkb_doodad_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_doodad_iterator_t
xcb_xkb_get_geometry_doodads_iterator (const xcb_xkb_get_geometry_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_key_alias_t * xcb_xkb_get_geometry_key_aliases
 ** 
 ** @param const xcb_xkb_get_geometry_reply_t *R
 ** @returns xcb_xkb_key_alias_t *
 **
 *****************************************************************************/
 
xcb_xkb_key_alias_t *
xcb_xkb_get_geometry_key_aliases (const xcb_xkb_get_geometry_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_xkb_get_geometry_key_aliases_length
 ** 
 ** @param const xcb_xkb_get_geometry_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xkb_get_geometry_key_aliases_length (const xcb_xkb_get_geometry_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_key_alias_iterator_t xcb_xkb_get_geometry_key_aliases_iterator
 ** 
 ** @param const xcb_xkb_get_geometry_reply_t *R
 ** @returns xcb_xkb_key_alias_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_key_alias_iterator_t
xcb_xkb_get_geometry_key_aliases_iterator (const xcb_xkb_get_geometry_reply_t *R  /**< */);

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 * 
 * The parameter @p e supplied to this function must be NULL if
 * xcb_xkb_get_geometry_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */

/*****************************************************************************
 **
 ** xcb_xkb_get_geometry_reply_t * xcb_xkb_get_geometry_reply
 ** 
 ** @param xcb_connection_t               *c
 ** @param xcb_xkb_get_geometry_cookie_t   cookie
 ** @param xcb_generic_error_t           **e
 ** @returns xcb_xkb_get_geometry_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_get_geometry_reply_t *
xcb_xkb_get_geometry_reply (xcb_connection_t               *c  /**< */,
                            xcb_xkb_get_geometry_cookie_t   cookie  /**< */,
                            xcb_generic_error_t           **e  /**< */);

extern(C) int
xcb_xkb_set_geometry_sizeof (const void  *_buffer  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 * 
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_xkb_set_geometry_checked
 ** 
 ** @param xcb_connection_t                  *c
 ** @param xcb_xkb_device_spec_t              deviceSpec
 ** @param ubyte                              nShapes
 ** @param ubyte                              nSections
 ** @param xcb_atom_t                         name
 ** @param ushort                             widthMM
 ** @param ushort                             heightMM
 ** @param ushort                             nProperties
 ** @param ushort                             nColors
 ** @param ushort                             nDoodads
 ** @param ushort                             nKeyAliases
 ** @param ubyte                              baseColorNdx
 ** @param ubyte                              labelColorNdx
 ** @param xcb_xkb_counted_string_16_t       *labelFont
 ** @param const xcb_xkb_property_t          *properties
 ** @param const xcb_xkb_counted_string_16_t *colors
 ** @param const xcb_xkb_shape_t             *shapes
 ** @param const xcb_xkb_section_t           *sections
 ** @param const xcb_xkb_doodad_t            *doodads
 ** @param const xcb_xkb_key_alias_t         *keyAliases
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_xkb_set_geometry_checked (xcb_connection_t                  *c  /**< */,
                              xcb_xkb_device_spec_t              deviceSpec  /**< */,
                              ubyte                              nShapes  /**< */,
                              ubyte                              nSections  /**< */,
                              xcb_atom_t                         name  /**< */,
                              ushort                             widthMM  /**< */,
                              ushort                             heightMM  /**< */,
                              ushort                             nProperties  /**< */,
                              ushort                             nColors  /**< */,
                              ushort                             nDoodads  /**< */,
                              ushort                             nKeyAliases  /**< */,
                              ubyte                              baseColorNdx  /**< */,
                              ubyte                              labelColorNdx  /**< */,
                              xcb_xkb_counted_string_16_t       *labelFont  /**< */,
                              const xcb_xkb_property_t          *properties  /**< */,
                              const xcb_xkb_counted_string_16_t *colors  /**< */,
                              const xcb_xkb_shape_t             *shapes  /**< */,
                              const xcb_xkb_section_t           *sections  /**< */,
                              const xcb_xkb_doodad_t            *doodads  /**< */,
                              const xcb_xkb_key_alias_t         *keyAliases  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 * 
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_xkb_set_geometry
 ** 
 ** @param xcb_connection_t                  *c
 ** @param xcb_xkb_device_spec_t              deviceSpec
 ** @param ubyte                              nShapes
 ** @param ubyte                              nSections
 ** @param xcb_atom_t                         name
 ** @param ushort                             widthMM
 ** @param ushort                             heightMM
 ** @param ushort                             nProperties
 ** @param ushort                             nColors
 ** @param ushort                             nDoodads
 ** @param ushort                             nKeyAliases
 ** @param ubyte                              baseColorNdx
 ** @param ubyte                              labelColorNdx
 ** @param xcb_xkb_counted_string_16_t       *labelFont
 ** @param const xcb_xkb_property_t          *properties
 ** @param const xcb_xkb_counted_string_16_t *colors
 ** @param const xcb_xkb_shape_t             *shapes
 ** @param const xcb_xkb_section_t           *sections
 ** @param const xcb_xkb_doodad_t            *doodads
 ** @param const xcb_xkb_key_alias_t         *keyAliases
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_xkb_set_geometry (xcb_connection_t                  *c  /**< */,
                      xcb_xkb_device_spec_t              deviceSpec  /**< */,
                      ubyte                              nShapes  /**< */,
                      ubyte                              nSections  /**< */,
                      xcb_atom_t                         name  /**< */,
                      ushort                             widthMM  /**< */,
                      ushort                             heightMM  /**< */,
                      ushort                             nProperties  /**< */,
                      ushort                             nColors  /**< */,
                      ushort                             nDoodads  /**< */,
                      ushort                             nKeyAliases  /**< */,
                      ubyte                              baseColorNdx  /**< */,
                      ubyte                              labelColorNdx  /**< */,
                      xcb_xkb_counted_string_16_t       *labelFont  /**< */,
                      const xcb_xkb_property_t          *properties  /**< */,
                      const xcb_xkb_counted_string_16_t *colors  /**< */,
                      const xcb_xkb_shape_t             *shapes  /**< */,
                      const xcb_xkb_section_t           *sections  /**< */,
                      const xcb_xkb_doodad_t            *doodads  /**< */,
                      const xcb_xkb_key_alias_t         *keyAliases  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 * 
 */

/*****************************************************************************
 **
 ** xcb_xkb_per_client_flags_cookie_t xcb_xkb_per_client_flags
 ** 
 ** @param xcb_connection_t      *c
 ** @param xcb_xkb_device_spec_t  deviceSpec
 ** @param uint                   change
 ** @param uint                   value
 ** @param uint                   ctrlsToChange
 ** @param uint                   autoCtrls
 ** @param uint                   autoCtrlsValues
 ** @returns xcb_xkb_per_client_flags_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_per_client_flags_cookie_t
xcb_xkb_per_client_flags (xcb_connection_t      *c  /**< */,
                          xcb_xkb_device_spec_t  deviceSpec  /**< */,
                          uint                   change  /**< */,
                          uint                   value  /**< */,
                          uint                   ctrlsToChange  /**< */,
                          uint                   autoCtrls  /**< */,
                          uint                   autoCtrlsValues  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 * 
 * This form can be used only if the request will cause
 * a reply to be generated. Any returned error will be
 * placed in the event queue.
 */

/*****************************************************************************
 **
 ** xcb_xkb_per_client_flags_cookie_t xcb_xkb_per_client_flags_unchecked
 ** 
 ** @param xcb_connection_t      *c
 ** @param xcb_xkb_device_spec_t  deviceSpec
 ** @param uint                   change
 ** @param uint                   value
 ** @param uint                   ctrlsToChange
 ** @param uint                   autoCtrls
 ** @param uint                   autoCtrlsValues
 ** @returns xcb_xkb_per_client_flags_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_per_client_flags_cookie_t
xcb_xkb_per_client_flags_unchecked (xcb_connection_t      *c  /**< */,
                                    xcb_xkb_device_spec_t  deviceSpec  /**< */,
                                    uint                   change  /**< */,
                                    uint                   value  /**< */,
                                    uint                   ctrlsToChange  /**< */,
                                    uint                   autoCtrls  /**< */,
                                    uint                   autoCtrlsValues  /**< */);

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 * 
 * The parameter @p e supplied to this function must be NULL if
 * xcb_xkb_per_client_flags_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */

/*****************************************************************************
 **
 ** xcb_xkb_per_client_flags_reply_t * xcb_xkb_per_client_flags_reply
 ** 
 ** @param xcb_connection_t                   *c
 ** @param xcb_xkb_per_client_flags_cookie_t   cookie
 ** @param xcb_generic_error_t               **e
 ** @returns xcb_xkb_per_client_flags_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_per_client_flags_reply_t *
xcb_xkb_per_client_flags_reply (xcb_connection_t                   *c  /**< */,
                                xcb_xkb_per_client_flags_cookie_t   cookie  /**< */,
                                xcb_generic_error_t               **e  /**< */);

extern(C) int
xcb_xkb_list_components_serialize (void                                    **_buffer  /**< */,
                                   const xcb_xkb_list_components_request_t  *_aux  /**< */,
                                   const xcb_xkb_string8_t                  *keymapsSpec  /**< */,
                                   const xcb_xkb_string8_t                  *keycodesSpec  /**< */,
                                   const xcb_xkb_string8_t                  *typesSpec  /**< */,
                                   const xcb_xkb_string8_t                  *compatMapSpec  /**< */,
                                   const xcb_xkb_string8_t                  *symbolsSpec  /**< */,
                                   const xcb_xkb_string8_t                  *geometrySpec  /**< */);

extern(C) int
xcb_xkb_list_components_unserialize (const void                          *_buffer  /**< */,
                                     xcb_xkb_list_components_request_t  **_aux  /**< */);

extern(C) int
xcb_xkb_list_components_sizeof (const void  *_buffer  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 * 
 */

/*****************************************************************************
 **
 ** xcb_xkb_list_components_cookie_t xcb_xkb_list_components
 ** 
 ** @param xcb_connection_t        *c
 ** @param xcb_xkb_device_spec_t    deviceSpec
 ** @param ushort                   maxNames
 ** @param ubyte                    keymapsSpecLen
 ** @param const xcb_xkb_string8_t *keymapsSpec
 ** @param ubyte                    keycodesSpecLen
 ** @param const xcb_xkb_string8_t *keycodesSpec
 ** @param ubyte                    typesSpecLen
 ** @param const xcb_xkb_string8_t *typesSpec
 ** @param ubyte                    compatMapSpecLen
 ** @param const xcb_xkb_string8_t *compatMapSpec
 ** @param ubyte                    symbolsSpecLen
 ** @param const xcb_xkb_string8_t *symbolsSpec
 ** @param ubyte                    geometrySpecLen
 ** @param const xcb_xkb_string8_t *geometrySpec
 ** @returns xcb_xkb_list_components_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_list_components_cookie_t
xcb_xkb_list_components (xcb_connection_t        *c  /**< */,
                         xcb_xkb_device_spec_t    deviceSpec  /**< */,
                         ushort                   maxNames  /**< */,
                         ubyte                    keymapsSpecLen  /**< */,
                         const xcb_xkb_string8_t *keymapsSpec  /**< */,
                         ubyte                    keycodesSpecLen  /**< */,
                         const xcb_xkb_string8_t *keycodesSpec  /**< */,
                         ubyte                    typesSpecLen  /**< */,
                         const xcb_xkb_string8_t *typesSpec  /**< */,
                         ubyte                    compatMapSpecLen  /**< */,
                         const xcb_xkb_string8_t *compatMapSpec  /**< */,
                         ubyte                    symbolsSpecLen  /**< */,
                         const xcb_xkb_string8_t *symbolsSpec  /**< */,
                         ubyte                    geometrySpecLen  /**< */,
                         const xcb_xkb_string8_t *geometrySpec  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 * 
 * This form can be used only if the request will cause
 * a reply to be generated. Any returned error will be
 * placed in the event queue.
 */

/*****************************************************************************
 **
 ** xcb_xkb_list_components_cookie_t xcb_xkb_list_components_unchecked
 ** 
 ** @param xcb_connection_t        *c
 ** @param xcb_xkb_device_spec_t    deviceSpec
 ** @param ushort                   maxNames
 ** @param ubyte                    keymapsSpecLen
 ** @param const xcb_xkb_string8_t *keymapsSpec
 ** @param ubyte                    keycodesSpecLen
 ** @param const xcb_xkb_string8_t *keycodesSpec
 ** @param ubyte                    typesSpecLen
 ** @param const xcb_xkb_string8_t *typesSpec
 ** @param ubyte                    compatMapSpecLen
 ** @param const xcb_xkb_string8_t *compatMapSpec
 ** @param ubyte                    symbolsSpecLen
 ** @param const xcb_xkb_string8_t *symbolsSpec
 ** @param ubyte                    geometrySpecLen
 ** @param const xcb_xkb_string8_t *geometrySpec
 ** @returns xcb_xkb_list_components_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_list_components_cookie_t
xcb_xkb_list_components_unchecked (xcb_connection_t        *c  /**< */,
                                   xcb_xkb_device_spec_t    deviceSpec  /**< */,
                                   ushort                   maxNames  /**< */,
                                   ubyte                    keymapsSpecLen  /**< */,
                                   const xcb_xkb_string8_t *keymapsSpec  /**< */,
                                   ubyte                    keycodesSpecLen  /**< */,
                                   const xcb_xkb_string8_t *keycodesSpec  /**< */,
                                   ubyte                    typesSpecLen  /**< */,
                                   const xcb_xkb_string8_t *typesSpec  /**< */,
                                   ubyte                    compatMapSpecLen  /**< */,
                                   const xcb_xkb_string8_t *compatMapSpec  /**< */,
                                   ubyte                    symbolsSpecLen  /**< */,
                                   const xcb_xkb_string8_t *symbolsSpec  /**< */,
                                   ubyte                    geometrySpecLen  /**< */,
                                   const xcb_xkb_string8_t *geometrySpec  /**< */);


/*****************************************************************************
 **
 ** int xcb_xkb_list_components_keymaps_length
 ** 
 ** @param const xcb_xkb_list_components_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xkb_list_components_keymaps_length (const xcb_xkb_list_components_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_listing_iterator_t xcb_xkb_list_components_keymaps_iterator
 ** 
 ** @param const xcb_xkb_list_components_reply_t *R
 ** @returns xcb_xkb_listing_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_listing_iterator_t
xcb_xkb_list_components_keymaps_iterator (const xcb_xkb_list_components_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_xkb_list_components_keycodes_length
 ** 
 ** @param const xcb_xkb_list_components_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xkb_list_components_keycodes_length (const xcb_xkb_list_components_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_listing_iterator_t xcb_xkb_list_components_keycodes_iterator
 ** 
 ** @param const xcb_xkb_list_components_reply_t *R
 ** @returns xcb_xkb_listing_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_listing_iterator_t
xcb_xkb_list_components_keycodes_iterator (const xcb_xkb_list_components_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_xkb_list_components_types_length
 ** 
 ** @param const xcb_xkb_list_components_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xkb_list_components_types_length (const xcb_xkb_list_components_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_listing_iterator_t xcb_xkb_list_components_types_iterator
 ** 
 ** @param const xcb_xkb_list_components_reply_t *R
 ** @returns xcb_xkb_listing_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_listing_iterator_t
xcb_xkb_list_components_types_iterator (const xcb_xkb_list_components_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_xkb_list_components_compat_maps_length
 ** 
 ** @param const xcb_xkb_list_components_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xkb_list_components_compat_maps_length (const xcb_xkb_list_components_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_listing_iterator_t xcb_xkb_list_components_compat_maps_iterator
 ** 
 ** @param const xcb_xkb_list_components_reply_t *R
 ** @returns xcb_xkb_listing_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_listing_iterator_t
xcb_xkb_list_components_compat_maps_iterator (const xcb_xkb_list_components_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_xkb_list_components_symbols_length
 ** 
 ** @param const xcb_xkb_list_components_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xkb_list_components_symbols_length (const xcb_xkb_list_components_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_listing_iterator_t xcb_xkb_list_components_symbols_iterator
 ** 
 ** @param const xcb_xkb_list_components_reply_t *R
 ** @returns xcb_xkb_listing_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_listing_iterator_t
xcb_xkb_list_components_symbols_iterator (const xcb_xkb_list_components_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_xkb_list_components_geometries_length
 ** 
 ** @param const xcb_xkb_list_components_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xkb_list_components_geometries_length (const xcb_xkb_list_components_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_listing_iterator_t xcb_xkb_list_components_geometries_iterator
 ** 
 ** @param const xcb_xkb_list_components_reply_t *R
 ** @returns xcb_xkb_listing_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_listing_iterator_t
xcb_xkb_list_components_geometries_iterator (const xcb_xkb_list_components_reply_t *R  /**< */);

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 * 
 * The parameter @p e supplied to this function must be NULL if
 * xcb_xkb_list_components_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */

/*****************************************************************************
 **
 ** xcb_xkb_list_components_reply_t * xcb_xkb_list_components_reply
 ** 
 ** @param xcb_connection_t                  *c
 ** @param xcb_xkb_list_components_cookie_t   cookie
 ** @param xcb_generic_error_t              **e
 ** @returns xcb_xkb_list_components_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_list_components_reply_t *
xcb_xkb_list_components_reply (xcb_connection_t                  *c  /**< */,
                               xcb_xkb_list_components_cookie_t   cookie  /**< */,
                               xcb_generic_error_t              **e  /**< */);

extern(C) int
xcb_xkb_get_kbd_by_name_serialize (void                                    **_buffer  /**< */,
                                   const xcb_xkb_get_kbd_by_name_request_t  *_aux  /**< */,
                                   const xcb_xkb_string8_t                  *keymapsSpec  /**< */,
                                   const xcb_xkb_string8_t                  *keycodesSpec  /**< */,
                                   const xcb_xkb_string8_t                  *typesSpec  /**< */,
                                   const xcb_xkb_string8_t                  *compatMapSpec  /**< */,
                                   const xcb_xkb_string8_t                  *symbolsSpec  /**< */,
                                   const xcb_xkb_string8_t                  *geometrySpec  /**< */);

extern(C) int
xcb_xkb_get_kbd_by_name_unserialize (const void                          *_buffer  /**< */,
                                     xcb_xkb_get_kbd_by_name_request_t  **_aux  /**< */);

extern(C) int
xcb_xkb_get_kbd_by_name_sizeof (const void  *_buffer  /**< */);


/*****************************************************************************
 **
 ** int xcb_xkb_get_kbd_by_name_replies_types_map_types_rtrn_length
 ** 
 ** @param const xcb_xkb_get_kbd_by_name_replies_types_map_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xkb_get_kbd_by_name_replies_types_map_types_rtrn_length (const xcb_xkb_get_kbd_by_name_reply_t *R  /**< */,
                                                             const xcb_xkb_get_kbd_by_name_replies_t *S /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_key_type_iterator_t xcb_xkb_get_kbd_by_name_replies_types_map_types_rtrn_iterator
 ** 
 ** @param const xcb_xkb_get_kbd_by_name_replies_types_map_t *R
 ** @returns xcb_xkb_key_type_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_key_type_iterator_t
xcb_xkb_get_kbd_by_name_replies_types_map_types_rtrn_iterator (const xcb_xkb_get_kbd_by_name_reply_t *R  /**< */,
                                                               const xcb_xkb_get_kbd_by_name_replies_t *S /**< */);


/*****************************************************************************
 **
 ** int xcb_xkb_get_kbd_by_name_replies_types_map_syms_rtrn_length
 ** 
 ** @param const xcb_xkb_get_kbd_by_name_replies_types_map_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xkb_get_kbd_by_name_replies_types_map_syms_rtrn_length (const xcb_xkb_get_kbd_by_name_reply_t *R  /**< */,
                                                            const xcb_xkb_get_kbd_by_name_replies_t *S /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_key_sym_map_iterator_t xcb_xkb_get_kbd_by_name_replies_types_map_syms_rtrn_iterator
 ** 
 ** @param const xcb_xkb_get_kbd_by_name_replies_types_map_t *R
 ** @returns xcb_xkb_key_sym_map_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_key_sym_map_iterator_t
xcb_xkb_get_kbd_by_name_replies_types_map_syms_rtrn_iterator (const xcb_xkb_get_kbd_by_name_reply_t *R  /**< */,
                                                              const xcb_xkb_get_kbd_by_name_replies_t *S /**< */);


/*****************************************************************************
 **
 ** ubyte * xcb_xkb_get_kbd_by_name_replies_types_map_acts_rtrn_count
 ** 
 ** @param const xcb_xkb_get_kbd_by_name_replies_t *S
 ** @returns ubyte *
 **
 *****************************************************************************/
 
ubyte *
xcb_xkb_get_kbd_by_name_replies_types_map_acts_rtrn_count (const xcb_xkb_get_kbd_by_name_replies_t *S  /**< */);


/*****************************************************************************
 **
 ** int xcb_xkb_get_kbd_by_name_replies_types_map_acts_rtrn_count_length
 ** 
 ** @param const xcb_xkb_get_kbd_by_name_replies_types_map_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xkb_get_kbd_by_name_replies_types_map_acts_rtrn_count_length (const xcb_xkb_get_kbd_by_name_reply_t *R  /**< */,
                                                                  const xcb_xkb_get_kbd_by_name_replies_t *S /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xkb_get_kbd_by_name_replies_types_map_acts_rtrn_count_end
 ** 
 ** @param const xcb_xkb_get_kbd_by_name_replies_types_map_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_xkb_get_kbd_by_name_replies_types_map_acts_rtrn_count_end (const xcb_xkb_get_kbd_by_name_reply_t *R  /**< */,
                                                               const xcb_xkb_get_kbd_by_name_replies_t *S /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_action_t * xcb_xkb_get_kbd_by_name_replies_types_map_acts_rtrn_acts
 ** 
 ** @param const xcb_xkb_get_kbd_by_name_replies_t *S
 ** @returns xcb_xkb_action_t *
 **
 *****************************************************************************/
 
xcb_xkb_action_t *
xcb_xkb_get_kbd_by_name_replies_types_map_acts_rtrn_acts (const xcb_xkb_get_kbd_by_name_replies_t *S  /**< */);


/*****************************************************************************
 **
 ** int xcb_xkb_get_kbd_by_name_replies_types_map_acts_rtrn_acts_length
 ** 
 ** @param const xcb_xkb_get_kbd_by_name_replies_types_map_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xkb_get_kbd_by_name_replies_types_map_acts_rtrn_acts_length (const xcb_xkb_get_kbd_by_name_reply_t *R  /**< */,
                                                                 const xcb_xkb_get_kbd_by_name_replies_t *S /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_action_iterator_t xcb_xkb_get_kbd_by_name_replies_types_map_acts_rtrn_acts_iterator
 ** 
 ** @param const xcb_xkb_get_kbd_by_name_replies_types_map_t *R
 ** @returns xcb_xkb_action_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_action_iterator_t
xcb_xkb_get_kbd_by_name_replies_types_map_acts_rtrn_acts_iterator (const xcb_xkb_get_kbd_by_name_reply_t *R  /**< */,
                                                                   const xcb_xkb_get_kbd_by_name_replies_t *S /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_set_behavior_t * xcb_xkb_get_kbd_by_name_replies_types_map_behaviors_rtrn
 ** 
 ** @param const xcb_xkb_get_kbd_by_name_replies_t *S
 ** @returns xcb_xkb_set_behavior_t *
 **
 *****************************************************************************/
 
xcb_xkb_set_behavior_t *
xcb_xkb_get_kbd_by_name_replies_types_map_behaviors_rtrn (const xcb_xkb_get_kbd_by_name_replies_t *S  /**< */);


/*****************************************************************************
 **
 ** int xcb_xkb_get_kbd_by_name_replies_types_map_behaviors_rtrn_length
 ** 
 ** @param const xcb_xkb_get_kbd_by_name_replies_types_map_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xkb_get_kbd_by_name_replies_types_map_behaviors_rtrn_length (const xcb_xkb_get_kbd_by_name_reply_t *R  /**< */,
                                                                 const xcb_xkb_get_kbd_by_name_replies_t *S /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_set_behavior_iterator_t xcb_xkb_get_kbd_by_name_replies_types_map_behaviors_rtrn_iterator
 ** 
 ** @param const xcb_xkb_get_kbd_by_name_replies_types_map_t *R
 ** @returns xcb_xkb_set_behavior_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_set_behavior_iterator_t
xcb_xkb_get_kbd_by_name_replies_types_map_behaviors_rtrn_iterator (const xcb_xkb_get_kbd_by_name_reply_t *R  /**< */,
                                                                   const xcb_xkb_get_kbd_by_name_replies_t *S /**< */);


/*****************************************************************************
 **
 ** ubyte * xcb_xkb_get_kbd_by_name_replies_types_map_vmods_rtrn
 ** 
 ** @param const xcb_xkb_get_kbd_by_name_replies_t *S
 ** @returns ubyte *
 **
 *****************************************************************************/
 
ubyte *
xcb_xkb_get_kbd_by_name_replies_types_map_vmods_rtrn (const xcb_xkb_get_kbd_by_name_replies_t *S  /**< */);


/*****************************************************************************
 **
 ** int xcb_xkb_get_kbd_by_name_replies_types_map_vmods_rtrn_length
 ** 
 ** @param const xcb_xkb_get_kbd_by_name_replies_types_map_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xkb_get_kbd_by_name_replies_types_map_vmods_rtrn_length (const xcb_xkb_get_kbd_by_name_reply_t *R  /**< */,
                                                             const xcb_xkb_get_kbd_by_name_replies_t *S /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xkb_get_kbd_by_name_replies_types_map_vmods_rtrn_end
 ** 
 ** @param const xcb_xkb_get_kbd_by_name_replies_types_map_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_xkb_get_kbd_by_name_replies_types_map_vmods_rtrn_end (const xcb_xkb_get_kbd_by_name_reply_t *R  /**< */,
                                                          const xcb_xkb_get_kbd_by_name_replies_t *S /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_set_explicit_t * xcb_xkb_get_kbd_by_name_replies_types_map_explicit_rtrn
 ** 
 ** @param const xcb_xkb_get_kbd_by_name_replies_t *S
 ** @returns xcb_xkb_set_explicit_t *
 **
 *****************************************************************************/
 
xcb_xkb_set_explicit_t *
xcb_xkb_get_kbd_by_name_replies_types_map_explicit_rtrn (const xcb_xkb_get_kbd_by_name_replies_t *S  /**< */);


/*****************************************************************************
 **
 ** int xcb_xkb_get_kbd_by_name_replies_types_map_explicit_rtrn_length
 ** 
 ** @param const xcb_xkb_get_kbd_by_name_replies_types_map_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xkb_get_kbd_by_name_replies_types_map_explicit_rtrn_length (const xcb_xkb_get_kbd_by_name_reply_t *R  /**< */,
                                                                const xcb_xkb_get_kbd_by_name_replies_t *S /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_set_explicit_iterator_t xcb_xkb_get_kbd_by_name_replies_types_map_explicit_rtrn_iterator
 ** 
 ** @param const xcb_xkb_get_kbd_by_name_replies_types_map_t *R
 ** @returns xcb_xkb_set_explicit_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_set_explicit_iterator_t
xcb_xkb_get_kbd_by_name_replies_types_map_explicit_rtrn_iterator (const xcb_xkb_get_kbd_by_name_reply_t *R  /**< */,
                                                                  const xcb_xkb_get_kbd_by_name_replies_t *S /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_key_mod_map_t * xcb_xkb_get_kbd_by_name_replies_types_map_modmap_rtrn
 ** 
 ** @param const xcb_xkb_get_kbd_by_name_replies_t *S
 ** @returns xcb_xkb_key_mod_map_t *
 **
 *****************************************************************************/
 
xcb_xkb_key_mod_map_t *
xcb_xkb_get_kbd_by_name_replies_types_map_modmap_rtrn (const xcb_xkb_get_kbd_by_name_replies_t *S  /**< */);


/*****************************************************************************
 **
 ** int xcb_xkb_get_kbd_by_name_replies_types_map_modmap_rtrn_length
 ** 
 ** @param const xcb_xkb_get_kbd_by_name_replies_types_map_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xkb_get_kbd_by_name_replies_types_map_modmap_rtrn_length (const xcb_xkb_get_kbd_by_name_reply_t *R  /**< */,
                                                              const xcb_xkb_get_kbd_by_name_replies_t *S /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_key_mod_map_iterator_t xcb_xkb_get_kbd_by_name_replies_types_map_modmap_rtrn_iterator
 ** 
 ** @param const xcb_xkb_get_kbd_by_name_replies_types_map_t *R
 ** @returns xcb_xkb_key_mod_map_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_key_mod_map_iterator_t
xcb_xkb_get_kbd_by_name_replies_types_map_modmap_rtrn_iterator (const xcb_xkb_get_kbd_by_name_reply_t *R  /**< */,
                                                                const xcb_xkb_get_kbd_by_name_replies_t *S /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_key_v_mod_map_t * xcb_xkb_get_kbd_by_name_replies_types_map_vmodmap_rtrn
 ** 
 ** @param const xcb_xkb_get_kbd_by_name_replies_t *S
 ** @returns xcb_xkb_key_v_mod_map_t *
 **
 *****************************************************************************/
 
xcb_xkb_key_v_mod_map_t *
xcb_xkb_get_kbd_by_name_replies_types_map_vmodmap_rtrn (const xcb_xkb_get_kbd_by_name_replies_t *S  /**< */);


/*****************************************************************************
 **
 ** int xcb_xkb_get_kbd_by_name_replies_types_map_vmodmap_rtrn_length
 ** 
 ** @param const xcb_xkb_get_kbd_by_name_replies_types_map_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xkb_get_kbd_by_name_replies_types_map_vmodmap_rtrn_length (const xcb_xkb_get_kbd_by_name_reply_t *R  /**< */,
                                                               const xcb_xkb_get_kbd_by_name_replies_t *S /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_key_v_mod_map_iterator_t xcb_xkb_get_kbd_by_name_replies_types_map_vmodmap_rtrn_iterator
 ** 
 ** @param const xcb_xkb_get_kbd_by_name_replies_types_map_t *R
 ** @returns xcb_xkb_key_v_mod_map_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_key_v_mod_map_iterator_t
xcb_xkb_get_kbd_by_name_replies_types_map_vmodmap_rtrn_iterator (const xcb_xkb_get_kbd_by_name_reply_t *R  /**< */,
                                                                 const xcb_xkb_get_kbd_by_name_replies_t *S /**< */);

extern(C) int
xcb_xkb_get_kbd_by_name_replies_types_map_serialize (void                                              **_buffer  /**< */,
                                                     ubyte                                               nTypes  /**< */,
                                                     ubyte                                               nKeySyms  /**< */,
                                                     ubyte                                               nKeyActions  /**< */,
                                                     ushort                                              totalActions  /**< */,
                                                     ubyte                                               totalKeyBehaviors  /**< */,
                                                     ubyte                                               nVModMapKeys  /**< */,
                                                     ubyte                                               totalKeyExplicit  /**< */,
                                                     ubyte                                               totalModMapKeys  /**< */,
                                                     ubyte                                               totalVModMapKeys  /**< */,
                                                     ushort                                              present  /**< */,
                                                     const xcb_xkb_get_kbd_by_name_replies_types_map_t  *_aux  /**< */);

extern(C) int
xcb_xkb_get_kbd_by_name_replies_types_map_unpack (const void                                   *_buffer  /**< */,
                                                  ubyte                                         nTypes  /**< */,
                                                  ubyte                                         nKeySyms  /**< */,
                                                  ubyte                                         nKeyActions  /**< */,
                                                  ushort                                        totalActions  /**< */,
                                                  ubyte                                         totalKeyBehaviors  /**< */,
                                                  ubyte                                         nVModMapKeys  /**< */,
                                                  ubyte                                         totalKeyExplicit  /**< */,
                                                  ubyte                                         totalModMapKeys  /**< */,
                                                  ubyte                                         totalVModMapKeys  /**< */,
                                                  ushort                                        present  /**< */,
                                                  xcb_xkb_get_kbd_by_name_replies_types_map_t  *_aux  /**< */);

extern(C) int
xcb_xkb_get_kbd_by_name_replies_types_map_sizeof (const void  *_buffer  /**< */,
                                                  ubyte        nTypes  /**< */,
                                                  ubyte        nKeySyms  /**< */,
                                                  ubyte        nKeyActions  /**< */,
                                                  ushort       totalActions  /**< */,
                                                  ubyte        totalKeyBehaviors  /**< */,
                                                  ubyte        nVModMapKeys  /**< */,
                                                  ubyte        totalKeyExplicit  /**< */,
                                                  ubyte        totalModMapKeys  /**< */,
                                                  ubyte        totalVModMapKeys  /**< */,
                                                  ushort       present  /**< */);


/*****************************************************************************
 **
 ** int xcb_xkb_get_kbd_by_name_replies_client_symbols_map_types_rtrn_length
 ** 
 ** @param const xcb_xkb_get_kbd_by_name_replies_client_symbols_map_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xkb_get_kbd_by_name_replies_client_symbols_map_types_rtrn_length (const xcb_xkb_get_kbd_by_name_reply_t *R  /**< */,
                                                                      const xcb_xkb_get_kbd_by_name_replies_t *S /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_key_type_iterator_t xcb_xkb_get_kbd_by_name_replies_client_symbols_map_types_rtrn_iterator
 ** 
 ** @param const xcb_xkb_get_kbd_by_name_replies_client_symbols_map_t *R
 ** @returns xcb_xkb_key_type_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_key_type_iterator_t
xcb_xkb_get_kbd_by_name_replies_client_symbols_map_types_rtrn_iterator (const xcb_xkb_get_kbd_by_name_reply_t *R  /**< */,
                                                                        const xcb_xkb_get_kbd_by_name_replies_t *S /**< */);


/*****************************************************************************
 **
 ** int xcb_xkb_get_kbd_by_name_replies_client_symbols_map_syms_rtrn_length
 ** 
 ** @param const xcb_xkb_get_kbd_by_name_replies_client_symbols_map_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xkb_get_kbd_by_name_replies_client_symbols_map_syms_rtrn_length (const xcb_xkb_get_kbd_by_name_reply_t *R  /**< */,
                                                                     const xcb_xkb_get_kbd_by_name_replies_t *S /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_key_sym_map_iterator_t xcb_xkb_get_kbd_by_name_replies_client_symbols_map_syms_rtrn_iterator
 ** 
 ** @param const xcb_xkb_get_kbd_by_name_replies_client_symbols_map_t *R
 ** @returns xcb_xkb_key_sym_map_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_key_sym_map_iterator_t
xcb_xkb_get_kbd_by_name_replies_client_symbols_map_syms_rtrn_iterator (const xcb_xkb_get_kbd_by_name_reply_t *R  /**< */,
                                                                       const xcb_xkb_get_kbd_by_name_replies_t *S /**< */);


/*****************************************************************************
 **
 ** ubyte * xcb_xkb_get_kbd_by_name_replies_client_symbols_map_acts_rtrn_count
 ** 
 ** @param const xcb_xkb_get_kbd_by_name_replies_t *S
 ** @returns ubyte *
 **
 *****************************************************************************/
 
ubyte *
xcb_xkb_get_kbd_by_name_replies_client_symbols_map_acts_rtrn_count (const xcb_xkb_get_kbd_by_name_replies_t *S  /**< */);


/*****************************************************************************
 **
 ** int xcb_xkb_get_kbd_by_name_replies_client_symbols_map_acts_rtrn_count_length
 ** 
 ** @param const xcb_xkb_get_kbd_by_name_replies_client_symbols_map_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xkb_get_kbd_by_name_replies_client_symbols_map_acts_rtrn_count_length (const xcb_xkb_get_kbd_by_name_reply_t *R  /**< */,
                                                                           const xcb_xkb_get_kbd_by_name_replies_t *S /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xkb_get_kbd_by_name_replies_client_symbols_map_acts_rtrn_count_end
 ** 
 ** @param const xcb_xkb_get_kbd_by_name_replies_client_symbols_map_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_xkb_get_kbd_by_name_replies_client_symbols_map_acts_rtrn_count_end (const xcb_xkb_get_kbd_by_name_reply_t *R  /**< */,
                                                                        const xcb_xkb_get_kbd_by_name_replies_t *S /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_action_t * xcb_xkb_get_kbd_by_name_replies_client_symbols_map_acts_rtrn_acts
 ** 
 ** @param const xcb_xkb_get_kbd_by_name_replies_t *S
 ** @returns xcb_xkb_action_t *
 **
 *****************************************************************************/
 
xcb_xkb_action_t *
xcb_xkb_get_kbd_by_name_replies_client_symbols_map_acts_rtrn_acts (const xcb_xkb_get_kbd_by_name_replies_t *S  /**< */);


/*****************************************************************************
 **
 ** int xcb_xkb_get_kbd_by_name_replies_client_symbols_map_acts_rtrn_acts_length
 ** 
 ** @param const xcb_xkb_get_kbd_by_name_replies_client_symbols_map_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xkb_get_kbd_by_name_replies_client_symbols_map_acts_rtrn_acts_length (const xcb_xkb_get_kbd_by_name_reply_t *R  /**< */,
                                                                          const xcb_xkb_get_kbd_by_name_replies_t *S /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_action_iterator_t xcb_xkb_get_kbd_by_name_replies_client_symbols_map_acts_rtrn_acts_iterator
 ** 
 ** @param const xcb_xkb_get_kbd_by_name_replies_client_symbols_map_t *R
 ** @returns xcb_xkb_action_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_action_iterator_t
xcb_xkb_get_kbd_by_name_replies_client_symbols_map_acts_rtrn_acts_iterator (const xcb_xkb_get_kbd_by_name_reply_t *R  /**< */,
                                                                            const xcb_xkb_get_kbd_by_name_replies_t *S /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_set_behavior_t * xcb_xkb_get_kbd_by_name_replies_client_symbols_map_behaviors_rtrn
 ** 
 ** @param const xcb_xkb_get_kbd_by_name_replies_t *S
 ** @returns xcb_xkb_set_behavior_t *
 **
 *****************************************************************************/
 
xcb_xkb_set_behavior_t *
xcb_xkb_get_kbd_by_name_replies_client_symbols_map_behaviors_rtrn (const xcb_xkb_get_kbd_by_name_replies_t *S  /**< */);


/*****************************************************************************
 **
 ** int xcb_xkb_get_kbd_by_name_replies_client_symbols_map_behaviors_rtrn_length
 ** 
 ** @param const xcb_xkb_get_kbd_by_name_replies_client_symbols_map_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xkb_get_kbd_by_name_replies_client_symbols_map_behaviors_rtrn_length (const xcb_xkb_get_kbd_by_name_reply_t *R  /**< */,
                                                                          const xcb_xkb_get_kbd_by_name_replies_t *S /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_set_behavior_iterator_t xcb_xkb_get_kbd_by_name_replies_client_symbols_map_behaviors_rtrn_iterator
 ** 
 ** @param const xcb_xkb_get_kbd_by_name_replies_client_symbols_map_t *R
 ** @returns xcb_xkb_set_behavior_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_set_behavior_iterator_t
xcb_xkb_get_kbd_by_name_replies_client_symbols_map_behaviors_rtrn_iterator (const xcb_xkb_get_kbd_by_name_reply_t *R  /**< */,
                                                                            const xcb_xkb_get_kbd_by_name_replies_t *S /**< */);


/*****************************************************************************
 **
 ** ubyte * xcb_xkb_get_kbd_by_name_replies_client_symbols_map_vmods_rtrn
 ** 
 ** @param const xcb_xkb_get_kbd_by_name_replies_t *S
 ** @returns ubyte *
 **
 *****************************************************************************/
 
ubyte *
xcb_xkb_get_kbd_by_name_replies_client_symbols_map_vmods_rtrn (const xcb_xkb_get_kbd_by_name_replies_t *S  /**< */);


/*****************************************************************************
 **
 ** int xcb_xkb_get_kbd_by_name_replies_client_symbols_map_vmods_rtrn_length
 ** 
 ** @param const xcb_xkb_get_kbd_by_name_replies_client_symbols_map_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xkb_get_kbd_by_name_replies_client_symbols_map_vmods_rtrn_length (const xcb_xkb_get_kbd_by_name_reply_t *R  /**< */,
                                                                      const xcb_xkb_get_kbd_by_name_replies_t *S /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xkb_get_kbd_by_name_replies_client_symbols_map_vmods_rtrn_end
 ** 
 ** @param const xcb_xkb_get_kbd_by_name_replies_client_symbols_map_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_xkb_get_kbd_by_name_replies_client_symbols_map_vmods_rtrn_end (const xcb_xkb_get_kbd_by_name_reply_t *R  /**< */,
                                                                   const xcb_xkb_get_kbd_by_name_replies_t *S /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_set_explicit_t * xcb_xkb_get_kbd_by_name_replies_client_symbols_map_explicit_rtrn
 ** 
 ** @param const xcb_xkb_get_kbd_by_name_replies_t *S
 ** @returns xcb_xkb_set_explicit_t *
 **
 *****************************************************************************/
 
xcb_xkb_set_explicit_t *
xcb_xkb_get_kbd_by_name_replies_client_symbols_map_explicit_rtrn (const xcb_xkb_get_kbd_by_name_replies_t *S  /**< */);


/*****************************************************************************
 **
 ** int xcb_xkb_get_kbd_by_name_replies_client_symbols_map_explicit_rtrn_length
 ** 
 ** @param const xcb_xkb_get_kbd_by_name_replies_client_symbols_map_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xkb_get_kbd_by_name_replies_client_symbols_map_explicit_rtrn_length (const xcb_xkb_get_kbd_by_name_reply_t *R  /**< */,
                                                                         const xcb_xkb_get_kbd_by_name_replies_t *S /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_set_explicit_iterator_t xcb_xkb_get_kbd_by_name_replies_client_symbols_map_explicit_rtrn_iterator
 ** 
 ** @param const xcb_xkb_get_kbd_by_name_replies_client_symbols_map_t *R
 ** @returns xcb_xkb_set_explicit_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_set_explicit_iterator_t
xcb_xkb_get_kbd_by_name_replies_client_symbols_map_explicit_rtrn_iterator (const xcb_xkb_get_kbd_by_name_reply_t *R  /**< */,
                                                                           const xcb_xkb_get_kbd_by_name_replies_t *S /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_key_mod_map_t * xcb_xkb_get_kbd_by_name_replies_client_symbols_map_modmap_rtrn
 ** 
 ** @param const xcb_xkb_get_kbd_by_name_replies_t *S
 ** @returns xcb_xkb_key_mod_map_t *
 **
 *****************************************************************************/
 
xcb_xkb_key_mod_map_t *
xcb_xkb_get_kbd_by_name_replies_client_symbols_map_modmap_rtrn (const xcb_xkb_get_kbd_by_name_replies_t *S  /**< */);


/*****************************************************************************
 **
 ** int xcb_xkb_get_kbd_by_name_replies_client_symbols_map_modmap_rtrn_length
 ** 
 ** @param const xcb_xkb_get_kbd_by_name_replies_client_symbols_map_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xkb_get_kbd_by_name_replies_client_symbols_map_modmap_rtrn_length (const xcb_xkb_get_kbd_by_name_reply_t *R  /**< */,
                                                                       const xcb_xkb_get_kbd_by_name_replies_t *S /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_key_mod_map_iterator_t xcb_xkb_get_kbd_by_name_replies_client_symbols_map_modmap_rtrn_iterator
 ** 
 ** @param const xcb_xkb_get_kbd_by_name_replies_client_symbols_map_t *R
 ** @returns xcb_xkb_key_mod_map_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_key_mod_map_iterator_t
xcb_xkb_get_kbd_by_name_replies_client_symbols_map_modmap_rtrn_iterator (const xcb_xkb_get_kbd_by_name_reply_t *R  /**< */,
                                                                         const xcb_xkb_get_kbd_by_name_replies_t *S /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_key_v_mod_map_t * xcb_xkb_get_kbd_by_name_replies_client_symbols_map_vmodmap_rtrn
 ** 
 ** @param const xcb_xkb_get_kbd_by_name_replies_t *S
 ** @returns xcb_xkb_key_v_mod_map_t *
 **
 *****************************************************************************/
 
xcb_xkb_key_v_mod_map_t *
xcb_xkb_get_kbd_by_name_replies_client_symbols_map_vmodmap_rtrn (const xcb_xkb_get_kbd_by_name_replies_t *S  /**< */);


/*****************************************************************************
 **
 ** int xcb_xkb_get_kbd_by_name_replies_client_symbols_map_vmodmap_rtrn_length
 ** 
 ** @param const xcb_xkb_get_kbd_by_name_replies_client_symbols_map_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xkb_get_kbd_by_name_replies_client_symbols_map_vmodmap_rtrn_length (const xcb_xkb_get_kbd_by_name_reply_t *R  /**< */,
                                                                        const xcb_xkb_get_kbd_by_name_replies_t *S /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_key_v_mod_map_iterator_t xcb_xkb_get_kbd_by_name_replies_client_symbols_map_vmodmap_rtrn_iterator
 ** 
 ** @param const xcb_xkb_get_kbd_by_name_replies_client_symbols_map_t *R
 ** @returns xcb_xkb_key_v_mod_map_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_key_v_mod_map_iterator_t
xcb_xkb_get_kbd_by_name_replies_client_symbols_map_vmodmap_rtrn_iterator (const xcb_xkb_get_kbd_by_name_reply_t *R  /**< */,
                                                                          const xcb_xkb_get_kbd_by_name_replies_t *S /**< */);

extern(C) int
xcb_xkb_get_kbd_by_name_replies_client_symbols_map_serialize (void                                                       **_buffer  /**< */,
                                                              ubyte                                                        nTypes  /**< */,
                                                              ubyte                                                        nKeySyms  /**< */,
                                                              ubyte                                                        nKeyActions  /**< */,
                                                              ushort                                                       totalActions  /**< */,
                                                              ubyte                                                        totalKeyBehaviors  /**< */,
                                                              ubyte                                                        nVModMapKeys  /**< */,
                                                              ubyte                                                        totalKeyExplicit  /**< */,
                                                              ubyte                                                        totalModMapKeys  /**< */,
                                                              ubyte                                                        totalVModMapKeys  /**< */,
                                                              ushort                                                       present  /**< */,
                                                              const xcb_xkb_get_kbd_by_name_replies_client_symbols_map_t  *_aux  /**< */);

extern(C) int
xcb_xkb_get_kbd_by_name_replies_client_symbols_map_unpack (const void                                            *_buffer  /**< */,
                                                           ubyte                                                  nTypes  /**< */,
                                                           ubyte                                                  nKeySyms  /**< */,
                                                           ubyte                                                  nKeyActions  /**< */,
                                                           ushort                                                 totalActions  /**< */,
                                                           ubyte                                                  totalKeyBehaviors  /**< */,
                                                           ubyte                                                  nVModMapKeys  /**< */,
                                                           ubyte                                                  totalKeyExplicit  /**< */,
                                                           ubyte                                                  totalModMapKeys  /**< */,
                                                           ubyte                                                  totalVModMapKeys  /**< */,
                                                           ushort                                                 present  /**< */,
                                                           xcb_xkb_get_kbd_by_name_replies_client_symbols_map_t  *_aux  /**< */);

extern(C) int
xcb_xkb_get_kbd_by_name_replies_client_symbols_map_sizeof (const void  *_buffer  /**< */,
                                                           ubyte        nTypes  /**< */,
                                                           ubyte        nKeySyms  /**< */,
                                                           ubyte        nKeyActions  /**< */,
                                                           ushort       totalActions  /**< */,
                                                           ubyte        totalKeyBehaviors  /**< */,
                                                           ubyte        nVModMapKeys  /**< */,
                                                           ubyte        totalKeyExplicit  /**< */,
                                                           ubyte        totalModMapKeys  /**< */,
                                                           ubyte        totalVModMapKeys  /**< */,
                                                           ushort       present  /**< */);


/*****************************************************************************
 **
 ** int xcb_xkb_get_kbd_by_name_replies_server_symbols_map_types_rtrn_length
 ** 
 ** @param const xcb_xkb_get_kbd_by_name_replies_server_symbols_map_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xkb_get_kbd_by_name_replies_server_symbols_map_types_rtrn_length (const xcb_xkb_get_kbd_by_name_reply_t *R  /**< */,
                                                                      const xcb_xkb_get_kbd_by_name_replies_t *S /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_key_type_iterator_t xcb_xkb_get_kbd_by_name_replies_server_symbols_map_types_rtrn_iterator
 ** 
 ** @param const xcb_xkb_get_kbd_by_name_replies_server_symbols_map_t *R
 ** @returns xcb_xkb_key_type_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_key_type_iterator_t
xcb_xkb_get_kbd_by_name_replies_server_symbols_map_types_rtrn_iterator (const xcb_xkb_get_kbd_by_name_reply_t *R  /**< */,
                                                                        const xcb_xkb_get_kbd_by_name_replies_t *S /**< */);


/*****************************************************************************
 **
 ** int xcb_xkb_get_kbd_by_name_replies_server_symbols_map_syms_rtrn_length
 ** 
 ** @param const xcb_xkb_get_kbd_by_name_replies_server_symbols_map_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xkb_get_kbd_by_name_replies_server_symbols_map_syms_rtrn_length (const xcb_xkb_get_kbd_by_name_reply_t *R  /**< */,
                                                                     const xcb_xkb_get_kbd_by_name_replies_t *S /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_key_sym_map_iterator_t xcb_xkb_get_kbd_by_name_replies_server_symbols_map_syms_rtrn_iterator
 ** 
 ** @param const xcb_xkb_get_kbd_by_name_replies_server_symbols_map_t *R
 ** @returns xcb_xkb_key_sym_map_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_key_sym_map_iterator_t
xcb_xkb_get_kbd_by_name_replies_server_symbols_map_syms_rtrn_iterator (const xcb_xkb_get_kbd_by_name_reply_t *R  /**< */,
                                                                       const xcb_xkb_get_kbd_by_name_replies_t *S /**< */);


/*****************************************************************************
 **
 ** ubyte * xcb_xkb_get_kbd_by_name_replies_server_symbols_map_acts_rtrn_count
 ** 
 ** @param const xcb_xkb_get_kbd_by_name_replies_t *S
 ** @returns ubyte *
 **
 *****************************************************************************/
 
ubyte *
xcb_xkb_get_kbd_by_name_replies_server_symbols_map_acts_rtrn_count (const xcb_xkb_get_kbd_by_name_replies_t *S  /**< */);


/*****************************************************************************
 **
 ** int xcb_xkb_get_kbd_by_name_replies_server_symbols_map_acts_rtrn_count_length
 ** 
 ** @param const xcb_xkb_get_kbd_by_name_replies_server_symbols_map_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xkb_get_kbd_by_name_replies_server_symbols_map_acts_rtrn_count_length (const xcb_xkb_get_kbd_by_name_reply_t *R  /**< */,
                                                                           const xcb_xkb_get_kbd_by_name_replies_t *S /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xkb_get_kbd_by_name_replies_server_symbols_map_acts_rtrn_count_end
 ** 
 ** @param const xcb_xkb_get_kbd_by_name_replies_server_symbols_map_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_xkb_get_kbd_by_name_replies_server_symbols_map_acts_rtrn_count_end (const xcb_xkb_get_kbd_by_name_reply_t *R  /**< */,
                                                                        const xcb_xkb_get_kbd_by_name_replies_t *S /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_action_t * xcb_xkb_get_kbd_by_name_replies_server_symbols_map_acts_rtrn_acts
 ** 
 ** @param const xcb_xkb_get_kbd_by_name_replies_t *S
 ** @returns xcb_xkb_action_t *
 **
 *****************************************************************************/
 
xcb_xkb_action_t *
xcb_xkb_get_kbd_by_name_replies_server_symbols_map_acts_rtrn_acts (const xcb_xkb_get_kbd_by_name_replies_t *S  /**< */);


/*****************************************************************************
 **
 ** int xcb_xkb_get_kbd_by_name_replies_server_symbols_map_acts_rtrn_acts_length
 ** 
 ** @param const xcb_xkb_get_kbd_by_name_replies_server_symbols_map_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xkb_get_kbd_by_name_replies_server_symbols_map_acts_rtrn_acts_length (const xcb_xkb_get_kbd_by_name_reply_t *R  /**< */,
                                                                          const xcb_xkb_get_kbd_by_name_replies_t *S /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_action_iterator_t xcb_xkb_get_kbd_by_name_replies_server_symbols_map_acts_rtrn_acts_iterator
 ** 
 ** @param const xcb_xkb_get_kbd_by_name_replies_server_symbols_map_t *R
 ** @returns xcb_xkb_action_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_action_iterator_t
xcb_xkb_get_kbd_by_name_replies_server_symbols_map_acts_rtrn_acts_iterator (const xcb_xkb_get_kbd_by_name_reply_t *R  /**< */,
                                                                            const xcb_xkb_get_kbd_by_name_replies_t *S /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_set_behavior_t * xcb_xkb_get_kbd_by_name_replies_server_symbols_map_behaviors_rtrn
 ** 
 ** @param const xcb_xkb_get_kbd_by_name_replies_t *S
 ** @returns xcb_xkb_set_behavior_t *
 **
 *****************************************************************************/
 
xcb_xkb_set_behavior_t *
xcb_xkb_get_kbd_by_name_replies_server_symbols_map_behaviors_rtrn (const xcb_xkb_get_kbd_by_name_replies_t *S  /**< */);


/*****************************************************************************
 **
 ** int xcb_xkb_get_kbd_by_name_replies_server_symbols_map_behaviors_rtrn_length
 ** 
 ** @param const xcb_xkb_get_kbd_by_name_replies_server_symbols_map_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xkb_get_kbd_by_name_replies_server_symbols_map_behaviors_rtrn_length (const xcb_xkb_get_kbd_by_name_reply_t *R  /**< */,
                                                                          const xcb_xkb_get_kbd_by_name_replies_t *S /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_set_behavior_iterator_t xcb_xkb_get_kbd_by_name_replies_server_symbols_map_behaviors_rtrn_iterator
 ** 
 ** @param const xcb_xkb_get_kbd_by_name_replies_server_symbols_map_t *R
 ** @returns xcb_xkb_set_behavior_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_set_behavior_iterator_t
xcb_xkb_get_kbd_by_name_replies_server_symbols_map_behaviors_rtrn_iterator (const xcb_xkb_get_kbd_by_name_reply_t *R  /**< */,
                                                                            const xcb_xkb_get_kbd_by_name_replies_t *S /**< */);


/*****************************************************************************
 **
 ** ubyte * xcb_xkb_get_kbd_by_name_replies_server_symbols_map_vmods_rtrn
 ** 
 ** @param const xcb_xkb_get_kbd_by_name_replies_t *S
 ** @returns ubyte *
 **
 *****************************************************************************/
 
ubyte *
xcb_xkb_get_kbd_by_name_replies_server_symbols_map_vmods_rtrn (const xcb_xkb_get_kbd_by_name_replies_t *S  /**< */);


/*****************************************************************************
 **
 ** int xcb_xkb_get_kbd_by_name_replies_server_symbols_map_vmods_rtrn_length
 ** 
 ** @param const xcb_xkb_get_kbd_by_name_replies_server_symbols_map_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xkb_get_kbd_by_name_replies_server_symbols_map_vmods_rtrn_length (const xcb_xkb_get_kbd_by_name_reply_t *R  /**< */,
                                                                      const xcb_xkb_get_kbd_by_name_replies_t *S /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xkb_get_kbd_by_name_replies_server_symbols_map_vmods_rtrn_end
 ** 
 ** @param const xcb_xkb_get_kbd_by_name_replies_server_symbols_map_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_xkb_get_kbd_by_name_replies_server_symbols_map_vmods_rtrn_end (const xcb_xkb_get_kbd_by_name_reply_t *R  /**< */,
                                                                   const xcb_xkb_get_kbd_by_name_replies_t *S /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_set_explicit_t * xcb_xkb_get_kbd_by_name_replies_server_symbols_map_explicit_rtrn
 ** 
 ** @param const xcb_xkb_get_kbd_by_name_replies_t *S
 ** @returns xcb_xkb_set_explicit_t *
 **
 *****************************************************************************/
 
xcb_xkb_set_explicit_t *
xcb_xkb_get_kbd_by_name_replies_server_symbols_map_explicit_rtrn (const xcb_xkb_get_kbd_by_name_replies_t *S  /**< */);


/*****************************************************************************
 **
 ** int xcb_xkb_get_kbd_by_name_replies_server_symbols_map_explicit_rtrn_length
 ** 
 ** @param const xcb_xkb_get_kbd_by_name_replies_server_symbols_map_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xkb_get_kbd_by_name_replies_server_symbols_map_explicit_rtrn_length (const xcb_xkb_get_kbd_by_name_reply_t *R  /**< */,
                                                                         const xcb_xkb_get_kbd_by_name_replies_t *S /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_set_explicit_iterator_t xcb_xkb_get_kbd_by_name_replies_server_symbols_map_explicit_rtrn_iterator
 ** 
 ** @param const xcb_xkb_get_kbd_by_name_replies_server_symbols_map_t *R
 ** @returns xcb_xkb_set_explicit_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_set_explicit_iterator_t
xcb_xkb_get_kbd_by_name_replies_server_symbols_map_explicit_rtrn_iterator (const xcb_xkb_get_kbd_by_name_reply_t *R  /**< */,
                                                                           const xcb_xkb_get_kbd_by_name_replies_t *S /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_key_mod_map_t * xcb_xkb_get_kbd_by_name_replies_server_symbols_map_modmap_rtrn
 ** 
 ** @param const xcb_xkb_get_kbd_by_name_replies_t *S
 ** @returns xcb_xkb_key_mod_map_t *
 **
 *****************************************************************************/
 
xcb_xkb_key_mod_map_t *
xcb_xkb_get_kbd_by_name_replies_server_symbols_map_modmap_rtrn (const xcb_xkb_get_kbd_by_name_replies_t *S  /**< */);


/*****************************************************************************
 **
 ** int xcb_xkb_get_kbd_by_name_replies_server_symbols_map_modmap_rtrn_length
 ** 
 ** @param const xcb_xkb_get_kbd_by_name_replies_server_symbols_map_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xkb_get_kbd_by_name_replies_server_symbols_map_modmap_rtrn_length (const xcb_xkb_get_kbd_by_name_reply_t *R  /**< */,
                                                                       const xcb_xkb_get_kbd_by_name_replies_t *S /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_key_mod_map_iterator_t xcb_xkb_get_kbd_by_name_replies_server_symbols_map_modmap_rtrn_iterator
 ** 
 ** @param const xcb_xkb_get_kbd_by_name_replies_server_symbols_map_t *R
 ** @returns xcb_xkb_key_mod_map_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_key_mod_map_iterator_t
xcb_xkb_get_kbd_by_name_replies_server_symbols_map_modmap_rtrn_iterator (const xcb_xkb_get_kbd_by_name_reply_t *R  /**< */,
                                                                         const xcb_xkb_get_kbd_by_name_replies_t *S /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_key_v_mod_map_t * xcb_xkb_get_kbd_by_name_replies_server_symbols_map_vmodmap_rtrn
 ** 
 ** @param const xcb_xkb_get_kbd_by_name_replies_t *S
 ** @returns xcb_xkb_key_v_mod_map_t *
 **
 *****************************************************************************/
 
xcb_xkb_key_v_mod_map_t *
xcb_xkb_get_kbd_by_name_replies_server_symbols_map_vmodmap_rtrn (const xcb_xkb_get_kbd_by_name_replies_t *S  /**< */);


/*****************************************************************************
 **
 ** int xcb_xkb_get_kbd_by_name_replies_server_symbols_map_vmodmap_rtrn_length
 ** 
 ** @param const xcb_xkb_get_kbd_by_name_replies_server_symbols_map_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xkb_get_kbd_by_name_replies_server_symbols_map_vmodmap_rtrn_length (const xcb_xkb_get_kbd_by_name_reply_t *R  /**< */,
                                                                        const xcb_xkb_get_kbd_by_name_replies_t *S /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_key_v_mod_map_iterator_t xcb_xkb_get_kbd_by_name_replies_server_symbols_map_vmodmap_rtrn_iterator
 ** 
 ** @param const xcb_xkb_get_kbd_by_name_replies_server_symbols_map_t *R
 ** @returns xcb_xkb_key_v_mod_map_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_key_v_mod_map_iterator_t
xcb_xkb_get_kbd_by_name_replies_server_symbols_map_vmodmap_rtrn_iterator (const xcb_xkb_get_kbd_by_name_reply_t *R  /**< */,
                                                                          const xcb_xkb_get_kbd_by_name_replies_t *S /**< */);

extern(C) int
xcb_xkb_get_kbd_by_name_replies_server_symbols_map_serialize (void                                                       **_buffer  /**< */,
                                                              ubyte                                                        nTypes  /**< */,
                                                              ubyte                                                        nKeySyms  /**< */,
                                                              ubyte                                                        nKeyActions  /**< */,
                                                              ushort                                                       totalActions  /**< */,
                                                              ubyte                                                        totalKeyBehaviors  /**< */,
                                                              ubyte                                                        nVModMapKeys  /**< */,
                                                              ubyte                                                        totalKeyExplicit  /**< */,
                                                              ubyte                                                        totalModMapKeys  /**< */,
                                                              ubyte                                                        totalVModMapKeys  /**< */,
                                                              ushort                                                       present  /**< */,
                                                              const xcb_xkb_get_kbd_by_name_replies_server_symbols_map_t  *_aux  /**< */);

extern(C) int
xcb_xkb_get_kbd_by_name_replies_server_symbols_map_unpack (const void                                            *_buffer  /**< */,
                                                           ubyte                                                  nTypes  /**< */,
                                                           ubyte                                                  nKeySyms  /**< */,
                                                           ubyte                                                  nKeyActions  /**< */,
                                                           ushort                                                 totalActions  /**< */,
                                                           ubyte                                                  totalKeyBehaviors  /**< */,
                                                           ubyte                                                  nVModMapKeys  /**< */,
                                                           ubyte                                                  totalKeyExplicit  /**< */,
                                                           ubyte                                                  totalModMapKeys  /**< */,
                                                           ubyte                                                  totalVModMapKeys  /**< */,
                                                           ushort                                                 present  /**< */,
                                                           xcb_xkb_get_kbd_by_name_replies_server_symbols_map_t  *_aux  /**< */);

extern(C) int
xcb_xkb_get_kbd_by_name_replies_server_symbols_map_sizeof (const void  *_buffer  /**< */,
                                                           ubyte        nTypes  /**< */,
                                                           ubyte        nKeySyms  /**< */,
                                                           ubyte        nKeyActions  /**< */,
                                                           ushort       totalActions  /**< */,
                                                           ubyte        totalKeyBehaviors  /**< */,
                                                           ubyte        nVModMapKeys  /**< */,
                                                           ubyte        totalKeyExplicit  /**< */,
                                                           ubyte        totalModMapKeys  /**< */,
                                                           ubyte        totalVModMapKeys  /**< */,
                                                           ushort       present  /**< */);


/*****************************************************************************
 **
 ** xcb_atom_t * xcb_xkb_get_kbd_by_name_replies_key_names_value_list_type_names
 ** 
 ** @param const xcb_xkb_get_kbd_by_name_replies_t *S
 ** @returns xcb_atom_t *
 **
 *****************************************************************************/
 
xcb_atom_t *
xcb_xkb_get_kbd_by_name_replies_key_names_value_list_type_names (const xcb_xkb_get_kbd_by_name_replies_t *S  /**< */);


/*****************************************************************************
 **
 ** int xcb_xkb_get_kbd_by_name_replies_key_names_value_list_type_names_length
 ** 
 ** @param const xcb_xkb_get_kbd_by_name_replies_key_names_value_list_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xkb_get_kbd_by_name_replies_key_names_value_list_type_names_length (const xcb_xkb_get_kbd_by_name_reply_t *R  /**< */,
                                                                        const xcb_xkb_get_kbd_by_name_replies_t *S /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xkb_get_kbd_by_name_replies_key_names_value_list_type_names_end
 ** 
 ** @param const xcb_xkb_get_kbd_by_name_replies_key_names_value_list_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_xkb_get_kbd_by_name_replies_key_names_value_list_type_names_end (const xcb_xkb_get_kbd_by_name_reply_t *R  /**< */,
                                                                     const xcb_xkb_get_kbd_by_name_replies_t *S /**< */);


/*****************************************************************************
 **
 ** ubyte * xcb_xkb_get_kbd_by_name_replies_key_names_value_list_n_levels_per_type
 ** 
 ** @param const xcb_xkb_get_kbd_by_name_replies_t *S
 ** @returns ubyte *
 **
 *****************************************************************************/
 
ubyte *
xcb_xkb_get_kbd_by_name_replies_key_names_value_list_n_levels_per_type (const xcb_xkb_get_kbd_by_name_replies_t *S  /**< */);


/*****************************************************************************
 **
 ** int xcb_xkb_get_kbd_by_name_replies_key_names_value_list_n_levels_per_type_length
 ** 
 ** @param const xcb_xkb_get_kbd_by_name_replies_key_names_value_list_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xkb_get_kbd_by_name_replies_key_names_value_list_n_levels_per_type_length (const xcb_xkb_get_kbd_by_name_reply_t *R  /**< */,
                                                                               const xcb_xkb_get_kbd_by_name_replies_t *S /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xkb_get_kbd_by_name_replies_key_names_value_list_n_levels_per_type_end
 ** 
 ** @param const xcb_xkb_get_kbd_by_name_replies_key_names_value_list_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_xkb_get_kbd_by_name_replies_key_names_value_list_n_levels_per_type_end (const xcb_xkb_get_kbd_by_name_reply_t *R  /**< */,
                                                                            const xcb_xkb_get_kbd_by_name_replies_t *S /**< */);


/*****************************************************************************
 **
 ** xcb_atom_t * xcb_xkb_get_kbd_by_name_replies_key_names_value_list_kt_level_names
 ** 
 ** @param const xcb_xkb_get_kbd_by_name_replies_t *S
 ** @returns xcb_atom_t *
 **
 *****************************************************************************/
 
xcb_atom_t *
xcb_xkb_get_kbd_by_name_replies_key_names_value_list_kt_level_names (const xcb_xkb_get_kbd_by_name_replies_t *S  /**< */);


/*****************************************************************************
 **
 ** int xcb_xkb_get_kbd_by_name_replies_key_names_value_list_kt_level_names_length
 ** 
 ** @param const xcb_xkb_get_kbd_by_name_replies_key_names_value_list_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xkb_get_kbd_by_name_replies_key_names_value_list_kt_level_names_length (const xcb_xkb_get_kbd_by_name_reply_t *R  /**< */,
                                                                            const xcb_xkb_get_kbd_by_name_replies_t *S /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xkb_get_kbd_by_name_replies_key_names_value_list_kt_level_names_end
 ** 
 ** @param const xcb_xkb_get_kbd_by_name_replies_key_names_value_list_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_xkb_get_kbd_by_name_replies_key_names_value_list_kt_level_names_end (const xcb_xkb_get_kbd_by_name_reply_t *R  /**< */,
                                                                         const xcb_xkb_get_kbd_by_name_replies_t *S /**< */);


/*****************************************************************************
 **
 ** xcb_atom_t * xcb_xkb_get_kbd_by_name_replies_key_names_value_list_indicator_names
 ** 
 ** @param const xcb_xkb_get_kbd_by_name_replies_t *S
 ** @returns xcb_atom_t *
 **
 *****************************************************************************/
 
xcb_atom_t *
xcb_xkb_get_kbd_by_name_replies_key_names_value_list_indicator_names (const xcb_xkb_get_kbd_by_name_replies_t *S  /**< */);


/*****************************************************************************
 **
 ** int xcb_xkb_get_kbd_by_name_replies_key_names_value_list_indicator_names_length
 ** 
 ** @param const xcb_xkb_get_kbd_by_name_replies_key_names_value_list_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xkb_get_kbd_by_name_replies_key_names_value_list_indicator_names_length (const xcb_xkb_get_kbd_by_name_reply_t *R  /**< */,
                                                                             const xcb_xkb_get_kbd_by_name_replies_t *S /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xkb_get_kbd_by_name_replies_key_names_value_list_indicator_names_end
 ** 
 ** @param const xcb_xkb_get_kbd_by_name_replies_key_names_value_list_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_xkb_get_kbd_by_name_replies_key_names_value_list_indicator_names_end (const xcb_xkb_get_kbd_by_name_reply_t *R  /**< */,
                                                                          const xcb_xkb_get_kbd_by_name_replies_t *S /**< */);


/*****************************************************************************
 **
 ** xcb_atom_t * xcb_xkb_get_kbd_by_name_replies_key_names_value_list_virtual_mod_names
 ** 
 ** @param const xcb_xkb_get_kbd_by_name_replies_t *S
 ** @returns xcb_atom_t *
 **
 *****************************************************************************/
 
xcb_atom_t *
xcb_xkb_get_kbd_by_name_replies_key_names_value_list_virtual_mod_names (const xcb_xkb_get_kbd_by_name_replies_t *S  /**< */);


/*****************************************************************************
 **
 ** int xcb_xkb_get_kbd_by_name_replies_key_names_value_list_virtual_mod_names_length
 ** 
 ** @param const xcb_xkb_get_kbd_by_name_replies_key_names_value_list_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xkb_get_kbd_by_name_replies_key_names_value_list_virtual_mod_names_length (const xcb_xkb_get_kbd_by_name_reply_t *R  /**< */,
                                                                               const xcb_xkb_get_kbd_by_name_replies_t *S /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xkb_get_kbd_by_name_replies_key_names_value_list_virtual_mod_names_end
 ** 
 ** @param const xcb_xkb_get_kbd_by_name_replies_key_names_value_list_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_xkb_get_kbd_by_name_replies_key_names_value_list_virtual_mod_names_end (const xcb_xkb_get_kbd_by_name_reply_t *R  /**< */,
                                                                            const xcb_xkb_get_kbd_by_name_replies_t *S /**< */);


/*****************************************************************************
 **
 ** xcb_atom_t * xcb_xkb_get_kbd_by_name_replies_key_names_value_list_groups
 ** 
 ** @param const xcb_xkb_get_kbd_by_name_replies_t *S
 ** @returns xcb_atom_t *
 **
 *****************************************************************************/
 
xcb_atom_t *
xcb_xkb_get_kbd_by_name_replies_key_names_value_list_groups (const xcb_xkb_get_kbd_by_name_replies_t *S  /**< */);


/*****************************************************************************
 **
 ** int xcb_xkb_get_kbd_by_name_replies_key_names_value_list_groups_length
 ** 
 ** @param const xcb_xkb_get_kbd_by_name_replies_key_names_value_list_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xkb_get_kbd_by_name_replies_key_names_value_list_groups_length (const xcb_xkb_get_kbd_by_name_reply_t *R  /**< */,
                                                                    const xcb_xkb_get_kbd_by_name_replies_t *S /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xkb_get_kbd_by_name_replies_key_names_value_list_groups_end
 ** 
 ** @param const xcb_xkb_get_kbd_by_name_replies_key_names_value_list_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_xkb_get_kbd_by_name_replies_key_names_value_list_groups_end (const xcb_xkb_get_kbd_by_name_reply_t *R  /**< */,
                                                                 const xcb_xkb_get_kbd_by_name_replies_t *S /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_key_name_t * xcb_xkb_get_kbd_by_name_replies_key_names_value_list_key_names
 ** 
 ** @param const xcb_xkb_get_kbd_by_name_replies_t *S
 ** @returns xcb_xkb_key_name_t *
 **
 *****************************************************************************/
 
xcb_xkb_key_name_t *
xcb_xkb_get_kbd_by_name_replies_key_names_value_list_key_names (const xcb_xkb_get_kbd_by_name_replies_t *S  /**< */);


/*****************************************************************************
 **
 ** int xcb_xkb_get_kbd_by_name_replies_key_names_value_list_key_names_length
 ** 
 ** @param const xcb_xkb_get_kbd_by_name_replies_key_names_value_list_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xkb_get_kbd_by_name_replies_key_names_value_list_key_names_length (const xcb_xkb_get_kbd_by_name_reply_t *R  /**< */,
                                                                       const xcb_xkb_get_kbd_by_name_replies_t *S /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_key_name_iterator_t xcb_xkb_get_kbd_by_name_replies_key_names_value_list_key_names_iterator
 ** 
 ** @param const xcb_xkb_get_kbd_by_name_replies_key_names_value_list_t *R
 ** @returns xcb_xkb_key_name_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_key_name_iterator_t
xcb_xkb_get_kbd_by_name_replies_key_names_value_list_key_names_iterator (const xcb_xkb_get_kbd_by_name_reply_t *R  /**< */,
                                                                         const xcb_xkb_get_kbd_by_name_replies_t *S /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_key_alias_t * xcb_xkb_get_kbd_by_name_replies_key_names_value_list_key_aliases
 ** 
 ** @param const xcb_xkb_get_kbd_by_name_replies_t *S
 ** @returns xcb_xkb_key_alias_t *
 **
 *****************************************************************************/
 
xcb_xkb_key_alias_t *
xcb_xkb_get_kbd_by_name_replies_key_names_value_list_key_aliases (const xcb_xkb_get_kbd_by_name_replies_t *S  /**< */);


/*****************************************************************************
 **
 ** int xcb_xkb_get_kbd_by_name_replies_key_names_value_list_key_aliases_length
 ** 
 ** @param const xcb_xkb_get_kbd_by_name_replies_key_names_value_list_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xkb_get_kbd_by_name_replies_key_names_value_list_key_aliases_length (const xcb_xkb_get_kbd_by_name_reply_t *R  /**< */,
                                                                         const xcb_xkb_get_kbd_by_name_replies_t *S /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_key_alias_iterator_t xcb_xkb_get_kbd_by_name_replies_key_names_value_list_key_aliases_iterator
 ** 
 ** @param const xcb_xkb_get_kbd_by_name_replies_key_names_value_list_t *R
 ** @returns xcb_xkb_key_alias_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_key_alias_iterator_t
xcb_xkb_get_kbd_by_name_replies_key_names_value_list_key_aliases_iterator (const xcb_xkb_get_kbd_by_name_reply_t *R  /**< */,
                                                                           const xcb_xkb_get_kbd_by_name_replies_t *S /**< */);


/*****************************************************************************
 **
 ** xcb_atom_t * xcb_xkb_get_kbd_by_name_replies_key_names_value_list_radio_group_names
 ** 
 ** @param const xcb_xkb_get_kbd_by_name_replies_t *S
 ** @returns xcb_atom_t *
 **
 *****************************************************************************/
 
xcb_atom_t *
xcb_xkb_get_kbd_by_name_replies_key_names_value_list_radio_group_names (const xcb_xkb_get_kbd_by_name_replies_t *S  /**< */);


/*****************************************************************************
 **
 ** int xcb_xkb_get_kbd_by_name_replies_key_names_value_list_radio_group_names_length
 ** 
 ** @param const xcb_xkb_get_kbd_by_name_replies_key_names_value_list_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xkb_get_kbd_by_name_replies_key_names_value_list_radio_group_names_length (const xcb_xkb_get_kbd_by_name_reply_t *R  /**< */,
                                                                               const xcb_xkb_get_kbd_by_name_replies_t *S /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xkb_get_kbd_by_name_replies_key_names_value_list_radio_group_names_end
 ** 
 ** @param const xcb_xkb_get_kbd_by_name_replies_key_names_value_list_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_xkb_get_kbd_by_name_replies_key_names_value_list_radio_group_names_end (const xcb_xkb_get_kbd_by_name_reply_t *R  /**< */,
                                                                            const xcb_xkb_get_kbd_by_name_replies_t *S /**< */);

extern(C) int
xcb_xkb_get_kbd_by_name_replies_key_names_value_list_serialize (void                                                         **_buffer  /**< */,
                                                                ubyte                                                          nTypes  /**< */,
                                                                ushort                                                         nKTLevels  /**< */,
                                                                uint                                                           indicators  /**< */,
                                                                ushort                                                         virtualMods  /**< */,
                                                                ubyte                                                          groupNames  /**< */,
                                                                ubyte                                                          nKeys  /**< */,
                                                                ubyte                                                          nKeyAliases  /**< */,
                                                                ubyte                                                          nRadioGroups  /**< */,
                                                                uint                                                           which  /**< */,
                                                                const xcb_xkb_get_kbd_by_name_replies_key_names_value_list_t  *_aux  /**< */);

extern(C) int
xcb_xkb_get_kbd_by_name_replies_key_names_value_list_unpack (const void                                              *_buffer  /**< */,
                                                             ubyte                                                    nTypes  /**< */,
                                                             ushort                                                   nKTLevels  /**< */,
                                                             uint                                                     indicators  /**< */,
                                                             ushort                                                   virtualMods  /**< */,
                                                             ubyte                                                    groupNames  /**< */,
                                                             ubyte                                                    nKeys  /**< */,
                                                             ubyte                                                    nKeyAliases  /**< */,
                                                             ubyte                                                    nRadioGroups  /**< */,
                                                             uint                                                     which  /**< */,
                                                             xcb_xkb_get_kbd_by_name_replies_key_names_value_list_t  *_aux  /**< */);

extern(C) int
xcb_xkb_get_kbd_by_name_replies_key_names_value_list_sizeof (const void  *_buffer  /**< */,
                                                             ubyte        nTypes  /**< */,
                                                             ushort       nKTLevels  /**< */,
                                                             uint         indicators  /**< */,
                                                             ushort       virtualMods  /**< */,
                                                             ubyte        groupNames  /**< */,
                                                             ubyte        nKeys  /**< */,
                                                             ubyte        nKeyAliases  /**< */,
                                                             ubyte        nRadioGroups  /**< */,
                                                             uint         which  /**< */);


/*****************************************************************************
 **
 ** xcb_atom_t * xcb_xkb_get_kbd_by_name_replies_other_names_value_list_type_names
 ** 
 ** @param const xcb_xkb_get_kbd_by_name_replies_t *S
 ** @returns xcb_atom_t *
 **
 *****************************************************************************/
 
xcb_atom_t *
xcb_xkb_get_kbd_by_name_replies_other_names_value_list_type_names (const xcb_xkb_get_kbd_by_name_replies_t *S  /**< */);


/*****************************************************************************
 **
 ** int xcb_xkb_get_kbd_by_name_replies_other_names_value_list_type_names_length
 ** 
 ** @param const xcb_xkb_get_kbd_by_name_replies_other_names_value_list_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xkb_get_kbd_by_name_replies_other_names_value_list_type_names_length (const xcb_xkb_get_kbd_by_name_reply_t *R  /**< */,
                                                                          const xcb_xkb_get_kbd_by_name_replies_t *S /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xkb_get_kbd_by_name_replies_other_names_value_list_type_names_end
 ** 
 ** @param const xcb_xkb_get_kbd_by_name_replies_other_names_value_list_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_xkb_get_kbd_by_name_replies_other_names_value_list_type_names_end (const xcb_xkb_get_kbd_by_name_reply_t *R  /**< */,
                                                                       const xcb_xkb_get_kbd_by_name_replies_t *S /**< */);


/*****************************************************************************
 **
 ** ubyte * xcb_xkb_get_kbd_by_name_replies_other_names_value_list_n_levels_per_type
 ** 
 ** @param const xcb_xkb_get_kbd_by_name_replies_t *S
 ** @returns ubyte *
 **
 *****************************************************************************/
 
ubyte *
xcb_xkb_get_kbd_by_name_replies_other_names_value_list_n_levels_per_type (const xcb_xkb_get_kbd_by_name_replies_t *S  /**< */);


/*****************************************************************************
 **
 ** int xcb_xkb_get_kbd_by_name_replies_other_names_value_list_n_levels_per_type_length
 ** 
 ** @param const xcb_xkb_get_kbd_by_name_replies_other_names_value_list_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xkb_get_kbd_by_name_replies_other_names_value_list_n_levels_per_type_length (const xcb_xkb_get_kbd_by_name_reply_t *R  /**< */,
                                                                                 const xcb_xkb_get_kbd_by_name_replies_t *S /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xkb_get_kbd_by_name_replies_other_names_value_list_n_levels_per_type_end
 ** 
 ** @param const xcb_xkb_get_kbd_by_name_replies_other_names_value_list_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_xkb_get_kbd_by_name_replies_other_names_value_list_n_levels_per_type_end (const xcb_xkb_get_kbd_by_name_reply_t *R  /**< */,
                                                                              const xcb_xkb_get_kbd_by_name_replies_t *S /**< */);


/*****************************************************************************
 **
 ** xcb_atom_t * xcb_xkb_get_kbd_by_name_replies_other_names_value_list_kt_level_names
 ** 
 ** @param const xcb_xkb_get_kbd_by_name_replies_t *S
 ** @returns xcb_atom_t *
 **
 *****************************************************************************/
 
xcb_atom_t *
xcb_xkb_get_kbd_by_name_replies_other_names_value_list_kt_level_names (const xcb_xkb_get_kbd_by_name_replies_t *S  /**< */);


/*****************************************************************************
 **
 ** int xcb_xkb_get_kbd_by_name_replies_other_names_value_list_kt_level_names_length
 ** 
 ** @param const xcb_xkb_get_kbd_by_name_replies_other_names_value_list_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xkb_get_kbd_by_name_replies_other_names_value_list_kt_level_names_length (const xcb_xkb_get_kbd_by_name_reply_t *R  /**< */,
                                                                              const xcb_xkb_get_kbd_by_name_replies_t *S /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xkb_get_kbd_by_name_replies_other_names_value_list_kt_level_names_end
 ** 
 ** @param const xcb_xkb_get_kbd_by_name_replies_other_names_value_list_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_xkb_get_kbd_by_name_replies_other_names_value_list_kt_level_names_end (const xcb_xkb_get_kbd_by_name_reply_t *R  /**< */,
                                                                           const xcb_xkb_get_kbd_by_name_replies_t *S /**< */);


/*****************************************************************************
 **
 ** xcb_atom_t * xcb_xkb_get_kbd_by_name_replies_other_names_value_list_indicator_names
 ** 
 ** @param const xcb_xkb_get_kbd_by_name_replies_t *S
 ** @returns xcb_atom_t *
 **
 *****************************************************************************/
 
xcb_atom_t *
xcb_xkb_get_kbd_by_name_replies_other_names_value_list_indicator_names (const xcb_xkb_get_kbd_by_name_replies_t *S  /**< */);


/*****************************************************************************
 **
 ** int xcb_xkb_get_kbd_by_name_replies_other_names_value_list_indicator_names_length
 ** 
 ** @param const xcb_xkb_get_kbd_by_name_replies_other_names_value_list_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xkb_get_kbd_by_name_replies_other_names_value_list_indicator_names_length (const xcb_xkb_get_kbd_by_name_reply_t *R  /**< */,
                                                                               const xcb_xkb_get_kbd_by_name_replies_t *S /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xkb_get_kbd_by_name_replies_other_names_value_list_indicator_names_end
 ** 
 ** @param const xcb_xkb_get_kbd_by_name_replies_other_names_value_list_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_xkb_get_kbd_by_name_replies_other_names_value_list_indicator_names_end (const xcb_xkb_get_kbd_by_name_reply_t *R  /**< */,
                                                                            const xcb_xkb_get_kbd_by_name_replies_t *S /**< */);


/*****************************************************************************
 **
 ** xcb_atom_t * xcb_xkb_get_kbd_by_name_replies_other_names_value_list_virtual_mod_names
 ** 
 ** @param const xcb_xkb_get_kbd_by_name_replies_t *S
 ** @returns xcb_atom_t *
 **
 *****************************************************************************/
 
xcb_atom_t *
xcb_xkb_get_kbd_by_name_replies_other_names_value_list_virtual_mod_names (const xcb_xkb_get_kbd_by_name_replies_t *S  /**< */);


/*****************************************************************************
 **
 ** int xcb_xkb_get_kbd_by_name_replies_other_names_value_list_virtual_mod_names_length
 ** 
 ** @param const xcb_xkb_get_kbd_by_name_replies_other_names_value_list_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xkb_get_kbd_by_name_replies_other_names_value_list_virtual_mod_names_length (const xcb_xkb_get_kbd_by_name_reply_t *R  /**< */,
                                                                                 const xcb_xkb_get_kbd_by_name_replies_t *S /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xkb_get_kbd_by_name_replies_other_names_value_list_virtual_mod_names_end
 ** 
 ** @param const xcb_xkb_get_kbd_by_name_replies_other_names_value_list_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_xkb_get_kbd_by_name_replies_other_names_value_list_virtual_mod_names_end (const xcb_xkb_get_kbd_by_name_reply_t *R  /**< */,
                                                                              const xcb_xkb_get_kbd_by_name_replies_t *S /**< */);


/*****************************************************************************
 **
 ** xcb_atom_t * xcb_xkb_get_kbd_by_name_replies_other_names_value_list_groups
 ** 
 ** @param const xcb_xkb_get_kbd_by_name_replies_t *S
 ** @returns xcb_atom_t *
 **
 *****************************************************************************/
 
xcb_atom_t *
xcb_xkb_get_kbd_by_name_replies_other_names_value_list_groups (const xcb_xkb_get_kbd_by_name_replies_t *S  /**< */);


/*****************************************************************************
 **
 ** int xcb_xkb_get_kbd_by_name_replies_other_names_value_list_groups_length
 ** 
 ** @param const xcb_xkb_get_kbd_by_name_replies_other_names_value_list_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xkb_get_kbd_by_name_replies_other_names_value_list_groups_length (const xcb_xkb_get_kbd_by_name_reply_t *R  /**< */,
                                                                      const xcb_xkb_get_kbd_by_name_replies_t *S /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xkb_get_kbd_by_name_replies_other_names_value_list_groups_end
 ** 
 ** @param const xcb_xkb_get_kbd_by_name_replies_other_names_value_list_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_xkb_get_kbd_by_name_replies_other_names_value_list_groups_end (const xcb_xkb_get_kbd_by_name_reply_t *R  /**< */,
                                                                   const xcb_xkb_get_kbd_by_name_replies_t *S /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_key_name_t * xcb_xkb_get_kbd_by_name_replies_other_names_value_list_key_names
 ** 
 ** @param const xcb_xkb_get_kbd_by_name_replies_t *S
 ** @returns xcb_xkb_key_name_t *
 **
 *****************************************************************************/
 
xcb_xkb_key_name_t *
xcb_xkb_get_kbd_by_name_replies_other_names_value_list_key_names (const xcb_xkb_get_kbd_by_name_replies_t *S  /**< */);


/*****************************************************************************
 **
 ** int xcb_xkb_get_kbd_by_name_replies_other_names_value_list_key_names_length
 ** 
 ** @param const xcb_xkb_get_kbd_by_name_replies_other_names_value_list_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xkb_get_kbd_by_name_replies_other_names_value_list_key_names_length (const xcb_xkb_get_kbd_by_name_reply_t *R  /**< */,
                                                                         const xcb_xkb_get_kbd_by_name_replies_t *S /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_key_name_iterator_t xcb_xkb_get_kbd_by_name_replies_other_names_value_list_key_names_iterator
 ** 
 ** @param const xcb_xkb_get_kbd_by_name_replies_other_names_value_list_t *R
 ** @returns xcb_xkb_key_name_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_key_name_iterator_t
xcb_xkb_get_kbd_by_name_replies_other_names_value_list_key_names_iterator (const xcb_xkb_get_kbd_by_name_reply_t *R  /**< */,
                                                                           const xcb_xkb_get_kbd_by_name_replies_t *S /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_key_alias_t * xcb_xkb_get_kbd_by_name_replies_other_names_value_list_key_aliases
 ** 
 ** @param const xcb_xkb_get_kbd_by_name_replies_t *S
 ** @returns xcb_xkb_key_alias_t *
 **
 *****************************************************************************/
 
xcb_xkb_key_alias_t *
xcb_xkb_get_kbd_by_name_replies_other_names_value_list_key_aliases (const xcb_xkb_get_kbd_by_name_replies_t *S  /**< */);


/*****************************************************************************
 **
 ** int xcb_xkb_get_kbd_by_name_replies_other_names_value_list_key_aliases_length
 ** 
 ** @param const xcb_xkb_get_kbd_by_name_replies_other_names_value_list_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xkb_get_kbd_by_name_replies_other_names_value_list_key_aliases_length (const xcb_xkb_get_kbd_by_name_reply_t *R  /**< */,
                                                                           const xcb_xkb_get_kbd_by_name_replies_t *S /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_key_alias_iterator_t xcb_xkb_get_kbd_by_name_replies_other_names_value_list_key_aliases_iterator
 ** 
 ** @param const xcb_xkb_get_kbd_by_name_replies_other_names_value_list_t *R
 ** @returns xcb_xkb_key_alias_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_key_alias_iterator_t
xcb_xkb_get_kbd_by_name_replies_other_names_value_list_key_aliases_iterator (const xcb_xkb_get_kbd_by_name_reply_t *R  /**< */,
                                                                             const xcb_xkb_get_kbd_by_name_replies_t *S /**< */);


/*****************************************************************************
 **
 ** xcb_atom_t * xcb_xkb_get_kbd_by_name_replies_other_names_value_list_radio_group_names
 ** 
 ** @param const xcb_xkb_get_kbd_by_name_replies_t *S
 ** @returns xcb_atom_t *
 **
 *****************************************************************************/
 
xcb_atom_t *
xcb_xkb_get_kbd_by_name_replies_other_names_value_list_radio_group_names (const xcb_xkb_get_kbd_by_name_replies_t *S  /**< */);


/*****************************************************************************
 **
 ** int xcb_xkb_get_kbd_by_name_replies_other_names_value_list_radio_group_names_length
 ** 
 ** @param const xcb_xkb_get_kbd_by_name_replies_other_names_value_list_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xkb_get_kbd_by_name_replies_other_names_value_list_radio_group_names_length (const xcb_xkb_get_kbd_by_name_reply_t *R  /**< */,
                                                                                 const xcb_xkb_get_kbd_by_name_replies_t *S /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xkb_get_kbd_by_name_replies_other_names_value_list_radio_group_names_end
 ** 
 ** @param const xcb_xkb_get_kbd_by_name_replies_other_names_value_list_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_xkb_get_kbd_by_name_replies_other_names_value_list_radio_group_names_end (const xcb_xkb_get_kbd_by_name_reply_t *R  /**< */,
                                                                              const xcb_xkb_get_kbd_by_name_replies_t *S /**< */);

extern(C) int
xcb_xkb_get_kbd_by_name_replies_other_names_value_list_serialize (void                                                           **_buffer  /**< */,
                                                                  ubyte                                                            nTypes  /**< */,
                                                                  ushort                                                           nKTLevels  /**< */,
                                                                  uint                                                             indicators  /**< */,
                                                                  ushort                                                           virtualMods  /**< */,
                                                                  ubyte                                                            groupNames  /**< */,
                                                                  ubyte                                                            nKeys  /**< */,
                                                                  ubyte                                                            nKeyAliases  /**< */,
                                                                  ubyte                                                            nRadioGroups  /**< */,
                                                                  uint                                                             which  /**< */,
                                                                  const xcb_xkb_get_kbd_by_name_replies_other_names_value_list_t  *_aux  /**< */);

extern(C) int
xcb_xkb_get_kbd_by_name_replies_other_names_value_list_unpack (const void                                                *_buffer  /**< */,
                                                               ubyte                                                      nTypes  /**< */,
                                                               ushort                                                     nKTLevels  /**< */,
                                                               uint                                                       indicators  /**< */,
                                                               ushort                                                     virtualMods  /**< */,
                                                               ubyte                                                      groupNames  /**< */,
                                                               ubyte                                                      nKeys  /**< */,
                                                               ubyte                                                      nKeyAliases  /**< */,
                                                               ubyte                                                      nRadioGroups  /**< */,
                                                               uint                                                       which  /**< */,
                                                               xcb_xkb_get_kbd_by_name_replies_other_names_value_list_t  *_aux  /**< */);

extern(C) int
xcb_xkb_get_kbd_by_name_replies_other_names_value_list_sizeof (const void  *_buffer  /**< */,
                                                               ubyte        nTypes  /**< */,
                                                               ushort       nKTLevels  /**< */,
                                                               uint         indicators  /**< */,
                                                               ushort       virtualMods  /**< */,
                                                               ubyte        groupNames  /**< */,
                                                               ubyte        nKeys  /**< */,
                                                               ubyte        nKeyAliases  /**< */,
                                                               ubyte        nRadioGroups  /**< */,
                                                               uint         which  /**< */);


/*****************************************************************************
 **
 ** ubyte * xcb_xkb_get_kbd_by_name_replies_compat_map_si_rtrn
 ** 
 ** @param const xcb_xkb_get_kbd_by_name_replies_t *S
 ** @returns ubyte *
 **
 *****************************************************************************/
 
ubyte *
xcb_xkb_get_kbd_by_name_replies_compat_map_si_rtrn (const xcb_xkb_get_kbd_by_name_replies_t *S  /**< */);


/*****************************************************************************
 **
 ** int xcb_xkb_get_kbd_by_name_replies_compat_map_si_rtrn_length
 ** 
 ** @param const xcb_xkb_get_kbd_by_name_replies_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xkb_get_kbd_by_name_replies_compat_map_si_rtrn_length (const xcb_xkb_get_kbd_by_name_reply_t *R  /**< */,
                                                           const xcb_xkb_get_kbd_by_name_replies_t *S /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xkb_get_kbd_by_name_replies_compat_map_si_rtrn_end
 ** 
 ** @param const xcb_xkb_get_kbd_by_name_replies_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_xkb_get_kbd_by_name_replies_compat_map_si_rtrn_end (const xcb_xkb_get_kbd_by_name_reply_t *R  /**< */,
                                                        const xcb_xkb_get_kbd_by_name_replies_t *S /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_mod_def_t * xcb_xkb_get_kbd_by_name_replies_compat_map_group_rtrn
 ** 
 ** @param const xcb_xkb_get_kbd_by_name_replies_t *S
 ** @returns xcb_xkb_mod_def_t *
 **
 *****************************************************************************/
 
xcb_xkb_mod_def_t *
xcb_xkb_get_kbd_by_name_replies_compat_map_group_rtrn (const xcb_xkb_get_kbd_by_name_replies_t *S  /**< */);


/*****************************************************************************
 **
 ** int xcb_xkb_get_kbd_by_name_replies_compat_map_group_rtrn_length
 ** 
 ** @param const xcb_xkb_get_kbd_by_name_replies_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xkb_get_kbd_by_name_replies_compat_map_group_rtrn_length (const xcb_xkb_get_kbd_by_name_reply_t *R  /**< */,
                                                              const xcb_xkb_get_kbd_by_name_replies_t *S /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_mod_def_iterator_t xcb_xkb_get_kbd_by_name_replies_compat_map_group_rtrn_iterator
 ** 
 ** @param const xcb_xkb_get_kbd_by_name_replies_t *R
 ** @returns xcb_xkb_mod_def_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_mod_def_iterator_t
xcb_xkb_get_kbd_by_name_replies_compat_map_group_rtrn_iterator (const xcb_xkb_get_kbd_by_name_reply_t *R  /**< */,
                                                                const xcb_xkb_get_kbd_by_name_replies_t *S /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_get_kbd_by_name_replies_client_symbols_map_t * xcb_xkb_get_kbd_by_name_replies_client_symbols_map
 ** 
 ** @param const xcb_xkb_get_kbd_by_name_replies_t *R
 ** @returns xcb_xkb_get_kbd_by_name_replies_client_symbols_map_t *
 **
 *****************************************************************************/
 
xcb_xkb_get_kbd_by_name_replies_client_symbols_map_t *
xcb_xkb_get_kbd_by_name_replies_client_symbols_map (const xcb_xkb_get_kbd_by_name_replies_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_get_kbd_by_name_replies_server_symbols_map_t * xcb_xkb_get_kbd_by_name_replies_server_symbols_map
 ** 
 ** @param const xcb_xkb_get_kbd_by_name_replies_t *R
 ** @returns xcb_xkb_get_kbd_by_name_replies_server_symbols_map_t *
 **
 *****************************************************************************/
 
xcb_xkb_get_kbd_by_name_replies_server_symbols_map_t *
xcb_xkb_get_kbd_by_name_replies_server_symbols_map (const xcb_xkb_get_kbd_by_name_replies_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_indicator_map_t * xcb_xkb_get_kbd_by_name_replies_indicator_maps_maps
 ** 
 ** @param const xcb_xkb_get_kbd_by_name_replies_t *S
 ** @returns xcb_xkb_indicator_map_t *
 **
 *****************************************************************************/
 
xcb_xkb_indicator_map_t *
xcb_xkb_get_kbd_by_name_replies_indicator_maps_maps (const xcb_xkb_get_kbd_by_name_replies_t *S  /**< */);


/*****************************************************************************
 **
 ** int xcb_xkb_get_kbd_by_name_replies_indicator_maps_maps_length
 ** 
 ** @param const xcb_xkb_get_kbd_by_name_replies_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xkb_get_kbd_by_name_replies_indicator_maps_maps_length (const xcb_xkb_get_kbd_by_name_reply_t *R  /**< */,
                                                            const xcb_xkb_get_kbd_by_name_replies_t *S /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_indicator_map_iterator_t xcb_xkb_get_kbd_by_name_replies_indicator_maps_maps_iterator
 ** 
 ** @param const xcb_xkb_get_kbd_by_name_replies_t *R
 ** @returns xcb_xkb_indicator_map_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_indicator_map_iterator_t
xcb_xkb_get_kbd_by_name_replies_indicator_maps_maps_iterator (const xcb_xkb_get_kbd_by_name_reply_t *R  /**< */,
                                                              const xcb_xkb_get_kbd_by_name_replies_t *S /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_get_kbd_by_name_replies_key_names_value_list_t * xcb_xkb_get_kbd_by_name_replies_key_names_value_list
 ** 
 ** @param const xcb_xkb_get_kbd_by_name_replies_t *R
 ** @returns xcb_xkb_get_kbd_by_name_replies_key_names_value_list_t *
 **
 *****************************************************************************/
 
xcb_xkb_get_kbd_by_name_replies_key_names_value_list_t *
xcb_xkb_get_kbd_by_name_replies_key_names_value_list (const xcb_xkb_get_kbd_by_name_replies_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_get_kbd_by_name_replies_other_names_value_list_t * xcb_xkb_get_kbd_by_name_replies_other_names_value_list
 ** 
 ** @param const xcb_xkb_get_kbd_by_name_replies_t *R
 ** @returns xcb_xkb_get_kbd_by_name_replies_other_names_value_list_t *
 **
 *****************************************************************************/
 
xcb_xkb_get_kbd_by_name_replies_other_names_value_list_t *
xcb_xkb_get_kbd_by_name_replies_other_names_value_list (const xcb_xkb_get_kbd_by_name_replies_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_counted_string_16_t * xcb_xkb_get_kbd_by_name_replies_geometry_label_font
 ** 
 ** @param const xcb_xkb_get_kbd_by_name_replies_t *R
 ** @returns xcb_xkb_counted_string_16_t *
 **
 *****************************************************************************/
 
xcb_xkb_counted_string_16_t *
xcb_xkb_get_kbd_by_name_replies_geometry_label_font (const xcb_xkb_get_kbd_by_name_replies_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_xkb_get_kbd_by_name_replies_geometry_properties_length
 ** 
 ** @param const xcb_xkb_get_kbd_by_name_replies_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xkb_get_kbd_by_name_replies_geometry_properties_length (const xcb_xkb_get_kbd_by_name_reply_t *R  /**< */,
                                                            const xcb_xkb_get_kbd_by_name_replies_t *S /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_property_iterator_t xcb_xkb_get_kbd_by_name_replies_geometry_properties_iterator
 ** 
 ** @param const xcb_xkb_get_kbd_by_name_replies_t *R
 ** @returns xcb_xkb_property_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_property_iterator_t
xcb_xkb_get_kbd_by_name_replies_geometry_properties_iterator (const xcb_xkb_get_kbd_by_name_reply_t *R  /**< */,
                                                              const xcb_xkb_get_kbd_by_name_replies_t *S /**< */);


/*****************************************************************************
 **
 ** int xcb_xkb_get_kbd_by_name_replies_geometry_colors_length
 ** 
 ** @param const xcb_xkb_get_kbd_by_name_replies_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xkb_get_kbd_by_name_replies_geometry_colors_length (const xcb_xkb_get_kbd_by_name_reply_t *R  /**< */,
                                                        const xcb_xkb_get_kbd_by_name_replies_t *S /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_counted_string_16_iterator_t xcb_xkb_get_kbd_by_name_replies_geometry_colors_iterator
 ** 
 ** @param const xcb_xkb_get_kbd_by_name_replies_t *R
 ** @returns xcb_xkb_counted_string_16_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_counted_string_16_iterator_t
xcb_xkb_get_kbd_by_name_replies_geometry_colors_iterator (const xcb_xkb_get_kbd_by_name_reply_t *R  /**< */,
                                                          const xcb_xkb_get_kbd_by_name_replies_t *S /**< */);


/*****************************************************************************
 **
 ** int xcb_xkb_get_kbd_by_name_replies_geometry_shapes_length
 ** 
 ** @param const xcb_xkb_get_kbd_by_name_replies_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xkb_get_kbd_by_name_replies_geometry_shapes_length (const xcb_xkb_get_kbd_by_name_reply_t *R  /**< */,
                                                        const xcb_xkb_get_kbd_by_name_replies_t *S /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_shape_iterator_t xcb_xkb_get_kbd_by_name_replies_geometry_shapes_iterator
 ** 
 ** @param const xcb_xkb_get_kbd_by_name_replies_t *R
 ** @returns xcb_xkb_shape_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_shape_iterator_t
xcb_xkb_get_kbd_by_name_replies_geometry_shapes_iterator (const xcb_xkb_get_kbd_by_name_reply_t *R  /**< */,
                                                          const xcb_xkb_get_kbd_by_name_replies_t *S /**< */);


/*****************************************************************************
 **
 ** int xcb_xkb_get_kbd_by_name_replies_geometry_sections_length
 ** 
 ** @param const xcb_xkb_get_kbd_by_name_replies_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xkb_get_kbd_by_name_replies_geometry_sections_length (const xcb_xkb_get_kbd_by_name_reply_t *R  /**< */,
                                                          const xcb_xkb_get_kbd_by_name_replies_t *S /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_section_iterator_t xcb_xkb_get_kbd_by_name_replies_geometry_sections_iterator
 ** 
 ** @param const xcb_xkb_get_kbd_by_name_replies_t *R
 ** @returns xcb_xkb_section_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_section_iterator_t
xcb_xkb_get_kbd_by_name_replies_geometry_sections_iterator (const xcb_xkb_get_kbd_by_name_reply_t *R  /**< */,
                                                            const xcb_xkb_get_kbd_by_name_replies_t *S /**< */);


/*****************************************************************************
 **
 ** int xcb_xkb_get_kbd_by_name_replies_geometry_doodads_length
 ** 
 ** @param const xcb_xkb_get_kbd_by_name_replies_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xkb_get_kbd_by_name_replies_geometry_doodads_length (const xcb_xkb_get_kbd_by_name_reply_t *R  /**< */,
                                                         const xcb_xkb_get_kbd_by_name_replies_t *S /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_doodad_iterator_t xcb_xkb_get_kbd_by_name_replies_geometry_doodads_iterator
 ** 
 ** @param const xcb_xkb_get_kbd_by_name_replies_t *R
 ** @returns xcb_xkb_doodad_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_doodad_iterator_t
xcb_xkb_get_kbd_by_name_replies_geometry_doodads_iterator (const xcb_xkb_get_kbd_by_name_reply_t *R  /**< */,
                                                           const xcb_xkb_get_kbd_by_name_replies_t *S /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_key_alias_t * xcb_xkb_get_kbd_by_name_replies_geometry_key_aliases
 ** 
 ** @param const xcb_xkb_get_kbd_by_name_replies_t *S
 ** @returns xcb_xkb_key_alias_t *
 **
 *****************************************************************************/
 
xcb_xkb_key_alias_t *
xcb_xkb_get_kbd_by_name_replies_geometry_key_aliases (const xcb_xkb_get_kbd_by_name_replies_t *S  /**< */);


/*****************************************************************************
 **
 ** int xcb_xkb_get_kbd_by_name_replies_geometry_key_aliases_length
 ** 
 ** @param const xcb_xkb_get_kbd_by_name_replies_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xkb_get_kbd_by_name_replies_geometry_key_aliases_length (const xcb_xkb_get_kbd_by_name_reply_t *R  /**< */,
                                                             const xcb_xkb_get_kbd_by_name_replies_t *S /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_key_alias_iterator_t xcb_xkb_get_kbd_by_name_replies_geometry_key_aliases_iterator
 ** 
 ** @param const xcb_xkb_get_kbd_by_name_replies_t *R
 ** @returns xcb_xkb_key_alias_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_key_alias_iterator_t
xcb_xkb_get_kbd_by_name_replies_geometry_key_aliases_iterator (const xcb_xkb_get_kbd_by_name_reply_t *R  /**< */,
                                                               const xcb_xkb_get_kbd_by_name_replies_t *S /**< */);

extern(C) int
xcb_xkb_get_kbd_by_name_replies_serialize (void                                    **_buffer  /**< */,
                                           ushort                                    reported  /**< */,
                                           const xcb_xkb_get_kbd_by_name_replies_t  *_aux  /**< */);

extern(C) int
xcb_xkb_get_kbd_by_name_replies_unpack (const void                         *_buffer  /**< */,
                                        ushort                              reported  /**< */,
                                        xcb_xkb_get_kbd_by_name_replies_t  *_aux  /**< */);

extern(C) int
xcb_xkb_get_kbd_by_name_replies_sizeof (const void  *_buffer  /**< */,
                                        ushort       reported  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 * 
 */

/*****************************************************************************
 **
 ** xcb_xkb_get_kbd_by_name_cookie_t xcb_xkb_get_kbd_by_name
 ** 
 ** @param xcb_connection_t        *c
 ** @param xcb_xkb_device_spec_t    deviceSpec
 ** @param ushort                   need
 ** @param ushort                   want
 ** @param ubyte                    load
 ** @param ubyte                    keymapsSpecLen
 ** @param const xcb_xkb_string8_t *keymapsSpec
 ** @param ubyte                    keycodesSpecLen
 ** @param const xcb_xkb_string8_t *keycodesSpec
 ** @param ubyte                    typesSpecLen
 ** @param const xcb_xkb_string8_t *typesSpec
 ** @param ubyte                    compatMapSpecLen
 ** @param const xcb_xkb_string8_t *compatMapSpec
 ** @param ubyte                    symbolsSpecLen
 ** @param const xcb_xkb_string8_t *symbolsSpec
 ** @param ubyte                    geometrySpecLen
 ** @param const xcb_xkb_string8_t *geometrySpec
 ** @returns xcb_xkb_get_kbd_by_name_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_get_kbd_by_name_cookie_t
xcb_xkb_get_kbd_by_name (xcb_connection_t        *c  /**< */,
                         xcb_xkb_device_spec_t    deviceSpec  /**< */,
                         ushort                   need  /**< */,
                         ushort                   want  /**< */,
                         ubyte                    load  /**< */,
                         ubyte                    keymapsSpecLen  /**< */,
                         const xcb_xkb_string8_t *keymapsSpec  /**< */,
                         ubyte                    keycodesSpecLen  /**< */,
                         const xcb_xkb_string8_t *keycodesSpec  /**< */,
                         ubyte                    typesSpecLen  /**< */,
                         const xcb_xkb_string8_t *typesSpec  /**< */,
                         ubyte                    compatMapSpecLen  /**< */,
                         const xcb_xkb_string8_t *compatMapSpec  /**< */,
                         ubyte                    symbolsSpecLen  /**< */,
                         const xcb_xkb_string8_t *symbolsSpec  /**< */,
                         ubyte                    geometrySpecLen  /**< */,
                         const xcb_xkb_string8_t *geometrySpec  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 * 
 * This form can be used only if the request will cause
 * a reply to be generated. Any returned error will be
 * placed in the event queue.
 */

/*****************************************************************************
 **
 ** xcb_xkb_get_kbd_by_name_cookie_t xcb_xkb_get_kbd_by_name_unchecked
 ** 
 ** @param xcb_connection_t        *c
 ** @param xcb_xkb_device_spec_t    deviceSpec
 ** @param ushort                   need
 ** @param ushort                   want
 ** @param ubyte                    load
 ** @param ubyte                    keymapsSpecLen
 ** @param const xcb_xkb_string8_t *keymapsSpec
 ** @param ubyte                    keycodesSpecLen
 ** @param const xcb_xkb_string8_t *keycodesSpec
 ** @param ubyte                    typesSpecLen
 ** @param const xcb_xkb_string8_t *typesSpec
 ** @param ubyte                    compatMapSpecLen
 ** @param const xcb_xkb_string8_t *compatMapSpec
 ** @param ubyte                    symbolsSpecLen
 ** @param const xcb_xkb_string8_t *symbolsSpec
 ** @param ubyte                    geometrySpecLen
 ** @param const xcb_xkb_string8_t *geometrySpec
 ** @returns xcb_xkb_get_kbd_by_name_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_get_kbd_by_name_cookie_t
xcb_xkb_get_kbd_by_name_unchecked (xcb_connection_t        *c  /**< */,
                                   xcb_xkb_device_spec_t    deviceSpec  /**< */,
                                   ushort                   need  /**< */,
                                   ushort                   want  /**< */,
                                   ubyte                    load  /**< */,
                                   ubyte                    keymapsSpecLen  /**< */,
                                   const xcb_xkb_string8_t *keymapsSpec  /**< */,
                                   ubyte                    keycodesSpecLen  /**< */,
                                   const xcb_xkb_string8_t *keycodesSpec  /**< */,
                                   ubyte                    typesSpecLen  /**< */,
                                   const xcb_xkb_string8_t *typesSpec  /**< */,
                                   ubyte                    compatMapSpecLen  /**< */,
                                   const xcb_xkb_string8_t *compatMapSpec  /**< */,
                                   ubyte                    symbolsSpecLen  /**< */,
                                   const xcb_xkb_string8_t *symbolsSpec  /**< */,
                                   ubyte                    geometrySpecLen  /**< */,
                                   const xcb_xkb_string8_t *geometrySpec  /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_get_kbd_by_name_replies_t * xcb_xkb_get_kbd_by_name_replies
 ** 
 ** @param const xcb_xkb_get_kbd_by_name_reply_t *R
 ** @returns xcb_xkb_get_kbd_by_name_replies_t *
 **
 *****************************************************************************/
 
void *
xcb_xkb_get_kbd_by_name_replies (const xcb_xkb_get_kbd_by_name_reply_t *R  /**< */);

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 * 
 * The parameter @p e supplied to this function must be NULL if
 * xcb_xkb_get_kbd_by_name_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */

/*****************************************************************************
 **
 ** xcb_xkb_get_kbd_by_name_reply_t * xcb_xkb_get_kbd_by_name_reply
 ** 
 ** @param xcb_connection_t                  *c
 ** @param xcb_xkb_get_kbd_by_name_cookie_t   cookie
 ** @param xcb_generic_error_t              **e
 ** @returns xcb_xkb_get_kbd_by_name_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_get_kbd_by_name_reply_t *
xcb_xkb_get_kbd_by_name_reply (xcb_connection_t                  *c  /**< */,
                               xcb_xkb_get_kbd_by_name_cookie_t   cookie  /**< */,
                               xcb_generic_error_t              **e  /**< */);

extern(C) int
xcb_xkb_get_device_info_sizeof (const void  *_buffer  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 * 
 */

/*****************************************************************************
 **
 ** xcb_xkb_get_device_info_cookie_t xcb_xkb_get_device_info
 ** 
 ** @param xcb_connection_t         *c
 ** @param xcb_xkb_device_spec_t     deviceSpec
 ** @param ushort                    wanted
 ** @param ubyte                     allButtons
 ** @param ubyte                     firstButton
 ** @param ubyte                     nButtons
 ** @param xcb_xkb_led_class_spec_t  ledClass
 ** @param xcb_xkb_id_spec_t         ledID
 ** @returns xcb_xkb_get_device_info_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_get_device_info_cookie_t
xcb_xkb_get_device_info (xcb_connection_t         *c  /**< */,
                         xcb_xkb_device_spec_t     deviceSpec  /**< */,
                         ushort                    wanted  /**< */,
                         ubyte                     allButtons  /**< */,
                         ubyte                     firstButton  /**< */,
                         ubyte                     nButtons  /**< */,
                         xcb_xkb_led_class_spec_t  ledClass  /**< */,
                         xcb_xkb_id_spec_t         ledID  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 * 
 * This form can be used only if the request will cause
 * a reply to be generated. Any returned error will be
 * placed in the event queue.
 */

/*****************************************************************************
 **
 ** xcb_xkb_get_device_info_cookie_t xcb_xkb_get_device_info_unchecked
 ** 
 ** @param xcb_connection_t         *c
 ** @param xcb_xkb_device_spec_t     deviceSpec
 ** @param ushort                    wanted
 ** @param ubyte                     allButtons
 ** @param ubyte                     firstButton
 ** @param ubyte                     nButtons
 ** @param xcb_xkb_led_class_spec_t  ledClass
 ** @param xcb_xkb_id_spec_t         ledID
 ** @returns xcb_xkb_get_device_info_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_get_device_info_cookie_t
xcb_xkb_get_device_info_unchecked (xcb_connection_t         *c  /**< */,
                                   xcb_xkb_device_spec_t     deviceSpec  /**< */,
                                   ushort                    wanted  /**< */,
                                   ubyte                     allButtons  /**< */,
                                   ubyte                     firstButton  /**< */,
                                   ubyte                     nButtons  /**< */,
                                   xcb_xkb_led_class_spec_t  ledClass  /**< */,
                                   xcb_xkb_id_spec_t         ledID  /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_string8_t * xcb_xkb_get_device_info_name
 ** 
 ** @param const xcb_xkb_get_device_info_reply_t *R
 ** @returns xcb_xkb_string8_t *
 **
 *****************************************************************************/
 
xcb_xkb_string8_t *
xcb_xkb_get_device_info_name (const xcb_xkb_get_device_info_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_xkb_get_device_info_name_length
 ** 
 ** @param const xcb_xkb_get_device_info_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xkb_get_device_info_name_length (const xcb_xkb_get_device_info_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xkb_get_device_info_name_end
 ** 
 ** @param const xcb_xkb_get_device_info_reply_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_xkb_get_device_info_name_end (const xcb_xkb_get_device_info_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_action_t * xcb_xkb_get_device_info_btn_actions
 ** 
 ** @param const xcb_xkb_get_device_info_reply_t *R
 ** @returns xcb_xkb_action_t *
 **
 *****************************************************************************/
 
xcb_xkb_action_t *
xcb_xkb_get_device_info_btn_actions (const xcb_xkb_get_device_info_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_xkb_get_device_info_btn_actions_length
 ** 
 ** @param const xcb_xkb_get_device_info_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xkb_get_device_info_btn_actions_length (const xcb_xkb_get_device_info_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_action_iterator_t xcb_xkb_get_device_info_btn_actions_iterator
 ** 
 ** @param const xcb_xkb_get_device_info_reply_t *R
 ** @returns xcb_xkb_action_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_action_iterator_t
xcb_xkb_get_device_info_btn_actions_iterator (const xcb_xkb_get_device_info_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_xkb_get_device_info_leds_length
 ** 
 ** @param const xcb_xkb_get_device_info_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xkb_get_device_info_leds_length (const xcb_xkb_get_device_info_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_xkb_device_led_info_iterator_t xcb_xkb_get_device_info_leds_iterator
 ** 
 ** @param const xcb_xkb_get_device_info_reply_t *R
 ** @returns xcb_xkb_device_led_info_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_device_led_info_iterator_t
xcb_xkb_get_device_info_leds_iterator (const xcb_xkb_get_device_info_reply_t *R  /**< */);

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 * 
 * The parameter @p e supplied to this function must be NULL if
 * xcb_xkb_get_device_info_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */

/*****************************************************************************
 **
 ** xcb_xkb_get_device_info_reply_t * xcb_xkb_get_device_info_reply
 ** 
 ** @param xcb_connection_t                  *c
 ** @param xcb_xkb_get_device_info_cookie_t   cookie
 ** @param xcb_generic_error_t              **e
 ** @returns xcb_xkb_get_device_info_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_get_device_info_reply_t *
xcb_xkb_get_device_info_reply (xcb_connection_t                  *c  /**< */,
                               xcb_xkb_get_device_info_cookie_t   cookie  /**< */,
                               xcb_generic_error_t              **e  /**< */);

extern(C) int
xcb_xkb_set_device_info_sizeof (const void  *_buffer  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 * 
 * This form can be used only if the request will not cause
 * a reply to be generated. Any returned error will be
 * saved for handling by xcb_request_check().
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_xkb_set_device_info_checked
 ** 
 ** @param xcb_connection_t                *c
 ** @param xcb_xkb_device_spec_t            deviceSpec
 ** @param ubyte                            firstBtn
 ** @param ubyte                            nBtns
 ** @param ushort                           change
 ** @param ushort                           nDeviceLedFBs
 ** @param const xcb_xkb_action_t          *btnActions
 ** @param const xcb_xkb_device_led_info_t *leds
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_xkb_set_device_info_checked (xcb_connection_t                *c  /**< */,
                                 xcb_xkb_device_spec_t            deviceSpec  /**< */,
                                 ubyte                            firstBtn  /**< */,
                                 ubyte                            nBtns  /**< */,
                                 ushort                           change  /**< */,
                                 ushort                           nDeviceLedFBs  /**< */,
                                 const xcb_xkb_action_t          *btnActions  /**< */,
                                 const xcb_xkb_device_led_info_t *leds  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 * 
 */

/*****************************************************************************
 **
 ** xcb_void_cookie_t xcb_xkb_set_device_info
 ** 
 ** @param xcb_connection_t                *c
 ** @param xcb_xkb_device_spec_t            deviceSpec
 ** @param ubyte                            firstBtn
 ** @param ubyte                            nBtns
 ** @param ushort                           change
 ** @param ushort                           nDeviceLedFBs
 ** @param const xcb_xkb_action_t          *btnActions
 ** @param const xcb_xkb_device_led_info_t *leds
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_xkb_set_device_info (xcb_connection_t                *c  /**< */,
                         xcb_xkb_device_spec_t            deviceSpec  /**< */,
                         ubyte                            firstBtn  /**< */,
                         ubyte                            nBtns  /**< */,
                         ushort                           change  /**< */,
                         ushort                           nDeviceLedFBs  /**< */,
                         const xcb_xkb_action_t          *btnActions  /**< */,
                         const xcb_xkb_device_led_info_t *leds  /**< */);

extern(C) int
xcb_xkb_set_debugging_flags_sizeof (const void  *_buffer  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 * 
 */

/*****************************************************************************
 **
 ** xcb_xkb_set_debugging_flags_cookie_t xcb_xkb_set_debugging_flags
 ** 
 ** @param xcb_connection_t        *c
 ** @param ushort                   msgLength
 ** @param uint                     affectFlags
 ** @param uint                     flags
 ** @param uint                     affectCtrls
 ** @param uint                     ctrls
 ** @param const xcb_xkb_string8_t *message
 ** @returns xcb_xkb_set_debugging_flags_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_set_debugging_flags_cookie_t
xcb_xkb_set_debugging_flags (xcb_connection_t        *c  /**< */,
                             ushort                   msgLength  /**< */,
                             uint                     affectFlags  /**< */,
                             uint                     flags  /**< */,
                             uint                     affectCtrls  /**< */,
                             uint                     ctrls  /**< */,
                             const xcb_xkb_string8_t *message  /**< */);

/**
 * Delivers a request to the X server
 * @param c The connection
 * @return A cookie
 *
 * Delivers a request to the X server.
 * 
 * This form can be used only if the request will cause
 * a reply to be generated. Any returned error will be
 * placed in the event queue.
 */

/*****************************************************************************
 **
 ** xcb_xkb_set_debugging_flags_cookie_t xcb_xkb_set_debugging_flags_unchecked
 ** 
 ** @param xcb_connection_t        *c
 ** @param ushort                   msgLength
 ** @param uint                     affectFlags
 ** @param uint                     flags
 ** @param uint                     affectCtrls
 ** @param uint                     ctrls
 ** @param const xcb_xkb_string8_t *message
 ** @returns xcb_xkb_set_debugging_flags_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_set_debugging_flags_cookie_t
xcb_xkb_set_debugging_flags_unchecked (xcb_connection_t        *c  /**< */,
                                       ushort                   msgLength  /**< */,
                                       uint                     affectFlags  /**< */,
                                       uint                     flags  /**< */,
                                       uint                     affectCtrls  /**< */,
                                       uint                     ctrls  /**< */,
                                       const xcb_xkb_string8_t *message  /**< */);

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 * 
 * The parameter @p e supplied to this function must be NULL if
 * xcb_xkb_set_debugging_flags_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */

/*****************************************************************************
 **
 ** xcb_xkb_set_debugging_flags_reply_t * xcb_xkb_set_debugging_flags_reply
 ** 
 ** @param xcb_connection_t                      *c
 ** @param xcb_xkb_set_debugging_flags_cookie_t   cookie
 ** @param xcb_generic_error_t                  **e
 ** @returns xcb_xkb_set_debugging_flags_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_xkb_set_debugging_flags_reply_t *
xcb_xkb_set_debugging_flags_reply (xcb_connection_t                      *c  /**< */,
                                   xcb_xkb_set_debugging_flags_cookie_t   cookie  /**< */,
                                   xcb_generic_error_t                  **e  /**< */);

/**
 * @}
 */
