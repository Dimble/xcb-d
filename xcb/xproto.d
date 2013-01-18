/*
 * This file generated automatically from xproto.xml by d_client.py.
 * Edit at your peril.
 */

/**
 * @defgroup XCB__API XCB  API
 * @brief  XCB Protocol Implementation.
 * @{
 **/

module interim.xcb.xproto;

import interim.xcb.xcb;

/**
 * @brief xcb_char2b_t
 **/
struct xcb_char2b_t {
    ubyte byte1; /**<  */
    ubyte byte2; /**<  */
}

/**
 * @brief xcb_char2b_iterator_t
 **/
struct xcb_char2b_iterator_t {
    xcb_char2b_t *data; /**<  */
    int           rem; /**<  */
    int           index; /**<  */
}

alias uint xcb_window_t;

/**
 * @brief xcb_window_iterator_t
 **/
struct xcb_window_iterator_t {
    xcb_window_t *data; /**<  */
    int           rem; /**<  */
    int           index; /**<  */
}

alias uint xcb_pixmap_t;

/**
 * @brief xcb_pixmap_iterator_t
 **/
struct xcb_pixmap_iterator_t {
    xcb_pixmap_t *data; /**<  */
    int           rem; /**<  */
    int           index; /**<  */
}

alias uint xcb_cursor_t;

/**
 * @brief xcb_cursor_iterator_t
 **/
struct xcb_cursor_iterator_t {
    xcb_cursor_t *data; /**<  */
    int           rem; /**<  */
    int           index; /**<  */
}

alias uint xcb_font_t;

/**
 * @brief xcb_font_iterator_t
 **/
struct xcb_font_iterator_t {
    xcb_font_t *data; /**<  */
    int         rem; /**<  */
    int         index; /**<  */
}

alias uint xcb_gcontext_t;

/**
 * @brief xcb_gcontext_iterator_t
 **/
struct xcb_gcontext_iterator_t {
    xcb_gcontext_t *data; /**<  */
    int             rem; /**<  */
    int             index; /**<  */
}

alias uint xcb_colormap_t;

/**
 * @brief xcb_colormap_iterator_t
 **/
struct xcb_colormap_iterator_t {
    xcb_colormap_t *data; /**<  */
    int             rem; /**<  */
    int             index; /**<  */
}

alias uint xcb_atom_t;

/**
 * @brief xcb_atom_iterator_t
 **/
struct xcb_atom_iterator_t {
    xcb_atom_t *data; /**<  */
    int         rem; /**<  */
    int         index; /**<  */
}

alias uint xcb_drawable_t;

/**
 * @brief xcb_drawable_iterator_t
 **/
struct xcb_drawable_iterator_t {
    xcb_drawable_t *data; /**<  */
    int             rem; /**<  */
    int             index; /**<  */
}

alias uint xcb_fontable_t;

/**
 * @brief xcb_fontable_iterator_t
 **/
struct xcb_fontable_iterator_t {
    xcb_fontable_t *data; /**<  */
    int             rem; /**<  */
    int             index; /**<  */
}

alias uint xcb_visualid_t;

/**
 * @brief xcb_visualid_iterator_t
 **/
struct xcb_visualid_iterator_t {
    xcb_visualid_t *data; /**<  */
    int             rem; /**<  */
    int             index; /**<  */
}

alias uint xcb_timestamp_t;

/**
 * @brief xcb_timestamp_iterator_t
 **/
struct xcb_timestamp_iterator_t {
    xcb_timestamp_t *data; /**<  */
    int              rem; /**<  */
    int              index; /**<  */
}

alias uint xcb_keysym_t;

/**
 * @brief xcb_keysym_iterator_t
 **/
struct xcb_keysym_iterator_t {
    xcb_keysym_t *data; /**<  */
    int           rem; /**<  */
    int           index; /**<  */
}

alias ubyte xcb_keycode_t;

/**
 * @brief xcb_keycode_iterator_t
 **/
struct xcb_keycode_iterator_t {
    xcb_keycode_t *data; /**<  */
    int            rem; /**<  */
    int            index; /**<  */
}

alias ubyte xcb_button_t;

/**
 * @brief xcb_button_iterator_t
 **/
struct xcb_button_iterator_t {
    xcb_button_t *data; /**<  */
    int           rem; /**<  */
    int           index; /**<  */
}

/**
 * @brief xcb_point_t
 **/
struct xcb_point_t {
    short x; /**<  */
    short y; /**<  */
}

/**
 * @brief xcb_point_iterator_t
 **/
struct xcb_point_iterator_t {
    xcb_point_t *data; /**<  */
    int          rem; /**<  */
    int          index; /**<  */
}

/**
 * @brief xcb_rectangle_t
 **/
struct xcb_rectangle_t {
    short  x; /**<  */
    short  y; /**<  */
    ushort width; /**<  */
    ushort height; /**<  */
}

/**
 * @brief xcb_rectangle_iterator_t
 **/
struct xcb_rectangle_iterator_t {
    xcb_rectangle_t *data; /**<  */
    int              rem; /**<  */
    int              index; /**<  */
}

/**
 * @brief xcb_arc_t
 **/
struct xcb_arc_t {
    short  x; /**<  */
    short  y; /**<  */
    ushort width; /**<  */
    ushort height; /**<  */
    short  angle1; /**<  */
    short  angle2; /**<  */
}

/**
 * @brief xcb_arc_iterator_t
 **/
struct xcb_arc_iterator_t {
    xcb_arc_t *data; /**<  */
    int        rem; /**<  */
    int        index; /**<  */
}

/**
 * @brief xcb_format_t
 **/
struct xcb_format_t {
    ubyte depth; /**<  */
    ubyte bits_per_pixel; /**<  */
    ubyte scanline_pad; /**<  */
    ubyte pad0[5]; /**<  */
}

/**
 * @brief xcb_format_iterator_t
 **/
struct xcb_format_iterator_t {
    xcb_format_t *data; /**<  */
    int           rem; /**<  */
    int           index; /**<  */
}

enum XcbVisualClass {
    STATIC_GRAY  = 0,
    GRAY_SCALE   = 1,
    STATIC_COLOR = 2,
    PSEUDO_COLOR = 3,
    TRUE_COLOR   = 4,
    DIRECT_COLOR = 5
}
alias XcbVisualClass xcb_visual_class_t;

/**
 * @brief xcb_visualtype_t
 **/
struct xcb_visualtype_t {
    xcb_visualid_t visual_id; /**<  */
    ubyte          _class; /**<  */
    ubyte          bits_per_rgb_value; /**<  */
    ushort         colormap_entries; /**<  */
    uint           red_mask; /**<  */
    uint           green_mask; /**<  */
    uint           blue_mask; /**<  */
    ubyte          pad0[4]; /**<  */
}

/**
 * @brief xcb_visualtype_iterator_t
 **/
struct xcb_visualtype_iterator_t {
    xcb_visualtype_t *data; /**<  */
    int               rem; /**<  */
    int               index; /**<  */
}

/**
 * @brief xcb_depth_t
 **/
struct xcb_depth_t {
    ubyte  depth; /**<  */
    ubyte  pad0; /**<  */
    ushort visuals_len; /**<  */
    ubyte  pad1[4]; /**<  */
}

/**
 * @brief xcb_depth_iterator_t
 **/
struct xcb_depth_iterator_t {
    xcb_depth_t *data; /**<  */
    int          rem; /**<  */
    int          index; /**<  */
}

enum XcbEventMask {
    NO_EVENT              = 0,
    KEY_PRESS             = 1,
    KEY_RELEASE           = 2,
    BUTTON_PRESS          = 4,
    BUTTON_RELEASE        = 8,
    ENTER_WINDOW          = 16,
    LEAVE_WINDOW          = 32,
    POINTER_MOTION        = 64,
    POINTER_MOTION_HINT   = 128,
    BUTTON_1_MOTION       = 256,
    BUTTON_2_MOTION       = 512,
    BUTTON_3_MOTION       = 1024,
    BUTTON_4_MOTION       = 2048,
    BUTTON_5_MOTION       = 4096,
    BUTTON_MOTION         = 8192,
    KEYMAP_STATE          = 16384,
    EXPOSURE              = 32768,
    VISIBILITY_CHANGE     = 65536,
    STRUCTURE_NOTIFY      = 131072,
    RESIZE_REDIRECT       = 262144,
    SUBSTRUCTURE_NOTIFY   = 524288,
    SUBSTRUCTURE_REDIRECT = 1048576,
    FOCUS_CHANGE          = 2097152,
    PROPERTY_CHANGE       = 4194304,
    COLOR_MAP_CHANGE      = 8388608,
    OWNER_GRAB_BUTTON     = 16777216
}
alias XcbEventMask xcb_event_mask_t;

enum XcbBackingStore {
    NOT_USEFUL  = 0,
    WHEN_MAPPED = 1,
    ALWAYS      = 2
}
alias XcbBackingStore xcb_backing_store_t;

/**
 * @brief xcb_screen_t
 **/
struct xcb_screen_t {
    xcb_window_t   root; /**<  */
    xcb_colormap_t default_colormap; /**<  */
    uint           white_pixel; /**<  */
    uint           black_pixel; /**<  */
    uint           current_input_masks; /**<  */
    ushort         width_in_pixels; /**<  */
    ushort         height_in_pixels; /**<  */
    ushort         width_in_millimeters; /**<  */
    ushort         height_in_millimeters; /**<  */
    ushort         min_installed_maps; /**<  */
    ushort         max_installed_maps; /**<  */
    xcb_visualid_t root_visual; /**<  */
    ubyte          backing_stores; /**<  */
    ubyte          save_unders; /**<  */
    ubyte          root_depth; /**<  */
    ubyte          allowed_depths_len; /**<  */
}

/**
 * @brief xcb_screen_iterator_t
 **/
struct xcb_screen_iterator_t {
    xcb_screen_t *data; /**<  */
    int           rem; /**<  */
    int           index; /**<  */
}

/**
 * @brief xcb_setup_request_t
 **/
struct xcb_setup_request_t {
    ubyte  byte_order; /**<  */
    ubyte  pad0; /**<  */
    ushort protocol_major_version; /**<  */
    ushort protocol_minor_version; /**<  */
    ushort authorization_protocol_name_len; /**<  */
    ushort authorization_protocol_data_len; /**<  */
    ubyte  pad1[2]; /**<  */
}

/**
 * @brief xcb_setup_request_iterator_t
 **/
struct xcb_setup_request_iterator_t {
    xcb_setup_request_t *data; /**<  */
    int                  rem; /**<  */
    int                  index; /**<  */
}

/**
 * @brief xcb_setup_failed_t
 **/
struct xcb_setup_failed_t {
    ubyte  status; /**<  */
    ubyte  reason_len; /**<  */
    ushort protocol_major_version; /**<  */
    ushort protocol_minor_version; /**<  */
    ushort length; /**<  */
}

/**
 * @brief xcb_setup_failed_iterator_t
 **/
struct xcb_setup_failed_iterator_t {
    xcb_setup_failed_t *data; /**<  */
    int                 rem; /**<  */
    int                 index; /**<  */
}

/**
 * @brief xcb_setup_authenticate_t
 **/
struct xcb_setup_authenticate_t {
    ubyte  status; /**<  */
    ubyte  pad0[5]; /**<  */
    ushort length; /**<  */
}

/**
 * @brief xcb_setup_authenticate_iterator_t
 **/
struct xcb_setup_authenticate_iterator_t {
    xcb_setup_authenticate_t *data; /**<  */
    int                       rem; /**<  */
    int                       index; /**<  */
}

enum XcbImageOrder {
    LSB_FIRST = 0,
    MSB_FIRST = 1
}
alias XcbImageOrder xcb_image_order_t;

/**
 * @brief xcb_setup_t
 **/
struct xcb_setup_t {
    ubyte         status; /**<  */
    ubyte         pad0; /**<  */
    ushort        protocol_major_version; /**<  */
    ushort        protocol_minor_version; /**<  */
    ushort        length; /**<  */
    uint          release_number; /**<  */
    uint          resource_id_base; /**<  */
    uint          resource_id_mask; /**<  */
    uint          motion_buffer_size; /**<  */
    ushort        vendor_len; /**<  */
    ushort        maximum_request_length; /**<  */
    ubyte         roots_len; /**<  */
    ubyte         pixmap_formats_len; /**<  */
    ubyte         image_byte_order; /**<  */
    ubyte         bitmap_format_bit_order; /**<  */
    ubyte         bitmap_format_scanline_unit; /**<  */
    ubyte         bitmap_format_scanline_pad; /**<  */
    xcb_keycode_t min_keycode; /**<  */
    xcb_keycode_t max_keycode; /**<  */
    ubyte         pad1[4]; /**<  */
}

/**
 * @brief xcb_setup_iterator_t
 **/
struct xcb_setup_iterator_t {
    xcb_setup_t *data; /**<  */
    int          rem; /**<  */
    int          index; /**<  */
}

enum XcbModMask : ushort {
    SHIFT   = 1,
    LOCK    = 2,
    CONTROL = 4,
    N1      = 8,
    N2      = 16,
    N3      = 32,
    N4      = 64,
    N5      = 128,
    ANY     = 32768
}
alias XcbModMask xcb_mod_mask_t;

enum XcbKeyButMask : ushort {
    SHIFT    = 1,
    LOCK     = 2,
    CONTROL  = 4,
    MOD_1    = 8,
    MOD_2    = 16,
    MOD_3    = 32,
    MOD_4    = 64,
    MOD_5    = 128,
    BUTTON_1 = 256,
    BUTTON_2 = 512,
    BUTTON_3 = 1024,
    BUTTON_4 = 2048,
    BUTTON_5 = 4096
}
alias XcbKeyButMask xcb_key_but_mask_t;

enum XcbWindow {
    NONE = 0
}
alias XcbWindow xcb_window_enum_t;

/** Opcode for xcb_key_press. */
const ubyte XCB_KEY_PRESS = 2;

/**
 * @brief xcb_key_press_event_t
 **/
struct xcb_key_press_event_t {
    ubyte           response_type; /**<  */
    xcb_keycode_t   detail; /**<  */
    ushort          sequence; /**<  */
    xcb_timestamp_t time; /**<  */
    xcb_window_t    root; /**<  */
    xcb_window_t    event; /**<  */
    xcb_window_t    child; /**<  */
    short           root_x; /**<  */
    short           root_y; /**<  */
    short           event_x; /**<  */
    short           event_y; /**<  */
    ushort          state; /**<  */
    ubyte           same_screen; /**<  */
    ubyte           pad0; /**<  */
}

/** Opcode for xcb_key_release. */
const ubyte XCB_KEY_RELEASE = 3;

alias xcb_key_press_event_t xcb_key_release_event_t;

enum XcbButtonMask {
    N1  = 256,
    N2  = 512,
    N3  = 1024,
    N4  = 2048,
    N5  = 4096,
    ANY = 32768
}
alias XcbButtonMask xcb_button_mask_t;

/** Opcode for xcb_button_press. */
const ubyte XCB_BUTTON_PRESS = 4;

/**
 * @brief xcb_button_press_event_t
 **/
struct xcb_button_press_event_t {
    ubyte           response_type; /**<  */
    xcb_button_t    detail; /**<  */
    ushort          sequence; /**<  */
    xcb_timestamp_t time; /**<  */
    xcb_window_t    root; /**<  */
    xcb_window_t    event; /**<  */
    xcb_window_t    child; /**<  */
    short           root_x; /**<  */
    short           root_y; /**<  */
    short           event_x; /**<  */
    short           event_y; /**<  */
    ushort          state; /**<  */
    ubyte           same_screen; /**<  */
    ubyte           pad0; /**<  */
}

/** Opcode for xcb_button_release. */
const ubyte XCB_BUTTON_RELEASE = 5;

alias xcb_button_press_event_t xcb_button_release_event_t;

enum XcbMotion {
    NORMAL = 0,
    HINT   = 1
}
alias XcbMotion xcb_motion_t;

/** Opcode for xcb_motion_notify. */
const ubyte XCB_MOTION_NOTIFY = 6;

/**
 * @brief xcb_motion_notify_event_t
 **/
struct xcb_motion_notify_event_t {
    ubyte           response_type; /**<  */
    ubyte           detail; /**<  */
    ushort          sequence; /**<  */
    xcb_timestamp_t time; /**<  */
    xcb_window_t    root; /**<  */
    xcb_window_t    event; /**<  */
    xcb_window_t    child; /**<  */
    short           root_x; /**<  */
    short           root_y; /**<  */
    short           event_x; /**<  */
    short           event_y; /**<  */
    ushort          state; /**<  */
    ubyte           same_screen; /**<  */
    ubyte           pad0; /**<  */
}

enum XcbNotifyDetail {
    ANCESTOR          = 0,
    VIRTUAL           = 1,
    INFERIOR          = 2,
    NONLINEAR         = 3,
    NONLINEAR_VIRTUAL = 4,
    POINTER           = 5,
    POINTER_ROOT      = 6,
    NONE              = 7
}
alias XcbNotifyDetail xcb_notify_detail_t;

enum XcbNotifyMode {
    NORMAL        = 0,
    GRAB          = 1,
    UNGRAB        = 2,
    WHILE_GRABBED = 3
}
alias XcbNotifyMode xcb_notify_mode_t;

/** Opcode for xcb_enter_notify. */
const ubyte XCB_ENTER_NOTIFY = 7;

/**
 * @brief xcb_enter_notify_event_t
 **/
struct xcb_enter_notify_event_t {
    ubyte           response_type; /**<  */
    ubyte           detail; /**<  */
    ushort          sequence; /**<  */
    xcb_timestamp_t time; /**<  */
    xcb_window_t    root; /**<  */
    xcb_window_t    event; /**<  */
    xcb_window_t    child; /**<  */
    short           root_x; /**<  */
    short           root_y; /**<  */
    short           event_x; /**<  */
    short           event_y; /**<  */
    ushort          state; /**<  */
    ubyte           mode; /**<  */
    ubyte           same_screen_focus; /**<  */
}

/** Opcode for xcb_leave_notify. */
const ubyte XCB_LEAVE_NOTIFY = 8;

alias xcb_enter_notify_event_t xcb_leave_notify_event_t;

/** Opcode for xcb_focus_in. */
const ubyte XCB_FOCUS_IN = 9;

/**
 * @brief xcb_focus_in_event_t
 **/
struct xcb_focus_in_event_t {
    ubyte        response_type; /**<  */
    ubyte        detail; /**<  */
    ushort       sequence; /**<  */
    xcb_window_t event; /**<  */
    ubyte        mode; /**<  */
    ubyte        pad0[3]; /**<  */
}

/** Opcode for xcb_focus_out. */
const ubyte XCB_FOCUS_OUT = 10;

alias xcb_focus_in_event_t xcb_focus_out_event_t;

/** Opcode for xcb_keymap_notify. */
const ubyte XCB_KEYMAP_NOTIFY = 11;

/**
 * @brief xcb_keymap_notify_event_t
 **/
struct xcb_keymap_notify_event_t {
    ubyte response_type; /**<  */
    ubyte keys[31]; /**<  */
}

/** Opcode for xcb_expose. */
const ubyte XCB_EXPOSE = 12;

/**
 * @brief xcb_expose_event_t
 **/
struct xcb_expose_event_t {
    ubyte        response_type; /**<  */
    ubyte        pad0; /**<  */
    ushort       sequence; /**<  */
    xcb_window_t window; /**<  */
    ushort       x; /**<  */
    ushort       y; /**<  */
    ushort       width; /**<  */
    ushort       height; /**<  */
    ushort       count; /**<  */
    ubyte        pad1[2]; /**<  */
}

/** Opcode for xcb_graphics_exposure. */
const ubyte XCB_GRAPHICS_EXPOSURE = 13;

/**
 * @brief xcb_graphics_exposure_event_t
 **/
struct xcb_graphics_exposure_event_t {
    ubyte          response_type; /**<  */
    ubyte          pad0; /**<  */
    ushort         sequence; /**<  */
    xcb_drawable_t drawable; /**<  */
    ushort         x; /**<  */
    ushort         y; /**<  */
    ushort         width; /**<  */
    ushort         height; /**<  */
    ushort         minor_opcode; /**<  */
    ushort         count; /**<  */
    ubyte          major_opcode; /**<  */
    ubyte          pad1[3]; /**<  */
}

/** Opcode for xcb_no_exposure. */
const ubyte XCB_NO_EXPOSURE = 14;

/**
 * @brief xcb_no_exposure_event_t
 **/
struct xcb_no_exposure_event_t {
    ubyte          response_type; /**<  */
    ubyte          pad0; /**<  */
    ushort         sequence; /**<  */
    xcb_drawable_t drawable; /**<  */
    ushort         minor_opcode; /**<  */
    ubyte          major_opcode; /**<  */
    ubyte          pad1; /**<  */
}

enum XcbVisibility {
    UNOBSCURED         = 0,
    PARTIALLY_OBSCURED = 1,
    FULLY_OBSCURED     = 2
}
alias XcbVisibility xcb_visibility_t;

/** Opcode for xcb_visibility_notify. */
const ubyte XCB_VISIBILITY_NOTIFY = 15;

/**
 * @brief xcb_visibility_notify_event_t
 **/
struct xcb_visibility_notify_event_t {
    ubyte        response_type; /**<  */
    ubyte        pad0; /**<  */
    ushort       sequence; /**<  */
    xcb_window_t window; /**<  */
    ubyte        state; /**<  */
    ubyte        pad1[3]; /**<  */
}

/** Opcode for xcb_create_notify. */
const ubyte XCB_CREATE_NOTIFY = 16;

/**
 * @brief xcb_create_notify_event_t
 **/
struct xcb_create_notify_event_t {
    ubyte        response_type; /**<  */
    ubyte        pad0; /**<  */
    ushort       sequence; /**<  */
    xcb_window_t parent; /**<  */
    xcb_window_t window; /**<  */
    short        x; /**<  */
    short        y; /**<  */
    ushort       width; /**<  */
    ushort       height; /**<  */
    ushort       border_width; /**<  */
    ubyte        override_redirect; /**<  */
    ubyte        pad1; /**<  */
}

/** Opcode for xcb_destroy_notify. */
const ubyte XCB_DESTROY_NOTIFY = 17;

/**
 * @brief xcb_destroy_notify_event_t
 **/
struct xcb_destroy_notify_event_t {
    ubyte        response_type; /**<  */
    ubyte        pad0; /**<  */
    ushort       sequence; /**<  */
    xcb_window_t event; /**<  */
    xcb_window_t window; /**<  */
}

/** Opcode for xcb_unmap_notify. */
const ubyte XCB_UNMAP_NOTIFY = 18;

/**
 * @brief xcb_unmap_notify_event_t
 **/
struct xcb_unmap_notify_event_t {
    ubyte        response_type; /**<  */
    ubyte        pad0; /**<  */
    ushort       sequence; /**<  */
    xcb_window_t event; /**<  */
    xcb_window_t window; /**<  */
    ubyte        from_configure; /**<  */
    ubyte        pad1[3]; /**<  */
}

/** Opcode for xcb_map_notify. */
const ubyte XCB_MAP_NOTIFY = 19;

/**
 * @brief xcb_map_notify_event_t
 **/
struct xcb_map_notify_event_t {
    ubyte        response_type; /**<  */
    ubyte        pad0; /**<  */
    ushort       sequence; /**<  */
    xcb_window_t event; /**<  */
    xcb_window_t window; /**<  */
    ubyte        override_redirect; /**<  */
    ubyte        pad1[3]; /**<  */
}

/** Opcode for xcb_map_request. */
const ubyte XCB_MAP_REQUEST = 20;

/**
 * @brief xcb_map_request_event_t
 **/
struct xcb_map_request_event_t {
    ubyte        response_type; /**<  */
    ubyte        pad0; /**<  */
    ushort       sequence; /**<  */
    xcb_window_t parent; /**<  */
    xcb_window_t window; /**<  */
}

/** Opcode for xcb_reparent_notify. */
const ubyte XCB_REPARENT_NOTIFY = 21;

/**
 * @brief xcb_reparent_notify_event_t
 **/
struct xcb_reparent_notify_event_t {
    ubyte        response_type; /**<  */
    ubyte        pad0; /**<  */
    ushort       sequence; /**<  */
    xcb_window_t event; /**<  */
    xcb_window_t window; /**<  */
    xcb_window_t parent; /**<  */
    short        x; /**<  */
    short        y; /**<  */
    ubyte        override_redirect; /**<  */
    ubyte        pad1[3]; /**<  */
}

/** Opcode for xcb_configure_notify. */
const ubyte XCB_CONFIGURE_NOTIFY = 22;

/**
 * @brief xcb_configure_notify_event_t
 **/
struct xcb_configure_notify_event_t {
    ubyte        response_type; /**<  */
    ubyte        pad0; /**<  */
    ushort       sequence; /**<  */
    xcb_window_t event; /**<  */
    xcb_window_t window; /**<  */
    xcb_window_t above_sibling; /**<  */
    short        x; /**<  */
    short        y; /**<  */
    ushort       width; /**<  */
    ushort       height; /**<  */
    ushort       border_width; /**<  */
    ubyte        override_redirect; /**<  */
    ubyte        pad1; /**<  */
}

/** Opcode for xcb_configure_request. */
const ubyte XCB_CONFIGURE_REQUEST = 23;

/**
 * @brief xcb_configure_request_event_t
 **/
struct xcb_configure_request_event_t {
    ubyte        response_type; /**<  */
    ubyte        stack_mode; /**<  */
    ushort       sequence; /**<  */
    xcb_window_t parent; /**<  */
    xcb_window_t window; /**<  */
    xcb_window_t sibling; /**<  */
    short        x; /**<  */
    short        y; /**<  */
    ushort       width; /**<  */
    ushort       height; /**<  */
    ushort       border_width; /**<  */
    ushort       value_mask; /**<  */
}

/** Opcode for xcb_gravity_notify. */
const ubyte XCB_GRAVITY_NOTIFY = 24;

/**
 * @brief xcb_gravity_notify_event_t
 **/
struct xcb_gravity_notify_event_t {
    ubyte        response_type; /**<  */
    ubyte        pad0; /**<  */
    ushort       sequence; /**<  */
    xcb_window_t event; /**<  */
    xcb_window_t window; /**<  */
    short        x; /**<  */
    short        y; /**<  */
}

/** Opcode for xcb_resize_request. */
const ubyte XCB_RESIZE_REQUEST = 25;

/**
 * @brief xcb_resize_request_event_t
 **/
struct xcb_resize_request_event_t {
    ubyte        response_type; /**<  */
    ubyte        pad0; /**<  */
    ushort       sequence; /**<  */
    xcb_window_t window; /**<  */
    ushort       width; /**<  */
    ushort       height; /**<  */
}

enum XcbPlace {
    ON_TOP    = 0,
    ON_BOTTOM = 1
}
alias XcbPlace xcb_place_t;

/** Opcode for xcb_circulate_notify. */
const ubyte XCB_CIRCULATE_NOTIFY = 26;

/**
 * @brief xcb_circulate_notify_event_t
 **/
struct xcb_circulate_notify_event_t {
    ubyte        response_type; /**<  */
    ubyte        pad0; /**<  */
    ushort       sequence; /**<  */
    xcb_window_t event; /**<  */
    xcb_window_t window; /**<  */
    ubyte        pad1[4]; /**<  */
    ubyte        place; /**<  */
    ubyte        pad2[3]; /**<  */
}

/** Opcode for xcb_circulate_request. */
const ubyte XCB_CIRCULATE_REQUEST = 27;

alias xcb_circulate_notify_event_t xcb_circulate_request_event_t;

enum XcbProperty {
    NEW_VALUE = 0,
    DELETE    = 1
}
alias XcbProperty xcb_property_t;

/** Opcode for xcb_property_notify. */
const ubyte XCB_PROPERTY_NOTIFY = 28;

/**
 * @brief xcb_property_notify_event_t
 **/
struct xcb_property_notify_event_t {
    ubyte           response_type; /**<  */
    ubyte           pad0; /**<  */
    ushort          sequence; /**<  */
    xcb_window_t    window; /**<  */
    xcb_atom_t      atom; /**<  */
    xcb_timestamp_t time; /**<  */
    ubyte           state; /**<  */
    ubyte           pad1[3]; /**<  */
}

/** Opcode for xcb_selection_clear. */
const ubyte XCB_SELECTION_CLEAR = 29;

/**
 * @brief xcb_selection_clear_event_t
 **/
struct xcb_selection_clear_event_t {
    ubyte           response_type; /**<  */
    ubyte           pad0; /**<  */
    ushort          sequence; /**<  */
    xcb_timestamp_t time; /**<  */
    xcb_window_t    owner; /**<  */
    xcb_atom_t      selection; /**<  */
}

enum XcbTime {
    CURRENT_TIME = 0
}
alias XcbTime xcb_time_t;

enum XcbAtom {
    NONE = 0,
    ANY  = 0,
    PRIMARY,
    SECONDARY,
    ARC,
    ATOM,
    BITMAP,
    CARDINAL,
    COLORMAP,
    CURSOR,
    CUT_BUFFER0,
    CUT_BUFFER1,
    CUT_BUFFER2,
    CUT_BUFFER3,
    CUT_BUFFER4,
    CUT_BUFFER5,
    CUT_BUFFER6,
    CUT_BUFFER7,
    DRAWABLE,
    FONT,
    INTEGER,
    PIXMAP,
    POINT,
    RECTANGLE,
    RESOURCE_MANAGER,
    RGB_COLOR_MAP,
    RGB_BEST_MAP,
    RGB_BLUE_MAP,
    RGB_DEFAULT_MAP,
    RGB_GRAY_MAP,
    RGB_GREEN_MAP,
    RGB_RED_MAP,
    STRING,
    VISUALID,
    WINDOW,
    WM_COMMAND,
    WM_HINTS,
    WM_CLIENT_MACHINE,
    WM_ICON_NAME,
    WM_ICON_SIZE,
    WM_NAME,
    WM_NORMAL_HINTS,
    WM_SIZE_HINTS,
    WM_ZOOM_HINTS,
    MIN_SPACE,
    NORM_SPACE,
    MAX_SPACE,
    END_SPACE,
    SUPERSCRIPT_X,
    SUPERSCRIPT_Y,
    SUBSCRIPT_X,
    SUBSCRIPT_Y,
    UNDERLINE_POSITION,
    UNDERLINE_THICKNESS,
    STRIKEOUT_ASCENT,
    STRIKEOUT_DESCENT,
    ITALIC_ANGLE,
    X_HEIGHT,
    QUAD_WIDTH,
    WEIGHT,
    POINT_SIZE,
    RESOLUTION,
    COPYRIGHT,
    NOTICE,
    FONT_NAME,
    FAMILY_NAME,
    FULL_NAME,
    CAP_HEIGHT,
    WM_CLASS,
    WM_TRANSIENT_FOR
}
alias XcbAtom xcb_atom_enum_t;

/** Opcode for xcb_selection_request. */
const ubyte XCB_SELECTION_REQUEST = 30;

/**
 * @brief xcb_selection_request_event_t
 **/
struct xcb_selection_request_event_t {
    ubyte           response_type; /**<  */
    ubyte           pad0; /**<  */
    ushort          sequence; /**<  */
    xcb_timestamp_t time; /**<  */
    xcb_window_t    owner; /**<  */
    xcb_window_t    requestor; /**<  */
    xcb_atom_t      selection; /**<  */
    xcb_atom_t      target; /**<  */
    xcb_atom_t      property; /**<  */
}

/** Opcode for xcb_selection_notify. */
const ubyte XCB_SELECTION_NOTIFY = 31;

/**
 * @brief xcb_selection_notify_event_t
 **/
struct xcb_selection_notify_event_t {
    ubyte           response_type; /**<  */
    ubyte           pad0; /**<  */
    ushort          sequence; /**<  */
    xcb_timestamp_t time; /**<  */
    xcb_window_t    requestor; /**<  */
    xcb_atom_t      selection; /**<  */
    xcb_atom_t      target; /**<  */
    xcb_atom_t      property; /**<  */
}

enum XcbColormapState {
    UNINSTALLED = 0,
    INSTALLED   = 1
}
alias XcbColormapState xcb_colormap_state_t;

enum XcbColormap {
    NONE = 0
}
alias XcbColormap xcb_colormap_enum_t;

/** Opcode for xcb_colormap_notify. */
const ubyte XCB_COLORMAP_NOTIFY = 32;

/**
 * @brief xcb_colormap_notify_event_t
 **/
struct xcb_colormap_notify_event_t {
    ubyte          response_type; /**<  */
    ubyte          pad0; /**<  */
    ushort         sequence; /**<  */
    xcb_window_t   window; /**<  */
    xcb_colormap_t colormap; /**<  */
    ubyte          _new; /**<  */
    ubyte          state; /**<  */
    ubyte          pad1[2]; /**<  */
}

/**
 * @brief xcb_client_message_data_t
 **/
union xcb_client_message_data_t {
    ubyte  data8[20]; /**<  */
    ushort data16[10]; /**<  */
    uint   data32[5]; /**<  */
}

/**
 * @brief xcb_client_message_data_iterator_t
 **/
struct xcb_client_message_data_iterator_t {
    xcb_client_message_data_t *data; /**<  */
    int                        rem; /**<  */
    int                        index; /**<  */
}

/** Opcode for xcb_client_message. */
const ubyte XCB_CLIENT_MESSAGE = 33;

/**
 * @brief xcb_client_message_event_t
 **/
struct xcb_client_message_event_t {
    ubyte                     response_type; /**<  */
    ubyte                     format; /**<  */
    ushort                    sequence; /**<  */
    xcb_window_t              window; /**<  */
    xcb_atom_t                type; /**<  */
    xcb_client_message_data_t data; /**<  */
}

enum XcbMapping {
    MODIFIER = 0,
    KEYBOARD = 1,
    POINTER  = 2
}
alias XcbMapping xcb_mapping_t;

/** Opcode for xcb_mapping_notify. */
const ubyte XCB_MAPPING_NOTIFY = 34;

/**
 * @brief xcb_mapping_notify_event_t
 **/
struct xcb_mapping_notify_event_t {
    ubyte         response_type; /**<  */
    ubyte         pad0; /**<  */
    ushort        sequence; /**<  */
    ubyte         request; /**<  */
    xcb_keycode_t first_keycode; /**<  */
    ubyte         count; /**<  */
    ubyte         pad1; /**<  */
}

/** Opcode for xcb_request. */
const ubyte XCB_REQUEST = 1;

/**
 * @brief xcb_request_error_t
 **/
struct xcb_request_error_t {
    ubyte  response_type; /**<  */
    ubyte  error_code; /**<  */
    ushort sequence; /**<  */
    uint   bad_value; /**<  */
    ushort minor_opcode; /**<  */
    ubyte  major_opcode; /**<  */
    ubyte  pad0; /**<  */
}

/** Opcode for xcb_value. */
const ubyte XCB_VALUE = 2;

/**
 * @brief xcb_value_error_t
 **/
struct xcb_value_error_t {
    ubyte  response_type; /**<  */
    ubyte  error_code; /**<  */
    ushort sequence; /**<  */
    uint   bad_value; /**<  */
    ushort minor_opcode; /**<  */
    ubyte  major_opcode; /**<  */
    ubyte  pad0; /**<  */
}

/** Opcode for xcb_window. */
const ubyte XCB_WINDOW = 3;

alias xcb_value_error_t xcb_window_error_t;

/** Opcode for xcb_pixmap. */
const ubyte XCB_PIXMAP = 4;

alias xcb_value_error_t xcb_pixmap_error_t;

/** Opcode for xcb_atom. */
const ubyte XCB_ATOM = 5;

alias xcb_value_error_t xcb_atom_error_t;

/** Opcode for xcb_cursor. */
const ubyte XCB_CURSOR = 6;

alias xcb_value_error_t xcb_cursor_error_t;

/** Opcode for xcb_font. */
const ubyte XCB_FONT = 7;

alias xcb_value_error_t xcb_font_error_t;

/** Opcode for xcb_match. */
const ubyte XCB_MATCH = 8;

alias xcb_request_error_t xcb_match_error_t;

/** Opcode for xcb_drawable. */
const ubyte XCB_DRAWABLE = 9;

alias xcb_value_error_t xcb_drawable_error_t;

/** Opcode for xcb_access. */
const ubyte XCB_ACCESS = 10;

alias xcb_request_error_t xcb_access_error_t;

/** Opcode for xcb_alloc. */
const ubyte XCB_ALLOC = 11;

alias xcb_request_error_t xcb_alloc_error_t;

/** Opcode for xcb_colormap. */
const ubyte XCB_COLORMAP = 12;

alias xcb_value_error_t xcb_colormap_error_t;

/** Opcode for xcb_g_context. */
const ubyte XCB_G_CONTEXT = 13;

alias xcb_value_error_t xcb_g_context_error_t;

/** Opcode for xcb_id_choice. */
const ubyte XCB_ID_CHOICE = 14;

alias xcb_value_error_t xcb_id_choice_error_t;

/** Opcode for xcb_name. */
const ubyte XCB_NAME = 15;

alias xcb_request_error_t xcb_name_error_t;

/** Opcode for xcb_length. */
const ubyte XCB_LENGTH = 16;

alias xcb_request_error_t xcb_length_error_t;

/** Opcode for xcb_implementation. */
const ubyte XCB_IMPLEMENTATION = 17;

alias xcb_request_error_t xcb_implementation_error_t;

enum XcbWindowClass : ubyte {
    COPY_FROM_PARENT = 0,
    INPUT_OUTPUT     = 1,
    INPUT_ONLY       = 2
}
alias XcbWindowClass xcb_window_class_t;

enum XcbCW {
    BACK_PIXMAP       = 1,
    BACK_PIXEL        = 2,
    BORDER_PIXMAP     = 4,
    BORDER_PIXEL      = 8,
    BIT_GRAVITY       = 16,
    WIN_GRAVITY       = 32,
    BACKING_STORE     = 64,
    BACKING_PLANES    = 128,
    BACKING_PIXEL     = 256,
    OVERRIDE_REDIRECT = 512,
    SAVE_UNDER        = 1024,
    EVENT_MASK        = 2048,
    DONT_PROPAGATE    = 4096,
    COLORMAP          = 8192,
    CURSOR            = 16384
}
alias XcbCW xcb_cw_t;

enum XcbBackPixmap {
    NONE            = 0,
    PARENT_RELATIVE = 1
}
alias XcbBackPixmap xcb_back_pixmap_t;

enum XcbGravity {
    BIT_FORGET = 0,
    WIN_UNMAP  = 0,
    NORTH_WEST = 1,
    NORTH      = 2,
    NORTH_EAST = 3,
    WEST       = 4,
    CENTER     = 5,
    EAST       = 6,
    SOUTH_WEST = 7,
    SOUTH      = 8,
    SOUTH_EAST = 9,
    STATIC     = 10
}
alias XcbGravity xcb_gravity_t;

/** Opcode for xcb_create_window. */
const ubyte XCB_CREATE_WINDOW = 1;

/**
 * @brief xcb_create_window_request_t
 **/
struct xcb_create_window_request_t {
    ubyte          major_opcode; /**<  */
    ubyte          depth; /**<  */
    ushort         length; /**<  */
    xcb_window_t   wid; /**<  */
    xcb_window_t   parent; /**<  */
    short          x; /**<  */
    short          y; /**<  */
    ushort         width; /**<  */
    ushort         height; /**<  */
    ushort         border_width; /**<  */
    ushort         _class; /**<  */
    xcb_visualid_t visual; /**<  */
    uint           value_mask; /**<  */
}

/** Opcode for xcb_change_window_attributes. */
const ubyte XCB_CHANGE_WINDOW_ATTRIBUTES = 2;

/**
 * @brief xcb_change_window_attributes_request_t
 **/
struct xcb_change_window_attributes_request_t {
    ubyte        major_opcode; /**<  */
    ubyte        pad0; /**<  */
    ushort       length; /**<  */
    xcb_window_t window; /**<  */
    uint         value_mask; /**<  */
}

enum XcbMapState {
    UNMAPPED   = 0,
    UNVIEWABLE = 1,
    VIEWABLE   = 2
}
alias XcbMapState xcb_map_state_t;

/**
 * @brief xcb_get_window_attributes_cookie_t
 **/
struct xcb_get_window_attributes_cookie_t {
    uint sequence; /**<  */
}

/** Opcode for xcb_get_window_attributes. */
const ubyte XCB_GET_WINDOW_ATTRIBUTES = 3;

/**
 * @brief xcb_get_window_attributes_request_t
 **/
struct xcb_get_window_attributes_request_t {
    ubyte        major_opcode; /**<  */
    ubyte        pad0; /**<  */
    ushort       length; /**<  */
    xcb_window_t window; /**<  */
}

/**
 * @brief xcb_get_window_attributes_reply_t
 **/
struct xcb_get_window_attributes_reply_t {
    ubyte          response_type; /**<  */
    ubyte          backing_store; /**<  */
    ushort         sequence; /**<  */
    uint           length; /**<  */
    xcb_visualid_t visual; /**<  */
    ushort         _class; /**<  */
    ubyte          bit_gravity; /**<  */
    ubyte          win_gravity; /**<  */
    uint           backing_planes; /**<  */
    uint           backing_pixel; /**<  */
    ubyte          save_under; /**<  */
    ubyte          map_is_installed; /**<  */
    ubyte          map_state; /**<  */
    ubyte          override_redirect; /**<  */
    xcb_colormap_t colormap; /**<  */
    uint           all_event_masks; /**<  */
    uint           your_event_mask; /**<  */
    ushort         do_not_propagate_mask; /**<  */
    ubyte          pad0[2]; /**<  */
}

/** Opcode for xcb_destroy_window. */
const ubyte XCB_DESTROY_WINDOW = 4;

/**
 * @brief xcb_destroy_window_request_t
 **/
struct xcb_destroy_window_request_t {
    ubyte        major_opcode; /**<  */
    ubyte        pad0; /**<  */
    ushort       length; /**<  */
    xcb_window_t window; /**<  */
}

/** Opcode for xcb_destroy_subwindows. */
const ubyte XCB_DESTROY_SUBWINDOWS = 5;

/**
 * @brief xcb_destroy_subwindows_request_t
 **/
struct xcb_destroy_subwindows_request_t {
    ubyte        major_opcode; /**<  */
    ubyte        pad0; /**<  */
    ushort       length; /**<  */
    xcb_window_t window; /**<  */
}

enum XcbSetMode {
    INSERT = 0,
    DELETE = 1
}
alias XcbSetMode xcb_set_mode_t;

/** Opcode for xcb_change_save_set. */
const ubyte XCB_CHANGE_SAVE_SET = 6;

/**
 * @brief xcb_change_save_set_request_t
 **/
struct xcb_change_save_set_request_t {
    ubyte        major_opcode; /**<  */
    ubyte        mode; /**<  */
    ushort       length; /**<  */
    xcb_window_t window; /**<  */
}

/** Opcode for xcb_reparent_window. */
const ubyte XCB_REPARENT_WINDOW = 7;

/**
 * @brief xcb_reparent_window_request_t
 **/
struct xcb_reparent_window_request_t {
    ubyte        major_opcode; /**<  */
    ubyte        pad0; /**<  */
    ushort       length; /**<  */
    xcb_window_t window; /**<  */
    xcb_window_t parent; /**<  */
    short        x; /**<  */
    short        y; /**<  */
}

/** Opcode for xcb_map_window. */
const ubyte XCB_MAP_WINDOW = 8;

/**
 * @brief xcb_map_window_request_t
 **/
struct xcb_map_window_request_t {
    ubyte        major_opcode; /**<  */
    ubyte        pad0; /**<  */
    ushort       length; /**<  */
    xcb_window_t window; /**<  */
}

/** Opcode for xcb_map_subwindows. */
const ubyte XCB_MAP_SUBWINDOWS = 9;

/**
 * @brief xcb_map_subwindows_request_t
 **/
struct xcb_map_subwindows_request_t {
    ubyte        major_opcode; /**<  */
    ubyte        pad0; /**<  */
    ushort       length; /**<  */
    xcb_window_t window; /**<  */
}

/** Opcode for xcb_unmap_window. */
const ubyte XCB_UNMAP_WINDOW = 10;

/**
 * @brief xcb_unmap_window_request_t
 **/
struct xcb_unmap_window_request_t {
    ubyte        major_opcode; /**<  */
    ubyte        pad0; /**<  */
    ushort       length; /**<  */
    xcb_window_t window; /**<  */
}

/** Opcode for xcb_unmap_subwindows. */
const ubyte XCB_UNMAP_SUBWINDOWS = 11;

/**
 * @brief xcb_unmap_subwindows_request_t
 **/
struct xcb_unmap_subwindows_request_t {
    ubyte        major_opcode; /**<  */
    ubyte        pad0; /**<  */
    ushort       length; /**<  */
    xcb_window_t window; /**<  */
}

enum XcbConfigWindow {
    X            = 1,
    Y            = 2,
    WIDTH        = 4,
    HEIGHT       = 8,
    BORDER_WIDTH = 16,
    SIBLING      = 32,
    STACK_MODE   = 64
}
alias XcbConfigWindow xcb_config_window_t;

enum XcbStackMode {
    ABOVE     = 0,
    BELOW     = 1,
    TOP_IF    = 2,
    BOTTOM_IF = 3,
    OPPOSITE  = 4
}
alias XcbStackMode xcb_stack_mode_t;

/** Opcode for xcb_configure_window. */
const ubyte XCB_CONFIGURE_WINDOW = 12;

/**
 * @brief xcb_configure_window_request_t
 **/
struct xcb_configure_window_request_t {
    ubyte        major_opcode; /**<  */
    ubyte        pad0; /**<  */
    ushort       length; /**<  */
    xcb_window_t window; /**<  */
    ushort       value_mask; /**<  */
    ubyte        pad1[2]; /**<  */
}

enum XcbCirculate : ubyte {
    RAISE_LOWEST  = 0,
    LOWER_HIGHEST = 1
}
alias XcbCirculate xcb_circulate_t;

/** Opcode for xcb_circulate_window. */
const ubyte XCB_CIRCULATE_WINDOW = 13;

/**
 * @brief xcb_circulate_window_request_t
 **/
struct xcb_circulate_window_request_t {
    ubyte        major_opcode; /**<  */
    ubyte        direction; /**<  */
    ushort       length; /**<  */
    xcb_window_t window; /**<  */
}

/**
 * @brief xcb_get_geometry_cookie_t
 **/
struct xcb_get_geometry_cookie_t {
    uint sequence; /**<  */
}

/** Opcode for xcb_get_geometry. */
const ubyte XCB_GET_GEOMETRY = 14;

/**
 * @brief xcb_get_geometry_request_t
 **/
struct xcb_get_geometry_request_t {
    ubyte          major_opcode; /**<  */
    ubyte          pad0; /**<  */
    ushort         length; /**<  */
    xcb_drawable_t drawable; /**<  */
}

/**
 * @brief xcb_get_geometry_reply_t
 **/
struct xcb_get_geometry_reply_t {
    ubyte        response_type; /**<  */
    ubyte        depth; /**<  */
    ushort       sequence; /**<  */
    uint         length; /**<  */
    xcb_window_t root; /**<  */
    short        x; /**<  */
    short        y; /**<  */
    ushort       width; /**<  */
    ushort       height; /**<  */
    ushort       border_width; /**<  */
    ubyte        pad0[2]; /**<  */
}

/**
 * @brief xcb_query_tree_cookie_t
 **/
struct xcb_query_tree_cookie_t {
    uint sequence; /**<  */
}

/** Opcode for xcb_query_tree. */
const ubyte XCB_QUERY_TREE = 15;

/**
 * @brief xcb_query_tree_request_t
 **/
struct xcb_query_tree_request_t {
    ubyte        major_opcode; /**<  */
    ubyte        pad0; /**<  */
    ushort       length; /**<  */
    xcb_window_t window; /**<  */
}

/**
 * @brief xcb_query_tree_reply_t
 **/
struct xcb_query_tree_reply_t {
    ubyte        response_type; /**<  */
    ubyte        pad0; /**<  */
    ushort       sequence; /**<  */
    uint         length; /**<  */
    xcb_window_t root; /**<  */
    xcb_window_t parent; /**<  */
    ushort       children_len; /**<  */
    ubyte        pad1[14]; /**<  */
}

/**
 * @brief xcb_intern_atom_cookie_t
 **/
struct xcb_intern_atom_cookie_t {
    uint sequence; /**<  */
}

/** Opcode for xcb_intern_atom. */
const ubyte XCB_INTERN_ATOM = 16;

/**
 * @brief xcb_intern_atom_request_t
 **/
struct xcb_intern_atom_request_t {
    ubyte  major_opcode; /**<  */
    ubyte  only_if_exists; /**<  */
    ushort length; /**<  */
    ushort name_len; /**<  */
    ubyte  pad0[2]; /**<  */
}

/**
 * @brief xcb_intern_atom_reply_t
 **/
struct xcb_intern_atom_reply_t {
    ubyte      response_type; /**<  */
    ubyte      pad0; /**<  */
    ushort     sequence; /**<  */
    uint       length; /**<  */
    xcb_atom_t atom; /**<  */
}

/**
 * @brief xcb_get_atom_name_cookie_t
 **/
struct xcb_get_atom_name_cookie_t {
    uint sequence; /**<  */
}

/** Opcode for xcb_get_atom_name. */
const ubyte XCB_GET_ATOM_NAME = 17;

/**
 * @brief xcb_get_atom_name_request_t
 **/
struct xcb_get_atom_name_request_t {
    ubyte      major_opcode; /**<  */
    ubyte      pad0; /**<  */
    ushort     length; /**<  */
    xcb_atom_t atom; /**<  */
}

/**
 * @brief xcb_get_atom_name_reply_t
 **/
struct xcb_get_atom_name_reply_t {
    ubyte  response_type; /**<  */
    ubyte  pad0; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    ushort name_len; /**<  */
    ubyte  pad1[22]; /**<  */
}

enum XcbPropMode {
    REPLACE = 0,
    PREPEND = 1,
    APPEND  = 2
}
alias XcbPropMode xcb_prop_mode_t;

/** Opcode for xcb_change_property. */
const ubyte XCB_CHANGE_PROPERTY = 18;

/**
 * @brief xcb_change_property_request_t
 **/
struct xcb_change_property_request_t {
    ubyte        major_opcode; /**<  */
    ubyte        mode; /**<  */
    ushort       length; /**<  */
    xcb_window_t window; /**<  */
    xcb_atom_t   property; /**<  */
    xcb_atom_t   type; /**<  */
    ubyte        format; /**<  */
    ubyte        pad0[3]; /**<  */
    uint         data_len; /**<  */
}

/** Opcode for xcb_delete_property. */
const ubyte XCB_DELETE_PROPERTY = 19;

/**
 * @brief xcb_delete_property_request_t
 **/
struct xcb_delete_property_request_t {
    ubyte        major_opcode; /**<  */
    ubyte        pad0; /**<  */
    ushort       length; /**<  */
    xcb_window_t window; /**<  */
    xcb_atom_t   property; /**<  */
}

enum XcbGetPropertyType {
    ANY = 0
}
alias XcbGetPropertyType xcb_get_property_type_t;

/**
 * @brief xcb_get_property_cookie_t
 **/
struct xcb_get_property_cookie_t {
    uint sequence; /**<  */
}

/** Opcode for xcb_get_property. */
const ubyte XCB_GET_PROPERTY = 20;

/**
 * @brief xcb_get_property_request_t
 **/
struct xcb_get_property_request_t {
    ubyte        major_opcode; /**<  */
    ubyte        _delete; /**<  */
    ushort       length; /**<  */
    xcb_window_t window; /**<  */
    xcb_atom_t   property; /**<  */
    xcb_atom_t   type; /**<  */
    uint         long_offset; /**<  */
    uint         long_length; /**<  */
}

/**
 * @brief xcb_get_property_reply_t
 **/
struct xcb_get_property_reply_t {
    ubyte      response_type; /**<  */
    ubyte      format; /**<  */
    ushort     sequence; /**<  */
    uint       length; /**<  */
    xcb_atom_t type; /**<  */
    uint       bytes_after; /**<  */
    uint       value_len; /**<  */
    ubyte      pad0[12]; /**<  */
}

/**
 * @brief xcb_list_properties_cookie_t
 **/
struct xcb_list_properties_cookie_t {
    uint sequence; /**<  */
}

/** Opcode for xcb_list_properties. */
const ubyte XCB_LIST_PROPERTIES = 21;

/**
 * @brief xcb_list_properties_request_t
 **/
struct xcb_list_properties_request_t {
    ubyte        major_opcode; /**<  */
    ubyte        pad0; /**<  */
    ushort       length; /**<  */
    xcb_window_t window; /**<  */
}

/**
 * @brief xcb_list_properties_reply_t
 **/
struct xcb_list_properties_reply_t {
    ubyte  response_type; /**<  */
    ubyte  pad0; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    ushort atoms_len; /**<  */
    ubyte  pad1[22]; /**<  */
}

/** Opcode for xcb_set_selection_owner. */
const ubyte XCB_SET_SELECTION_OWNER = 22;

/**
 * @brief xcb_set_selection_owner_request_t
 **/
struct xcb_set_selection_owner_request_t {
    ubyte           major_opcode; /**<  */
    ubyte           pad0; /**<  */
    ushort          length; /**<  */
    xcb_window_t    owner; /**<  */
    xcb_atom_t      selection; /**<  */
    xcb_timestamp_t time; /**<  */
}

/**
 * @brief xcb_get_selection_owner_cookie_t
 **/
struct xcb_get_selection_owner_cookie_t {
    uint sequence; /**<  */
}

/** Opcode for xcb_get_selection_owner. */
const ubyte XCB_GET_SELECTION_OWNER = 23;

/**
 * @brief xcb_get_selection_owner_request_t
 **/
struct xcb_get_selection_owner_request_t {
    ubyte      major_opcode; /**<  */
    ubyte      pad0; /**<  */
    ushort     length; /**<  */
    xcb_atom_t selection; /**<  */
}

/**
 * @brief xcb_get_selection_owner_reply_t
 **/
struct xcb_get_selection_owner_reply_t {
    ubyte        response_type; /**<  */
    ubyte        pad0; /**<  */
    ushort       sequence; /**<  */
    uint         length; /**<  */
    xcb_window_t owner; /**<  */
}

/** Opcode for xcb_convert_selection. */
const ubyte XCB_CONVERT_SELECTION = 24;

/**
 * @brief xcb_convert_selection_request_t
 **/
struct xcb_convert_selection_request_t {
    ubyte           major_opcode; /**<  */
    ubyte           pad0; /**<  */
    ushort          length; /**<  */
    xcb_window_t    requestor; /**<  */
    xcb_atom_t      selection; /**<  */
    xcb_atom_t      target; /**<  */
    xcb_atom_t      property; /**<  */
    xcb_timestamp_t time; /**<  */
}

enum XcbSendEventDest {
    POINTER_WINDOW = 0,
    ITEM_FOCUS     = 1
}
alias XcbSendEventDest xcb_send_event_dest_t;

/** Opcode for xcb_send_event. */
const ubyte XCB_SEND_EVENT = 25;

/**
 * @brief xcb_send_event_request_t
 **/
struct xcb_send_event_request_t {
    ubyte        major_opcode; /**<  */
    ubyte        propagate; /**<  */
    ushort       length; /**<  */
    xcb_window_t destination; /**<  */
    uint         event_mask; /**<  */
    char         event[32]; /**<  */
}

enum XcbGrabMode {
    SYNC  = 0,
    ASYNC = 1
}
alias XcbGrabMode xcb_grab_mode_t;

enum XcbGrabStatus {
    SUCCESS         = 0,
    ALREADY_GRABBED = 1,
    INVALID_TIME    = 2,
    NOT_VIEWABLE    = 3,
    FROZEN          = 4
}
alias XcbGrabStatus xcb_grab_status_t;

enum XcbCursor {
    NONE = 0
}
alias XcbCursor xcb_cursor_enum_t;

/**
 * @brief xcb_grab_pointer_cookie_t
 **/
struct xcb_grab_pointer_cookie_t {
    uint sequence; /**<  */
}

/** Opcode for xcb_grab_pointer. */
const ubyte XCB_GRAB_POINTER = 26;

/**
 * @brief xcb_grab_pointer_request_t
 **/
struct xcb_grab_pointer_request_t {
    ubyte           major_opcode; /**<  */
    ubyte           owner_events; /**<  */
    ushort          length; /**<  */
    xcb_window_t    grab_window; /**<  */
    ushort          event_mask; /**<  */
    ubyte           pointer_mode; /**<  */
    ubyte           keyboard_mode; /**<  */
    xcb_window_t    confine_to; /**<  */
    xcb_cursor_t    cursor; /**<  */
    xcb_timestamp_t time; /**<  */
}

/**
 * @brief xcb_grab_pointer_reply_t
 **/
struct xcb_grab_pointer_reply_t {
    ubyte  response_type; /**<  */
    ubyte  status; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
}

/** Opcode for xcb_ungrab_pointer. */
const ubyte XCB_UNGRAB_POINTER = 27;

/**
 * @brief xcb_ungrab_pointer_request_t
 **/
struct xcb_ungrab_pointer_request_t {
    ubyte           major_opcode; /**<  */
    ubyte           pad0; /**<  */
    ushort          length; /**<  */
    xcb_timestamp_t time; /**<  */
}

enum XcbButtonIndex {
    ANY = 0,
    N1  = 1,
    N2  = 2,
    N3  = 3,
    N4  = 4,
    N5  = 5
}
alias XcbButtonIndex xcb_button_index_t;

/** Opcode for xcb_grab_button. */
const ubyte XCB_GRAB_BUTTON = 28;

/**
 * @brief xcb_grab_button_request_t
 **/
struct xcb_grab_button_request_t {
    ubyte        major_opcode; /**<  */
    ubyte        owner_events; /**<  */
    ushort       length; /**<  */
    xcb_window_t grab_window; /**<  */
    ushort       event_mask; /**<  */
    ubyte        pointer_mode; /**<  */
    ubyte        keyboard_mode; /**<  */
    xcb_window_t confine_to; /**<  */
    xcb_cursor_t cursor; /**<  */
    ubyte        button; /**<  */
    ubyte        pad0; /**<  */
    ushort       modifiers; /**<  */
}

/** Opcode for xcb_ungrab_button. */
const ubyte XCB_UNGRAB_BUTTON = 29;

/**
 * @brief xcb_ungrab_button_request_t
 **/
struct xcb_ungrab_button_request_t {
    ubyte        major_opcode; /**<  */
    ubyte        button; /**<  */
    ushort       length; /**<  */
    xcb_window_t grab_window; /**<  */
    ushort       modifiers; /**<  */
    ubyte        pad0[2]; /**<  */
}

/** Opcode for xcb_change_active_pointer_grab. */
const ubyte XCB_CHANGE_ACTIVE_POINTER_GRAB = 30;

/**
 * @brief xcb_change_active_pointer_grab_request_t
 **/
struct xcb_change_active_pointer_grab_request_t {
    ubyte           major_opcode; /**<  */
    ubyte           pad0; /**<  */
    ushort          length; /**<  */
    xcb_cursor_t    cursor; /**<  */
    xcb_timestamp_t time; /**<  */
    ushort          event_mask; /**<  */
    ubyte           pad1[2]; /**<  */
}

/**
 * @brief xcb_grab_keyboard_cookie_t
 **/
struct xcb_grab_keyboard_cookie_t {
    uint sequence; /**<  */
}

/** Opcode for xcb_grab_keyboard. */
const ubyte XCB_GRAB_KEYBOARD = 31;

/**
 * @brief xcb_grab_keyboard_request_t
 **/
struct xcb_grab_keyboard_request_t {
    ubyte           major_opcode; /**<  */
    ubyte           owner_events; /**<  */
    ushort          length; /**<  */
    xcb_window_t    grab_window; /**<  */
    xcb_timestamp_t time; /**<  */
    ubyte           pointer_mode; /**<  */
    ubyte           keyboard_mode; /**<  */
    ubyte           pad0[2]; /**<  */
}

/**
 * @brief xcb_grab_keyboard_reply_t
 **/
struct xcb_grab_keyboard_reply_t {
    ubyte  response_type; /**<  */
    ubyte  status; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
}

/** Opcode for xcb_ungrab_keyboard. */
const ubyte XCB_UNGRAB_KEYBOARD = 32;

/**
 * @brief xcb_ungrab_keyboard_request_t
 **/
struct xcb_ungrab_keyboard_request_t {
    ubyte           major_opcode; /**<  */
    ubyte           pad0; /**<  */
    ushort          length; /**<  */
    xcb_timestamp_t time; /**<  */
}

enum XcbGrab {
    ANY = 0
}
alias XcbGrab xcb_grab_t;

/** Opcode for xcb_grab_key. */
const ubyte XCB_GRAB_KEY = 33;

/**
 * @brief xcb_grab_key_request_t
 **/
struct xcb_grab_key_request_t {
    ubyte         major_opcode; /**<  */
    ubyte         owner_events; /**<  */
    ushort        length; /**<  */
    xcb_window_t  grab_window; /**<  */
    ushort        modifiers; /**<  */
    xcb_keycode_t key; /**<  */
    ubyte         pointer_mode; /**<  */
    ubyte         keyboard_mode; /**<  */
    ubyte         pad0[3]; /**<  */
}

/** Opcode for xcb_ungrab_key. */
const ubyte XCB_UNGRAB_KEY = 34;

/**
 * @brief xcb_ungrab_key_request_t
 **/
struct xcb_ungrab_key_request_t {
    ubyte         major_opcode; /**<  */
    xcb_keycode_t key; /**<  */
    ushort        length; /**<  */
    xcb_window_t  grab_window; /**<  */
    ushort        modifiers; /**<  */
    ubyte         pad0[2]; /**<  */
}

enum XcbAllow {
    ASYNC_POINTER   = 0,
    SYNC_POINTER    = 1,
    REPLAY_POINTER  = 2,
    ASYNC_KEYBOARD  = 3,
    SYNC_KEYBOARD   = 4,
    REPLAY_KEYBOARD = 5,
    ASYNC_BOTH      = 6,
    SYNC_BOTH       = 7
}
alias XcbAllow xcb_allow_t;

/** Opcode for xcb_allow_events. */
const ubyte XCB_ALLOW_EVENTS = 35;

/**
 * @brief xcb_allow_events_request_t
 **/
struct xcb_allow_events_request_t {
    ubyte           major_opcode; /**<  */
    ubyte           mode; /**<  */
    ushort          length; /**<  */
    xcb_timestamp_t time; /**<  */
}

/** Opcode for xcb_grab_server. */
const ubyte XCB_GRAB_SERVER = 36;

/**
 * @brief xcb_grab_server_request_t
 **/
struct xcb_grab_server_request_t {
    ubyte  major_opcode; /**<  */
    ubyte  pad0; /**<  */
    ushort length; /**<  */
}

/** Opcode for xcb_ungrab_server. */
const ubyte XCB_UNGRAB_SERVER = 37;

/**
 * @brief xcb_ungrab_server_request_t
 **/
struct xcb_ungrab_server_request_t {
    ubyte  major_opcode; /**<  */
    ubyte  pad0; /**<  */
    ushort length; /**<  */
}

/**
 * @brief xcb_query_pointer_cookie_t
 **/
struct xcb_query_pointer_cookie_t {
    uint sequence; /**<  */
}

/** Opcode for xcb_query_pointer. */
const ubyte XCB_QUERY_POINTER = 38;

/**
 * @brief xcb_query_pointer_request_t
 **/
struct xcb_query_pointer_request_t {
    ubyte        major_opcode; /**<  */
    ubyte        pad0; /**<  */
    ushort       length; /**<  */
    xcb_window_t window; /**<  */
}

/**
 * @brief xcb_query_pointer_reply_t
 **/
struct xcb_query_pointer_reply_t {
    ubyte        response_type; /**<  */
    ubyte        same_screen; /**<  */
    ushort       sequence; /**<  */
    uint         length; /**<  */
    xcb_window_t root; /**<  */
    xcb_window_t child; /**<  */
    short        root_x; /**<  */
    short        root_y; /**<  */
    short        win_x; /**<  */
    short        win_y; /**<  */
    ushort       mask; /**<  */
    ubyte        pad0[2]; /**<  */
}

/**
 * @brief xcb_timecoord_t
 **/
struct xcb_timecoord_t {
    xcb_timestamp_t time; /**<  */
    short           x; /**<  */
    short           y; /**<  */
}

/**
 * @brief xcb_timecoord_iterator_t
 **/
struct xcb_timecoord_iterator_t {
    xcb_timecoord_t *data; /**<  */
    int              rem; /**<  */
    int              index; /**<  */
}

/**
 * @brief xcb_get_motion_events_cookie_t
 **/
struct xcb_get_motion_events_cookie_t {
    uint sequence; /**<  */
}

/** Opcode for xcb_get_motion_events. */
const ubyte XCB_GET_MOTION_EVENTS = 39;

/**
 * @brief xcb_get_motion_events_request_t
 **/
struct xcb_get_motion_events_request_t {
    ubyte           major_opcode; /**<  */
    ubyte           pad0; /**<  */
    ushort          length; /**<  */
    xcb_window_t    window; /**<  */
    xcb_timestamp_t start; /**<  */
    xcb_timestamp_t stop; /**<  */
}

/**
 * @brief xcb_get_motion_events_reply_t
 **/
struct xcb_get_motion_events_reply_t {
    ubyte  response_type; /**<  */
    ubyte  pad0; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    uint   events_len; /**<  */
    ubyte  pad1[20]; /**<  */
}

/**
 * @brief xcb_translate_coordinates_cookie_t
 **/
struct xcb_translate_coordinates_cookie_t {
    uint sequence; /**<  */
}

/** Opcode for xcb_translate_coordinates. */
const ubyte XCB_TRANSLATE_COORDINATES = 40;

/**
 * @brief xcb_translate_coordinates_request_t
 **/
struct xcb_translate_coordinates_request_t {
    ubyte        major_opcode; /**<  */
    ubyte        pad0; /**<  */
    ushort       length; /**<  */
    xcb_window_t src_window; /**<  */
    xcb_window_t dst_window; /**<  */
    short        src_x; /**<  */
    short        src_y; /**<  */
}

/**
 * @brief xcb_translate_coordinates_reply_t
 **/
struct xcb_translate_coordinates_reply_t {
    ubyte        response_type; /**<  */
    ubyte        same_screen; /**<  */
    ushort       sequence; /**<  */
    uint         length; /**<  */
    xcb_window_t child; /**<  */
    short        dst_x; /**<  */
    short        dst_y; /**<  */
}

/** Opcode for xcb_warp_pointer. */
const ubyte XCB_WARP_POINTER = 41;

/**
 * @brief xcb_warp_pointer_request_t
 **/
struct xcb_warp_pointer_request_t {
    ubyte        major_opcode; /**<  */
    ubyte        pad0; /**<  */
    ushort       length; /**<  */
    xcb_window_t src_window; /**<  */
    xcb_window_t dst_window; /**<  */
    short        src_x; /**<  */
    short        src_y; /**<  */
    ushort       src_width; /**<  */
    ushort       src_height; /**<  */
    short        dst_x; /**<  */
    short        dst_y; /**<  */
}

enum XcbInputFocus {
    NONE            = 0,
    POINTER_ROOT    = 1,
    PARENT          = 2,
    FOLLOW_KEYBOARD = 3
}
alias XcbInputFocus xcb_input_focus_t;

/** Opcode for xcb_set_input_focus. */
const ubyte XCB_SET_INPUT_FOCUS = 42;

/**
 * @brief xcb_set_input_focus_request_t
 **/
struct xcb_set_input_focus_request_t {
    ubyte           major_opcode; /**<  */
    ubyte           revert_to; /**<  */
    ushort          length; /**<  */
    xcb_window_t    focus; /**<  */
    xcb_timestamp_t time; /**<  */
}

/**
 * @brief xcb_get_input_focus_cookie_t
 **/
struct xcb_get_input_focus_cookie_t {
    uint sequence; /**<  */
}

/** Opcode for xcb_get_input_focus. */
const ubyte XCB_GET_INPUT_FOCUS = 43;

/**
 * @brief xcb_get_input_focus_request_t
 **/
struct xcb_get_input_focus_request_t {
    ubyte  major_opcode; /**<  */
    ubyte  pad0; /**<  */
    ushort length; /**<  */
}

/**
 * @brief xcb_get_input_focus_reply_t
 **/
struct xcb_get_input_focus_reply_t {
    ubyte        response_type; /**<  */
    ubyte        revert_to; /**<  */
    ushort       sequence; /**<  */
    uint         length; /**<  */
    xcb_window_t focus; /**<  */
}

/**
 * @brief xcb_query_keymap_cookie_t
 **/
struct xcb_query_keymap_cookie_t {
    uint sequence; /**<  */
}

/** Opcode for xcb_query_keymap. */
const ubyte XCB_QUERY_KEYMAP = 44;

/**
 * @brief xcb_query_keymap_request_t
 **/
struct xcb_query_keymap_request_t {
    ubyte  major_opcode; /**<  */
    ubyte  pad0; /**<  */
    ushort length; /**<  */
}

/**
 * @brief xcb_query_keymap_reply_t
 **/
struct xcb_query_keymap_reply_t {
    ubyte  response_type; /**<  */
    ubyte  pad0; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    ubyte  keys[32]; /**<  */
}

/** Opcode for xcb_open_font. */
const ubyte XCB_OPEN_FONT = 45;

/**
 * @brief xcb_open_font_request_t
 **/
struct xcb_open_font_request_t {
    ubyte      major_opcode; /**<  */
    ubyte      pad0; /**<  */
    ushort     length; /**<  */
    xcb_font_t fid; /**<  */
    ushort     name_len; /**<  */
    ubyte      pad1[2]; /**<  */
}

/** Opcode for xcb_close_font. */
const ubyte XCB_CLOSE_FONT = 46;

/**
 * @brief xcb_close_font_request_t
 **/
struct xcb_close_font_request_t {
    ubyte      major_opcode; /**<  */
    ubyte      pad0; /**<  */
    ushort     length; /**<  */
    xcb_font_t font; /**<  */
}

enum XcbFontDraw {
    LEFT_TO_RIGHT = 0,
    RIGHT_TO_LEFT = 1
}
alias XcbFontDraw xcb_font_draw_t;

/**
 * @brief xcb_fontprop_t
 **/
struct xcb_fontprop_t {
    xcb_atom_t name; /**<  */
    uint       value; /**<  */
}

/**
 * @brief xcb_fontprop_iterator_t
 **/
struct xcb_fontprop_iterator_t {
    xcb_fontprop_t *data; /**<  */
    int             rem; /**<  */
    int             index; /**<  */
}

/**
 * @brief xcb_charinfo_t
 **/
struct xcb_charinfo_t {
    short  left_side_bearing; /**<  */
    short  right_side_bearing; /**<  */
    short  character_width; /**<  */
    short  ascent; /**<  */
    short  descent; /**<  */
    ushort attributes; /**<  */
}

/**
 * @brief xcb_charinfo_iterator_t
 **/
struct xcb_charinfo_iterator_t {
    xcb_charinfo_t *data; /**<  */
    int             rem; /**<  */
    int             index; /**<  */
}

/**
 * @brief xcb_query_font_cookie_t
 **/
struct xcb_query_font_cookie_t {
    uint sequence; /**<  */
}

/** Opcode for xcb_query_font. */
const ubyte XCB_QUERY_FONT = 47;

/**
 * @brief xcb_query_font_request_t
 **/
struct xcb_query_font_request_t {
    ubyte          major_opcode; /**<  */
    ubyte          pad0; /**<  */
    ushort         length; /**<  */
    xcb_fontable_t font; /**<  */
}

/**
 * @brief xcb_query_font_reply_t
 **/
struct xcb_query_font_reply_t {
    ubyte          response_type; /**<  */
    ubyte          pad0; /**<  */
    ushort         sequence; /**<  */
    uint           length; /**<  */
    xcb_charinfo_t min_bounds; /**<  */
    ubyte          pad1[4]; /**<  */
    xcb_charinfo_t max_bounds; /**<  */
    ubyte          pad2[4]; /**<  */
    ushort         min_char_or_byte2; /**<  */
    ushort         max_char_or_byte2; /**<  */
    ushort         default_char; /**<  */
    ushort         properties_len; /**<  */
    ubyte          draw_direction; /**<  */
    ubyte          min_byte1; /**<  */
    ubyte          max_byte1; /**<  */
    ubyte          all_chars_exist; /**<  */
    short          font_ascent; /**<  */
    short          font_descent; /**<  */
    uint           char_infos_len; /**<  */
}

/**
 * @brief xcb_query_text_extents_cookie_t
 **/
struct xcb_query_text_extents_cookie_t {
    uint sequence; /**<  */
}

/** Opcode for xcb_query_text_extents. */
const ubyte XCB_QUERY_TEXT_EXTENTS = 48;

/**
 * @brief xcb_query_text_extents_request_t
 **/
struct xcb_query_text_extents_request_t {
    ubyte          major_opcode; /**<  */
    ubyte          odd_length; /**<  */
    ushort         length; /**<  */
    xcb_fontable_t font; /**<  */
}

/**
 * @brief xcb_query_text_extents_reply_t
 **/
struct xcb_query_text_extents_reply_t {
    ubyte  response_type; /**<  */
    ubyte  draw_direction; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    short  font_ascent; /**<  */
    short  font_descent; /**<  */
    short  overall_ascent; /**<  */
    short  overall_descent; /**<  */
    int    overall_width; /**<  */
    int    overall_left; /**<  */
    int    overall_right; /**<  */
}

/**
 * @brief xcb_str_t
 **/
struct xcb_str_t {
    ubyte name_len; /**<  */
}

/**
 * @brief xcb_str_iterator_t
 **/
struct xcb_str_iterator_t {
    xcb_str_t *data; /**<  */
    int        rem; /**<  */
    int        index; /**<  */
}

/**
 * @brief xcb_list_fonts_cookie_t
 **/
struct xcb_list_fonts_cookie_t {
    uint sequence; /**<  */
}

/** Opcode for xcb_list_fonts. */
const ubyte XCB_LIST_FONTS = 49;

/**
 * @brief xcb_list_fonts_request_t
 **/
struct xcb_list_fonts_request_t {
    ubyte  major_opcode; /**<  */
    ubyte  pad0; /**<  */
    ushort length; /**<  */
    ushort max_names; /**<  */
    ushort pattern_len; /**<  */
}

/**
 * @brief xcb_list_fonts_reply_t
 **/
struct xcb_list_fonts_reply_t {
    ubyte  response_type; /**<  */
    ubyte  pad0; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    ushort names_len; /**<  */
    ubyte  pad1[22]; /**<  */
}

/**
 * @brief xcb_list_fonts_with_info_cookie_t
 **/
struct xcb_list_fonts_with_info_cookie_t {
    uint sequence; /**<  */
}

/** Opcode for xcb_list_fonts_with_info. */
const ubyte XCB_LIST_FONTS_WITH_INFO = 50;

/**
 * @brief xcb_list_fonts_with_info_request_t
 **/
struct xcb_list_fonts_with_info_request_t {
    ubyte  major_opcode; /**<  */
    ubyte  pad0; /**<  */
    ushort length; /**<  */
    ushort max_names; /**<  */
    ushort pattern_len; /**<  */
}

/**
 * @brief xcb_list_fonts_with_info_reply_t
 **/
struct xcb_list_fonts_with_info_reply_t {
    ubyte          response_type; /**<  */
    ubyte          name_len; /**<  */
    ushort         sequence; /**<  */
    uint           length; /**<  */
    xcb_charinfo_t min_bounds; /**<  */
    ubyte          pad0[4]; /**<  */
    xcb_charinfo_t max_bounds; /**<  */
    ubyte          pad1[4]; /**<  */
    ushort         min_char_or_byte2; /**<  */
    ushort         max_char_or_byte2; /**<  */
    ushort         default_char; /**<  */
    ushort         properties_len; /**<  */
    ubyte          draw_direction; /**<  */
    ubyte          min_byte1; /**<  */
    ubyte          max_byte1; /**<  */
    ubyte          all_chars_exist; /**<  */
    short          font_ascent; /**<  */
    short          font_descent; /**<  */
    uint           replies_hint; /**<  */
}

/** Opcode for xcb_set_font_path. */
const ubyte XCB_SET_FONT_PATH = 51;

/**
 * @brief xcb_set_font_path_request_t
 **/
struct xcb_set_font_path_request_t {
    ubyte  major_opcode; /**<  */
    ubyte  pad0; /**<  */
    ushort length; /**<  */
    ushort font_qty; /**<  */
    ubyte  pad1[2]; /**<  */
}

/**
 * @brief xcb_get_font_path_cookie_t
 **/
struct xcb_get_font_path_cookie_t {
    uint sequence; /**<  */
}

/** Opcode for xcb_get_font_path. */
const ubyte XCB_GET_FONT_PATH = 52;

/**
 * @brief xcb_get_font_path_request_t
 **/
struct xcb_get_font_path_request_t {
    ubyte  major_opcode; /**<  */
    ubyte  pad0; /**<  */
    ushort length; /**<  */
}

/**
 * @brief xcb_get_font_path_reply_t
 **/
struct xcb_get_font_path_reply_t {
    ubyte  response_type; /**<  */
    ubyte  pad0; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    ushort path_len; /**<  */
    ubyte  pad1[22]; /**<  */
}

/** Opcode for xcb_create_pixmap. */
const ubyte XCB_CREATE_PIXMAP = 53;

/**
 * @brief xcb_create_pixmap_request_t
 **/
struct xcb_create_pixmap_request_t {
    ubyte          major_opcode; /**<  */
    ubyte          depth; /**<  */
    ushort         length; /**<  */
    xcb_pixmap_t   pid; /**<  */
    xcb_drawable_t drawable; /**<  */
    ushort         width; /**<  */
    ushort         height; /**<  */
}

/** Opcode for xcb_free_pixmap. */
const ubyte XCB_FREE_PIXMAP = 54;

/**
 * @brief xcb_free_pixmap_request_t
 **/
struct xcb_free_pixmap_request_t {
    ubyte        major_opcode; /**<  */
    ubyte        pad0; /**<  */
    ushort       length; /**<  */
    xcb_pixmap_t pixmap; /**<  */
}

enum XcbGC {
    FUNCTION              = 1,
    PLANE_MASK            = 2,
    FOREGROUND            = 4,
    BACKGROUND            = 8,
    LINE_WIDTH            = 16,
    LINE_STYLE            = 32,
    CAP_STYLE             = 64,
    JOIN_STYLE            = 128,
    FILL_STYLE            = 256,
    FILL_RULE             = 512,
    TILE                  = 1024,
    STIPPLE               = 2048,
    TILE_STIPPLE_ORIGIN_X = 4096,
    TILE_STIPPLE_ORIGIN_Y = 8192,
    FONT                  = 16384,
    SUBWINDOW_MODE        = 32768,
    GRAPHICS_EXPOSURES    = 65536,
    CLIP_ORIGIN_X         = 131072,
    CLIP_ORIGIN_Y         = 262144,
    CLIP_MASK             = 524288,
    DASH_OFFSET           = 1048576,
    DASH_LIST             = 2097152,
    ARC_MODE              = 4194304
}
alias XcbGC xcb_gc_t;

enum XcbGX {
    CLEAR         = 0,
    AND           = 1,
    AND_REVERSE   = 2,
    COPY          = 3,
    AND_INVERTED  = 4,
    NOOP          = 5,
    XOR           = 6,
    OR            = 7,
    NOR           = 8,
    EQUIV         = 9,
    INVERT        = 10,
    OR_REVERSE    = 11,
    COPY_INVERTED = 12,
    OR_INVERTED   = 13,
    NAND          = 14,
    SET           = 15
}
alias XcbGX xcb_gx_t;

enum XcbLineStyle {
    SOLID       = 0,
    ON_OFF_DASH = 1,
    DOUBLE_DASH = 2
}
alias XcbLineStyle xcb_line_style_t;

enum XcbCapStyle {
    NOT_LAST   = 0,
    BUTT       = 1,
    ROUND      = 2,
    PROJECTING = 3
}
alias XcbCapStyle xcb_cap_style_t;

enum XcbJoinStyle {
    MITER = 0,
    ROUND = 1,
    BEVEL = 2
}
alias XcbJoinStyle xcb_join_style_t;

enum XcbFillStyle {
    SOLID           = 0,
    TILED           = 1,
    STIPPLED        = 2,
    OPAQUE_STIPPLED = 3
}
alias XcbFillStyle xcb_fill_style_t;

enum XcbFillRule {
    EVEN_ODD = 0,
    WINDING  = 1
}
alias XcbFillRule xcb_fill_rule_t;

enum XcbSubwindowMode {
    CLIP_BY_CHILDREN  = 0,
    INCLUDE_INFERIORS = 1
}
alias XcbSubwindowMode xcb_subwindow_mode_t;

enum XcbArcMode {
    CHORD     = 0,
    PIE_SLICE = 1
}
alias XcbArcMode xcb_arc_mode_t;

/** Opcode for xcb_create_gc. */
const ubyte XCB_CREATE_GC = 55;

/**
 * @brief xcb_create_gc_request_t
 **/
struct xcb_create_gc_request_t {
    ubyte          major_opcode; /**<  */
    ubyte          pad0; /**<  */
    ushort         length; /**<  */
    xcb_gcontext_t cid; /**<  */
    xcb_drawable_t drawable; /**<  */
    uint           value_mask; /**<  */
}

/** Opcode for xcb_change_gc. */
const ubyte XCB_CHANGE_GC = 56;

/**
 * @brief xcb_change_gc_request_t
 **/
struct xcb_change_gc_request_t {
    ubyte          major_opcode; /**<  */
    ubyte          pad0; /**<  */
    ushort         length; /**<  */
    xcb_gcontext_t gc; /**<  */
    uint           value_mask; /**<  */
}

/** Opcode for xcb_copy_gc. */
const ubyte XCB_COPY_GC = 57;

/**
 * @brief xcb_copy_gc_request_t
 **/
struct xcb_copy_gc_request_t {
    ubyte          major_opcode; /**<  */
    ubyte          pad0; /**<  */
    ushort         length; /**<  */
    xcb_gcontext_t src_gc; /**<  */
    xcb_gcontext_t dst_gc; /**<  */
    uint           value_mask; /**<  */
}

/** Opcode for xcb_set_dashes. */
const ubyte XCB_SET_DASHES = 58;

/**
 * @brief xcb_set_dashes_request_t
 **/
struct xcb_set_dashes_request_t {
    ubyte          major_opcode; /**<  */
    ubyte          pad0; /**<  */
    ushort         length; /**<  */
    xcb_gcontext_t gc; /**<  */
    ushort         dash_offset; /**<  */
    ushort         dashes_len; /**<  */
}

enum XcbClipOrdering {
    UNSORTED  = 0,
    Y_SORTED  = 1,
    YX_SORTED = 2,
    YX_BANDED = 3
}
alias XcbClipOrdering xcb_clip_ordering_t;

/** Opcode for xcb_set_clip_rectangles. */
const ubyte XCB_SET_CLIP_RECTANGLES = 59;

/**
 * @brief xcb_set_clip_rectangles_request_t
 **/
struct xcb_set_clip_rectangles_request_t {
    ubyte          major_opcode; /**<  */
    ubyte          ordering; /**<  */
    ushort         length; /**<  */
    xcb_gcontext_t gc; /**<  */
    short          clip_x_origin; /**<  */
    short          clip_y_origin; /**<  */
}

/** Opcode for xcb_free_gc. */
const ubyte XCB_FREE_GC = 60;

/**
 * @brief xcb_free_gc_request_t
 **/
struct xcb_free_gc_request_t {
    ubyte          major_opcode; /**<  */
    ubyte          pad0; /**<  */
    ushort         length; /**<  */
    xcb_gcontext_t gc; /**<  */
}

/** Opcode for xcb_clear_area. */
const ubyte XCB_CLEAR_AREA = 61;

/**
 * @brief xcb_clear_area_request_t
 **/
struct xcb_clear_area_request_t {
    ubyte        major_opcode; /**<  */
    ubyte        exposures; /**<  */
    ushort       length; /**<  */
    xcb_window_t window; /**<  */
    short        x; /**<  */
    short        y; /**<  */
    ushort       width; /**<  */
    ushort       height; /**<  */
}

/** Opcode for xcb_copy_area. */
const ubyte XCB_COPY_AREA = 62;

/**
 * @brief xcb_copy_area_request_t
 **/
struct xcb_copy_area_request_t {
    ubyte          major_opcode; /**<  */
    ubyte          pad0; /**<  */
    ushort         length; /**<  */
    xcb_drawable_t src_drawable; /**<  */
    xcb_drawable_t dst_drawable; /**<  */
    xcb_gcontext_t gc; /**<  */
    short          src_x; /**<  */
    short          src_y; /**<  */
    short          dst_x; /**<  */
    short          dst_y; /**<  */
    ushort         width; /**<  */
    ushort         height; /**<  */
}

/** Opcode for xcb_copy_plane. */
const ubyte XCB_COPY_PLANE = 63;

/**
 * @brief xcb_copy_plane_request_t
 **/
struct xcb_copy_plane_request_t {
    ubyte          major_opcode; /**<  */
    ubyte          pad0; /**<  */
    ushort         length; /**<  */
    xcb_drawable_t src_drawable; /**<  */
    xcb_drawable_t dst_drawable; /**<  */
    xcb_gcontext_t gc; /**<  */
    short          src_x; /**<  */
    short          src_y; /**<  */
    short          dst_x; /**<  */
    short          dst_y; /**<  */
    ushort         width; /**<  */
    ushort         height; /**<  */
    uint           bit_plane; /**<  */
}

enum XcbCoordMode {
    ORIGIN   = 0,
    PREVIOUS = 1
}
alias XcbCoordMode xcb_coord_mode_t;

/** Opcode for xcb_poly_point. */
const ubyte XCB_POLY_POINT = 64;

/**
 * @brief xcb_poly_point_request_t
 **/
struct xcb_poly_point_request_t {
    ubyte          major_opcode; /**<  */
    ubyte          coordinate_mode; /**<  */
    ushort         length; /**<  */
    xcb_drawable_t drawable; /**<  */
    xcb_gcontext_t gc; /**<  */
}

/** Opcode for xcb_poly_line. */
const ubyte XCB_POLY_LINE = 65;

/**
 * @brief xcb_poly_line_request_t
 **/
struct xcb_poly_line_request_t {
    ubyte          major_opcode; /**<  */
    ubyte          coordinate_mode; /**<  */
    ushort         length; /**<  */
    xcb_drawable_t drawable; /**<  */
    xcb_gcontext_t gc; /**<  */
}

/**
 * @brief xcb_segment_t
 **/
struct xcb_segment_t {
    short x1; /**<  */
    short y1; /**<  */
    short x2; /**<  */
    short y2; /**<  */
}

/**
 * @brief xcb_segment_iterator_t
 **/
struct xcb_segment_iterator_t {
    xcb_segment_t *data; /**<  */
    int            rem; /**<  */
    int            index; /**<  */
}

/** Opcode for xcb_poly_segment. */
const ubyte XCB_POLY_SEGMENT = 66;

/**
 * @brief xcb_poly_segment_request_t
 **/
struct xcb_poly_segment_request_t {
    ubyte          major_opcode; /**<  */
    ubyte          pad0; /**<  */
    ushort         length; /**<  */
    xcb_drawable_t drawable; /**<  */
    xcb_gcontext_t gc; /**<  */
}

/** Opcode for xcb_poly_rectangle. */
const ubyte XCB_POLY_RECTANGLE = 67;

/**
 * @brief xcb_poly_rectangle_request_t
 **/
struct xcb_poly_rectangle_request_t {
    ubyte          major_opcode; /**<  */
    ubyte          pad0; /**<  */
    ushort         length; /**<  */
    xcb_drawable_t drawable; /**<  */
    xcb_gcontext_t gc; /**<  */
}

/** Opcode for xcb_poly_arc. */
const ubyte XCB_POLY_ARC = 68;

/**
 * @brief xcb_poly_arc_request_t
 **/
struct xcb_poly_arc_request_t {
    ubyte          major_opcode; /**<  */
    ubyte          pad0; /**<  */
    ushort         length; /**<  */
    xcb_drawable_t drawable; /**<  */
    xcb_gcontext_t gc; /**<  */
}

enum XcbPolyShape {
    COMPLEX   = 0,
    NONCONVEX = 1,
    CONVEX    = 2
}
alias XcbPolyShape xcb_poly_shape_t;

/** Opcode for xcb_fill_poly. */
const ubyte XCB_FILL_POLY = 69;

/**
 * @brief xcb_fill_poly_request_t
 **/
struct xcb_fill_poly_request_t {
    ubyte          major_opcode; /**<  */
    ubyte          pad0; /**<  */
    ushort         length; /**<  */
    xcb_drawable_t drawable; /**<  */
    xcb_gcontext_t gc; /**<  */
    ubyte          shape; /**<  */
    ubyte          coordinate_mode; /**<  */
    ubyte          pad1[2]; /**<  */
}

/** Opcode for xcb_poly_fill_rectangle. */
const ubyte XCB_POLY_FILL_RECTANGLE = 70;

/**
 * @brief xcb_poly_fill_rectangle_request_t
 **/
struct xcb_poly_fill_rectangle_request_t {
    ubyte          major_opcode; /**<  */
    ubyte          pad0; /**<  */
    ushort         length; /**<  */
    xcb_drawable_t drawable; /**<  */
    xcb_gcontext_t gc; /**<  */
}

/** Opcode for xcb_poly_fill_arc. */
const ubyte XCB_POLY_FILL_ARC = 71;

/**
 * @brief xcb_poly_fill_arc_request_t
 **/
struct xcb_poly_fill_arc_request_t {
    ubyte          major_opcode; /**<  */
    ubyte          pad0; /**<  */
    ushort         length; /**<  */
    xcb_drawable_t drawable; /**<  */
    xcb_gcontext_t gc; /**<  */
}

enum XcbImageFormat {
    XY_BITMAP = 0,
    XY_PIXMAP = 1,
    Z_PIXMAP  = 2
}
alias XcbImageFormat xcb_image_format_t;

/** Opcode for xcb_put_image. */
const ubyte XCB_PUT_IMAGE = 72;

/**
 * @brief xcb_put_image_request_t
 **/
struct xcb_put_image_request_t {
    ubyte          major_opcode; /**<  */
    ubyte          format; /**<  */
    ushort         length; /**<  */
    xcb_drawable_t drawable; /**<  */
    xcb_gcontext_t gc; /**<  */
    ushort         width; /**<  */
    ushort         height; /**<  */
    short          dst_x; /**<  */
    short          dst_y; /**<  */
    ubyte          left_pad; /**<  */
    ubyte          depth; /**<  */
    ubyte          pad0[2]; /**<  */
}

/**
 * @brief xcb_get_image_cookie_t
 **/
struct xcb_get_image_cookie_t {
    uint sequence; /**<  */
}

/** Opcode for xcb_get_image. */
const ubyte XCB_GET_IMAGE = 73;

/**
 * @brief xcb_get_image_request_t
 **/
struct xcb_get_image_request_t {
    ubyte          major_opcode; /**<  */
    ubyte          format; /**<  */
    ushort         length; /**<  */
    xcb_drawable_t drawable; /**<  */
    short          x; /**<  */
    short          y; /**<  */
    ushort         width; /**<  */
    ushort         height; /**<  */
    uint           plane_mask; /**<  */
}

/**
 * @brief xcb_get_image_reply_t
 **/
struct xcb_get_image_reply_t {
    ubyte          response_type; /**<  */
    ubyte          depth; /**<  */
    ushort         sequence; /**<  */
    uint           length; /**<  */
    xcb_visualid_t visual; /**<  */
    ubyte          pad0[20]; /**<  */
}

/** Opcode for xcb_poly_text_8. */
const ubyte XCB_POLY_TEXT_8 = 74;

/**
 * @brief xcb_poly_text_8_request_t
 **/
struct xcb_poly_text_8_request_t {
    ubyte          major_opcode; /**<  */
    ubyte          pad0; /**<  */
    ushort         length; /**<  */
    xcb_drawable_t drawable; /**<  */
    xcb_gcontext_t gc; /**<  */
    short          x; /**<  */
    short          y; /**<  */
}

/** Opcode for xcb_poly_text_16. */
const ubyte XCB_POLY_TEXT_16 = 75;

/**
 * @brief xcb_poly_text_16_request_t
 **/
struct xcb_poly_text_16_request_t {
    ubyte          major_opcode; /**<  */
    ubyte          pad0; /**<  */
    ushort         length; /**<  */
    xcb_drawable_t drawable; /**<  */
    xcb_gcontext_t gc; /**<  */
    short          x; /**<  */
    short          y; /**<  */
}

/** Opcode for xcb_image_text_8. */
const ubyte XCB_IMAGE_TEXT_8 = 76;

/**
 * @brief xcb_image_text_8_request_t
 **/
struct xcb_image_text_8_request_t {
    ubyte          major_opcode; /**<  */
    ubyte          string_len; /**<  */
    ushort         length; /**<  */
    xcb_drawable_t drawable; /**<  */
    xcb_gcontext_t gc; /**<  */
    short          x; /**<  */
    short          y; /**<  */
}

/** Opcode for xcb_image_text_16. */
const ubyte XCB_IMAGE_TEXT_16 = 77;

/**
 * @brief xcb_image_text_16_request_t
 **/
struct xcb_image_text_16_request_t {
    ubyte          major_opcode; /**<  */
    ubyte          string_len; /**<  */
    ushort         length; /**<  */
    xcb_drawable_t drawable; /**<  */
    xcb_gcontext_t gc; /**<  */
    short          x; /**<  */
    short          y; /**<  */
}

enum XcbColormapAlloc {
    NONE = 0,
    ALL  = 1
}
alias XcbColormapAlloc xcb_colormap_alloc_t;

/** Opcode for xcb_create_colormap. */
const ubyte XCB_CREATE_COLORMAP = 78;

/**
 * @brief xcb_create_colormap_request_t
 **/
struct xcb_create_colormap_request_t {
    ubyte          major_opcode; /**<  */
    ubyte          alloc; /**<  */
    ushort         length; /**<  */
    xcb_colormap_t mid; /**<  */
    xcb_window_t   window; /**<  */
    xcb_visualid_t visual; /**<  */
}

/** Opcode for xcb_free_colormap. */
const ubyte XCB_FREE_COLORMAP = 79;

/**
 * @brief xcb_free_colormap_request_t
 **/
struct xcb_free_colormap_request_t {
    ubyte          major_opcode; /**<  */
    ubyte          pad0; /**<  */
    ushort         length; /**<  */
    xcb_colormap_t cmap; /**<  */
}

/** Opcode for xcb_copy_colormap_and_free. */
const ubyte XCB_COPY_COLORMAP_AND_FREE = 80;

/**
 * @brief xcb_copy_colormap_and_free_request_t
 **/
struct xcb_copy_colormap_and_free_request_t {
    ubyte          major_opcode; /**<  */
    ubyte          pad0; /**<  */
    ushort         length; /**<  */
    xcb_colormap_t mid; /**<  */
    xcb_colormap_t src_cmap; /**<  */
}

/** Opcode for xcb_install_colormap. */
const ubyte XCB_INSTALL_COLORMAP = 81;

/**
 * @brief xcb_install_colormap_request_t
 **/
struct xcb_install_colormap_request_t {
    ubyte          major_opcode; /**<  */
    ubyte          pad0; /**<  */
    ushort         length; /**<  */
    xcb_colormap_t cmap; /**<  */
}

/** Opcode for xcb_uninstall_colormap. */
const ubyte XCB_UNINSTALL_COLORMAP = 82;

/**
 * @brief xcb_uninstall_colormap_request_t
 **/
struct xcb_uninstall_colormap_request_t {
    ubyte          major_opcode; /**<  */
    ubyte          pad0; /**<  */
    ushort         length; /**<  */
    xcb_colormap_t cmap; /**<  */
}

/**
 * @brief xcb_list_installed_colormaps_cookie_t
 **/
struct xcb_list_installed_colormaps_cookie_t {
    uint sequence; /**<  */
}

/** Opcode for xcb_list_installed_colormaps. */
const ubyte XCB_LIST_INSTALLED_COLORMAPS = 83;

/**
 * @brief xcb_list_installed_colormaps_request_t
 **/
struct xcb_list_installed_colormaps_request_t {
    ubyte        major_opcode; /**<  */
    ubyte        pad0; /**<  */
    ushort       length; /**<  */
    xcb_window_t window; /**<  */
}

/**
 * @brief xcb_list_installed_colormaps_reply_t
 **/
struct xcb_list_installed_colormaps_reply_t {
    ubyte  response_type; /**<  */
    ubyte  pad0; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    ushort cmaps_len; /**<  */
    ubyte  pad1[22]; /**<  */
}

/**
 * @brief xcb_alloc_color_cookie_t
 **/
struct xcb_alloc_color_cookie_t {
    uint sequence; /**<  */
}

/** Opcode for xcb_alloc_color. */
const ubyte XCB_ALLOC_COLOR = 84;

/**
 * @brief xcb_alloc_color_request_t
 **/
struct xcb_alloc_color_request_t {
    ubyte          major_opcode; /**<  */
    ubyte          pad0; /**<  */
    ushort         length; /**<  */
    xcb_colormap_t cmap; /**<  */
    ushort         red; /**<  */
    ushort         green; /**<  */
    ushort         blue; /**<  */
    ubyte          pad1[2]; /**<  */
}

/**
 * @brief xcb_alloc_color_reply_t
 **/
struct xcb_alloc_color_reply_t {
    ubyte  response_type; /**<  */
    ubyte  pad0; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    ushort red; /**<  */
    ushort green; /**<  */
    ushort blue; /**<  */
    ubyte  pad1[2]; /**<  */
    uint   pixel; /**<  */
}

/**
 * @brief xcb_alloc_named_color_cookie_t
 **/
struct xcb_alloc_named_color_cookie_t {
    uint sequence; /**<  */
}

/** Opcode for xcb_alloc_named_color. */
const ubyte XCB_ALLOC_NAMED_COLOR = 85;

/**
 * @brief xcb_alloc_named_color_request_t
 **/
struct xcb_alloc_named_color_request_t {
    ubyte          major_opcode; /**<  */
    ubyte          pad0; /**<  */
    ushort         length; /**<  */
    xcb_colormap_t cmap; /**<  */
    ushort         name_len; /**<  */
    ubyte          pad1[2]; /**<  */
}

/**
 * @brief xcb_alloc_named_color_reply_t
 **/
struct xcb_alloc_named_color_reply_t {
    ubyte  response_type; /**<  */
    ubyte  pad0; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    uint   pixel; /**<  */
    ushort exact_red; /**<  */
    ushort exact_green; /**<  */
    ushort exact_blue; /**<  */
    ushort visual_red; /**<  */
    ushort visual_green; /**<  */
    ushort visual_blue; /**<  */
}

/**
 * @brief xcb_alloc_color_cells_cookie_t
 **/
struct xcb_alloc_color_cells_cookie_t {
    uint sequence; /**<  */
}

/** Opcode for xcb_alloc_color_cells. */
const ubyte XCB_ALLOC_COLOR_CELLS = 86;

/**
 * @brief xcb_alloc_color_cells_request_t
 **/
struct xcb_alloc_color_cells_request_t {
    ubyte          major_opcode; /**<  */
    ubyte          contiguous; /**<  */
    ushort         length; /**<  */
    xcb_colormap_t cmap; /**<  */
    ushort         colors; /**<  */
    ushort         planes; /**<  */
}

/**
 * @brief xcb_alloc_color_cells_reply_t
 **/
struct xcb_alloc_color_cells_reply_t {
    ubyte  response_type; /**<  */
    ubyte  pad0; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    ushort pixels_len; /**<  */
    ushort masks_len; /**<  */
    ubyte  pad1[20]; /**<  */
}

/**
 * @brief xcb_alloc_color_planes_cookie_t
 **/
struct xcb_alloc_color_planes_cookie_t {
    uint sequence; /**<  */
}

/** Opcode for xcb_alloc_color_planes. */
const ubyte XCB_ALLOC_COLOR_PLANES = 87;

/**
 * @brief xcb_alloc_color_planes_request_t
 **/
struct xcb_alloc_color_planes_request_t {
    ubyte          major_opcode; /**<  */
    ubyte          contiguous; /**<  */
    ushort         length; /**<  */
    xcb_colormap_t cmap; /**<  */
    ushort         colors; /**<  */
    ushort         reds; /**<  */
    ushort         greens; /**<  */
    ushort         blues; /**<  */
}

/**
 * @brief xcb_alloc_color_planes_reply_t
 **/
struct xcb_alloc_color_planes_reply_t {
    ubyte  response_type; /**<  */
    ubyte  pad0; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    ushort pixels_len; /**<  */
    ubyte  pad1[2]; /**<  */
    uint   red_mask; /**<  */
    uint   green_mask; /**<  */
    uint   blue_mask; /**<  */
    ubyte  pad2[8]; /**<  */
}

/** Opcode for xcb_free_colors. */
const ubyte XCB_FREE_COLORS = 88;

/**
 * @brief xcb_free_colors_request_t
 **/
struct xcb_free_colors_request_t {
    ubyte          major_opcode; /**<  */
    ubyte          pad0; /**<  */
    ushort         length; /**<  */
    xcb_colormap_t cmap; /**<  */
    uint           plane_mask; /**<  */
}

enum XcbColorFlag {
    RED   = 1,
    GREEN = 2,
    BLUE  = 4
}
alias XcbColorFlag xcb_color_flag_t;

/**
 * @brief xcb_coloritem_t
 **/
struct xcb_coloritem_t {
    uint   pixel; /**<  */
    ushort red; /**<  */
    ushort green; /**<  */
    ushort blue; /**<  */
    ubyte  flags; /**<  */
    ubyte  pad0; /**<  */
}

/**
 * @brief xcb_coloritem_iterator_t
 **/
struct xcb_coloritem_iterator_t {
    xcb_coloritem_t *data; /**<  */
    int              rem; /**<  */
    int              index; /**<  */
}

/** Opcode for xcb_store_colors. */
const ubyte XCB_STORE_COLORS = 89;

/**
 * @brief xcb_store_colors_request_t
 **/
struct xcb_store_colors_request_t {
    ubyte          major_opcode; /**<  */
    ubyte          pad0; /**<  */
    ushort         length; /**<  */
    xcb_colormap_t cmap; /**<  */
}

/** Opcode for xcb_store_named_color. */
const ubyte XCB_STORE_NAMED_COLOR = 90;

/**
 * @brief xcb_store_named_color_request_t
 **/
struct xcb_store_named_color_request_t {
    ubyte          major_opcode; /**<  */
    ubyte          flags; /**<  */
    ushort         length; /**<  */
    xcb_colormap_t cmap; /**<  */
    uint           pixel; /**<  */
    ushort         name_len; /**<  */
    ubyte          pad0[2]; /**<  */
}

/**
 * @brief xcb_rgb_t
 **/
struct xcb_rgb_t {
    ushort red; /**<  */
    ushort green; /**<  */
    ushort blue; /**<  */
    ubyte  pad0[2]; /**<  */
}

/**
 * @brief xcb_rgb_iterator_t
 **/
struct xcb_rgb_iterator_t {
    xcb_rgb_t *data; /**<  */
    int        rem; /**<  */
    int        index; /**<  */
}

/**
 * @brief xcb_query_colors_cookie_t
 **/
struct xcb_query_colors_cookie_t {
    uint sequence; /**<  */
}

/** Opcode for xcb_query_colors. */
const ubyte XCB_QUERY_COLORS = 91;

/**
 * @brief xcb_query_colors_request_t
 **/
struct xcb_query_colors_request_t {
    ubyte          major_opcode; /**<  */
    ubyte          pad0; /**<  */
    ushort         length; /**<  */
    xcb_colormap_t cmap; /**<  */
}

/**
 * @brief xcb_query_colors_reply_t
 **/
struct xcb_query_colors_reply_t {
    ubyte  response_type; /**<  */
    ubyte  pad0; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    ushort colors_len; /**<  */
    ubyte  pad1[22]; /**<  */
}

/**
 * @brief xcb_lookup_color_cookie_t
 **/
struct xcb_lookup_color_cookie_t {
    uint sequence; /**<  */
}

/** Opcode for xcb_lookup_color. */
const ubyte XCB_LOOKUP_COLOR = 92;

/**
 * @brief xcb_lookup_color_request_t
 **/
struct xcb_lookup_color_request_t {
    ubyte          major_opcode; /**<  */
    ubyte          pad0; /**<  */
    ushort         length; /**<  */
    xcb_colormap_t cmap; /**<  */
    ushort         name_len; /**<  */
    ubyte          pad1[2]; /**<  */
}

/**
 * @brief xcb_lookup_color_reply_t
 **/
struct xcb_lookup_color_reply_t {
    ubyte  response_type; /**<  */
    ubyte  pad0; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    ushort exact_red; /**<  */
    ushort exact_green; /**<  */
    ushort exact_blue; /**<  */
    ushort visual_red; /**<  */
    ushort visual_green; /**<  */
    ushort visual_blue; /**<  */
}

enum XcbPixmap {
    NONE = 0
}
alias XcbPixmap xcb_pixmap_enum_t;

/** Opcode for xcb_create_cursor. */
const ubyte XCB_CREATE_CURSOR = 93;

/**
 * @brief xcb_create_cursor_request_t
 **/
struct xcb_create_cursor_request_t {
    ubyte        major_opcode; /**<  */
    ubyte        pad0; /**<  */
    ushort       length; /**<  */
    xcb_cursor_t cid; /**<  */
    xcb_pixmap_t source; /**<  */
    xcb_pixmap_t mask; /**<  */
    ushort       fore_red; /**<  */
    ushort       fore_green; /**<  */
    ushort       fore_blue; /**<  */
    ushort       back_red; /**<  */
    ushort       back_green; /**<  */
    ushort       back_blue; /**<  */
    ushort       x; /**<  */
    ushort       y; /**<  */
}

enum XcbFont {
    NONE = 0
}
alias XcbFont xcb_font_enum_t;

/** Opcode for xcb_create_glyph_cursor. */
const ubyte XCB_CREATE_GLYPH_CURSOR = 94;

/**
 * @brief xcb_create_glyph_cursor_request_t
 **/
struct xcb_create_glyph_cursor_request_t {
    ubyte        major_opcode; /**<  */
    ubyte        pad0; /**<  */
    ushort       length; /**<  */
    xcb_cursor_t cid; /**<  */
    xcb_font_t   source_font; /**<  */
    xcb_font_t   mask_font; /**<  */
    ushort       source_char; /**<  */
    ushort       mask_char; /**<  */
    ushort       fore_red; /**<  */
    ushort       fore_green; /**<  */
    ushort       fore_blue; /**<  */
    ushort       back_red; /**<  */
    ushort       back_green; /**<  */
    ushort       back_blue; /**<  */
}

/** Opcode for xcb_free_cursor. */
const ubyte XCB_FREE_CURSOR = 95;

/**
 * @brief xcb_free_cursor_request_t
 **/
struct xcb_free_cursor_request_t {
    ubyte        major_opcode; /**<  */
    ubyte        pad0; /**<  */
    ushort       length; /**<  */
    xcb_cursor_t cursor; /**<  */
}

/** Opcode for xcb_recolor_cursor. */
const ubyte XCB_RECOLOR_CURSOR = 96;

/**
 * @brief xcb_recolor_cursor_request_t
 **/
struct xcb_recolor_cursor_request_t {
    ubyte        major_opcode; /**<  */
    ubyte        pad0; /**<  */
    ushort       length; /**<  */
    xcb_cursor_t cursor; /**<  */
    ushort       fore_red; /**<  */
    ushort       fore_green; /**<  */
    ushort       fore_blue; /**<  */
    ushort       back_red; /**<  */
    ushort       back_green; /**<  */
    ushort       back_blue; /**<  */
}

enum XcbQueryShapeOf {
    LARGEST_CURSOR  = 0,
    FASTEST_TILE    = 1,
    FASTEST_STIPPLE = 2
}
alias XcbQueryShapeOf xcb_query_shape_of_t;

/**
 * @brief xcb_query_best_size_cookie_t
 **/
struct xcb_query_best_size_cookie_t {
    uint sequence; /**<  */
}

/** Opcode for xcb_query_best_size. */
const ubyte XCB_QUERY_BEST_SIZE = 97;

/**
 * @brief xcb_query_best_size_request_t
 **/
struct xcb_query_best_size_request_t {
    ubyte          major_opcode; /**<  */
    ubyte          _class; /**<  */
    ushort         length; /**<  */
    xcb_drawable_t drawable; /**<  */
    ushort         width; /**<  */
    ushort         height; /**<  */
}

/**
 * @brief xcb_query_best_size_reply_t
 **/
struct xcb_query_best_size_reply_t {
    ubyte  response_type; /**<  */
    ubyte  pad0; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    ushort width; /**<  */
    ushort height; /**<  */
}

/**
 * @brief xcb_query_extension_cookie_t
 **/
struct xcb_query_extension_cookie_t {
    uint sequence; /**<  */
}

/** Opcode for xcb_query_extension. */
const ubyte XCB_QUERY_EXTENSION = 98;

/**
 * @brief xcb_query_extension_request_t
 **/
struct xcb_query_extension_request_t {
    ubyte  major_opcode; /**<  */
    ubyte  pad0; /**<  */
    ushort length; /**<  */
    ushort name_len; /**<  */
    ubyte  pad1[2]; /**<  */
}

/**
 * @brief xcb_query_extension_reply_t
 **/
struct xcb_query_extension_reply_t {
    ubyte  response_type; /**<  */
    ubyte  pad0; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    ubyte  present; /**<  */
    ubyte  major_opcode; /**<  */
    ubyte  first_event; /**<  */
    ubyte  first_error; /**<  */
}

/**
 * @brief xcb_list_extensions_cookie_t
 **/
struct xcb_list_extensions_cookie_t {
    uint sequence; /**<  */
}

/** Opcode for xcb_list_extensions. */
const ubyte XCB_LIST_EXTENSIONS = 99;

/**
 * @brief xcb_list_extensions_request_t
 **/
struct xcb_list_extensions_request_t {
    ubyte  major_opcode; /**<  */
    ubyte  pad0; /**<  */
    ushort length; /**<  */
}

/**
 * @brief xcb_list_extensions_reply_t
 **/
struct xcb_list_extensions_reply_t {
    ubyte  response_type; /**<  */
    ubyte  names_len; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    ubyte  pad0[24]; /**<  */
}

/** Opcode for xcb_change_keyboard_mapping. */
const ubyte XCB_CHANGE_KEYBOARD_MAPPING = 100;

/**
 * @brief xcb_change_keyboard_mapping_request_t
 **/
struct xcb_change_keyboard_mapping_request_t {
    ubyte         major_opcode; /**<  */
    ubyte         keycode_count; /**<  */
    ushort        length; /**<  */
    xcb_keycode_t first_keycode; /**<  */
    ubyte         keysyms_per_keycode; /**<  */
    ubyte         pad0[2]; /**<  */
}

/**
 * @brief xcb_get_keyboard_mapping_cookie_t
 **/
struct xcb_get_keyboard_mapping_cookie_t {
    uint sequence; /**<  */
}

/** Opcode for xcb_get_keyboard_mapping. */
const ubyte XCB_GET_KEYBOARD_MAPPING = 101;

/**
 * @brief xcb_get_keyboard_mapping_request_t
 **/
struct xcb_get_keyboard_mapping_request_t {
    ubyte         major_opcode; /**<  */
    ubyte         pad0; /**<  */
    ushort        length; /**<  */
    xcb_keycode_t first_keycode; /**<  */
    ubyte         count; /**<  */
}

/**
 * @brief xcb_get_keyboard_mapping_reply_t
 **/
struct xcb_get_keyboard_mapping_reply_t {
    ubyte  response_type; /**<  */
    ubyte  keysyms_per_keycode; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    ubyte  pad0[24]; /**<  */
}

enum XcbKB {
    KEY_CLICK_PERCENT = 1,
    BELL_PERCENT      = 2,
    BELL_PITCH        = 4,
    BELL_DURATION     = 8,
    LED               = 16,
    LED_MODE          = 32,
    KEY               = 64,
    AUTO_REPEAT_MODE  = 128
}
alias XcbKB xcb_kb_t;

enum XcbLedMode {
    OFF = 0,
    ON  = 1
}
alias XcbLedMode xcb_led_mode_t;

enum XcbAutoRepeatMode {
    OFF     = 0,
    ON      = 1,
    DEFAULT = 2
}
alias XcbAutoRepeatMode xcb_auto_repeat_mode_t;

/** Opcode for xcb_change_keyboard_control. */
const ubyte XCB_CHANGE_KEYBOARD_CONTROL = 102;

/**
 * @brief xcb_change_keyboard_control_request_t
 **/
struct xcb_change_keyboard_control_request_t {
    ubyte  major_opcode; /**<  */
    ubyte  pad0; /**<  */
    ushort length; /**<  */
    uint   value_mask; /**<  */
}

/**
 * @brief xcb_get_keyboard_control_cookie_t
 **/
struct xcb_get_keyboard_control_cookie_t {
    uint sequence; /**<  */
}

/** Opcode for xcb_get_keyboard_control. */
const ubyte XCB_GET_KEYBOARD_CONTROL = 103;

/**
 * @brief xcb_get_keyboard_control_request_t
 **/
struct xcb_get_keyboard_control_request_t {
    ubyte  major_opcode; /**<  */
    ubyte  pad0; /**<  */
    ushort length; /**<  */
}

/**
 * @brief xcb_get_keyboard_control_reply_t
 **/
struct xcb_get_keyboard_control_reply_t {
    ubyte  response_type; /**<  */
    ubyte  global_auto_repeat; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    uint   led_mask; /**<  */
    ubyte  key_click_percent; /**<  */
    ubyte  bell_percent; /**<  */
    ushort bell_pitch; /**<  */
    ushort bell_duration; /**<  */
    ubyte  pad0[2]; /**<  */
    ubyte  auto_repeats[32]; /**<  */
}

/** Opcode for xcb_bell. */
const ubyte XCB_BELL = 104;

/**
 * @brief xcb_bell_request_t
 **/
struct xcb_bell_request_t {
    ubyte  major_opcode; /**<  */
    byte   percent; /**<  */
    ushort length; /**<  */
}

/** Opcode for xcb_change_pointer_control. */
const ubyte XCB_CHANGE_POINTER_CONTROL = 105;

/**
 * @brief xcb_change_pointer_control_request_t
 **/
struct xcb_change_pointer_control_request_t {
    ubyte  major_opcode; /**<  */
    ubyte  pad0; /**<  */
    ushort length; /**<  */
    short  acceleration_numerator; /**<  */
    short  acceleration_denominator; /**<  */
    short  threshold; /**<  */
    ubyte  do_acceleration; /**<  */
    ubyte  do_threshold; /**<  */
}

/**
 * @brief xcb_get_pointer_control_cookie_t
 **/
struct xcb_get_pointer_control_cookie_t {
    uint sequence; /**<  */
}

/** Opcode for xcb_get_pointer_control. */
const ubyte XCB_GET_POINTER_CONTROL = 106;

/**
 * @brief xcb_get_pointer_control_request_t
 **/
struct xcb_get_pointer_control_request_t {
    ubyte  major_opcode; /**<  */
    ubyte  pad0; /**<  */
    ushort length; /**<  */
}

/**
 * @brief xcb_get_pointer_control_reply_t
 **/
struct xcb_get_pointer_control_reply_t {
    ubyte  response_type; /**<  */
    ubyte  pad0; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    ushort acceleration_numerator; /**<  */
    ushort acceleration_denominator; /**<  */
    ushort threshold; /**<  */
    ubyte  pad1[18]; /**<  */
}

enum XcbBlanking {
    NOT_PREFERRED = 0,
    PREFERRED     = 1,
    DEFAULT       = 2
}
alias XcbBlanking xcb_blanking_t;

enum XcbExposures {
    NOT_ALLOWED = 0,
    ALLOWED     = 1,
    DEFAULT     = 2
}
alias XcbExposures xcb_exposures_t;

/** Opcode for xcb_set_screen_saver. */
const ubyte XCB_SET_SCREEN_SAVER = 107;

/**
 * @brief xcb_set_screen_saver_request_t
 **/
struct xcb_set_screen_saver_request_t {
    ubyte  major_opcode; /**<  */
    ubyte  pad0; /**<  */
    ushort length; /**<  */
    short  timeout; /**<  */
    short  interval; /**<  */
    ubyte  prefer_blanking; /**<  */
    ubyte  allow_exposures; /**<  */
}

/**
 * @brief xcb_get_screen_saver_cookie_t
 **/
struct xcb_get_screen_saver_cookie_t {
    uint sequence; /**<  */
}

/** Opcode for xcb_get_screen_saver. */
const ubyte XCB_GET_SCREEN_SAVER = 108;

/**
 * @brief xcb_get_screen_saver_request_t
 **/
struct xcb_get_screen_saver_request_t {
    ubyte  major_opcode; /**<  */
    ubyte  pad0; /**<  */
    ushort length; /**<  */
}

/**
 * @brief xcb_get_screen_saver_reply_t
 **/
struct xcb_get_screen_saver_reply_t {
    ubyte  response_type; /**<  */
    ubyte  pad0; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    ushort timeout; /**<  */
    ushort interval; /**<  */
    ubyte  prefer_blanking; /**<  */
    ubyte  allow_exposures; /**<  */
    ubyte  pad1[18]; /**<  */
}

enum XcbHostMode {
    INSERT = 0,
    DELETE = 1
}
alias XcbHostMode xcb_host_mode_t;

enum XcbFamily {
    INTERNET           = 0,
    DECNET             = 1,
    CHAOS              = 2,
    SERVER_INTERPRETED = 5,
    INTERNET_6         = 6
}
alias XcbFamily xcb_family_t;

/** Opcode for xcb_change_hosts. */
const ubyte XCB_CHANGE_HOSTS = 109;

/**
 * @brief xcb_change_hosts_request_t
 **/
struct xcb_change_hosts_request_t {
    ubyte  major_opcode; /**<  */
    ubyte  mode; /**<  */
    ushort length; /**<  */
    ubyte  family; /**<  */
    ubyte  pad0; /**<  */
    ushort address_len; /**<  */
}

/**
 * @brief xcb_host_t
 **/
struct xcb_host_t {
    ubyte  family; /**<  */
    ubyte  pad0; /**<  */
    ushort address_len; /**<  */
}

/**
 * @brief xcb_host_iterator_t
 **/
struct xcb_host_iterator_t {
    xcb_host_t *data; /**<  */
    int         rem; /**<  */
    int         index; /**<  */
}

/**
 * @brief xcb_list_hosts_cookie_t
 **/
struct xcb_list_hosts_cookie_t {
    uint sequence; /**<  */
}

/** Opcode for xcb_list_hosts. */
const ubyte XCB_LIST_HOSTS = 110;

/**
 * @brief xcb_list_hosts_request_t
 **/
struct xcb_list_hosts_request_t {
    ubyte  major_opcode; /**<  */
    ubyte  pad0; /**<  */
    ushort length; /**<  */
}

/**
 * @brief xcb_list_hosts_reply_t
 **/
struct xcb_list_hosts_reply_t {
    ubyte  response_type; /**<  */
    ubyte  mode; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    ushort hosts_len; /**<  */
    ubyte  pad0[22]; /**<  */
}

enum XcbAccessControl {
    DISABLE = 0,
    ENABLE  = 1
}
alias XcbAccessControl xcb_access_control_t;

/** Opcode for xcb_set_access_control. */
const ubyte XCB_SET_ACCESS_CONTROL = 111;

/**
 * @brief xcb_set_access_control_request_t
 **/
struct xcb_set_access_control_request_t {
    ubyte  major_opcode; /**<  */
    ubyte  mode; /**<  */
    ushort length; /**<  */
}

enum XcbCloseDown {
    DESTROY_ALL      = 0,
    RETAIN_PERMANENT = 1,
    RETAIN_TEMPORARY = 2
}
alias XcbCloseDown xcb_close_down_t;

/** Opcode for xcb_set_close_down_mode. */
const ubyte XCB_SET_CLOSE_DOWN_MODE = 112;

/**
 * @brief xcb_set_close_down_mode_request_t
 **/
struct xcb_set_close_down_mode_request_t {
    ubyte  major_opcode; /**<  */
    ubyte  mode; /**<  */
    ushort length; /**<  */
}

enum XcbKill {
    ALL_TEMPORARY = 0
}
alias XcbKill xcb_kill_t;

/** Opcode for xcb_kill_client. */
const ubyte XCB_KILL_CLIENT = 113;

/**
 * @brief xcb_kill_client_request_t
 **/
struct xcb_kill_client_request_t {
    ubyte  major_opcode; /**<  */
    ubyte  pad0; /**<  */
    ushort length; /**<  */
    uint   resource; /**<  */
}

/** Opcode for xcb_rotate_properties. */
const ubyte XCB_ROTATE_PROPERTIES = 114;

/**
 * @brief xcb_rotate_properties_request_t
 **/
struct xcb_rotate_properties_request_t {
    ubyte        major_opcode; /**<  */
    ubyte        pad0; /**<  */
    ushort       length; /**<  */
    xcb_window_t window; /**<  */
    ushort       atoms_len; /**<  */
    short        delta; /**<  */
}

enum XcbScreenSaver {
    RESET  = 0,
    ACTIVE = 1
}
alias XcbScreenSaver xcb_screen_saver_t;

/** Opcode for xcb_force_screen_saver. */
const ubyte XCB_FORCE_SCREEN_SAVER = 115;

/**
 * @brief xcb_force_screen_saver_request_t
 **/
struct xcb_force_screen_saver_request_t {
    ubyte  major_opcode; /**<  */
    ubyte  mode; /**<  */
    ushort length; /**<  */
}

enum XcbMappingStatus {
    SUCCESS = 0,
    BUSY    = 1,
    FAILURE = 2
}
alias XcbMappingStatus xcb_mapping_status_t;

/**
 * @brief xcb_set_pointer_mapping_cookie_t
 **/
struct xcb_set_pointer_mapping_cookie_t {
    uint sequence; /**<  */
}

/** Opcode for xcb_set_pointer_mapping. */
const ubyte XCB_SET_POINTER_MAPPING = 116;

/**
 * @brief xcb_set_pointer_mapping_request_t
 **/
struct xcb_set_pointer_mapping_request_t {
    ubyte  major_opcode; /**<  */
    ubyte  map_len; /**<  */
    ushort length; /**<  */
}

/**
 * @brief xcb_set_pointer_mapping_reply_t
 **/
struct xcb_set_pointer_mapping_reply_t {
    ubyte  response_type; /**<  */
    ubyte  status; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
}

/**
 * @brief xcb_get_pointer_mapping_cookie_t
 **/
struct xcb_get_pointer_mapping_cookie_t {
    uint sequence; /**<  */
}

/** Opcode for xcb_get_pointer_mapping. */
const ubyte XCB_GET_POINTER_MAPPING = 117;

/**
 * @brief xcb_get_pointer_mapping_request_t
 **/
struct xcb_get_pointer_mapping_request_t {
    ubyte  major_opcode; /**<  */
    ubyte  pad0; /**<  */
    ushort length; /**<  */
}

/**
 * @brief xcb_get_pointer_mapping_reply_t
 **/
struct xcb_get_pointer_mapping_reply_t {
    ubyte  response_type; /**<  */
    ubyte  map_len; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    ubyte  pad0[24]; /**<  */
}

enum XcbMapIndex {
    SHIFT   = 0,
    LOCK    = 1,
    CONTROL = 2,
    N1      = 3,
    N2      = 4,
    N3      = 5,
    N4      = 6,
    N5      = 7
}
alias XcbMapIndex xcb_map_index_t;

/**
 * @brief xcb_set_modifier_mapping_cookie_t
 **/
struct xcb_set_modifier_mapping_cookie_t {
    uint sequence; /**<  */
}

/** Opcode for xcb_set_modifier_mapping. */
const ubyte XCB_SET_MODIFIER_MAPPING = 118;

/**
 * @brief xcb_set_modifier_mapping_request_t
 **/
struct xcb_set_modifier_mapping_request_t {
    ubyte  major_opcode; /**<  */
    ubyte  keycodes_per_modifier; /**<  */
    ushort length; /**<  */
}

/**
 * @brief xcb_set_modifier_mapping_reply_t
 **/
struct xcb_set_modifier_mapping_reply_t {
    ubyte  response_type; /**<  */
    ubyte  status; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
}

/**
 * @brief xcb_get_modifier_mapping_cookie_t
 **/
struct xcb_get_modifier_mapping_cookie_t {
    uint sequence; /**<  */
}

/** Opcode for xcb_get_modifier_mapping. */
const ubyte XCB_GET_MODIFIER_MAPPING = 119;

/**
 * @brief xcb_get_modifier_mapping_request_t
 **/
struct xcb_get_modifier_mapping_request_t {
    ubyte  major_opcode; /**<  */
    ubyte  pad0; /**<  */
    ushort length; /**<  */
}

/**
 * @brief xcb_get_modifier_mapping_reply_t
 **/
struct xcb_get_modifier_mapping_reply_t {
    ubyte  response_type; /**<  */
    ubyte  keycodes_per_modifier; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    ubyte  pad0[24]; /**<  */
}

/** Opcode for xcb_no_operation. */
const ubyte XCB_NO_OPERATION = 127;

/**
 * @brief xcb_no_operation_request_t
 **/
struct xcb_no_operation_request_t {
    ubyte  major_opcode; /**<  */
    ubyte  pad0; /**<  */
    ushort length; /**<  */
}

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_char2b_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_char2b_t)
 */

/*****************************************************************************
 **
 ** void xcb_char2b_next
 ** 
 ** @param xcb_char2b_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_char2b_next (xcb_char2b_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_char2b_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_char2b_end
 ** 
 ** @param xcb_char2b_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
xcb_generic_iterator_t
xcb_char2b_end (xcb_char2b_iterator_t i  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_window_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_window_t)
 */

/*****************************************************************************
 **
 ** void xcb_window_next
 ** 
 ** @param xcb_window_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_window_next (xcb_window_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_window_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_window_end
 ** 
 ** @param xcb_window_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
xcb_generic_iterator_t
xcb_window_end (xcb_window_iterator_t i  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_pixmap_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_pixmap_t)
 */

/*****************************************************************************
 **
 ** void xcb_pixmap_next
 ** 
 ** @param xcb_pixmap_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_pixmap_next (xcb_pixmap_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_pixmap_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_pixmap_end
 ** 
 ** @param xcb_pixmap_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
xcb_generic_iterator_t
xcb_pixmap_end (xcb_pixmap_iterator_t i  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_cursor_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_cursor_t)
 */

/*****************************************************************************
 **
 ** void xcb_cursor_next
 ** 
 ** @param xcb_cursor_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_cursor_next (xcb_cursor_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_cursor_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_cursor_end
 ** 
 ** @param xcb_cursor_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
xcb_generic_iterator_t
xcb_cursor_end (xcb_cursor_iterator_t i  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_font_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_font_t)
 */

/*****************************************************************************
 **
 ** void xcb_font_next
 ** 
 ** @param xcb_font_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_font_next (xcb_font_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_font_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_font_end
 ** 
 ** @param xcb_font_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
xcb_generic_iterator_t
xcb_font_end (xcb_font_iterator_t i  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_gcontext_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_gcontext_t)
 */

/*****************************************************************************
 **
 ** void xcb_gcontext_next
 ** 
 ** @param xcb_gcontext_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_gcontext_next (xcb_gcontext_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_gcontext_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_gcontext_end
 ** 
 ** @param xcb_gcontext_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
xcb_generic_iterator_t
xcb_gcontext_end (xcb_gcontext_iterator_t i  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_colormap_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_colormap_t)
 */

/*****************************************************************************
 **
 ** void xcb_colormap_next
 ** 
 ** @param xcb_colormap_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_colormap_next (xcb_colormap_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_colormap_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_colormap_end
 ** 
 ** @param xcb_colormap_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
xcb_generic_iterator_t
xcb_colormap_end (xcb_colormap_iterator_t i  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_atom_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_atom_t)
 */

/*****************************************************************************
 **
 ** void xcb_atom_next
 ** 
 ** @param xcb_atom_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_atom_next (xcb_atom_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_atom_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_atom_end
 ** 
 ** @param xcb_atom_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
xcb_generic_iterator_t
xcb_atom_end (xcb_atom_iterator_t i  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_drawable_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_drawable_t)
 */

/*****************************************************************************
 **
 ** void xcb_drawable_next
 ** 
 ** @param xcb_drawable_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_drawable_next (xcb_drawable_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_drawable_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_drawable_end
 ** 
 ** @param xcb_drawable_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
xcb_generic_iterator_t
xcb_drawable_end (xcb_drawable_iterator_t i  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_fontable_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_fontable_t)
 */

/*****************************************************************************
 **
 ** void xcb_fontable_next
 ** 
 ** @param xcb_fontable_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_fontable_next (xcb_fontable_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_fontable_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_fontable_end
 ** 
 ** @param xcb_fontable_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
xcb_generic_iterator_t
xcb_fontable_end (xcb_fontable_iterator_t i  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_visualid_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_visualid_t)
 */

/*****************************************************************************
 **
 ** void xcb_visualid_next
 ** 
 ** @param xcb_visualid_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_visualid_next (xcb_visualid_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_visualid_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_visualid_end
 ** 
 ** @param xcb_visualid_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
xcb_generic_iterator_t
xcb_visualid_end (xcb_visualid_iterator_t i  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_timestamp_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_timestamp_t)
 */

/*****************************************************************************
 **
 ** void xcb_timestamp_next
 ** 
 ** @param xcb_timestamp_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_timestamp_next (xcb_timestamp_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_timestamp_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_timestamp_end
 ** 
 ** @param xcb_timestamp_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
xcb_generic_iterator_t
xcb_timestamp_end (xcb_timestamp_iterator_t i  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_keysym_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_keysym_t)
 */

/*****************************************************************************
 **
 ** void xcb_keysym_next
 ** 
 ** @param xcb_keysym_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_keysym_next (xcb_keysym_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_keysym_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_keysym_end
 ** 
 ** @param xcb_keysym_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
xcb_generic_iterator_t
xcb_keysym_end (xcb_keysym_iterator_t i  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_keycode_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_keycode_t)
 */

/*****************************************************************************
 **
 ** void xcb_keycode_next
 ** 
 ** @param xcb_keycode_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_keycode_next (xcb_keycode_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_keycode_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_keycode_end
 ** 
 ** @param xcb_keycode_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
xcb_generic_iterator_t
xcb_keycode_end (xcb_keycode_iterator_t i  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_button_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_button_t)
 */

/*****************************************************************************
 **
 ** void xcb_button_next
 ** 
 ** @param xcb_button_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_button_next (xcb_button_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_button_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_button_end
 ** 
 ** @param xcb_button_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
xcb_generic_iterator_t
xcb_button_end (xcb_button_iterator_t i  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_point_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_point_t)
 */

/*****************************************************************************
 **
 ** void xcb_point_next
 ** 
 ** @param xcb_point_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_point_next (xcb_point_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_point_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_point_end
 ** 
 ** @param xcb_point_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
xcb_generic_iterator_t
xcb_point_end (xcb_point_iterator_t i  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_rectangle_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_rectangle_t)
 */

/*****************************************************************************
 **
 ** void xcb_rectangle_next
 ** 
 ** @param xcb_rectangle_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_rectangle_next (xcb_rectangle_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_rectangle_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_rectangle_end
 ** 
 ** @param xcb_rectangle_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
xcb_generic_iterator_t
xcb_rectangle_end (xcb_rectangle_iterator_t i  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_arc_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_arc_t)
 */

/*****************************************************************************
 **
 ** void xcb_arc_next
 ** 
 ** @param xcb_arc_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_arc_next (xcb_arc_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_arc_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_arc_end
 ** 
 ** @param xcb_arc_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
xcb_generic_iterator_t
xcb_arc_end (xcb_arc_iterator_t i  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_format_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_format_t)
 */

/*****************************************************************************
 **
 ** void xcb_format_next
 ** 
 ** @param xcb_format_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_format_next (xcb_format_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_format_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_format_end
 ** 
 ** @param xcb_format_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
xcb_generic_iterator_t
xcb_format_end (xcb_format_iterator_t i  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_visualtype_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_visualtype_t)
 */

/*****************************************************************************
 **
 ** void xcb_visualtype_next
 ** 
 ** @param xcb_visualtype_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_visualtype_next (xcb_visualtype_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_visualtype_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_visualtype_end
 ** 
 ** @param xcb_visualtype_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
xcb_generic_iterator_t
xcb_visualtype_end (xcb_visualtype_iterator_t i  /**< */);

extern(C) int
xcb_depth_sizeof (const void  *_buffer  /**< */);


/*****************************************************************************
 **
 ** xcb_visualtype_t * xcb_depth_visuals
 ** 
 ** @param const xcb_depth_t *R
 ** @returns xcb_visualtype_t *
 **
 *****************************************************************************/
 
xcb_visualtype_t *
xcb_depth_visuals (const xcb_depth_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_depth_visuals_length
 ** 
 ** @param const xcb_depth_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_depth_visuals_length (const xcb_depth_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_visualtype_iterator_t xcb_depth_visuals_iterator
 ** 
 ** @param const xcb_depth_t *R
 ** @returns xcb_visualtype_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_visualtype_iterator_t
xcb_depth_visuals_iterator (const xcb_depth_t *R  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_depth_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_depth_t)
 */

/*****************************************************************************
 **
 ** void xcb_depth_next
 ** 
 ** @param xcb_depth_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_depth_next (xcb_depth_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_depth_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_depth_end
 ** 
 ** @param xcb_depth_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
xcb_generic_iterator_t
xcb_depth_end (xcb_depth_iterator_t i  /**< */);

extern(C) int
xcb_screen_sizeof (const void  *_buffer  /**< */);


/*****************************************************************************
 **
 ** int xcb_screen_allowed_depths_length
 ** 
 ** @param const xcb_screen_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_screen_allowed_depths_length (const xcb_screen_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_depth_iterator_t xcb_screen_allowed_depths_iterator
 ** 
 ** @param const xcb_screen_t *R
 ** @returns xcb_depth_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_depth_iterator_t
xcb_screen_allowed_depths_iterator (const xcb_screen_t *R  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_screen_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_screen_t)
 */

/*****************************************************************************
 **
 ** void xcb_screen_next
 ** 
 ** @param xcb_screen_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_screen_next (xcb_screen_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_screen_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_screen_end
 ** 
 ** @param xcb_screen_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
xcb_generic_iterator_t
xcb_screen_end (xcb_screen_iterator_t i  /**< */);

extern(C) int
xcb_setup_request_sizeof (const void  *_buffer  /**< */);


/*****************************************************************************
 **
 ** char * xcb_setup_request_authorization_protocol_name
 ** 
 ** @param const xcb_setup_request_t *R
 ** @returns char *
 **
 *****************************************************************************/
 
char *
xcb_setup_request_authorization_protocol_name (const xcb_setup_request_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_setup_request_authorization_protocol_name_length
 ** 
 ** @param const xcb_setup_request_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_setup_request_authorization_protocol_name_length (const xcb_setup_request_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_setup_request_authorization_protocol_name_end
 ** 
 ** @param const xcb_setup_request_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_setup_request_authorization_protocol_name_end (const xcb_setup_request_t *R  /**< */);


/*****************************************************************************
 **
 ** char * xcb_setup_request_authorization_protocol_data
 ** 
 ** @param const xcb_setup_request_t *R
 ** @returns char *
 **
 *****************************************************************************/
 
char *
xcb_setup_request_authorization_protocol_data (const xcb_setup_request_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_setup_request_authorization_protocol_data_length
 ** 
 ** @param const xcb_setup_request_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_setup_request_authorization_protocol_data_length (const xcb_setup_request_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_setup_request_authorization_protocol_data_end
 ** 
 ** @param const xcb_setup_request_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_setup_request_authorization_protocol_data_end (const xcb_setup_request_t *R  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_setup_request_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_setup_request_t)
 */

/*****************************************************************************
 **
 ** void xcb_setup_request_next
 ** 
 ** @param xcb_setup_request_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_setup_request_next (xcb_setup_request_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_setup_request_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_setup_request_end
 ** 
 ** @param xcb_setup_request_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
xcb_generic_iterator_t
xcb_setup_request_end (xcb_setup_request_iterator_t i  /**< */);

extern(C) int
xcb_setup_failed_sizeof (const void  *_buffer  /**< */);


/*****************************************************************************
 **
 ** char * xcb_setup_failed_reason
 ** 
 ** @param const xcb_setup_failed_t *R
 ** @returns char *
 **
 *****************************************************************************/
 
char *
xcb_setup_failed_reason (const xcb_setup_failed_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_setup_failed_reason_length
 ** 
 ** @param const xcb_setup_failed_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_setup_failed_reason_length (const xcb_setup_failed_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_setup_failed_reason_end
 ** 
 ** @param const xcb_setup_failed_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_setup_failed_reason_end (const xcb_setup_failed_t *R  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_setup_failed_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_setup_failed_t)
 */

/*****************************************************************************
 **
 ** void xcb_setup_failed_next
 ** 
 ** @param xcb_setup_failed_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_setup_failed_next (xcb_setup_failed_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_setup_failed_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_setup_failed_end
 ** 
 ** @param xcb_setup_failed_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
xcb_generic_iterator_t
xcb_setup_failed_end (xcb_setup_failed_iterator_t i  /**< */);

extern(C) int
xcb_setup_authenticate_sizeof (const void  *_buffer  /**< */);


/*****************************************************************************
 **
 ** char * xcb_setup_authenticate_reason
 ** 
 ** @param const xcb_setup_authenticate_t *R
 ** @returns char *
 **
 *****************************************************************************/
 
char *
xcb_setup_authenticate_reason (const xcb_setup_authenticate_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_setup_authenticate_reason_length
 ** 
 ** @param const xcb_setup_authenticate_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_setup_authenticate_reason_length (const xcb_setup_authenticate_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_setup_authenticate_reason_end
 ** 
 ** @param const xcb_setup_authenticate_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_setup_authenticate_reason_end (const xcb_setup_authenticate_t *R  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_setup_authenticate_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_setup_authenticate_t)
 */

/*****************************************************************************
 **
 ** void xcb_setup_authenticate_next
 ** 
 ** @param xcb_setup_authenticate_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_setup_authenticate_next (xcb_setup_authenticate_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_setup_authenticate_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_setup_authenticate_end
 ** 
 ** @param xcb_setup_authenticate_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
xcb_generic_iterator_t
xcb_setup_authenticate_end (xcb_setup_authenticate_iterator_t i  /**< */);

extern(C) int
xcb_setup_sizeof (const void  *_buffer  /**< */);


/*****************************************************************************
 **
 ** char * xcb_setup_vendor
 ** 
 ** @param const xcb_setup_t *R
 ** @returns char *
 **
 *****************************************************************************/
 
char *
xcb_setup_vendor (const xcb_setup_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_setup_vendor_length
 ** 
 ** @param const xcb_setup_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_setup_vendor_length (const xcb_setup_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_setup_vendor_end
 ** 
 ** @param const xcb_setup_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_setup_vendor_end (const xcb_setup_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_format_t * xcb_setup_pixmap_formats
 ** 
 ** @param const xcb_setup_t *R
 ** @returns xcb_format_t *
 **
 *****************************************************************************/
 
xcb_format_t *
xcb_setup_pixmap_formats (const xcb_setup_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_setup_pixmap_formats_length
 ** 
 ** @param const xcb_setup_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_setup_pixmap_formats_length (const xcb_setup_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_format_iterator_t xcb_setup_pixmap_formats_iterator
 ** 
 ** @param const xcb_setup_t *R
 ** @returns xcb_format_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_format_iterator_t
xcb_setup_pixmap_formats_iterator (const xcb_setup_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_setup_roots_length
 ** 
 ** @param const xcb_setup_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_setup_roots_length (const xcb_setup_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_screen_iterator_t xcb_setup_roots_iterator
 ** 
 ** @param const xcb_setup_t *R
 ** @returns xcb_screen_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_screen_iterator_t
xcb_setup_roots_iterator (const xcb_setup_t *R  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_setup_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_setup_t)
 */

/*****************************************************************************
 **
 ** void xcb_setup_next
 ** 
 ** @param xcb_setup_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_setup_next (xcb_setup_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_setup_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_setup_end
 ** 
 ** @param xcb_setup_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
xcb_generic_iterator_t
xcb_setup_end (xcb_setup_iterator_t i  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_client_message_data_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_client_message_data_t)
 */

/*****************************************************************************
 **
 ** void xcb_client_message_data_next
 ** 
 ** @param xcb_client_message_data_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_client_message_data_next (xcb_client_message_data_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_client_message_data_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_client_message_data_end
 ** 
 ** @param xcb_client_message_data_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
xcb_generic_iterator_t
xcb_client_message_data_end (xcb_client_message_data_iterator_t i  /**< */);

extern(C) int
xcb_create_window_sizeof (const void  *_buffer  /**< */);

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
 ** xcb_void_cookie_t xcb_create_window_checked
 ** 
 ** @param xcb_connection_t *c
 ** @param ubyte             depth
 ** @param xcb_window_t      wid
 ** @param xcb_window_t      parent
 ** @param short             x
 ** @param short             y
 ** @param ushort            width
 ** @param ushort            height
 ** @param ushort            border_width
 ** @param ushort            _class
 ** @param xcb_visualid_t    visual
 ** @param uint              value_mask
 ** @param const uint       *value_list
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_create_window_checked (xcb_connection_t *c  /**< */,
                           ubyte             depth  /**< */,
                           xcb_window_t      wid  /**< */,
                           xcb_window_t      parent  /**< */,
                           short             x  /**< */,
                           short             y  /**< */,
                           ushort            width  /**< */,
                           ushort            height  /**< */,
                           ushort            border_width  /**< */,
                           ushort            _class  /**< */,
                           xcb_visualid_t    visual  /**< */,
                           uint              value_mask  /**< */,
                           const uint       *value_list  /**< */);

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
 ** xcb_void_cookie_t xcb_create_window
 ** 
 ** @param xcb_connection_t *c
 ** @param ubyte             depth
 ** @param xcb_window_t      wid
 ** @param xcb_window_t      parent
 ** @param short             x
 ** @param short             y
 ** @param ushort            width
 ** @param ushort            height
 ** @param ushort            border_width
 ** @param ushort            _class
 ** @param xcb_visualid_t    visual
 ** @param uint              value_mask
 ** @param const uint       *value_list
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_create_window (xcb_connection_t *c  /**< */,
                   ubyte             depth  /**< */,
                   xcb_window_t      wid  /**< */,
                   xcb_window_t      parent  /**< */,
                   short             x  /**< */,
                   short             y  /**< */,
                   ushort            width  /**< */,
                   ushort            height  /**< */,
                   ushort            border_width  /**< */,
                   ushort            _class  /**< */,
                   xcb_visualid_t    visual  /**< */,
                   uint              value_mask  /**< */,
                   const uint       *value_list  /**< */);

extern(C) int
xcb_change_window_attributes_sizeof (const void  *_buffer  /**< */);

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
 ** xcb_void_cookie_t xcb_change_window_attributes_checked
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_window_t      window
 ** @param uint              value_mask
 ** @param const uint       *value_list
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_change_window_attributes_checked (xcb_connection_t *c  /**< */,
                                      xcb_window_t      window  /**< */,
                                      uint              value_mask  /**< */,
                                      const uint       *value_list  /**< */);

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
 ** xcb_void_cookie_t xcb_change_window_attributes
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_window_t      window
 ** @param uint              value_mask
 ** @param const uint       *value_list
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_change_window_attributes (xcb_connection_t *c  /**< */,
                              xcb_window_t      window  /**< */,
                              uint              value_mask  /**< */,
                              const uint       *value_list  /**< */);

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
 ** xcb_get_window_attributes_cookie_t xcb_get_window_attributes
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_window_t      window
 ** @returns xcb_get_window_attributes_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_get_window_attributes_cookie_t
xcb_get_window_attributes (xcb_connection_t *c  /**< */,
                           xcb_window_t      window  /**< */);

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
 ** xcb_get_window_attributes_cookie_t xcb_get_window_attributes_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_window_t      window
 ** @returns xcb_get_window_attributes_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_get_window_attributes_cookie_t
xcb_get_window_attributes_unchecked (xcb_connection_t *c  /**< */,
                                     xcb_window_t      window  /**< */);

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 * 
 * The parameter @p e supplied to this function must be NULL if
 * xcb_get_window_attributes_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */

/*****************************************************************************
 **
 ** xcb_get_window_attributes_reply_t * xcb_get_window_attributes_reply
 ** 
 ** @param xcb_connection_t                    *c
 ** @param xcb_get_window_attributes_cookie_t   cookie
 ** @param xcb_generic_error_t                **e
 ** @returns xcb_get_window_attributes_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_get_window_attributes_reply_t *
xcb_get_window_attributes_reply (xcb_connection_t                    *c  /**< */,
                                 xcb_get_window_attributes_cookie_t   cookie  /**< */,
                                 xcb_generic_error_t                **e  /**< */);

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
 ** xcb_void_cookie_t xcb_destroy_window_checked
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_window_t      window
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_destroy_window_checked (xcb_connection_t *c  /**< */,
                            xcb_window_t      window  /**< */);

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
 ** xcb_void_cookie_t xcb_destroy_window
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_window_t      window
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_destroy_window (xcb_connection_t *c  /**< */,
                    xcb_window_t      window  /**< */);

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
 ** xcb_void_cookie_t xcb_destroy_subwindows_checked
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_window_t      window
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_destroy_subwindows_checked (xcb_connection_t *c  /**< */,
                                xcb_window_t      window  /**< */);

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
 ** xcb_void_cookie_t xcb_destroy_subwindows
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_window_t      window
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_destroy_subwindows (xcb_connection_t *c  /**< */,
                        xcb_window_t      window  /**< */);

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
 ** xcb_void_cookie_t xcb_change_save_set_checked
 ** 
 ** @param xcb_connection_t *c
 ** @param ubyte             mode
 ** @param xcb_window_t      window
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_change_save_set_checked (xcb_connection_t *c  /**< */,
                             ubyte             mode  /**< */,
                             xcb_window_t      window  /**< */);

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
 ** xcb_void_cookie_t xcb_change_save_set
 ** 
 ** @param xcb_connection_t *c
 ** @param ubyte             mode
 ** @param xcb_window_t      window
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_change_save_set (xcb_connection_t *c  /**< */,
                     ubyte             mode  /**< */,
                     xcb_window_t      window  /**< */);

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
 ** xcb_void_cookie_t xcb_reparent_window_checked
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_window_t      window
 ** @param xcb_window_t      parent
 ** @param short             x
 ** @param short             y
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_reparent_window_checked (xcb_connection_t *c  /**< */,
                             xcb_window_t      window  /**< */,
                             xcb_window_t      parent  /**< */,
                             short             x  /**< */,
                             short             y  /**< */);

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
 ** xcb_void_cookie_t xcb_reparent_window
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_window_t      window
 ** @param xcb_window_t      parent
 ** @param short             x
 ** @param short             y
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_reparent_window (xcb_connection_t *c  /**< */,
                     xcb_window_t      window  /**< */,
                     xcb_window_t      parent  /**< */,
                     short             x  /**< */,
                     short             y  /**< */);

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
 ** xcb_void_cookie_t xcb_map_window_checked
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_window_t      window
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_map_window_checked (xcb_connection_t *c  /**< */,
                        xcb_window_t      window  /**< */);

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
 ** xcb_void_cookie_t xcb_map_window
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_window_t      window
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_map_window (xcb_connection_t *c  /**< */,
                xcb_window_t      window  /**< */);

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
 ** xcb_void_cookie_t xcb_map_subwindows_checked
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_window_t      window
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_map_subwindows_checked (xcb_connection_t *c  /**< */,
                            xcb_window_t      window  /**< */);

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
 ** xcb_void_cookie_t xcb_map_subwindows
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_window_t      window
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_map_subwindows (xcb_connection_t *c  /**< */,
                    xcb_window_t      window  /**< */);

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
 ** xcb_void_cookie_t xcb_unmap_window_checked
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_window_t      window
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_unmap_window_checked (xcb_connection_t *c  /**< */,
                          xcb_window_t      window  /**< */);

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
 ** xcb_void_cookie_t xcb_unmap_window
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_window_t      window
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_unmap_window (xcb_connection_t *c  /**< */,
                  xcb_window_t      window  /**< */);

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
 ** xcb_void_cookie_t xcb_unmap_subwindows_checked
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_window_t      window
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_unmap_subwindows_checked (xcb_connection_t *c  /**< */,
                              xcb_window_t      window  /**< */);

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
 ** xcb_void_cookie_t xcb_unmap_subwindows
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_window_t      window
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_unmap_subwindows (xcb_connection_t *c  /**< */,
                      xcb_window_t      window  /**< */);

extern(C) int
xcb_configure_window_sizeof (const void  *_buffer  /**< */);

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
 ** xcb_void_cookie_t xcb_configure_window_checked
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_window_t      window
 ** @param ushort            value_mask
 ** @param const uint       *value_list
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_configure_window_checked (xcb_connection_t *c  /**< */,
                              xcb_window_t      window  /**< */,
                              ushort            value_mask  /**< */,
                              const uint       *value_list  /**< */);

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
 ** xcb_void_cookie_t xcb_configure_window
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_window_t      window
 ** @param ushort            value_mask
 ** @param const uint       *value_list
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_configure_window (xcb_connection_t *c  /**< */,
                      xcb_window_t      window  /**< */,
                      ushort            value_mask  /**< */,
                      const uint       *value_list  /**< */);

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
 ** xcb_void_cookie_t xcb_circulate_window_checked
 ** 
 ** @param xcb_connection_t *c
 ** @param ubyte             direction
 ** @param xcb_window_t      window
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_circulate_window_checked (xcb_connection_t *c  /**< */,
                              ubyte             direction  /**< */,
                              xcb_window_t      window  /**< */);

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
 ** xcb_void_cookie_t xcb_circulate_window
 ** 
 ** @param xcb_connection_t *c
 ** @param ubyte             direction
 ** @param xcb_window_t      window
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_circulate_window (xcb_connection_t *c  /**< */,
                      ubyte             direction  /**< */,
                      xcb_window_t      window  /**< */);

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
 ** xcb_get_geometry_cookie_t xcb_get_geometry
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_drawable_t    drawable
 ** @returns xcb_get_geometry_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_get_geometry_cookie_t
xcb_get_geometry (xcb_connection_t *c  /**< */,
                  xcb_drawable_t    drawable  /**< */);

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
 ** xcb_get_geometry_cookie_t xcb_get_geometry_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_drawable_t    drawable
 ** @returns xcb_get_geometry_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_get_geometry_cookie_t
xcb_get_geometry_unchecked (xcb_connection_t *c  /**< */,
                            xcb_drawable_t    drawable  /**< */);

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 * 
 * The parameter @p e supplied to this function must be NULL if
 * xcb_get_geometry_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */

/*****************************************************************************
 **
 ** xcb_get_geometry_reply_t * xcb_get_geometry_reply
 ** 
 ** @param xcb_connection_t           *c
 ** @param xcb_get_geometry_cookie_t   cookie
 ** @param xcb_generic_error_t       **e
 ** @returns xcb_get_geometry_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_get_geometry_reply_t *
xcb_get_geometry_reply (xcb_connection_t           *c  /**< */,
                        xcb_get_geometry_cookie_t   cookie  /**< */,
                        xcb_generic_error_t       **e  /**< */);

extern(C) int
xcb_query_tree_sizeof (const void  *_buffer  /**< */);

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
 ** xcb_query_tree_cookie_t xcb_query_tree
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_window_t      window
 ** @returns xcb_query_tree_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_query_tree_cookie_t
xcb_query_tree (xcb_connection_t *c  /**< */,
                xcb_window_t      window  /**< */);

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
 ** xcb_query_tree_cookie_t xcb_query_tree_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_window_t      window
 ** @returns xcb_query_tree_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_query_tree_cookie_t
xcb_query_tree_unchecked (xcb_connection_t *c  /**< */,
                          xcb_window_t      window  /**< */);


/*****************************************************************************
 **
 ** xcb_window_t * xcb_query_tree_children
 ** 
 ** @param const xcb_query_tree_reply_t *R
 ** @returns xcb_window_t *
 **
 *****************************************************************************/
 
xcb_window_t *
xcb_query_tree_children (const xcb_query_tree_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_query_tree_children_length
 ** 
 ** @param const xcb_query_tree_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_query_tree_children_length (const xcb_query_tree_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_query_tree_children_end
 ** 
 ** @param const xcb_query_tree_reply_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_query_tree_children_end (const xcb_query_tree_reply_t *R  /**< */);

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 * 
 * The parameter @p e supplied to this function must be NULL if
 * xcb_query_tree_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */

/*****************************************************************************
 **
 ** xcb_query_tree_reply_t * xcb_query_tree_reply
 ** 
 ** @param xcb_connection_t         *c
 ** @param xcb_query_tree_cookie_t   cookie
 ** @param xcb_generic_error_t     **e
 ** @returns xcb_query_tree_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_query_tree_reply_t *
xcb_query_tree_reply (xcb_connection_t         *c  /**< */,
                      xcb_query_tree_cookie_t   cookie  /**< */,
                      xcb_generic_error_t     **e  /**< */);

extern(C) int
xcb_intern_atom_sizeof (const void  *_buffer  /**< */);

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
 ** xcb_intern_atom_cookie_t xcb_intern_atom
 ** 
 ** @param xcb_connection_t *c
 ** @param ubyte             only_if_exists
 ** @param ushort            name_len
 ** @param const char       *name
 ** @returns xcb_intern_atom_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_intern_atom_cookie_t
xcb_intern_atom (xcb_connection_t *c  /**< */,
                 ubyte             only_if_exists  /**< */,
                 ushort            name_len  /**< */,
                 const char       *name  /**< */);

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
 ** xcb_intern_atom_cookie_t xcb_intern_atom_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @param ubyte             only_if_exists
 ** @param ushort            name_len
 ** @param const char       *name
 ** @returns xcb_intern_atom_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_intern_atom_cookie_t
xcb_intern_atom_unchecked (xcb_connection_t *c  /**< */,
                           ubyte             only_if_exists  /**< */,
                           ushort            name_len  /**< */,
                           const char       *name  /**< */);

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 * 
 * The parameter @p e supplied to this function must be NULL if
 * xcb_intern_atom_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */

/*****************************************************************************
 **
 ** xcb_intern_atom_reply_t * xcb_intern_atom_reply
 ** 
 ** @param xcb_connection_t          *c
 ** @param xcb_intern_atom_cookie_t   cookie
 ** @param xcb_generic_error_t      **e
 ** @returns xcb_intern_atom_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_intern_atom_reply_t *
xcb_intern_atom_reply (xcb_connection_t          *c  /**< */,
                       xcb_intern_atom_cookie_t   cookie  /**< */,
                       xcb_generic_error_t      **e  /**< */);

extern(C) int
xcb_get_atom_name_sizeof (const void  *_buffer  /**< */);

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
 ** xcb_get_atom_name_cookie_t xcb_get_atom_name
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_atom_t        atom
 ** @returns xcb_get_atom_name_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_get_atom_name_cookie_t
xcb_get_atom_name (xcb_connection_t *c  /**< */,
                   xcb_atom_t        atom  /**< */);

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
 ** xcb_get_atom_name_cookie_t xcb_get_atom_name_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_atom_t        atom
 ** @returns xcb_get_atom_name_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_get_atom_name_cookie_t
xcb_get_atom_name_unchecked (xcb_connection_t *c  /**< */,
                             xcb_atom_t        atom  /**< */);


/*****************************************************************************
 **
 ** char * xcb_get_atom_name_name
 ** 
 ** @param const xcb_get_atom_name_reply_t *R
 ** @returns char *
 **
 *****************************************************************************/
 
char *
xcb_get_atom_name_name (const xcb_get_atom_name_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_get_atom_name_name_length
 ** 
 ** @param const xcb_get_atom_name_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_get_atom_name_name_length (const xcb_get_atom_name_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_get_atom_name_name_end
 ** 
 ** @param const xcb_get_atom_name_reply_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_get_atom_name_name_end (const xcb_get_atom_name_reply_t *R  /**< */);

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 * 
 * The parameter @p e supplied to this function must be NULL if
 * xcb_get_atom_name_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */

/*****************************************************************************
 **
 ** xcb_get_atom_name_reply_t * xcb_get_atom_name_reply
 ** 
 ** @param xcb_connection_t            *c
 ** @param xcb_get_atom_name_cookie_t   cookie
 ** @param xcb_generic_error_t        **e
 ** @returns xcb_get_atom_name_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_get_atom_name_reply_t *
xcb_get_atom_name_reply (xcb_connection_t            *c  /**< */,
                         xcb_get_atom_name_cookie_t   cookie  /**< */,
                         xcb_generic_error_t        **e  /**< */);

extern(C) int
xcb_change_property_sizeof (const void  *_buffer  /**< */);

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
 ** xcb_void_cookie_t xcb_change_property_checked
 ** 
 ** @param xcb_connection_t *c
 ** @param ubyte             mode
 ** @param xcb_window_t      window
 ** @param xcb_atom_t        property
 ** @param xcb_atom_t        type
 ** @param ubyte             format
 ** @param uint              data_len
 ** @param const void       *data
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_change_property_checked (xcb_connection_t *c  /**< */,
                             ubyte             mode  /**< */,
                             xcb_window_t      window  /**< */,
                             xcb_atom_t        property  /**< */,
                             xcb_atom_t        type  /**< */,
                             ubyte             format  /**< */,
                             uint              data_len  /**< */,
                             const void       *data  /**< */);

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
 ** xcb_void_cookie_t xcb_change_property
 ** 
 ** @param xcb_connection_t *c
 ** @param ubyte             mode
 ** @param xcb_window_t      window
 ** @param xcb_atom_t        property
 ** @param xcb_atom_t        type
 ** @param ubyte             format
 ** @param uint              data_len
 ** @param const void       *data
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_change_property (xcb_connection_t *c  /**< */,
                     ubyte             mode  /**< */,
                     xcb_window_t      window  /**< */,
                     xcb_atom_t        property  /**< */,
                     xcb_atom_t        type  /**< */,
                     ubyte             format  /**< */,
                     uint              data_len  /**< */,
                     const void       *data  /**< */);

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
 ** xcb_void_cookie_t xcb_delete_property_checked
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_window_t      window
 ** @param xcb_atom_t        property
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_delete_property_checked (xcb_connection_t *c  /**< */,
                             xcb_window_t      window  /**< */,
                             xcb_atom_t        property  /**< */);

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
 ** xcb_void_cookie_t xcb_delete_property
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_window_t      window
 ** @param xcb_atom_t        property
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_delete_property (xcb_connection_t *c  /**< */,
                     xcb_window_t      window  /**< */,
                     xcb_atom_t        property  /**< */);

extern(C) int
xcb_get_property_sizeof (const void  *_buffer  /**< */);

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
 ** xcb_get_property_cookie_t xcb_get_property
 ** 
 ** @param xcb_connection_t *c
 ** @param ubyte             _delete
 ** @param xcb_window_t      window
 ** @param xcb_atom_t        property
 ** @param xcb_atom_t        type
 ** @param uint              long_offset
 ** @param uint              long_length
 ** @returns xcb_get_property_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_get_property_cookie_t
xcb_get_property (xcb_connection_t *c  /**< */,
                  ubyte             _delete  /**< */,
                  xcb_window_t      window  /**< */,
                  xcb_atom_t        property  /**< */,
                  xcb_atom_t        type  /**< */,
                  uint              long_offset  /**< */,
                  uint              long_length  /**< */);

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
 ** xcb_get_property_cookie_t xcb_get_property_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @param ubyte             _delete
 ** @param xcb_window_t      window
 ** @param xcb_atom_t        property
 ** @param xcb_atom_t        type
 ** @param uint              long_offset
 ** @param uint              long_length
 ** @returns xcb_get_property_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_get_property_cookie_t
xcb_get_property_unchecked (xcb_connection_t *c  /**< */,
                            ubyte             _delete  /**< */,
                            xcb_window_t      window  /**< */,
                            xcb_atom_t        property  /**< */,
                            xcb_atom_t        type  /**< */,
                            uint              long_offset  /**< */,
                            uint              long_length  /**< */);


/*****************************************************************************
 **
 ** void * xcb_get_property_value
 ** 
 ** @param const xcb_get_property_reply_t *R
 ** @returns void *
 **
 *****************************************************************************/
 
void *
xcb_get_property_value (const xcb_get_property_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_get_property_value_length
 ** 
 ** @param const xcb_get_property_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_get_property_value_length (const xcb_get_property_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_get_property_value_end
 ** 
 ** @param const xcb_get_property_reply_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_get_property_value_end (const xcb_get_property_reply_t *R  /**< */);

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 * 
 * The parameter @p e supplied to this function must be NULL if
 * xcb_get_property_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */

/*****************************************************************************
 **
 ** xcb_get_property_reply_t * xcb_get_property_reply
 ** 
 ** @param xcb_connection_t           *c
 ** @param xcb_get_property_cookie_t   cookie
 ** @param xcb_generic_error_t       **e
 ** @returns xcb_get_property_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_get_property_reply_t *
xcb_get_property_reply (xcb_connection_t           *c  /**< */,
                        xcb_get_property_cookie_t   cookie  /**< */,
                        xcb_generic_error_t       **e  /**< */);

extern(C) int
xcb_list_properties_sizeof (const void  *_buffer  /**< */);

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
 ** xcb_list_properties_cookie_t xcb_list_properties
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_window_t      window
 ** @returns xcb_list_properties_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_list_properties_cookie_t
xcb_list_properties (xcb_connection_t *c  /**< */,
                     xcb_window_t      window  /**< */);

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
 ** xcb_list_properties_cookie_t xcb_list_properties_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_window_t      window
 ** @returns xcb_list_properties_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_list_properties_cookie_t
xcb_list_properties_unchecked (xcb_connection_t *c  /**< */,
                               xcb_window_t      window  /**< */);


/*****************************************************************************
 **
 ** xcb_atom_t * xcb_list_properties_atoms
 ** 
 ** @param const xcb_list_properties_reply_t *R
 ** @returns xcb_atom_t *
 **
 *****************************************************************************/
 
xcb_atom_t *
xcb_list_properties_atoms (const xcb_list_properties_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_list_properties_atoms_length
 ** 
 ** @param const xcb_list_properties_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_list_properties_atoms_length (const xcb_list_properties_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_list_properties_atoms_end
 ** 
 ** @param const xcb_list_properties_reply_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_list_properties_atoms_end (const xcb_list_properties_reply_t *R  /**< */);

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 * 
 * The parameter @p e supplied to this function must be NULL if
 * xcb_list_properties_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */

/*****************************************************************************
 **
 ** xcb_list_properties_reply_t * xcb_list_properties_reply
 ** 
 ** @param xcb_connection_t              *c
 ** @param xcb_list_properties_cookie_t   cookie
 ** @param xcb_generic_error_t          **e
 ** @returns xcb_list_properties_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_list_properties_reply_t *
xcb_list_properties_reply (xcb_connection_t              *c  /**< */,
                           xcb_list_properties_cookie_t   cookie  /**< */,
                           xcb_generic_error_t          **e  /**< */);

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
 ** xcb_void_cookie_t xcb_set_selection_owner_checked
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_window_t      owner
 ** @param xcb_atom_t        selection
 ** @param xcb_timestamp_t   time
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_set_selection_owner_checked (xcb_connection_t *c  /**< */,
                                 xcb_window_t      owner  /**< */,
                                 xcb_atom_t        selection  /**< */,
                                 xcb_timestamp_t   time  /**< */);

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
 ** xcb_void_cookie_t xcb_set_selection_owner
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_window_t      owner
 ** @param xcb_atom_t        selection
 ** @param xcb_timestamp_t   time
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_set_selection_owner (xcb_connection_t *c  /**< */,
                         xcb_window_t      owner  /**< */,
                         xcb_atom_t        selection  /**< */,
                         xcb_timestamp_t   time  /**< */);

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
 ** xcb_get_selection_owner_cookie_t xcb_get_selection_owner
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_atom_t        selection
 ** @returns xcb_get_selection_owner_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_get_selection_owner_cookie_t
xcb_get_selection_owner (xcb_connection_t *c  /**< */,
                         xcb_atom_t        selection  /**< */);

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
 ** xcb_get_selection_owner_cookie_t xcb_get_selection_owner_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_atom_t        selection
 ** @returns xcb_get_selection_owner_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_get_selection_owner_cookie_t
xcb_get_selection_owner_unchecked (xcb_connection_t *c  /**< */,
                                   xcb_atom_t        selection  /**< */);

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 * 
 * The parameter @p e supplied to this function must be NULL if
 * xcb_get_selection_owner_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */

/*****************************************************************************
 **
 ** xcb_get_selection_owner_reply_t * xcb_get_selection_owner_reply
 ** 
 ** @param xcb_connection_t                  *c
 ** @param xcb_get_selection_owner_cookie_t   cookie
 ** @param xcb_generic_error_t              **e
 ** @returns xcb_get_selection_owner_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_get_selection_owner_reply_t *
xcb_get_selection_owner_reply (xcb_connection_t                  *c  /**< */,
                               xcb_get_selection_owner_cookie_t   cookie  /**< */,
                               xcb_generic_error_t              **e  /**< */);

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
 ** xcb_void_cookie_t xcb_convert_selection_checked
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_window_t      requestor
 ** @param xcb_atom_t        selection
 ** @param xcb_atom_t        target
 ** @param xcb_atom_t        property
 ** @param xcb_timestamp_t   time
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_convert_selection_checked (xcb_connection_t *c  /**< */,
                               xcb_window_t      requestor  /**< */,
                               xcb_atom_t        selection  /**< */,
                               xcb_atom_t        target  /**< */,
                               xcb_atom_t        property  /**< */,
                               xcb_timestamp_t   time  /**< */);

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
 ** xcb_void_cookie_t xcb_convert_selection
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_window_t      requestor
 ** @param xcb_atom_t        selection
 ** @param xcb_atom_t        target
 ** @param xcb_atom_t        property
 ** @param xcb_timestamp_t   time
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_convert_selection (xcb_connection_t *c  /**< */,
                       xcb_window_t      requestor  /**< */,
                       xcb_atom_t        selection  /**< */,
                       xcb_atom_t        target  /**< */,
                       xcb_atom_t        property  /**< */,
                       xcb_timestamp_t   time  /**< */);

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
 ** xcb_void_cookie_t xcb_send_event_checked
 ** 
 ** @param xcb_connection_t *c
 ** @param ubyte             propagate
 ** @param xcb_window_t      destination
 ** @param uint              event_mask
 ** @param const char       *event
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_send_event_checked (xcb_connection_t *c  /**< */,
                        ubyte             propagate  /**< */,
                        xcb_window_t      destination  /**< */,
                        uint              event_mask  /**< */,
                        const char       *event  /**< */);

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
 ** xcb_void_cookie_t xcb_send_event
 ** 
 ** @param xcb_connection_t *c
 ** @param ubyte             propagate
 ** @param xcb_window_t      destination
 ** @param uint              event_mask
 ** @param const char       *event
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_send_event (xcb_connection_t *c  /**< */,
                ubyte             propagate  /**< */,
                xcb_window_t      destination  /**< */,
                uint              event_mask  /**< */,
                const char       *event  /**< */);

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
 ** xcb_grab_pointer_cookie_t xcb_grab_pointer
 ** 
 ** @param xcb_connection_t *c
 ** @param ubyte             owner_events
 ** @param xcb_window_t      grab_window
 ** @param ushort            event_mask
 ** @param ubyte             pointer_mode
 ** @param ubyte             keyboard_mode
 ** @param xcb_window_t      confine_to
 ** @param xcb_cursor_t      cursor
 ** @param xcb_timestamp_t   time
 ** @returns xcb_grab_pointer_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_grab_pointer_cookie_t
xcb_grab_pointer (xcb_connection_t *c  /**< */,
                  ubyte             owner_events  /**< */,
                  xcb_window_t      grab_window  /**< */,
                  ushort            event_mask  /**< */,
                  ubyte             pointer_mode  /**< */,
                  ubyte             keyboard_mode  /**< */,
                  xcb_window_t      confine_to  /**< */,
                  xcb_cursor_t      cursor  /**< */,
                  xcb_timestamp_t   time  /**< */);

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
 ** xcb_grab_pointer_cookie_t xcb_grab_pointer_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @param ubyte             owner_events
 ** @param xcb_window_t      grab_window
 ** @param ushort            event_mask
 ** @param ubyte             pointer_mode
 ** @param ubyte             keyboard_mode
 ** @param xcb_window_t      confine_to
 ** @param xcb_cursor_t      cursor
 ** @param xcb_timestamp_t   time
 ** @returns xcb_grab_pointer_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_grab_pointer_cookie_t
xcb_grab_pointer_unchecked (xcb_connection_t *c  /**< */,
                            ubyte             owner_events  /**< */,
                            xcb_window_t      grab_window  /**< */,
                            ushort            event_mask  /**< */,
                            ubyte             pointer_mode  /**< */,
                            ubyte             keyboard_mode  /**< */,
                            xcb_window_t      confine_to  /**< */,
                            xcb_cursor_t      cursor  /**< */,
                            xcb_timestamp_t   time  /**< */);

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 * 
 * The parameter @p e supplied to this function must be NULL if
 * xcb_grab_pointer_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */

/*****************************************************************************
 **
 ** xcb_grab_pointer_reply_t * xcb_grab_pointer_reply
 ** 
 ** @param xcb_connection_t           *c
 ** @param xcb_grab_pointer_cookie_t   cookie
 ** @param xcb_generic_error_t       **e
 ** @returns xcb_grab_pointer_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_grab_pointer_reply_t *
xcb_grab_pointer_reply (xcb_connection_t           *c  /**< */,
                        xcb_grab_pointer_cookie_t   cookie  /**< */,
                        xcb_generic_error_t       **e  /**< */);

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
 ** xcb_void_cookie_t xcb_ungrab_pointer_checked
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_timestamp_t   time
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_ungrab_pointer_checked (xcb_connection_t *c  /**< */,
                            xcb_timestamp_t   time  /**< */);

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
 ** xcb_void_cookie_t xcb_ungrab_pointer
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_timestamp_t   time
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_ungrab_pointer (xcb_connection_t *c  /**< */,
                    xcb_timestamp_t   time  /**< */);

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
 ** xcb_void_cookie_t xcb_grab_button_checked
 ** 
 ** @param xcb_connection_t *c
 ** @param ubyte             owner_events
 ** @param xcb_window_t      grab_window
 ** @param ushort            event_mask
 ** @param ubyte             pointer_mode
 ** @param ubyte             keyboard_mode
 ** @param xcb_window_t      confine_to
 ** @param xcb_cursor_t      cursor
 ** @param ubyte             button
 ** @param ushort            modifiers
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_grab_button_checked (xcb_connection_t *c  /**< */,
                         ubyte             owner_events  /**< */,
                         xcb_window_t      grab_window  /**< */,
                         ushort            event_mask  /**< */,
                         ubyte             pointer_mode  /**< */,
                         ubyte             keyboard_mode  /**< */,
                         xcb_window_t      confine_to  /**< */,
                         xcb_cursor_t      cursor  /**< */,
                         ubyte             button  /**< */,
                         ushort            modifiers  /**< */);

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
 ** xcb_void_cookie_t xcb_grab_button
 ** 
 ** @param xcb_connection_t *c
 ** @param ubyte             owner_events
 ** @param xcb_window_t      grab_window
 ** @param ushort            event_mask
 ** @param ubyte             pointer_mode
 ** @param ubyte             keyboard_mode
 ** @param xcb_window_t      confine_to
 ** @param xcb_cursor_t      cursor
 ** @param ubyte             button
 ** @param ushort            modifiers
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_grab_button (xcb_connection_t *c  /**< */,
                 ubyte             owner_events  /**< */,
                 xcb_window_t      grab_window  /**< */,
                 ushort            event_mask  /**< */,
                 ubyte             pointer_mode  /**< */,
                 ubyte             keyboard_mode  /**< */,
                 xcb_window_t      confine_to  /**< */,
                 xcb_cursor_t      cursor  /**< */,
                 ubyte             button  /**< */,
                 ushort            modifiers  /**< */);

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
 ** xcb_void_cookie_t xcb_ungrab_button_checked
 ** 
 ** @param xcb_connection_t *c
 ** @param ubyte             button
 ** @param xcb_window_t      grab_window
 ** @param ushort            modifiers
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_ungrab_button_checked (xcb_connection_t *c  /**< */,
                           ubyte             button  /**< */,
                           xcb_window_t      grab_window  /**< */,
                           ushort            modifiers  /**< */);

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
 ** xcb_void_cookie_t xcb_ungrab_button
 ** 
 ** @param xcb_connection_t *c
 ** @param ubyte             button
 ** @param xcb_window_t      grab_window
 ** @param ushort            modifiers
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_ungrab_button (xcb_connection_t *c  /**< */,
                   ubyte             button  /**< */,
                   xcb_window_t      grab_window  /**< */,
                   ushort            modifiers  /**< */);

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
 ** xcb_void_cookie_t xcb_change_active_pointer_grab_checked
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_cursor_t      cursor
 ** @param xcb_timestamp_t   time
 ** @param ushort            event_mask
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_change_active_pointer_grab_checked (xcb_connection_t *c  /**< */,
                                        xcb_cursor_t      cursor  /**< */,
                                        xcb_timestamp_t   time  /**< */,
                                        ushort            event_mask  /**< */);

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
 ** xcb_void_cookie_t xcb_change_active_pointer_grab
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_cursor_t      cursor
 ** @param xcb_timestamp_t   time
 ** @param ushort            event_mask
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_change_active_pointer_grab (xcb_connection_t *c  /**< */,
                                xcb_cursor_t      cursor  /**< */,
                                xcb_timestamp_t   time  /**< */,
                                ushort            event_mask  /**< */);

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
 ** xcb_grab_keyboard_cookie_t xcb_grab_keyboard
 ** 
 ** @param xcb_connection_t *c
 ** @param ubyte             owner_events
 ** @param xcb_window_t      grab_window
 ** @param xcb_timestamp_t   time
 ** @param ubyte             pointer_mode
 ** @param ubyte             keyboard_mode
 ** @returns xcb_grab_keyboard_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_grab_keyboard_cookie_t
xcb_grab_keyboard (xcb_connection_t *c  /**< */,
                   ubyte             owner_events  /**< */,
                   xcb_window_t      grab_window  /**< */,
                   xcb_timestamp_t   time  /**< */,
                   ubyte             pointer_mode  /**< */,
                   ubyte             keyboard_mode  /**< */);

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
 ** xcb_grab_keyboard_cookie_t xcb_grab_keyboard_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @param ubyte             owner_events
 ** @param xcb_window_t      grab_window
 ** @param xcb_timestamp_t   time
 ** @param ubyte             pointer_mode
 ** @param ubyte             keyboard_mode
 ** @returns xcb_grab_keyboard_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_grab_keyboard_cookie_t
xcb_grab_keyboard_unchecked (xcb_connection_t *c  /**< */,
                             ubyte             owner_events  /**< */,
                             xcb_window_t      grab_window  /**< */,
                             xcb_timestamp_t   time  /**< */,
                             ubyte             pointer_mode  /**< */,
                             ubyte             keyboard_mode  /**< */);

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 * 
 * The parameter @p e supplied to this function must be NULL if
 * xcb_grab_keyboard_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */

/*****************************************************************************
 **
 ** xcb_grab_keyboard_reply_t * xcb_grab_keyboard_reply
 ** 
 ** @param xcb_connection_t            *c
 ** @param xcb_grab_keyboard_cookie_t   cookie
 ** @param xcb_generic_error_t        **e
 ** @returns xcb_grab_keyboard_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_grab_keyboard_reply_t *
xcb_grab_keyboard_reply (xcb_connection_t            *c  /**< */,
                         xcb_grab_keyboard_cookie_t   cookie  /**< */,
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
 ** xcb_void_cookie_t xcb_ungrab_keyboard_checked
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_timestamp_t   time
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_ungrab_keyboard_checked (xcb_connection_t *c  /**< */,
                             xcb_timestamp_t   time  /**< */);

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
 ** xcb_void_cookie_t xcb_ungrab_keyboard
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_timestamp_t   time
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_ungrab_keyboard (xcb_connection_t *c  /**< */,
                     xcb_timestamp_t   time  /**< */);

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
 ** xcb_void_cookie_t xcb_grab_key_checked
 ** 
 ** @param xcb_connection_t *c
 ** @param ubyte             owner_events
 ** @param xcb_window_t      grab_window
 ** @param ushort            modifiers
 ** @param xcb_keycode_t     key
 ** @param ubyte             pointer_mode
 ** @param ubyte             keyboard_mode
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_grab_key_checked (xcb_connection_t *c  /**< */,
                      ubyte             owner_events  /**< */,
                      xcb_window_t      grab_window  /**< */,
                      ushort            modifiers  /**< */,
                      xcb_keycode_t     key  /**< */,
                      ubyte             pointer_mode  /**< */,
                      ubyte             keyboard_mode  /**< */);

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
 ** xcb_void_cookie_t xcb_grab_key
 ** 
 ** @param xcb_connection_t *c
 ** @param ubyte             owner_events
 ** @param xcb_window_t      grab_window
 ** @param ushort            modifiers
 ** @param xcb_keycode_t     key
 ** @param ubyte             pointer_mode
 ** @param ubyte             keyboard_mode
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_grab_key (xcb_connection_t *c  /**< */,
              ubyte             owner_events  /**< */,
              xcb_window_t      grab_window  /**< */,
              ushort            modifiers  /**< */,
              xcb_keycode_t     key  /**< */,
              ubyte             pointer_mode  /**< */,
              ubyte             keyboard_mode  /**< */);

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
 ** xcb_void_cookie_t xcb_ungrab_key_checked
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_keycode_t     key
 ** @param xcb_window_t      grab_window
 ** @param ushort            modifiers
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_ungrab_key_checked (xcb_connection_t *c  /**< */,
                        xcb_keycode_t     key  /**< */,
                        xcb_window_t      grab_window  /**< */,
                        ushort            modifiers  /**< */);

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
 ** xcb_void_cookie_t xcb_ungrab_key
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_keycode_t     key
 ** @param xcb_window_t      grab_window
 ** @param ushort            modifiers
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_ungrab_key (xcb_connection_t *c  /**< */,
                xcb_keycode_t     key  /**< */,
                xcb_window_t      grab_window  /**< */,
                ushort            modifiers  /**< */);

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
 ** xcb_void_cookie_t xcb_allow_events_checked
 ** 
 ** @param xcb_connection_t *c
 ** @param ubyte             mode
 ** @param xcb_timestamp_t   time
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_allow_events_checked (xcb_connection_t *c  /**< */,
                          ubyte             mode  /**< */,
                          xcb_timestamp_t   time  /**< */);

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
 ** xcb_void_cookie_t xcb_allow_events
 ** 
 ** @param xcb_connection_t *c
 ** @param ubyte             mode
 ** @param xcb_timestamp_t   time
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_allow_events (xcb_connection_t *c  /**< */,
                  ubyte             mode  /**< */,
                  xcb_timestamp_t   time  /**< */);

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
 ** xcb_void_cookie_t xcb_grab_server_checked
 ** 
 ** @param xcb_connection_t *c
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_grab_server_checked (xcb_connection_t *c  /**< */);

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
 ** xcb_void_cookie_t xcb_grab_server
 ** 
 ** @param xcb_connection_t *c
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_grab_server (xcb_connection_t *c  /**< */);

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
 ** xcb_void_cookie_t xcb_ungrab_server_checked
 ** 
 ** @param xcb_connection_t *c
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_ungrab_server_checked (xcb_connection_t *c  /**< */);

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
 ** xcb_void_cookie_t xcb_ungrab_server
 ** 
 ** @param xcb_connection_t *c
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_ungrab_server (xcb_connection_t *c  /**< */);

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
 ** xcb_query_pointer_cookie_t xcb_query_pointer
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_window_t      window
 ** @returns xcb_query_pointer_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_query_pointer_cookie_t
xcb_query_pointer (xcb_connection_t *c  /**< */,
                   xcb_window_t      window  /**< */);

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
 ** xcb_query_pointer_cookie_t xcb_query_pointer_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_window_t      window
 ** @returns xcb_query_pointer_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_query_pointer_cookie_t
xcb_query_pointer_unchecked (xcb_connection_t *c  /**< */,
                             xcb_window_t      window  /**< */);

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 * 
 * The parameter @p e supplied to this function must be NULL if
 * xcb_query_pointer_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */

/*****************************************************************************
 **
 ** xcb_query_pointer_reply_t * xcb_query_pointer_reply
 ** 
 ** @param xcb_connection_t            *c
 ** @param xcb_query_pointer_cookie_t   cookie
 ** @param xcb_generic_error_t        **e
 ** @returns xcb_query_pointer_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_query_pointer_reply_t *
xcb_query_pointer_reply (xcb_connection_t            *c  /**< */,
                         xcb_query_pointer_cookie_t   cookie  /**< */,
                         xcb_generic_error_t        **e  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_timecoord_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_timecoord_t)
 */

/*****************************************************************************
 **
 ** void xcb_timecoord_next
 ** 
 ** @param xcb_timecoord_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_timecoord_next (xcb_timecoord_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_timecoord_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_timecoord_end
 ** 
 ** @param xcb_timecoord_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
xcb_generic_iterator_t
xcb_timecoord_end (xcb_timecoord_iterator_t i  /**< */);

extern(C) int
xcb_get_motion_events_sizeof (const void  *_buffer  /**< */);

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
 ** xcb_get_motion_events_cookie_t xcb_get_motion_events
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_window_t      window
 ** @param xcb_timestamp_t   start
 ** @param xcb_timestamp_t   stop
 ** @returns xcb_get_motion_events_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_get_motion_events_cookie_t
xcb_get_motion_events (xcb_connection_t *c  /**< */,
                       xcb_window_t      window  /**< */,
                       xcb_timestamp_t   start  /**< */,
                       xcb_timestamp_t   stop  /**< */);

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
 ** xcb_get_motion_events_cookie_t xcb_get_motion_events_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_window_t      window
 ** @param xcb_timestamp_t   start
 ** @param xcb_timestamp_t   stop
 ** @returns xcb_get_motion_events_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_get_motion_events_cookie_t
xcb_get_motion_events_unchecked (xcb_connection_t *c  /**< */,
                                 xcb_window_t      window  /**< */,
                                 xcb_timestamp_t   start  /**< */,
                                 xcb_timestamp_t   stop  /**< */);


/*****************************************************************************
 **
 ** xcb_timecoord_t * xcb_get_motion_events_events
 ** 
 ** @param const xcb_get_motion_events_reply_t *R
 ** @returns xcb_timecoord_t *
 **
 *****************************************************************************/
 
xcb_timecoord_t *
xcb_get_motion_events_events (const xcb_get_motion_events_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_get_motion_events_events_length
 ** 
 ** @param const xcb_get_motion_events_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_get_motion_events_events_length (const xcb_get_motion_events_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_timecoord_iterator_t xcb_get_motion_events_events_iterator
 ** 
 ** @param const xcb_get_motion_events_reply_t *R
 ** @returns xcb_timecoord_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_timecoord_iterator_t
xcb_get_motion_events_events_iterator (const xcb_get_motion_events_reply_t *R  /**< */);

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 * 
 * The parameter @p e supplied to this function must be NULL if
 * xcb_get_motion_events_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */

/*****************************************************************************
 **
 ** xcb_get_motion_events_reply_t * xcb_get_motion_events_reply
 ** 
 ** @param xcb_connection_t                *c
 ** @param xcb_get_motion_events_cookie_t   cookie
 ** @param xcb_generic_error_t            **e
 ** @returns xcb_get_motion_events_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_get_motion_events_reply_t *
xcb_get_motion_events_reply (xcb_connection_t                *c  /**< */,
                             xcb_get_motion_events_cookie_t   cookie  /**< */,
                             xcb_generic_error_t            **e  /**< */);

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
 ** xcb_translate_coordinates_cookie_t xcb_translate_coordinates
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_window_t      src_window
 ** @param xcb_window_t      dst_window
 ** @param short             src_x
 ** @param short             src_y
 ** @returns xcb_translate_coordinates_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_translate_coordinates_cookie_t
xcb_translate_coordinates (xcb_connection_t *c  /**< */,
                           xcb_window_t      src_window  /**< */,
                           xcb_window_t      dst_window  /**< */,
                           short             src_x  /**< */,
                           short             src_y  /**< */);

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
 ** xcb_translate_coordinates_cookie_t xcb_translate_coordinates_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_window_t      src_window
 ** @param xcb_window_t      dst_window
 ** @param short             src_x
 ** @param short             src_y
 ** @returns xcb_translate_coordinates_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_translate_coordinates_cookie_t
xcb_translate_coordinates_unchecked (xcb_connection_t *c  /**< */,
                                     xcb_window_t      src_window  /**< */,
                                     xcb_window_t      dst_window  /**< */,
                                     short             src_x  /**< */,
                                     short             src_y  /**< */);

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 * 
 * The parameter @p e supplied to this function must be NULL if
 * xcb_translate_coordinates_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */

/*****************************************************************************
 **
 ** xcb_translate_coordinates_reply_t * xcb_translate_coordinates_reply
 ** 
 ** @param xcb_connection_t                    *c
 ** @param xcb_translate_coordinates_cookie_t   cookie
 ** @param xcb_generic_error_t                **e
 ** @returns xcb_translate_coordinates_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_translate_coordinates_reply_t *
xcb_translate_coordinates_reply (xcb_connection_t                    *c  /**< */,
                                 xcb_translate_coordinates_cookie_t   cookie  /**< */,
                                 xcb_generic_error_t                **e  /**< */);

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
 ** xcb_void_cookie_t xcb_warp_pointer_checked
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_window_t      src_window
 ** @param xcb_window_t      dst_window
 ** @param short             src_x
 ** @param short             src_y
 ** @param ushort            src_width
 ** @param ushort            src_height
 ** @param short             dst_x
 ** @param short             dst_y
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_warp_pointer_checked (xcb_connection_t *c  /**< */,
                          xcb_window_t      src_window  /**< */,
                          xcb_window_t      dst_window  /**< */,
                          short             src_x  /**< */,
                          short             src_y  /**< */,
                          ushort            src_width  /**< */,
                          ushort            src_height  /**< */,
                          short             dst_x  /**< */,
                          short             dst_y  /**< */);

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
 ** xcb_void_cookie_t xcb_warp_pointer
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_window_t      src_window
 ** @param xcb_window_t      dst_window
 ** @param short             src_x
 ** @param short             src_y
 ** @param ushort            src_width
 ** @param ushort            src_height
 ** @param short             dst_x
 ** @param short             dst_y
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_warp_pointer (xcb_connection_t *c  /**< */,
                  xcb_window_t      src_window  /**< */,
                  xcb_window_t      dst_window  /**< */,
                  short             src_x  /**< */,
                  short             src_y  /**< */,
                  ushort            src_width  /**< */,
                  ushort            src_height  /**< */,
                  short             dst_x  /**< */,
                  short             dst_y  /**< */);

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
 ** xcb_void_cookie_t xcb_set_input_focus_checked
 ** 
 ** @param xcb_connection_t *c
 ** @param ubyte             revert_to
 ** @param xcb_window_t      focus
 ** @param xcb_timestamp_t   time
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_set_input_focus_checked (xcb_connection_t *c  /**< */,
                             ubyte             revert_to  /**< */,
                             xcb_window_t      focus  /**< */,
                             xcb_timestamp_t   time  /**< */);

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
 ** xcb_void_cookie_t xcb_set_input_focus
 ** 
 ** @param xcb_connection_t *c
 ** @param ubyte             revert_to
 ** @param xcb_window_t      focus
 ** @param xcb_timestamp_t   time
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_set_input_focus (xcb_connection_t *c  /**< */,
                     ubyte             revert_to  /**< */,
                     xcb_window_t      focus  /**< */,
                     xcb_timestamp_t   time  /**< */);

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
 ** xcb_get_input_focus_cookie_t xcb_get_input_focus
 ** 
 ** @param xcb_connection_t *c
 ** @returns xcb_get_input_focus_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_get_input_focus_cookie_t
xcb_get_input_focus (xcb_connection_t *c  /**< */);

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
 ** xcb_get_input_focus_cookie_t xcb_get_input_focus_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @returns xcb_get_input_focus_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_get_input_focus_cookie_t
xcb_get_input_focus_unchecked (xcb_connection_t *c  /**< */);

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 * 
 * The parameter @p e supplied to this function must be NULL if
 * xcb_get_input_focus_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */

/*****************************************************************************
 **
 ** xcb_get_input_focus_reply_t * xcb_get_input_focus_reply
 ** 
 ** @param xcb_connection_t              *c
 ** @param xcb_get_input_focus_cookie_t   cookie
 ** @param xcb_generic_error_t          **e
 ** @returns xcb_get_input_focus_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_get_input_focus_reply_t *
xcb_get_input_focus_reply (xcb_connection_t              *c  /**< */,
                           xcb_get_input_focus_cookie_t   cookie  /**< */,
                           xcb_generic_error_t          **e  /**< */);

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
 ** xcb_query_keymap_cookie_t xcb_query_keymap
 ** 
 ** @param xcb_connection_t *c
 ** @returns xcb_query_keymap_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_query_keymap_cookie_t
xcb_query_keymap (xcb_connection_t *c  /**< */);

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
 ** xcb_query_keymap_cookie_t xcb_query_keymap_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @returns xcb_query_keymap_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_query_keymap_cookie_t
xcb_query_keymap_unchecked (xcb_connection_t *c  /**< */);

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 * 
 * The parameter @p e supplied to this function must be NULL if
 * xcb_query_keymap_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */

/*****************************************************************************
 **
 ** xcb_query_keymap_reply_t * xcb_query_keymap_reply
 ** 
 ** @param xcb_connection_t           *c
 ** @param xcb_query_keymap_cookie_t   cookie
 ** @param xcb_generic_error_t       **e
 ** @returns xcb_query_keymap_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_query_keymap_reply_t *
xcb_query_keymap_reply (xcb_connection_t           *c  /**< */,
                        xcb_query_keymap_cookie_t   cookie  /**< */,
                        xcb_generic_error_t       **e  /**< */);

extern(C) int
xcb_open_font_sizeof (const void  *_buffer  /**< */);

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
 ** xcb_void_cookie_t xcb_open_font_checked
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_font_t        fid
 ** @param ushort            name_len
 ** @param const char       *name
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_open_font_checked (xcb_connection_t *c  /**< */,
                       xcb_font_t        fid  /**< */,
                       ushort            name_len  /**< */,
                       const char       *name  /**< */);

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
 ** xcb_void_cookie_t xcb_open_font
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_font_t        fid
 ** @param ushort            name_len
 ** @param const char       *name
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_open_font (xcb_connection_t *c  /**< */,
               xcb_font_t        fid  /**< */,
               ushort            name_len  /**< */,
               const char       *name  /**< */);

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
 ** xcb_void_cookie_t xcb_close_font_checked
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_font_t        font
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_close_font_checked (xcb_connection_t *c  /**< */,
                        xcb_font_t        font  /**< */);

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
 ** xcb_void_cookie_t xcb_close_font
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_font_t        font
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_close_font (xcb_connection_t *c  /**< */,
                xcb_font_t        font  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_fontprop_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_fontprop_t)
 */

/*****************************************************************************
 **
 ** void xcb_fontprop_next
 ** 
 ** @param xcb_fontprop_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_fontprop_next (xcb_fontprop_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_fontprop_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_fontprop_end
 ** 
 ** @param xcb_fontprop_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
xcb_generic_iterator_t
xcb_fontprop_end (xcb_fontprop_iterator_t i  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_charinfo_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_charinfo_t)
 */

/*****************************************************************************
 **
 ** void xcb_charinfo_next
 ** 
 ** @param xcb_charinfo_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_charinfo_next (xcb_charinfo_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_charinfo_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_charinfo_end
 ** 
 ** @param xcb_charinfo_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
xcb_generic_iterator_t
xcb_charinfo_end (xcb_charinfo_iterator_t i  /**< */);

extern(C) int
xcb_query_font_sizeof (const void  *_buffer  /**< */);

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
 ** xcb_query_font_cookie_t xcb_query_font
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_fontable_t    font
 ** @returns xcb_query_font_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_query_font_cookie_t
xcb_query_font (xcb_connection_t *c  /**< */,
                xcb_fontable_t    font  /**< */);

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
 ** xcb_query_font_cookie_t xcb_query_font_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_fontable_t    font
 ** @returns xcb_query_font_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_query_font_cookie_t
xcb_query_font_unchecked (xcb_connection_t *c  /**< */,
                          xcb_fontable_t    font  /**< */);


/*****************************************************************************
 **
 ** xcb_fontprop_t * xcb_query_font_properties
 ** 
 ** @param const xcb_query_font_reply_t *R
 ** @returns xcb_fontprop_t *
 **
 *****************************************************************************/
 
xcb_fontprop_t *
xcb_query_font_properties (const xcb_query_font_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_query_font_properties_length
 ** 
 ** @param const xcb_query_font_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_query_font_properties_length (const xcb_query_font_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_fontprop_iterator_t xcb_query_font_properties_iterator
 ** 
 ** @param const xcb_query_font_reply_t *R
 ** @returns xcb_fontprop_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_fontprop_iterator_t
xcb_query_font_properties_iterator (const xcb_query_font_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_charinfo_t * xcb_query_font_char_infos
 ** 
 ** @param const xcb_query_font_reply_t *R
 ** @returns xcb_charinfo_t *
 **
 *****************************************************************************/
 
xcb_charinfo_t *
xcb_query_font_char_infos (const xcb_query_font_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_query_font_char_infos_length
 ** 
 ** @param const xcb_query_font_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_query_font_char_infos_length (const xcb_query_font_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_charinfo_iterator_t xcb_query_font_char_infos_iterator
 ** 
 ** @param const xcb_query_font_reply_t *R
 ** @returns xcb_charinfo_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_charinfo_iterator_t
xcb_query_font_char_infos_iterator (const xcb_query_font_reply_t *R  /**< */);

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 * 
 * The parameter @p e supplied to this function must be NULL if
 * xcb_query_font_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */

/*****************************************************************************
 **
 ** xcb_query_font_reply_t * xcb_query_font_reply
 ** 
 ** @param xcb_connection_t         *c
 ** @param xcb_query_font_cookie_t   cookie
 ** @param xcb_generic_error_t     **e
 ** @returns xcb_query_font_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_query_font_reply_t *
xcb_query_font_reply (xcb_connection_t         *c  /**< */,
                      xcb_query_font_cookie_t   cookie  /**< */,
                      xcb_generic_error_t     **e  /**< */);

extern(C) int
xcb_query_text_extents_sizeof (const void  *_buffer  /**< */,
                               uint         string_len  /**< */);

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
 ** xcb_query_text_extents_cookie_t xcb_query_text_extents
 ** 
 ** @param xcb_connection_t   *c
 ** @param xcb_fontable_t      font
 ** @param uint                string_len
 ** @param const xcb_char2b_t *string
 ** @returns xcb_query_text_extents_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_query_text_extents_cookie_t
xcb_query_text_extents (xcb_connection_t   *c  /**< */,
                        xcb_fontable_t      font  /**< */,
                        uint                string_len  /**< */,
                        const xcb_char2b_t *string  /**< */);

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
 ** xcb_query_text_extents_cookie_t xcb_query_text_extents_unchecked
 ** 
 ** @param xcb_connection_t   *c
 ** @param xcb_fontable_t      font
 ** @param uint                string_len
 ** @param const xcb_char2b_t *string
 ** @returns xcb_query_text_extents_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_query_text_extents_cookie_t
xcb_query_text_extents_unchecked (xcb_connection_t   *c  /**< */,
                                  xcb_fontable_t      font  /**< */,
                                  uint                string_len  /**< */,
                                  const xcb_char2b_t *string  /**< */);

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 * 
 * The parameter @p e supplied to this function must be NULL if
 * xcb_query_text_extents_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */

/*****************************************************************************
 **
 ** xcb_query_text_extents_reply_t * xcb_query_text_extents_reply
 ** 
 ** @param xcb_connection_t                 *c
 ** @param xcb_query_text_extents_cookie_t   cookie
 ** @param xcb_generic_error_t             **e
 ** @returns xcb_query_text_extents_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_query_text_extents_reply_t *
xcb_query_text_extents_reply (xcb_connection_t                 *c  /**< */,
                              xcb_query_text_extents_cookie_t   cookie  /**< */,
                              xcb_generic_error_t             **e  /**< */);

extern(C) int
xcb_str_sizeof (const void  *_buffer  /**< */);


/*****************************************************************************
 **
 ** char * xcb_str_name
 ** 
 ** @param const xcb_str_t *R
 ** @returns char *
 **
 *****************************************************************************/
 
char *
xcb_str_name (const xcb_str_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_str_name_length
 ** 
 ** @param const xcb_str_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_str_name_length (const xcb_str_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_str_name_end
 ** 
 ** @param const xcb_str_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_str_name_end (const xcb_str_t *R  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_str_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_str_t)
 */

/*****************************************************************************
 **
 ** void xcb_str_next
 ** 
 ** @param xcb_str_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_str_next (xcb_str_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_str_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_str_end
 ** 
 ** @param xcb_str_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
xcb_generic_iterator_t
xcb_str_end (xcb_str_iterator_t i  /**< */);

extern(C) int
xcb_list_fonts_sizeof (const void  *_buffer  /**< */);

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
 ** xcb_list_fonts_cookie_t xcb_list_fonts
 ** 
 ** @param xcb_connection_t *c
 ** @param ushort            max_names
 ** @param ushort            pattern_len
 ** @param const char       *pattern
 ** @returns xcb_list_fonts_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_list_fonts_cookie_t
xcb_list_fonts (xcb_connection_t *c  /**< */,
                ushort            max_names  /**< */,
                ushort            pattern_len  /**< */,
                const char       *pattern  /**< */);

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
 ** xcb_list_fonts_cookie_t xcb_list_fonts_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @param ushort            max_names
 ** @param ushort            pattern_len
 ** @param const char       *pattern
 ** @returns xcb_list_fonts_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_list_fonts_cookie_t
xcb_list_fonts_unchecked (xcb_connection_t *c  /**< */,
                          ushort            max_names  /**< */,
                          ushort            pattern_len  /**< */,
                          const char       *pattern  /**< */);


/*****************************************************************************
 **
 ** int xcb_list_fonts_names_length
 ** 
 ** @param const xcb_list_fonts_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_list_fonts_names_length (const xcb_list_fonts_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_str_iterator_t xcb_list_fonts_names_iterator
 ** 
 ** @param const xcb_list_fonts_reply_t *R
 ** @returns xcb_str_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_str_iterator_t
xcb_list_fonts_names_iterator (const xcb_list_fonts_reply_t *R  /**< */);

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 * 
 * The parameter @p e supplied to this function must be NULL if
 * xcb_list_fonts_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */

/*****************************************************************************
 **
 ** xcb_list_fonts_reply_t * xcb_list_fonts_reply
 ** 
 ** @param xcb_connection_t         *c
 ** @param xcb_list_fonts_cookie_t   cookie
 ** @param xcb_generic_error_t     **e
 ** @returns xcb_list_fonts_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_list_fonts_reply_t *
xcb_list_fonts_reply (xcb_connection_t         *c  /**< */,
                      xcb_list_fonts_cookie_t   cookie  /**< */,
                      xcb_generic_error_t     **e  /**< */);

extern(C) int
xcb_list_fonts_with_info_sizeof (const void  *_buffer  /**< */);

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
 ** xcb_list_fonts_with_info_cookie_t xcb_list_fonts_with_info
 ** 
 ** @param xcb_connection_t *c
 ** @param ushort            max_names
 ** @param ushort            pattern_len
 ** @param const char       *pattern
 ** @returns xcb_list_fonts_with_info_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_list_fonts_with_info_cookie_t
xcb_list_fonts_with_info (xcb_connection_t *c  /**< */,
                          ushort            max_names  /**< */,
                          ushort            pattern_len  /**< */,
                          const char       *pattern  /**< */);

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
 ** xcb_list_fonts_with_info_cookie_t xcb_list_fonts_with_info_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @param ushort            max_names
 ** @param ushort            pattern_len
 ** @param const char       *pattern
 ** @returns xcb_list_fonts_with_info_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_list_fonts_with_info_cookie_t
xcb_list_fonts_with_info_unchecked (xcb_connection_t *c  /**< */,
                                    ushort            max_names  /**< */,
                                    ushort            pattern_len  /**< */,
                                    const char       *pattern  /**< */);


/*****************************************************************************
 **
 ** xcb_fontprop_t * xcb_list_fonts_with_info_properties
 ** 
 ** @param const xcb_list_fonts_with_info_reply_t *R
 ** @returns xcb_fontprop_t *
 **
 *****************************************************************************/
 
xcb_fontprop_t *
xcb_list_fonts_with_info_properties (const xcb_list_fonts_with_info_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_list_fonts_with_info_properties_length
 ** 
 ** @param const xcb_list_fonts_with_info_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_list_fonts_with_info_properties_length (const xcb_list_fonts_with_info_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_fontprop_iterator_t xcb_list_fonts_with_info_properties_iterator
 ** 
 ** @param const xcb_list_fonts_with_info_reply_t *R
 ** @returns xcb_fontprop_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_fontprop_iterator_t
xcb_list_fonts_with_info_properties_iterator (const xcb_list_fonts_with_info_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** char * xcb_list_fonts_with_info_name
 ** 
 ** @param const xcb_list_fonts_with_info_reply_t *R
 ** @returns char *
 **
 *****************************************************************************/
 
char *
xcb_list_fonts_with_info_name (const xcb_list_fonts_with_info_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_list_fonts_with_info_name_length
 ** 
 ** @param const xcb_list_fonts_with_info_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_list_fonts_with_info_name_length (const xcb_list_fonts_with_info_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_list_fonts_with_info_name_end
 ** 
 ** @param const xcb_list_fonts_with_info_reply_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_list_fonts_with_info_name_end (const xcb_list_fonts_with_info_reply_t *R  /**< */);

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 * 
 * The parameter @p e supplied to this function must be NULL if
 * xcb_list_fonts_with_info_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */

/*****************************************************************************
 **
 ** xcb_list_fonts_with_info_reply_t * xcb_list_fonts_with_info_reply
 ** 
 ** @param xcb_connection_t                   *c
 ** @param xcb_list_fonts_with_info_cookie_t   cookie
 ** @param xcb_generic_error_t               **e
 ** @returns xcb_list_fonts_with_info_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_list_fonts_with_info_reply_t *
xcb_list_fonts_with_info_reply (xcb_connection_t                   *c  /**< */,
                                xcb_list_fonts_with_info_cookie_t   cookie  /**< */,
                                xcb_generic_error_t               **e  /**< */);

extern(C) int
xcb_set_font_path_sizeof (const void  *_buffer  /**< */);

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
 ** xcb_void_cookie_t xcb_set_font_path_checked
 ** 
 ** @param xcb_connection_t *c
 ** @param ushort            font_qty
 ** @param const xcb_str_t  *font
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_set_font_path_checked (xcb_connection_t *c  /**< */,
                           ushort            font_qty  /**< */,
                           const xcb_str_t  *font  /**< */);

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
 ** xcb_void_cookie_t xcb_set_font_path
 ** 
 ** @param xcb_connection_t *c
 ** @param ushort            font_qty
 ** @param const xcb_str_t  *font
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_set_font_path (xcb_connection_t *c  /**< */,
                   ushort            font_qty  /**< */,
                   const xcb_str_t  *font  /**< */);

extern(C) int
xcb_get_font_path_sizeof (const void  *_buffer  /**< */);

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
 ** xcb_get_font_path_cookie_t xcb_get_font_path
 ** 
 ** @param xcb_connection_t *c
 ** @returns xcb_get_font_path_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_get_font_path_cookie_t
xcb_get_font_path (xcb_connection_t *c  /**< */);

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
 ** xcb_get_font_path_cookie_t xcb_get_font_path_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @returns xcb_get_font_path_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_get_font_path_cookie_t
xcb_get_font_path_unchecked (xcb_connection_t *c  /**< */);


/*****************************************************************************
 **
 ** int xcb_get_font_path_path_length
 ** 
 ** @param const xcb_get_font_path_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_get_font_path_path_length (const xcb_get_font_path_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_str_iterator_t xcb_get_font_path_path_iterator
 ** 
 ** @param const xcb_get_font_path_reply_t *R
 ** @returns xcb_str_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_str_iterator_t
xcb_get_font_path_path_iterator (const xcb_get_font_path_reply_t *R  /**< */);

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 * 
 * The parameter @p e supplied to this function must be NULL if
 * xcb_get_font_path_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */

/*****************************************************************************
 **
 ** xcb_get_font_path_reply_t * xcb_get_font_path_reply
 ** 
 ** @param xcb_connection_t            *c
 ** @param xcb_get_font_path_cookie_t   cookie
 ** @param xcb_generic_error_t        **e
 ** @returns xcb_get_font_path_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_get_font_path_reply_t *
xcb_get_font_path_reply (xcb_connection_t            *c  /**< */,
                         xcb_get_font_path_cookie_t   cookie  /**< */,
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
 ** xcb_void_cookie_t xcb_create_pixmap_checked
 ** 
 ** @param xcb_connection_t *c
 ** @param ubyte             depth
 ** @param xcb_pixmap_t      pid
 ** @param xcb_drawable_t    drawable
 ** @param ushort            width
 ** @param ushort            height
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_create_pixmap_checked (xcb_connection_t *c  /**< */,
                           ubyte             depth  /**< */,
                           xcb_pixmap_t      pid  /**< */,
                           xcb_drawable_t    drawable  /**< */,
                           ushort            width  /**< */,
                           ushort            height  /**< */);

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
 ** xcb_void_cookie_t xcb_create_pixmap
 ** 
 ** @param xcb_connection_t *c
 ** @param ubyte             depth
 ** @param xcb_pixmap_t      pid
 ** @param xcb_drawable_t    drawable
 ** @param ushort            width
 ** @param ushort            height
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_create_pixmap (xcb_connection_t *c  /**< */,
                   ubyte             depth  /**< */,
                   xcb_pixmap_t      pid  /**< */,
                   xcb_drawable_t    drawable  /**< */,
                   ushort            width  /**< */,
                   ushort            height  /**< */);

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
 ** xcb_void_cookie_t xcb_free_pixmap_checked
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_pixmap_t      pixmap
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_free_pixmap_checked (xcb_connection_t *c  /**< */,
                         xcb_pixmap_t      pixmap  /**< */);

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
 ** xcb_void_cookie_t xcb_free_pixmap
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_pixmap_t      pixmap
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_free_pixmap (xcb_connection_t *c  /**< */,
                 xcb_pixmap_t      pixmap  /**< */);

extern(C) int
xcb_create_gc_sizeof (const void  *_buffer  /**< */);

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
 ** xcb_void_cookie_t xcb_create_gc_checked
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_gcontext_t    cid
 ** @param xcb_drawable_t    drawable
 ** @param uint              value_mask
 ** @param const uint       *value_list
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_create_gc_checked (xcb_connection_t *c  /**< */,
                       xcb_gcontext_t    cid  /**< */,
                       xcb_drawable_t    drawable  /**< */,
                       uint              value_mask  /**< */,
                       const uint       *value_list  /**< */);

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
 ** xcb_void_cookie_t xcb_create_gc
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_gcontext_t    cid
 ** @param xcb_drawable_t    drawable
 ** @param uint              value_mask
 ** @param const uint       *value_list
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_create_gc (xcb_connection_t *c  /**< */,
               xcb_gcontext_t    cid  /**< */,
               xcb_drawable_t    drawable  /**< */,
               uint              value_mask  /**< */,
               const uint       *value_list  /**< */);

extern(C) int
xcb_change_gc_sizeof (const void  *_buffer  /**< */);

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
 ** xcb_void_cookie_t xcb_change_gc_checked
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_gcontext_t    gc
 ** @param uint              value_mask
 ** @param const uint       *value_list
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_change_gc_checked (xcb_connection_t *c  /**< */,
                       xcb_gcontext_t    gc  /**< */,
                       uint              value_mask  /**< */,
                       const uint       *value_list  /**< */);

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
 ** xcb_void_cookie_t xcb_change_gc
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_gcontext_t    gc
 ** @param uint              value_mask
 ** @param const uint       *value_list
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_change_gc (xcb_connection_t *c  /**< */,
               xcb_gcontext_t    gc  /**< */,
               uint              value_mask  /**< */,
               const uint       *value_list  /**< */);

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
 ** xcb_void_cookie_t xcb_copy_gc_checked
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_gcontext_t    src_gc
 ** @param xcb_gcontext_t    dst_gc
 ** @param uint              value_mask
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_copy_gc_checked (xcb_connection_t *c  /**< */,
                     xcb_gcontext_t    src_gc  /**< */,
                     xcb_gcontext_t    dst_gc  /**< */,
                     uint              value_mask  /**< */);

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
 ** xcb_void_cookie_t xcb_copy_gc
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_gcontext_t    src_gc
 ** @param xcb_gcontext_t    dst_gc
 ** @param uint              value_mask
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_copy_gc (xcb_connection_t *c  /**< */,
             xcb_gcontext_t    src_gc  /**< */,
             xcb_gcontext_t    dst_gc  /**< */,
             uint              value_mask  /**< */);

extern(C) int
xcb_set_dashes_sizeof (const void  *_buffer  /**< */);

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
 ** xcb_void_cookie_t xcb_set_dashes_checked
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_gcontext_t    gc
 ** @param ushort            dash_offset
 ** @param ushort            dashes_len
 ** @param const ubyte      *dashes
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_set_dashes_checked (xcb_connection_t *c  /**< */,
                        xcb_gcontext_t    gc  /**< */,
                        ushort            dash_offset  /**< */,
                        ushort            dashes_len  /**< */,
                        const ubyte      *dashes  /**< */);

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
 ** xcb_void_cookie_t xcb_set_dashes
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_gcontext_t    gc
 ** @param ushort            dash_offset
 ** @param ushort            dashes_len
 ** @param const ubyte      *dashes
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_set_dashes (xcb_connection_t *c  /**< */,
                xcb_gcontext_t    gc  /**< */,
                ushort            dash_offset  /**< */,
                ushort            dashes_len  /**< */,
                const ubyte      *dashes  /**< */);

extern(C) int
xcb_set_clip_rectangles_sizeof (const void  *_buffer  /**< */,
                                uint         rectangles_len  /**< */);

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
 ** xcb_void_cookie_t xcb_set_clip_rectangles_checked
 ** 
 ** @param xcb_connection_t      *c
 ** @param ubyte                  ordering
 ** @param xcb_gcontext_t         gc
 ** @param short                  clip_x_origin
 ** @param short                  clip_y_origin
 ** @param uint                   rectangles_len
 ** @param const xcb_rectangle_t *rectangles
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_set_clip_rectangles_checked (xcb_connection_t      *c  /**< */,
                                 ubyte                  ordering  /**< */,
                                 xcb_gcontext_t         gc  /**< */,
                                 short                  clip_x_origin  /**< */,
                                 short                  clip_y_origin  /**< */,
                                 uint                   rectangles_len  /**< */,
                                 const xcb_rectangle_t *rectangles  /**< */);

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
 ** xcb_void_cookie_t xcb_set_clip_rectangles
 ** 
 ** @param xcb_connection_t      *c
 ** @param ubyte                  ordering
 ** @param xcb_gcontext_t         gc
 ** @param short                  clip_x_origin
 ** @param short                  clip_y_origin
 ** @param uint                   rectangles_len
 ** @param const xcb_rectangle_t *rectangles
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_set_clip_rectangles (xcb_connection_t      *c  /**< */,
                         ubyte                  ordering  /**< */,
                         xcb_gcontext_t         gc  /**< */,
                         short                  clip_x_origin  /**< */,
                         short                  clip_y_origin  /**< */,
                         uint                   rectangles_len  /**< */,
                         const xcb_rectangle_t *rectangles  /**< */);

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
 ** xcb_void_cookie_t xcb_free_gc_checked
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_gcontext_t    gc
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_free_gc_checked (xcb_connection_t *c  /**< */,
                     xcb_gcontext_t    gc  /**< */);

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
 ** xcb_void_cookie_t xcb_free_gc
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_gcontext_t    gc
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_free_gc (xcb_connection_t *c  /**< */,
             xcb_gcontext_t    gc  /**< */);

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
 ** xcb_void_cookie_t xcb_clear_area_checked
 ** 
 ** @param xcb_connection_t *c
 ** @param ubyte             exposures
 ** @param xcb_window_t      window
 ** @param short             x
 ** @param short             y
 ** @param ushort            width
 ** @param ushort            height
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_clear_area_checked (xcb_connection_t *c  /**< */,
                        ubyte             exposures  /**< */,
                        xcb_window_t      window  /**< */,
                        short             x  /**< */,
                        short             y  /**< */,
                        ushort            width  /**< */,
                        ushort            height  /**< */);

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
 ** xcb_void_cookie_t xcb_clear_area
 ** 
 ** @param xcb_connection_t *c
 ** @param ubyte             exposures
 ** @param xcb_window_t      window
 ** @param short             x
 ** @param short             y
 ** @param ushort            width
 ** @param ushort            height
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_clear_area (xcb_connection_t *c  /**< */,
                ubyte             exposures  /**< */,
                xcb_window_t      window  /**< */,
                short             x  /**< */,
                short             y  /**< */,
                ushort            width  /**< */,
                ushort            height  /**< */);

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
 ** xcb_void_cookie_t xcb_copy_area_checked
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_drawable_t    src_drawable
 ** @param xcb_drawable_t    dst_drawable
 ** @param xcb_gcontext_t    gc
 ** @param short             src_x
 ** @param short             src_y
 ** @param short             dst_x
 ** @param short             dst_y
 ** @param ushort            width
 ** @param ushort            height
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_copy_area_checked (xcb_connection_t *c  /**< */,
                       xcb_drawable_t    src_drawable  /**< */,
                       xcb_drawable_t    dst_drawable  /**< */,
                       xcb_gcontext_t    gc  /**< */,
                       short             src_x  /**< */,
                       short             src_y  /**< */,
                       short             dst_x  /**< */,
                       short             dst_y  /**< */,
                       ushort            width  /**< */,
                       ushort            height  /**< */);

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
 ** xcb_void_cookie_t xcb_copy_area
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_drawable_t    src_drawable
 ** @param xcb_drawable_t    dst_drawable
 ** @param xcb_gcontext_t    gc
 ** @param short             src_x
 ** @param short             src_y
 ** @param short             dst_x
 ** @param short             dst_y
 ** @param ushort            width
 ** @param ushort            height
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_copy_area (xcb_connection_t *c  /**< */,
               xcb_drawable_t    src_drawable  /**< */,
               xcb_drawable_t    dst_drawable  /**< */,
               xcb_gcontext_t    gc  /**< */,
               short             src_x  /**< */,
               short             src_y  /**< */,
               short             dst_x  /**< */,
               short             dst_y  /**< */,
               ushort            width  /**< */,
               ushort            height  /**< */);

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
 ** xcb_void_cookie_t xcb_copy_plane_checked
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_drawable_t    src_drawable
 ** @param xcb_drawable_t    dst_drawable
 ** @param xcb_gcontext_t    gc
 ** @param short             src_x
 ** @param short             src_y
 ** @param short             dst_x
 ** @param short             dst_y
 ** @param ushort            width
 ** @param ushort            height
 ** @param uint              bit_plane
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_copy_plane_checked (xcb_connection_t *c  /**< */,
                        xcb_drawable_t    src_drawable  /**< */,
                        xcb_drawable_t    dst_drawable  /**< */,
                        xcb_gcontext_t    gc  /**< */,
                        short             src_x  /**< */,
                        short             src_y  /**< */,
                        short             dst_x  /**< */,
                        short             dst_y  /**< */,
                        ushort            width  /**< */,
                        ushort            height  /**< */,
                        uint              bit_plane  /**< */);

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
 ** xcb_void_cookie_t xcb_copy_plane
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_drawable_t    src_drawable
 ** @param xcb_drawable_t    dst_drawable
 ** @param xcb_gcontext_t    gc
 ** @param short             src_x
 ** @param short             src_y
 ** @param short             dst_x
 ** @param short             dst_y
 ** @param ushort            width
 ** @param ushort            height
 ** @param uint              bit_plane
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_copy_plane (xcb_connection_t *c  /**< */,
                xcb_drawable_t    src_drawable  /**< */,
                xcb_drawable_t    dst_drawable  /**< */,
                xcb_gcontext_t    gc  /**< */,
                short             src_x  /**< */,
                short             src_y  /**< */,
                short             dst_x  /**< */,
                short             dst_y  /**< */,
                ushort            width  /**< */,
                ushort            height  /**< */,
                uint              bit_plane  /**< */);

extern(C) int
xcb_poly_point_sizeof (const void  *_buffer  /**< */,
                       uint         points_len  /**< */);

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
 ** xcb_void_cookie_t xcb_poly_point_checked
 ** 
 ** @param xcb_connection_t  *c
 ** @param ubyte              coordinate_mode
 ** @param xcb_drawable_t     drawable
 ** @param xcb_gcontext_t     gc
 ** @param uint               points_len
 ** @param const xcb_point_t *points
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_poly_point_checked (xcb_connection_t  *c  /**< */,
                        ubyte              coordinate_mode  /**< */,
                        xcb_drawable_t     drawable  /**< */,
                        xcb_gcontext_t     gc  /**< */,
                        uint               points_len  /**< */,
                        const xcb_point_t *points  /**< */);

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
 ** xcb_void_cookie_t xcb_poly_point
 ** 
 ** @param xcb_connection_t  *c
 ** @param ubyte              coordinate_mode
 ** @param xcb_drawable_t     drawable
 ** @param xcb_gcontext_t     gc
 ** @param uint               points_len
 ** @param const xcb_point_t *points
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_poly_point (xcb_connection_t  *c  /**< */,
                ubyte              coordinate_mode  /**< */,
                xcb_drawable_t     drawable  /**< */,
                xcb_gcontext_t     gc  /**< */,
                uint               points_len  /**< */,
                const xcb_point_t *points  /**< */);

extern(C) int
xcb_poly_line_sizeof (const void  *_buffer  /**< */,
                      uint         points_len  /**< */);

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
 ** xcb_void_cookie_t xcb_poly_line_checked
 ** 
 ** @param xcb_connection_t  *c
 ** @param ubyte              coordinate_mode
 ** @param xcb_drawable_t     drawable
 ** @param xcb_gcontext_t     gc
 ** @param uint               points_len
 ** @param const xcb_point_t *points
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_poly_line_checked (xcb_connection_t  *c  /**< */,
                       ubyte              coordinate_mode  /**< */,
                       xcb_drawable_t     drawable  /**< */,
                       xcb_gcontext_t     gc  /**< */,
                       uint               points_len  /**< */,
                       const xcb_point_t *points  /**< */);

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
 ** xcb_void_cookie_t xcb_poly_line
 ** 
 ** @param xcb_connection_t  *c
 ** @param ubyte              coordinate_mode
 ** @param xcb_drawable_t     drawable
 ** @param xcb_gcontext_t     gc
 ** @param uint               points_len
 ** @param const xcb_point_t *points
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_poly_line (xcb_connection_t  *c  /**< */,
               ubyte              coordinate_mode  /**< */,
               xcb_drawable_t     drawable  /**< */,
               xcb_gcontext_t     gc  /**< */,
               uint               points_len  /**< */,
               const xcb_point_t *points  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_segment_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_segment_t)
 */

/*****************************************************************************
 **
 ** void xcb_segment_next
 ** 
 ** @param xcb_segment_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_segment_next (xcb_segment_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_segment_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_segment_end
 ** 
 ** @param xcb_segment_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
xcb_generic_iterator_t
xcb_segment_end (xcb_segment_iterator_t i  /**< */);

extern(C) int
xcb_poly_segment_sizeof (const void  *_buffer  /**< */,
                         uint         segments_len  /**< */);

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
 ** xcb_void_cookie_t xcb_poly_segment_checked
 ** 
 ** @param xcb_connection_t    *c
 ** @param xcb_drawable_t       drawable
 ** @param xcb_gcontext_t       gc
 ** @param uint                 segments_len
 ** @param const xcb_segment_t *segments
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_poly_segment_checked (xcb_connection_t    *c  /**< */,
                          xcb_drawable_t       drawable  /**< */,
                          xcb_gcontext_t       gc  /**< */,
                          uint                 segments_len  /**< */,
                          const xcb_segment_t *segments  /**< */);

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
 ** xcb_void_cookie_t xcb_poly_segment
 ** 
 ** @param xcb_connection_t    *c
 ** @param xcb_drawable_t       drawable
 ** @param xcb_gcontext_t       gc
 ** @param uint                 segments_len
 ** @param const xcb_segment_t *segments
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_poly_segment (xcb_connection_t    *c  /**< */,
                  xcb_drawable_t       drawable  /**< */,
                  xcb_gcontext_t       gc  /**< */,
                  uint                 segments_len  /**< */,
                  const xcb_segment_t *segments  /**< */);

extern(C) int
xcb_poly_rectangle_sizeof (const void  *_buffer  /**< */,
                           uint         rectangles_len  /**< */);

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
 ** xcb_void_cookie_t xcb_poly_rectangle_checked
 ** 
 ** @param xcb_connection_t      *c
 ** @param xcb_drawable_t         drawable
 ** @param xcb_gcontext_t         gc
 ** @param uint                   rectangles_len
 ** @param const xcb_rectangle_t *rectangles
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_poly_rectangle_checked (xcb_connection_t      *c  /**< */,
                            xcb_drawable_t         drawable  /**< */,
                            xcb_gcontext_t         gc  /**< */,
                            uint                   rectangles_len  /**< */,
                            const xcb_rectangle_t *rectangles  /**< */);

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
 ** xcb_void_cookie_t xcb_poly_rectangle
 ** 
 ** @param xcb_connection_t      *c
 ** @param xcb_drawable_t         drawable
 ** @param xcb_gcontext_t         gc
 ** @param uint                   rectangles_len
 ** @param const xcb_rectangle_t *rectangles
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_poly_rectangle (xcb_connection_t      *c  /**< */,
                    xcb_drawable_t         drawable  /**< */,
                    xcb_gcontext_t         gc  /**< */,
                    uint                   rectangles_len  /**< */,
                    const xcb_rectangle_t *rectangles  /**< */);

extern(C) int
xcb_poly_arc_sizeof (const void  *_buffer  /**< */,
                     uint         arcs_len  /**< */);

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
 ** xcb_void_cookie_t xcb_poly_arc_checked
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_drawable_t    drawable
 ** @param xcb_gcontext_t    gc
 ** @param uint              arcs_len
 ** @param const xcb_arc_t  *arcs
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_poly_arc_checked (xcb_connection_t *c  /**< */,
                      xcb_drawable_t    drawable  /**< */,
                      xcb_gcontext_t    gc  /**< */,
                      uint              arcs_len  /**< */,
                      const xcb_arc_t  *arcs  /**< */);

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
 ** xcb_void_cookie_t xcb_poly_arc
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_drawable_t    drawable
 ** @param xcb_gcontext_t    gc
 ** @param uint              arcs_len
 ** @param const xcb_arc_t  *arcs
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_poly_arc (xcb_connection_t *c  /**< */,
              xcb_drawable_t    drawable  /**< */,
              xcb_gcontext_t    gc  /**< */,
              uint              arcs_len  /**< */,
              const xcb_arc_t  *arcs  /**< */);

extern(C) int
xcb_fill_poly_sizeof (const void  *_buffer  /**< */,
                      uint         points_len  /**< */);

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
 ** xcb_void_cookie_t xcb_fill_poly_checked
 ** 
 ** @param xcb_connection_t  *c
 ** @param xcb_drawable_t     drawable
 ** @param xcb_gcontext_t     gc
 ** @param ubyte              shape
 ** @param ubyte              coordinate_mode
 ** @param uint               points_len
 ** @param const xcb_point_t *points
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_fill_poly_checked (xcb_connection_t  *c  /**< */,
                       xcb_drawable_t     drawable  /**< */,
                       xcb_gcontext_t     gc  /**< */,
                       ubyte              shape  /**< */,
                       ubyte              coordinate_mode  /**< */,
                       uint               points_len  /**< */,
                       const xcb_point_t *points  /**< */);

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
 ** xcb_void_cookie_t xcb_fill_poly
 ** 
 ** @param xcb_connection_t  *c
 ** @param xcb_drawable_t     drawable
 ** @param xcb_gcontext_t     gc
 ** @param ubyte              shape
 ** @param ubyte              coordinate_mode
 ** @param uint               points_len
 ** @param const xcb_point_t *points
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_fill_poly (xcb_connection_t  *c  /**< */,
               xcb_drawable_t     drawable  /**< */,
               xcb_gcontext_t     gc  /**< */,
               ubyte              shape  /**< */,
               ubyte              coordinate_mode  /**< */,
               uint               points_len  /**< */,
               const xcb_point_t *points  /**< */);

extern(C) int
xcb_poly_fill_rectangle_sizeof (const void  *_buffer  /**< */,
                                uint         rectangles_len  /**< */);

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
 ** xcb_void_cookie_t xcb_poly_fill_rectangle_checked
 ** 
 ** @param xcb_connection_t      *c
 ** @param xcb_drawable_t         drawable
 ** @param xcb_gcontext_t         gc
 ** @param uint                   rectangles_len
 ** @param const xcb_rectangle_t *rectangles
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_poly_fill_rectangle_checked (xcb_connection_t      *c  /**< */,
                                 xcb_drawable_t         drawable  /**< */,
                                 xcb_gcontext_t         gc  /**< */,
                                 uint                   rectangles_len  /**< */,
                                 const xcb_rectangle_t *rectangles  /**< */);

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
 ** xcb_void_cookie_t xcb_poly_fill_rectangle
 ** 
 ** @param xcb_connection_t      *c
 ** @param xcb_drawable_t         drawable
 ** @param xcb_gcontext_t         gc
 ** @param uint                   rectangles_len
 ** @param const xcb_rectangle_t *rectangles
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_poly_fill_rectangle (xcb_connection_t      *c  /**< */,
                         xcb_drawable_t         drawable  /**< */,
                         xcb_gcontext_t         gc  /**< */,
                         uint                   rectangles_len  /**< */,
                         const xcb_rectangle_t *rectangles  /**< */);

extern(C) int
xcb_poly_fill_arc_sizeof (const void  *_buffer  /**< */,
                          uint         arcs_len  /**< */);

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
 ** xcb_void_cookie_t xcb_poly_fill_arc_checked
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_drawable_t    drawable
 ** @param xcb_gcontext_t    gc
 ** @param uint              arcs_len
 ** @param const xcb_arc_t  *arcs
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_poly_fill_arc_checked (xcb_connection_t *c  /**< */,
                           xcb_drawable_t    drawable  /**< */,
                           xcb_gcontext_t    gc  /**< */,
                           uint              arcs_len  /**< */,
                           const xcb_arc_t  *arcs  /**< */);

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
 ** xcb_void_cookie_t xcb_poly_fill_arc
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_drawable_t    drawable
 ** @param xcb_gcontext_t    gc
 ** @param uint              arcs_len
 ** @param const xcb_arc_t  *arcs
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_poly_fill_arc (xcb_connection_t *c  /**< */,
                   xcb_drawable_t    drawable  /**< */,
                   xcb_gcontext_t    gc  /**< */,
                   uint              arcs_len  /**< */,
                   const xcb_arc_t  *arcs  /**< */);

extern(C) int
xcb_put_image_sizeof (const void  *_buffer  /**< */,
                      uint         data_len  /**< */);

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
 ** xcb_void_cookie_t xcb_put_image_checked
 ** 
 ** @param xcb_connection_t *c
 ** @param ubyte             format
 ** @param xcb_drawable_t    drawable
 ** @param xcb_gcontext_t    gc
 ** @param ushort            width
 ** @param ushort            height
 ** @param short             dst_x
 ** @param short             dst_y
 ** @param ubyte             left_pad
 ** @param ubyte             depth
 ** @param uint              data_len
 ** @param const ubyte      *data
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_put_image_checked (xcb_connection_t *c  /**< */,
                       ubyte             format  /**< */,
                       xcb_drawable_t    drawable  /**< */,
                       xcb_gcontext_t    gc  /**< */,
                       ushort            width  /**< */,
                       ushort            height  /**< */,
                       short             dst_x  /**< */,
                       short             dst_y  /**< */,
                       ubyte             left_pad  /**< */,
                       ubyte             depth  /**< */,
                       uint              data_len  /**< */,
                       const ubyte      *data  /**< */);

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
 ** xcb_void_cookie_t xcb_put_image
 ** 
 ** @param xcb_connection_t *c
 ** @param ubyte             format
 ** @param xcb_drawable_t    drawable
 ** @param xcb_gcontext_t    gc
 ** @param ushort            width
 ** @param ushort            height
 ** @param short             dst_x
 ** @param short             dst_y
 ** @param ubyte             left_pad
 ** @param ubyte             depth
 ** @param uint              data_len
 ** @param const ubyte      *data
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_put_image (xcb_connection_t *c  /**< */,
               ubyte             format  /**< */,
               xcb_drawable_t    drawable  /**< */,
               xcb_gcontext_t    gc  /**< */,
               ushort            width  /**< */,
               ushort            height  /**< */,
               short             dst_x  /**< */,
               short             dst_y  /**< */,
               ubyte             left_pad  /**< */,
               ubyte             depth  /**< */,
               uint              data_len  /**< */,
               const ubyte      *data  /**< */);

extern(C) int
xcb_get_image_sizeof (const void  *_buffer  /**< */);

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
 ** xcb_get_image_cookie_t xcb_get_image
 ** 
 ** @param xcb_connection_t *c
 ** @param ubyte             format
 ** @param xcb_drawable_t    drawable
 ** @param short             x
 ** @param short             y
 ** @param ushort            width
 ** @param ushort            height
 ** @param uint              plane_mask
 ** @returns xcb_get_image_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_get_image_cookie_t
xcb_get_image (xcb_connection_t *c  /**< */,
               ubyte             format  /**< */,
               xcb_drawable_t    drawable  /**< */,
               short             x  /**< */,
               short             y  /**< */,
               ushort            width  /**< */,
               ushort            height  /**< */,
               uint              plane_mask  /**< */);

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
 ** xcb_get_image_cookie_t xcb_get_image_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @param ubyte             format
 ** @param xcb_drawable_t    drawable
 ** @param short             x
 ** @param short             y
 ** @param ushort            width
 ** @param ushort            height
 ** @param uint              plane_mask
 ** @returns xcb_get_image_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_get_image_cookie_t
xcb_get_image_unchecked (xcb_connection_t *c  /**< */,
                         ubyte             format  /**< */,
                         xcb_drawable_t    drawable  /**< */,
                         short             x  /**< */,
                         short             y  /**< */,
                         ushort            width  /**< */,
                         ushort            height  /**< */,
                         uint              plane_mask  /**< */);


/*****************************************************************************
 **
 ** ubyte * xcb_get_image_data
 ** 
 ** @param const xcb_get_image_reply_t *R
 ** @returns ubyte *
 **
 *****************************************************************************/
 
ubyte *
xcb_get_image_data (const xcb_get_image_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_get_image_data_length
 ** 
 ** @param const xcb_get_image_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_get_image_data_length (const xcb_get_image_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_get_image_data_end
 ** 
 ** @param const xcb_get_image_reply_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_get_image_data_end (const xcb_get_image_reply_t *R  /**< */);

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 * 
 * The parameter @p e supplied to this function must be NULL if
 * xcb_get_image_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */

/*****************************************************************************
 **
 ** xcb_get_image_reply_t * xcb_get_image_reply
 ** 
 ** @param xcb_connection_t        *c
 ** @param xcb_get_image_cookie_t   cookie
 ** @param xcb_generic_error_t    **e
 ** @returns xcb_get_image_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_get_image_reply_t *
xcb_get_image_reply (xcb_connection_t        *c  /**< */,
                     xcb_get_image_cookie_t   cookie  /**< */,
                     xcb_generic_error_t    **e  /**< */);

extern(C) int
xcb_poly_text_8_sizeof (const void  *_buffer  /**< */,
                        uint         items_len  /**< */);

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
 ** xcb_void_cookie_t xcb_poly_text_8_checked
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_drawable_t    drawable
 ** @param xcb_gcontext_t    gc
 ** @param short             x
 ** @param short             y
 ** @param uint              items_len
 ** @param const ubyte      *items
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_poly_text_8_checked (xcb_connection_t *c  /**< */,
                         xcb_drawable_t    drawable  /**< */,
                         xcb_gcontext_t    gc  /**< */,
                         short             x  /**< */,
                         short             y  /**< */,
                         uint              items_len  /**< */,
                         const ubyte      *items  /**< */);

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
 ** xcb_void_cookie_t xcb_poly_text_8
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_drawable_t    drawable
 ** @param xcb_gcontext_t    gc
 ** @param short             x
 ** @param short             y
 ** @param uint              items_len
 ** @param const ubyte      *items
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_poly_text_8 (xcb_connection_t *c  /**< */,
                 xcb_drawable_t    drawable  /**< */,
                 xcb_gcontext_t    gc  /**< */,
                 short             x  /**< */,
                 short             y  /**< */,
                 uint              items_len  /**< */,
                 const ubyte      *items  /**< */);

extern(C) int
xcb_poly_text_16_sizeof (const void  *_buffer  /**< */,
                         uint         items_len  /**< */);

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
 ** xcb_void_cookie_t xcb_poly_text_16_checked
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_drawable_t    drawable
 ** @param xcb_gcontext_t    gc
 ** @param short             x
 ** @param short             y
 ** @param uint              items_len
 ** @param const ubyte      *items
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_poly_text_16_checked (xcb_connection_t *c  /**< */,
                          xcb_drawable_t    drawable  /**< */,
                          xcb_gcontext_t    gc  /**< */,
                          short             x  /**< */,
                          short             y  /**< */,
                          uint              items_len  /**< */,
                          const ubyte      *items  /**< */);

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
 ** xcb_void_cookie_t xcb_poly_text_16
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_drawable_t    drawable
 ** @param xcb_gcontext_t    gc
 ** @param short             x
 ** @param short             y
 ** @param uint              items_len
 ** @param const ubyte      *items
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_poly_text_16 (xcb_connection_t *c  /**< */,
                  xcb_drawable_t    drawable  /**< */,
                  xcb_gcontext_t    gc  /**< */,
                  short             x  /**< */,
                  short             y  /**< */,
                  uint              items_len  /**< */,
                  const ubyte      *items  /**< */);

extern(C) int
xcb_image_text_8_sizeof (const void  *_buffer  /**< */);

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
 ** xcb_void_cookie_t xcb_image_text_8_checked
 ** 
 ** @param xcb_connection_t *c
 ** @param ubyte             string_len
 ** @param xcb_drawable_t    drawable
 ** @param xcb_gcontext_t    gc
 ** @param short             x
 ** @param short             y
 ** @param const char       *string
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_image_text_8_checked (xcb_connection_t *c  /**< */,
                          ubyte             string_len  /**< */,
                          xcb_drawable_t    drawable  /**< */,
                          xcb_gcontext_t    gc  /**< */,
                          short             x  /**< */,
                          short             y  /**< */,
                          const char       *string  /**< */);

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
 ** xcb_void_cookie_t xcb_image_text_8
 ** 
 ** @param xcb_connection_t *c
 ** @param ubyte             string_len
 ** @param xcb_drawable_t    drawable
 ** @param xcb_gcontext_t    gc
 ** @param short             x
 ** @param short             y
 ** @param const char       *string
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_image_text_8 (xcb_connection_t *c  /**< */,
                  ubyte             string_len  /**< */,
                  xcb_drawable_t    drawable  /**< */,
                  xcb_gcontext_t    gc  /**< */,
                  short             x  /**< */,
                  short             y  /**< */,
                  const char       *string  /**< */);

extern(C) int
xcb_image_text_16_sizeof (const void  *_buffer  /**< */);

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
 ** xcb_void_cookie_t xcb_image_text_16_checked
 ** 
 ** @param xcb_connection_t   *c
 ** @param ubyte               string_len
 ** @param xcb_drawable_t      drawable
 ** @param xcb_gcontext_t      gc
 ** @param short               x
 ** @param short               y
 ** @param const xcb_char2b_t *string
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_image_text_16_checked (xcb_connection_t   *c  /**< */,
                           ubyte               string_len  /**< */,
                           xcb_drawable_t      drawable  /**< */,
                           xcb_gcontext_t      gc  /**< */,
                           short               x  /**< */,
                           short               y  /**< */,
                           const xcb_char2b_t *string  /**< */);

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
 ** xcb_void_cookie_t xcb_image_text_16
 ** 
 ** @param xcb_connection_t   *c
 ** @param ubyte               string_len
 ** @param xcb_drawable_t      drawable
 ** @param xcb_gcontext_t      gc
 ** @param short               x
 ** @param short               y
 ** @param const xcb_char2b_t *string
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_image_text_16 (xcb_connection_t   *c  /**< */,
                   ubyte               string_len  /**< */,
                   xcb_drawable_t      drawable  /**< */,
                   xcb_gcontext_t      gc  /**< */,
                   short               x  /**< */,
                   short               y  /**< */,
                   const xcb_char2b_t *string  /**< */);

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
 ** xcb_void_cookie_t xcb_create_colormap_checked
 ** 
 ** @param xcb_connection_t *c
 ** @param ubyte             alloc
 ** @param xcb_colormap_t    mid
 ** @param xcb_window_t      window
 ** @param xcb_visualid_t    visual
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_create_colormap_checked (xcb_connection_t *c  /**< */,
                             ubyte             alloc  /**< */,
                             xcb_colormap_t    mid  /**< */,
                             xcb_window_t      window  /**< */,
                             xcb_visualid_t    visual  /**< */);

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
 ** xcb_void_cookie_t xcb_create_colormap
 ** 
 ** @param xcb_connection_t *c
 ** @param ubyte             alloc
 ** @param xcb_colormap_t    mid
 ** @param xcb_window_t      window
 ** @param xcb_visualid_t    visual
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_create_colormap (xcb_connection_t *c  /**< */,
                     ubyte             alloc  /**< */,
                     xcb_colormap_t    mid  /**< */,
                     xcb_window_t      window  /**< */,
                     xcb_visualid_t    visual  /**< */);

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
 ** xcb_void_cookie_t xcb_free_colormap_checked
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_colormap_t    cmap
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_free_colormap_checked (xcb_connection_t *c  /**< */,
                           xcb_colormap_t    cmap  /**< */);

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
 ** xcb_void_cookie_t xcb_free_colormap
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_colormap_t    cmap
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_free_colormap (xcb_connection_t *c  /**< */,
                   xcb_colormap_t    cmap  /**< */);

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
 ** xcb_void_cookie_t xcb_copy_colormap_and_free_checked
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_colormap_t    mid
 ** @param xcb_colormap_t    src_cmap
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_copy_colormap_and_free_checked (xcb_connection_t *c  /**< */,
                                    xcb_colormap_t    mid  /**< */,
                                    xcb_colormap_t    src_cmap  /**< */);

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
 ** xcb_void_cookie_t xcb_copy_colormap_and_free
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_colormap_t    mid
 ** @param xcb_colormap_t    src_cmap
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_copy_colormap_and_free (xcb_connection_t *c  /**< */,
                            xcb_colormap_t    mid  /**< */,
                            xcb_colormap_t    src_cmap  /**< */);

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
 ** xcb_void_cookie_t xcb_install_colormap_checked
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_colormap_t    cmap
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_install_colormap_checked (xcb_connection_t *c  /**< */,
                              xcb_colormap_t    cmap  /**< */);

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
 ** xcb_void_cookie_t xcb_install_colormap
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_colormap_t    cmap
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_install_colormap (xcb_connection_t *c  /**< */,
                      xcb_colormap_t    cmap  /**< */);

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
 ** xcb_void_cookie_t xcb_uninstall_colormap_checked
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_colormap_t    cmap
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_uninstall_colormap_checked (xcb_connection_t *c  /**< */,
                                xcb_colormap_t    cmap  /**< */);

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
 ** xcb_void_cookie_t xcb_uninstall_colormap
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_colormap_t    cmap
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_uninstall_colormap (xcb_connection_t *c  /**< */,
                        xcb_colormap_t    cmap  /**< */);

extern(C) int
xcb_list_installed_colormaps_sizeof (const void  *_buffer  /**< */);

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
 ** xcb_list_installed_colormaps_cookie_t xcb_list_installed_colormaps
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_window_t      window
 ** @returns xcb_list_installed_colormaps_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_list_installed_colormaps_cookie_t
xcb_list_installed_colormaps (xcb_connection_t *c  /**< */,
                              xcb_window_t      window  /**< */);

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
 ** xcb_list_installed_colormaps_cookie_t xcb_list_installed_colormaps_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_window_t      window
 ** @returns xcb_list_installed_colormaps_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_list_installed_colormaps_cookie_t
xcb_list_installed_colormaps_unchecked (xcb_connection_t *c  /**< */,
                                        xcb_window_t      window  /**< */);


/*****************************************************************************
 **
 ** xcb_colormap_t * xcb_list_installed_colormaps_cmaps
 ** 
 ** @param const xcb_list_installed_colormaps_reply_t *R
 ** @returns xcb_colormap_t *
 **
 *****************************************************************************/
 
xcb_colormap_t *
xcb_list_installed_colormaps_cmaps (const xcb_list_installed_colormaps_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_list_installed_colormaps_cmaps_length
 ** 
 ** @param const xcb_list_installed_colormaps_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_list_installed_colormaps_cmaps_length (const xcb_list_installed_colormaps_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_list_installed_colormaps_cmaps_end
 ** 
 ** @param const xcb_list_installed_colormaps_reply_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_list_installed_colormaps_cmaps_end (const xcb_list_installed_colormaps_reply_t *R  /**< */);

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 * 
 * The parameter @p e supplied to this function must be NULL if
 * xcb_list_installed_colormaps_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */

/*****************************************************************************
 **
 ** xcb_list_installed_colormaps_reply_t * xcb_list_installed_colormaps_reply
 ** 
 ** @param xcb_connection_t                       *c
 ** @param xcb_list_installed_colormaps_cookie_t   cookie
 ** @param xcb_generic_error_t                   **e
 ** @returns xcb_list_installed_colormaps_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_list_installed_colormaps_reply_t *
xcb_list_installed_colormaps_reply (xcb_connection_t                       *c  /**< */,
                                    xcb_list_installed_colormaps_cookie_t   cookie  /**< */,
                                    xcb_generic_error_t                   **e  /**< */);

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
 ** xcb_alloc_color_cookie_t xcb_alloc_color
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_colormap_t    cmap
 ** @param ushort            red
 ** @param ushort            green
 ** @param ushort            blue
 ** @returns xcb_alloc_color_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_alloc_color_cookie_t
xcb_alloc_color (xcb_connection_t *c  /**< */,
                 xcb_colormap_t    cmap  /**< */,
                 ushort            red  /**< */,
                 ushort            green  /**< */,
                 ushort            blue  /**< */);

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
 ** xcb_alloc_color_cookie_t xcb_alloc_color_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_colormap_t    cmap
 ** @param ushort            red
 ** @param ushort            green
 ** @param ushort            blue
 ** @returns xcb_alloc_color_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_alloc_color_cookie_t
xcb_alloc_color_unchecked (xcb_connection_t *c  /**< */,
                           xcb_colormap_t    cmap  /**< */,
                           ushort            red  /**< */,
                           ushort            green  /**< */,
                           ushort            blue  /**< */);

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 * 
 * The parameter @p e supplied to this function must be NULL if
 * xcb_alloc_color_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */

/*****************************************************************************
 **
 ** xcb_alloc_color_reply_t * xcb_alloc_color_reply
 ** 
 ** @param xcb_connection_t          *c
 ** @param xcb_alloc_color_cookie_t   cookie
 ** @param xcb_generic_error_t      **e
 ** @returns xcb_alloc_color_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_alloc_color_reply_t *
xcb_alloc_color_reply (xcb_connection_t          *c  /**< */,
                       xcb_alloc_color_cookie_t   cookie  /**< */,
                       xcb_generic_error_t      **e  /**< */);

extern(C) int
xcb_alloc_named_color_sizeof (const void  *_buffer  /**< */);

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
 ** xcb_alloc_named_color_cookie_t xcb_alloc_named_color
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_colormap_t    cmap
 ** @param ushort            name_len
 ** @param const char       *name
 ** @returns xcb_alloc_named_color_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_alloc_named_color_cookie_t
xcb_alloc_named_color (xcb_connection_t *c  /**< */,
                       xcb_colormap_t    cmap  /**< */,
                       ushort            name_len  /**< */,
                       const char       *name  /**< */);

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
 ** xcb_alloc_named_color_cookie_t xcb_alloc_named_color_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_colormap_t    cmap
 ** @param ushort            name_len
 ** @param const char       *name
 ** @returns xcb_alloc_named_color_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_alloc_named_color_cookie_t
xcb_alloc_named_color_unchecked (xcb_connection_t *c  /**< */,
                                 xcb_colormap_t    cmap  /**< */,
                                 ushort            name_len  /**< */,
                                 const char       *name  /**< */);

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 * 
 * The parameter @p e supplied to this function must be NULL if
 * xcb_alloc_named_color_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */

/*****************************************************************************
 **
 ** xcb_alloc_named_color_reply_t * xcb_alloc_named_color_reply
 ** 
 ** @param xcb_connection_t                *c
 ** @param xcb_alloc_named_color_cookie_t   cookie
 ** @param xcb_generic_error_t            **e
 ** @returns xcb_alloc_named_color_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_alloc_named_color_reply_t *
xcb_alloc_named_color_reply (xcb_connection_t                *c  /**< */,
                             xcb_alloc_named_color_cookie_t   cookie  /**< */,
                             xcb_generic_error_t            **e  /**< */);

extern(C) int
xcb_alloc_color_cells_sizeof (const void  *_buffer  /**< */);

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
 ** xcb_alloc_color_cells_cookie_t xcb_alloc_color_cells
 ** 
 ** @param xcb_connection_t *c
 ** @param ubyte             contiguous
 ** @param xcb_colormap_t    cmap
 ** @param ushort            colors
 ** @param ushort            planes
 ** @returns xcb_alloc_color_cells_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_alloc_color_cells_cookie_t
xcb_alloc_color_cells (xcb_connection_t *c  /**< */,
                       ubyte             contiguous  /**< */,
                       xcb_colormap_t    cmap  /**< */,
                       ushort            colors  /**< */,
                       ushort            planes  /**< */);

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
 ** xcb_alloc_color_cells_cookie_t xcb_alloc_color_cells_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @param ubyte             contiguous
 ** @param xcb_colormap_t    cmap
 ** @param ushort            colors
 ** @param ushort            planes
 ** @returns xcb_alloc_color_cells_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_alloc_color_cells_cookie_t
xcb_alloc_color_cells_unchecked (xcb_connection_t *c  /**< */,
                                 ubyte             contiguous  /**< */,
                                 xcb_colormap_t    cmap  /**< */,
                                 ushort            colors  /**< */,
                                 ushort            planes  /**< */);


/*****************************************************************************
 **
 ** uint * xcb_alloc_color_cells_pixels
 ** 
 ** @param const xcb_alloc_color_cells_reply_t *R
 ** @returns uint *
 **
 *****************************************************************************/
 
uint *
xcb_alloc_color_cells_pixels (const xcb_alloc_color_cells_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_alloc_color_cells_pixels_length
 ** 
 ** @param const xcb_alloc_color_cells_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_alloc_color_cells_pixels_length (const xcb_alloc_color_cells_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_alloc_color_cells_pixels_end
 ** 
 ** @param const xcb_alloc_color_cells_reply_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_alloc_color_cells_pixels_end (const xcb_alloc_color_cells_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** uint * xcb_alloc_color_cells_masks
 ** 
 ** @param const xcb_alloc_color_cells_reply_t *R
 ** @returns uint *
 **
 *****************************************************************************/
 
uint *
xcb_alloc_color_cells_masks (const xcb_alloc_color_cells_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_alloc_color_cells_masks_length
 ** 
 ** @param const xcb_alloc_color_cells_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_alloc_color_cells_masks_length (const xcb_alloc_color_cells_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_alloc_color_cells_masks_end
 ** 
 ** @param const xcb_alloc_color_cells_reply_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_alloc_color_cells_masks_end (const xcb_alloc_color_cells_reply_t *R  /**< */);

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 * 
 * The parameter @p e supplied to this function must be NULL if
 * xcb_alloc_color_cells_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */

/*****************************************************************************
 **
 ** xcb_alloc_color_cells_reply_t * xcb_alloc_color_cells_reply
 ** 
 ** @param xcb_connection_t                *c
 ** @param xcb_alloc_color_cells_cookie_t   cookie
 ** @param xcb_generic_error_t            **e
 ** @returns xcb_alloc_color_cells_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_alloc_color_cells_reply_t *
xcb_alloc_color_cells_reply (xcb_connection_t                *c  /**< */,
                             xcb_alloc_color_cells_cookie_t   cookie  /**< */,
                             xcb_generic_error_t            **e  /**< */);

extern(C) int
xcb_alloc_color_planes_sizeof (const void  *_buffer  /**< */);

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
 ** xcb_alloc_color_planes_cookie_t xcb_alloc_color_planes
 ** 
 ** @param xcb_connection_t *c
 ** @param ubyte             contiguous
 ** @param xcb_colormap_t    cmap
 ** @param ushort            colors
 ** @param ushort            reds
 ** @param ushort            greens
 ** @param ushort            blues
 ** @returns xcb_alloc_color_planes_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_alloc_color_planes_cookie_t
xcb_alloc_color_planes (xcb_connection_t *c  /**< */,
                        ubyte             contiguous  /**< */,
                        xcb_colormap_t    cmap  /**< */,
                        ushort            colors  /**< */,
                        ushort            reds  /**< */,
                        ushort            greens  /**< */,
                        ushort            blues  /**< */);

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
 ** xcb_alloc_color_planes_cookie_t xcb_alloc_color_planes_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @param ubyte             contiguous
 ** @param xcb_colormap_t    cmap
 ** @param ushort            colors
 ** @param ushort            reds
 ** @param ushort            greens
 ** @param ushort            blues
 ** @returns xcb_alloc_color_planes_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_alloc_color_planes_cookie_t
xcb_alloc_color_planes_unchecked (xcb_connection_t *c  /**< */,
                                  ubyte             contiguous  /**< */,
                                  xcb_colormap_t    cmap  /**< */,
                                  ushort            colors  /**< */,
                                  ushort            reds  /**< */,
                                  ushort            greens  /**< */,
                                  ushort            blues  /**< */);


/*****************************************************************************
 **
 ** uint * xcb_alloc_color_planes_pixels
 ** 
 ** @param const xcb_alloc_color_planes_reply_t *R
 ** @returns uint *
 **
 *****************************************************************************/
 
uint *
xcb_alloc_color_planes_pixels (const xcb_alloc_color_planes_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_alloc_color_planes_pixels_length
 ** 
 ** @param const xcb_alloc_color_planes_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_alloc_color_planes_pixels_length (const xcb_alloc_color_planes_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_alloc_color_planes_pixels_end
 ** 
 ** @param const xcb_alloc_color_planes_reply_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_alloc_color_planes_pixels_end (const xcb_alloc_color_planes_reply_t *R  /**< */);

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 * 
 * The parameter @p e supplied to this function must be NULL if
 * xcb_alloc_color_planes_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */

/*****************************************************************************
 **
 ** xcb_alloc_color_planes_reply_t * xcb_alloc_color_planes_reply
 ** 
 ** @param xcb_connection_t                 *c
 ** @param xcb_alloc_color_planes_cookie_t   cookie
 ** @param xcb_generic_error_t             **e
 ** @returns xcb_alloc_color_planes_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_alloc_color_planes_reply_t *
xcb_alloc_color_planes_reply (xcb_connection_t                 *c  /**< */,
                              xcb_alloc_color_planes_cookie_t   cookie  /**< */,
                              xcb_generic_error_t             **e  /**< */);

extern(C) int
xcb_free_colors_sizeof (const void  *_buffer  /**< */,
                        uint         pixels_len  /**< */);

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
 ** xcb_void_cookie_t xcb_free_colors_checked
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_colormap_t    cmap
 ** @param uint              plane_mask
 ** @param uint              pixels_len
 ** @param const uint       *pixels
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_free_colors_checked (xcb_connection_t *c  /**< */,
                         xcb_colormap_t    cmap  /**< */,
                         uint              plane_mask  /**< */,
                         uint              pixels_len  /**< */,
                         const uint       *pixels  /**< */);

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
 ** xcb_void_cookie_t xcb_free_colors
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_colormap_t    cmap
 ** @param uint              plane_mask
 ** @param uint              pixels_len
 ** @param const uint       *pixels
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_free_colors (xcb_connection_t *c  /**< */,
                 xcb_colormap_t    cmap  /**< */,
                 uint              plane_mask  /**< */,
                 uint              pixels_len  /**< */,
                 const uint       *pixels  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_coloritem_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_coloritem_t)
 */

/*****************************************************************************
 **
 ** void xcb_coloritem_next
 ** 
 ** @param xcb_coloritem_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_coloritem_next (xcb_coloritem_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_coloritem_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_coloritem_end
 ** 
 ** @param xcb_coloritem_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
xcb_generic_iterator_t
xcb_coloritem_end (xcb_coloritem_iterator_t i  /**< */);

extern(C) int
xcb_store_colors_sizeof (const void  *_buffer  /**< */,
                         uint         items_len  /**< */);

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
 ** xcb_void_cookie_t xcb_store_colors_checked
 ** 
 ** @param xcb_connection_t      *c
 ** @param xcb_colormap_t         cmap
 ** @param uint                   items_len
 ** @param const xcb_coloritem_t *items
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_store_colors_checked (xcb_connection_t      *c  /**< */,
                          xcb_colormap_t         cmap  /**< */,
                          uint                   items_len  /**< */,
                          const xcb_coloritem_t *items  /**< */);

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
 ** xcb_void_cookie_t xcb_store_colors
 ** 
 ** @param xcb_connection_t      *c
 ** @param xcb_colormap_t         cmap
 ** @param uint                   items_len
 ** @param const xcb_coloritem_t *items
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_store_colors (xcb_connection_t      *c  /**< */,
                  xcb_colormap_t         cmap  /**< */,
                  uint                   items_len  /**< */,
                  const xcb_coloritem_t *items  /**< */);

extern(C) int
xcb_store_named_color_sizeof (const void  *_buffer  /**< */);

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
 ** xcb_void_cookie_t xcb_store_named_color_checked
 ** 
 ** @param xcb_connection_t *c
 ** @param ubyte             flags
 ** @param xcb_colormap_t    cmap
 ** @param uint              pixel
 ** @param ushort            name_len
 ** @param const char       *name
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_store_named_color_checked (xcb_connection_t *c  /**< */,
                               ubyte             flags  /**< */,
                               xcb_colormap_t    cmap  /**< */,
                               uint              pixel  /**< */,
                               ushort            name_len  /**< */,
                               const char       *name  /**< */);

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
 ** xcb_void_cookie_t xcb_store_named_color
 ** 
 ** @param xcb_connection_t *c
 ** @param ubyte             flags
 ** @param xcb_colormap_t    cmap
 ** @param uint              pixel
 ** @param ushort            name_len
 ** @param const char       *name
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_store_named_color (xcb_connection_t *c  /**< */,
                       ubyte             flags  /**< */,
                       xcb_colormap_t    cmap  /**< */,
                       uint              pixel  /**< */,
                       ushort            name_len  /**< */,
                       const char       *name  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_rgb_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_rgb_t)
 */

/*****************************************************************************
 **
 ** void xcb_rgb_next
 ** 
 ** @param xcb_rgb_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_rgb_next (xcb_rgb_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_rgb_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_rgb_end
 ** 
 ** @param xcb_rgb_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
xcb_generic_iterator_t
xcb_rgb_end (xcb_rgb_iterator_t i  /**< */);

extern(C) int
xcb_query_colors_sizeof (const void  *_buffer  /**< */,
                         uint         pixels_len  /**< */);

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
 ** xcb_query_colors_cookie_t xcb_query_colors
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_colormap_t    cmap
 ** @param uint              pixels_len
 ** @param const uint       *pixels
 ** @returns xcb_query_colors_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_query_colors_cookie_t
xcb_query_colors (xcb_connection_t *c  /**< */,
                  xcb_colormap_t    cmap  /**< */,
                  uint              pixels_len  /**< */,
                  const uint       *pixels  /**< */);

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
 ** xcb_query_colors_cookie_t xcb_query_colors_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_colormap_t    cmap
 ** @param uint              pixels_len
 ** @param const uint       *pixels
 ** @returns xcb_query_colors_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_query_colors_cookie_t
xcb_query_colors_unchecked (xcb_connection_t *c  /**< */,
                            xcb_colormap_t    cmap  /**< */,
                            uint              pixels_len  /**< */,
                            const uint       *pixels  /**< */);


/*****************************************************************************
 **
 ** xcb_rgb_t * xcb_query_colors_colors
 ** 
 ** @param const xcb_query_colors_reply_t *R
 ** @returns xcb_rgb_t *
 **
 *****************************************************************************/
 
xcb_rgb_t *
xcb_query_colors_colors (const xcb_query_colors_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_query_colors_colors_length
 ** 
 ** @param const xcb_query_colors_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_query_colors_colors_length (const xcb_query_colors_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_rgb_iterator_t xcb_query_colors_colors_iterator
 ** 
 ** @param const xcb_query_colors_reply_t *R
 ** @returns xcb_rgb_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_rgb_iterator_t
xcb_query_colors_colors_iterator (const xcb_query_colors_reply_t *R  /**< */);

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 * 
 * The parameter @p e supplied to this function must be NULL if
 * xcb_query_colors_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */

/*****************************************************************************
 **
 ** xcb_query_colors_reply_t * xcb_query_colors_reply
 ** 
 ** @param xcb_connection_t           *c
 ** @param xcb_query_colors_cookie_t   cookie
 ** @param xcb_generic_error_t       **e
 ** @returns xcb_query_colors_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_query_colors_reply_t *
xcb_query_colors_reply (xcb_connection_t           *c  /**< */,
                        xcb_query_colors_cookie_t   cookie  /**< */,
                        xcb_generic_error_t       **e  /**< */);

extern(C) int
xcb_lookup_color_sizeof (const void  *_buffer  /**< */);

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
 ** xcb_lookup_color_cookie_t xcb_lookup_color
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_colormap_t    cmap
 ** @param ushort            name_len
 ** @param const char       *name
 ** @returns xcb_lookup_color_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_lookup_color_cookie_t
xcb_lookup_color (xcb_connection_t *c  /**< */,
                  xcb_colormap_t    cmap  /**< */,
                  ushort            name_len  /**< */,
                  const char       *name  /**< */);

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
 ** xcb_lookup_color_cookie_t xcb_lookup_color_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_colormap_t    cmap
 ** @param ushort            name_len
 ** @param const char       *name
 ** @returns xcb_lookup_color_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_lookup_color_cookie_t
xcb_lookup_color_unchecked (xcb_connection_t *c  /**< */,
                            xcb_colormap_t    cmap  /**< */,
                            ushort            name_len  /**< */,
                            const char       *name  /**< */);

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 * 
 * The parameter @p e supplied to this function must be NULL if
 * xcb_lookup_color_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */

/*****************************************************************************
 **
 ** xcb_lookup_color_reply_t * xcb_lookup_color_reply
 ** 
 ** @param xcb_connection_t           *c
 ** @param xcb_lookup_color_cookie_t   cookie
 ** @param xcb_generic_error_t       **e
 ** @returns xcb_lookup_color_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_lookup_color_reply_t *
xcb_lookup_color_reply (xcb_connection_t           *c  /**< */,
                        xcb_lookup_color_cookie_t   cookie  /**< */,
                        xcb_generic_error_t       **e  /**< */);

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
 ** xcb_void_cookie_t xcb_create_cursor_checked
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_cursor_t      cid
 ** @param xcb_pixmap_t      source
 ** @param xcb_pixmap_t      mask
 ** @param ushort            fore_red
 ** @param ushort            fore_green
 ** @param ushort            fore_blue
 ** @param ushort            back_red
 ** @param ushort            back_green
 ** @param ushort            back_blue
 ** @param ushort            x
 ** @param ushort            y
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_create_cursor_checked (xcb_connection_t *c  /**< */,
                           xcb_cursor_t      cid  /**< */,
                           xcb_pixmap_t      source  /**< */,
                           xcb_pixmap_t      mask  /**< */,
                           ushort            fore_red  /**< */,
                           ushort            fore_green  /**< */,
                           ushort            fore_blue  /**< */,
                           ushort            back_red  /**< */,
                           ushort            back_green  /**< */,
                           ushort            back_blue  /**< */,
                           ushort            x  /**< */,
                           ushort            y  /**< */);

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
 ** xcb_void_cookie_t xcb_create_cursor
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_cursor_t      cid
 ** @param xcb_pixmap_t      source
 ** @param xcb_pixmap_t      mask
 ** @param ushort            fore_red
 ** @param ushort            fore_green
 ** @param ushort            fore_blue
 ** @param ushort            back_red
 ** @param ushort            back_green
 ** @param ushort            back_blue
 ** @param ushort            x
 ** @param ushort            y
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_create_cursor (xcb_connection_t *c  /**< */,
                   xcb_cursor_t      cid  /**< */,
                   xcb_pixmap_t      source  /**< */,
                   xcb_pixmap_t      mask  /**< */,
                   ushort            fore_red  /**< */,
                   ushort            fore_green  /**< */,
                   ushort            fore_blue  /**< */,
                   ushort            back_red  /**< */,
                   ushort            back_green  /**< */,
                   ushort            back_blue  /**< */,
                   ushort            x  /**< */,
                   ushort            y  /**< */);

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
 ** xcb_void_cookie_t xcb_create_glyph_cursor_checked
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_cursor_t      cid
 ** @param xcb_font_t        source_font
 ** @param xcb_font_t        mask_font
 ** @param ushort            source_char
 ** @param ushort            mask_char
 ** @param ushort            fore_red
 ** @param ushort            fore_green
 ** @param ushort            fore_blue
 ** @param ushort            back_red
 ** @param ushort            back_green
 ** @param ushort            back_blue
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_create_glyph_cursor_checked (xcb_connection_t *c  /**< */,
                                 xcb_cursor_t      cid  /**< */,
                                 xcb_font_t        source_font  /**< */,
                                 xcb_font_t        mask_font  /**< */,
                                 ushort            source_char  /**< */,
                                 ushort            mask_char  /**< */,
                                 ushort            fore_red  /**< */,
                                 ushort            fore_green  /**< */,
                                 ushort            fore_blue  /**< */,
                                 ushort            back_red  /**< */,
                                 ushort            back_green  /**< */,
                                 ushort            back_blue  /**< */);

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
 ** xcb_void_cookie_t xcb_create_glyph_cursor
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_cursor_t      cid
 ** @param xcb_font_t        source_font
 ** @param xcb_font_t        mask_font
 ** @param ushort            source_char
 ** @param ushort            mask_char
 ** @param ushort            fore_red
 ** @param ushort            fore_green
 ** @param ushort            fore_blue
 ** @param ushort            back_red
 ** @param ushort            back_green
 ** @param ushort            back_blue
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_create_glyph_cursor (xcb_connection_t *c  /**< */,
                         xcb_cursor_t      cid  /**< */,
                         xcb_font_t        source_font  /**< */,
                         xcb_font_t        mask_font  /**< */,
                         ushort            source_char  /**< */,
                         ushort            mask_char  /**< */,
                         ushort            fore_red  /**< */,
                         ushort            fore_green  /**< */,
                         ushort            fore_blue  /**< */,
                         ushort            back_red  /**< */,
                         ushort            back_green  /**< */,
                         ushort            back_blue  /**< */);

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
 ** xcb_void_cookie_t xcb_free_cursor_checked
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_cursor_t      cursor
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_free_cursor_checked (xcb_connection_t *c  /**< */,
                         xcb_cursor_t      cursor  /**< */);

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
 ** xcb_void_cookie_t xcb_free_cursor
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_cursor_t      cursor
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_free_cursor (xcb_connection_t *c  /**< */,
                 xcb_cursor_t      cursor  /**< */);

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
 ** xcb_void_cookie_t xcb_recolor_cursor_checked
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_cursor_t      cursor
 ** @param ushort            fore_red
 ** @param ushort            fore_green
 ** @param ushort            fore_blue
 ** @param ushort            back_red
 ** @param ushort            back_green
 ** @param ushort            back_blue
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_recolor_cursor_checked (xcb_connection_t *c  /**< */,
                            xcb_cursor_t      cursor  /**< */,
                            ushort            fore_red  /**< */,
                            ushort            fore_green  /**< */,
                            ushort            fore_blue  /**< */,
                            ushort            back_red  /**< */,
                            ushort            back_green  /**< */,
                            ushort            back_blue  /**< */);

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
 ** xcb_void_cookie_t xcb_recolor_cursor
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_cursor_t      cursor
 ** @param ushort            fore_red
 ** @param ushort            fore_green
 ** @param ushort            fore_blue
 ** @param ushort            back_red
 ** @param ushort            back_green
 ** @param ushort            back_blue
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_recolor_cursor (xcb_connection_t *c  /**< */,
                    xcb_cursor_t      cursor  /**< */,
                    ushort            fore_red  /**< */,
                    ushort            fore_green  /**< */,
                    ushort            fore_blue  /**< */,
                    ushort            back_red  /**< */,
                    ushort            back_green  /**< */,
                    ushort            back_blue  /**< */);

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
 ** xcb_query_best_size_cookie_t xcb_query_best_size
 ** 
 ** @param xcb_connection_t *c
 ** @param ubyte             _class
 ** @param xcb_drawable_t    drawable
 ** @param ushort            width
 ** @param ushort            height
 ** @returns xcb_query_best_size_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_query_best_size_cookie_t
xcb_query_best_size (xcb_connection_t *c  /**< */,
                     ubyte             _class  /**< */,
                     xcb_drawable_t    drawable  /**< */,
                     ushort            width  /**< */,
                     ushort            height  /**< */);

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
 ** xcb_query_best_size_cookie_t xcb_query_best_size_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @param ubyte             _class
 ** @param xcb_drawable_t    drawable
 ** @param ushort            width
 ** @param ushort            height
 ** @returns xcb_query_best_size_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_query_best_size_cookie_t
xcb_query_best_size_unchecked (xcb_connection_t *c  /**< */,
                               ubyte             _class  /**< */,
                               xcb_drawable_t    drawable  /**< */,
                               ushort            width  /**< */,
                               ushort            height  /**< */);

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 * 
 * The parameter @p e supplied to this function must be NULL if
 * xcb_query_best_size_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */

/*****************************************************************************
 **
 ** xcb_query_best_size_reply_t * xcb_query_best_size_reply
 ** 
 ** @param xcb_connection_t              *c
 ** @param xcb_query_best_size_cookie_t   cookie
 ** @param xcb_generic_error_t          **e
 ** @returns xcb_query_best_size_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_query_best_size_reply_t *
xcb_query_best_size_reply (xcb_connection_t              *c  /**< */,
                           xcb_query_best_size_cookie_t   cookie  /**< */,
                           xcb_generic_error_t          **e  /**< */);

extern(C) int
xcb_query_extension_sizeof (const void  *_buffer  /**< */);

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
 ** xcb_query_extension_cookie_t xcb_query_extension
 ** 
 ** @param xcb_connection_t *c
 ** @param ushort            name_len
 ** @param const char       *name
 ** @returns xcb_query_extension_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_query_extension_cookie_t
xcb_query_extension (xcb_connection_t *c  /**< */,
                     ushort            name_len  /**< */,
                     const char       *name  /**< */);

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
 ** xcb_query_extension_cookie_t xcb_query_extension_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @param ushort            name_len
 ** @param const char       *name
 ** @returns xcb_query_extension_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_query_extension_cookie_t
xcb_query_extension_unchecked (xcb_connection_t *c  /**< */,
                               ushort            name_len  /**< */,
                               const char       *name  /**< */);

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 * 
 * The parameter @p e supplied to this function must be NULL if
 * xcb_query_extension_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */

/*****************************************************************************
 **
 ** xcb_query_extension_reply_t * xcb_query_extension_reply
 ** 
 ** @param xcb_connection_t              *c
 ** @param xcb_query_extension_cookie_t   cookie
 ** @param xcb_generic_error_t          **e
 ** @returns xcb_query_extension_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_query_extension_reply_t *
xcb_query_extension_reply (xcb_connection_t              *c  /**< */,
                           xcb_query_extension_cookie_t   cookie  /**< */,
                           xcb_generic_error_t          **e  /**< */);

extern(C) int
xcb_list_extensions_sizeof (const void  *_buffer  /**< */);

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
 ** xcb_list_extensions_cookie_t xcb_list_extensions
 ** 
 ** @param xcb_connection_t *c
 ** @returns xcb_list_extensions_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_list_extensions_cookie_t
xcb_list_extensions (xcb_connection_t *c  /**< */);

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
 ** xcb_list_extensions_cookie_t xcb_list_extensions_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @returns xcb_list_extensions_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_list_extensions_cookie_t
xcb_list_extensions_unchecked (xcb_connection_t *c  /**< */);


/*****************************************************************************
 **
 ** int xcb_list_extensions_names_length
 ** 
 ** @param const xcb_list_extensions_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_list_extensions_names_length (const xcb_list_extensions_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_str_iterator_t xcb_list_extensions_names_iterator
 ** 
 ** @param const xcb_list_extensions_reply_t *R
 ** @returns xcb_str_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_str_iterator_t
xcb_list_extensions_names_iterator (const xcb_list_extensions_reply_t *R  /**< */);

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 * 
 * The parameter @p e supplied to this function must be NULL if
 * xcb_list_extensions_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */

/*****************************************************************************
 **
 ** xcb_list_extensions_reply_t * xcb_list_extensions_reply
 ** 
 ** @param xcb_connection_t              *c
 ** @param xcb_list_extensions_cookie_t   cookie
 ** @param xcb_generic_error_t          **e
 ** @returns xcb_list_extensions_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_list_extensions_reply_t *
xcb_list_extensions_reply (xcb_connection_t              *c  /**< */,
                           xcb_list_extensions_cookie_t   cookie  /**< */,
                           xcb_generic_error_t          **e  /**< */);

extern(C) int
xcb_change_keyboard_mapping_sizeof (const void  *_buffer  /**< */);

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
 ** xcb_void_cookie_t xcb_change_keyboard_mapping_checked
 ** 
 ** @param xcb_connection_t   *c
 ** @param ubyte               keycode_count
 ** @param xcb_keycode_t       first_keycode
 ** @param ubyte               keysyms_per_keycode
 ** @param const xcb_keysym_t *keysyms
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_change_keyboard_mapping_checked (xcb_connection_t   *c  /**< */,
                                     ubyte               keycode_count  /**< */,
                                     xcb_keycode_t       first_keycode  /**< */,
                                     ubyte               keysyms_per_keycode  /**< */,
                                     const xcb_keysym_t *keysyms  /**< */);

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
 ** xcb_void_cookie_t xcb_change_keyboard_mapping
 ** 
 ** @param xcb_connection_t   *c
 ** @param ubyte               keycode_count
 ** @param xcb_keycode_t       first_keycode
 ** @param ubyte               keysyms_per_keycode
 ** @param const xcb_keysym_t *keysyms
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_change_keyboard_mapping (xcb_connection_t   *c  /**< */,
                             ubyte               keycode_count  /**< */,
                             xcb_keycode_t       first_keycode  /**< */,
                             ubyte               keysyms_per_keycode  /**< */,
                             const xcb_keysym_t *keysyms  /**< */);

extern(C) int
xcb_get_keyboard_mapping_sizeof (const void  *_buffer  /**< */);

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
 ** xcb_get_keyboard_mapping_cookie_t xcb_get_keyboard_mapping
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_keycode_t     first_keycode
 ** @param ubyte             count
 ** @returns xcb_get_keyboard_mapping_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_get_keyboard_mapping_cookie_t
xcb_get_keyboard_mapping (xcb_connection_t *c  /**< */,
                          xcb_keycode_t     first_keycode  /**< */,
                          ubyte             count  /**< */);

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
 ** xcb_get_keyboard_mapping_cookie_t xcb_get_keyboard_mapping_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_keycode_t     first_keycode
 ** @param ubyte             count
 ** @returns xcb_get_keyboard_mapping_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_get_keyboard_mapping_cookie_t
xcb_get_keyboard_mapping_unchecked (xcb_connection_t *c  /**< */,
                                    xcb_keycode_t     first_keycode  /**< */,
                                    ubyte             count  /**< */);


/*****************************************************************************
 **
 ** xcb_keysym_t * xcb_get_keyboard_mapping_keysyms
 ** 
 ** @param const xcb_get_keyboard_mapping_reply_t *R
 ** @returns xcb_keysym_t *
 **
 *****************************************************************************/
 
xcb_keysym_t *
xcb_get_keyboard_mapping_keysyms (const xcb_get_keyboard_mapping_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_get_keyboard_mapping_keysyms_length
 ** 
 ** @param const xcb_get_keyboard_mapping_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_get_keyboard_mapping_keysyms_length (const xcb_get_keyboard_mapping_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_get_keyboard_mapping_keysyms_end
 ** 
 ** @param const xcb_get_keyboard_mapping_reply_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_get_keyboard_mapping_keysyms_end (const xcb_get_keyboard_mapping_reply_t *R  /**< */);

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 * 
 * The parameter @p e supplied to this function must be NULL if
 * xcb_get_keyboard_mapping_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */

/*****************************************************************************
 **
 ** xcb_get_keyboard_mapping_reply_t * xcb_get_keyboard_mapping_reply
 ** 
 ** @param xcb_connection_t                   *c
 ** @param xcb_get_keyboard_mapping_cookie_t   cookie
 ** @param xcb_generic_error_t               **e
 ** @returns xcb_get_keyboard_mapping_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_get_keyboard_mapping_reply_t *
xcb_get_keyboard_mapping_reply (xcb_connection_t                   *c  /**< */,
                                xcb_get_keyboard_mapping_cookie_t   cookie  /**< */,
                                xcb_generic_error_t               **e  /**< */);

extern(C) int
xcb_change_keyboard_control_sizeof (const void  *_buffer  /**< */);

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
 ** xcb_void_cookie_t xcb_change_keyboard_control_checked
 ** 
 ** @param xcb_connection_t *c
 ** @param uint              value_mask
 ** @param const uint       *value_list
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_change_keyboard_control_checked (xcb_connection_t *c  /**< */,
                                     uint              value_mask  /**< */,
                                     const uint       *value_list  /**< */);

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
 ** xcb_void_cookie_t xcb_change_keyboard_control
 ** 
 ** @param xcb_connection_t *c
 ** @param uint              value_mask
 ** @param const uint       *value_list
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_change_keyboard_control (xcb_connection_t *c  /**< */,
                             uint              value_mask  /**< */,
                             const uint       *value_list  /**< */);

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
 ** xcb_get_keyboard_control_cookie_t xcb_get_keyboard_control
 ** 
 ** @param xcb_connection_t *c
 ** @returns xcb_get_keyboard_control_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_get_keyboard_control_cookie_t
xcb_get_keyboard_control (xcb_connection_t *c  /**< */);

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
 ** xcb_get_keyboard_control_cookie_t xcb_get_keyboard_control_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @returns xcb_get_keyboard_control_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_get_keyboard_control_cookie_t
xcb_get_keyboard_control_unchecked (xcb_connection_t *c  /**< */);

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 * 
 * The parameter @p e supplied to this function must be NULL if
 * xcb_get_keyboard_control_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */

/*****************************************************************************
 **
 ** xcb_get_keyboard_control_reply_t * xcb_get_keyboard_control_reply
 ** 
 ** @param xcb_connection_t                   *c
 ** @param xcb_get_keyboard_control_cookie_t   cookie
 ** @param xcb_generic_error_t               **e
 ** @returns xcb_get_keyboard_control_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_get_keyboard_control_reply_t *
xcb_get_keyboard_control_reply (xcb_connection_t                   *c  /**< */,
                                xcb_get_keyboard_control_cookie_t   cookie  /**< */,
                                xcb_generic_error_t               **e  /**< */);

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
 ** xcb_void_cookie_t xcb_bell_checked
 ** 
 ** @param xcb_connection_t *c
 ** @param byte              percent
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_bell_checked (xcb_connection_t *c  /**< */,
                  byte              percent  /**< */);

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
 ** xcb_void_cookie_t xcb_bell
 ** 
 ** @param xcb_connection_t *c
 ** @param byte              percent
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_bell (xcb_connection_t *c  /**< */,
          byte              percent  /**< */);

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
 ** xcb_void_cookie_t xcb_change_pointer_control_checked
 ** 
 ** @param xcb_connection_t *c
 ** @param short             acceleration_numerator
 ** @param short             acceleration_denominator
 ** @param short             threshold
 ** @param ubyte             do_acceleration
 ** @param ubyte             do_threshold
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_change_pointer_control_checked (xcb_connection_t *c  /**< */,
                                    short             acceleration_numerator  /**< */,
                                    short             acceleration_denominator  /**< */,
                                    short             threshold  /**< */,
                                    ubyte             do_acceleration  /**< */,
                                    ubyte             do_threshold  /**< */);

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
 ** xcb_void_cookie_t xcb_change_pointer_control
 ** 
 ** @param xcb_connection_t *c
 ** @param short             acceleration_numerator
 ** @param short             acceleration_denominator
 ** @param short             threshold
 ** @param ubyte             do_acceleration
 ** @param ubyte             do_threshold
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_change_pointer_control (xcb_connection_t *c  /**< */,
                            short             acceleration_numerator  /**< */,
                            short             acceleration_denominator  /**< */,
                            short             threshold  /**< */,
                            ubyte             do_acceleration  /**< */,
                            ubyte             do_threshold  /**< */);

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
 ** xcb_get_pointer_control_cookie_t xcb_get_pointer_control
 ** 
 ** @param xcb_connection_t *c
 ** @returns xcb_get_pointer_control_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_get_pointer_control_cookie_t
xcb_get_pointer_control (xcb_connection_t *c  /**< */);

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
 ** xcb_get_pointer_control_cookie_t xcb_get_pointer_control_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @returns xcb_get_pointer_control_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_get_pointer_control_cookie_t
xcb_get_pointer_control_unchecked (xcb_connection_t *c  /**< */);

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 * 
 * The parameter @p e supplied to this function must be NULL if
 * xcb_get_pointer_control_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */

/*****************************************************************************
 **
 ** xcb_get_pointer_control_reply_t * xcb_get_pointer_control_reply
 ** 
 ** @param xcb_connection_t                  *c
 ** @param xcb_get_pointer_control_cookie_t   cookie
 ** @param xcb_generic_error_t              **e
 ** @returns xcb_get_pointer_control_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_get_pointer_control_reply_t *
xcb_get_pointer_control_reply (xcb_connection_t                  *c  /**< */,
                               xcb_get_pointer_control_cookie_t   cookie  /**< */,
                               xcb_generic_error_t              **e  /**< */);

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
 ** xcb_void_cookie_t xcb_set_screen_saver_checked
 ** 
 ** @param xcb_connection_t *c
 ** @param short             timeout
 ** @param short             interval
 ** @param ubyte             prefer_blanking
 ** @param ubyte             allow_exposures
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_set_screen_saver_checked (xcb_connection_t *c  /**< */,
                              short             timeout  /**< */,
                              short             interval  /**< */,
                              ubyte             prefer_blanking  /**< */,
                              ubyte             allow_exposures  /**< */);

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
 ** xcb_void_cookie_t xcb_set_screen_saver
 ** 
 ** @param xcb_connection_t *c
 ** @param short             timeout
 ** @param short             interval
 ** @param ubyte             prefer_blanking
 ** @param ubyte             allow_exposures
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_set_screen_saver (xcb_connection_t *c  /**< */,
                      short             timeout  /**< */,
                      short             interval  /**< */,
                      ubyte             prefer_blanking  /**< */,
                      ubyte             allow_exposures  /**< */);

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
 ** xcb_get_screen_saver_cookie_t xcb_get_screen_saver
 ** 
 ** @param xcb_connection_t *c
 ** @returns xcb_get_screen_saver_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_get_screen_saver_cookie_t
xcb_get_screen_saver (xcb_connection_t *c  /**< */);

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
 ** xcb_get_screen_saver_cookie_t xcb_get_screen_saver_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @returns xcb_get_screen_saver_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_get_screen_saver_cookie_t
xcb_get_screen_saver_unchecked (xcb_connection_t *c  /**< */);

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 * 
 * The parameter @p e supplied to this function must be NULL if
 * xcb_get_screen_saver_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */

/*****************************************************************************
 **
 ** xcb_get_screen_saver_reply_t * xcb_get_screen_saver_reply
 ** 
 ** @param xcb_connection_t               *c
 ** @param xcb_get_screen_saver_cookie_t   cookie
 ** @param xcb_generic_error_t           **e
 ** @returns xcb_get_screen_saver_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_get_screen_saver_reply_t *
xcb_get_screen_saver_reply (xcb_connection_t               *c  /**< */,
                            xcb_get_screen_saver_cookie_t   cookie  /**< */,
                            xcb_generic_error_t           **e  /**< */);

extern(C) int
xcb_change_hosts_sizeof (const void  *_buffer  /**< */);

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
 ** xcb_void_cookie_t xcb_change_hosts_checked
 ** 
 ** @param xcb_connection_t *c
 ** @param ubyte             mode
 ** @param ubyte             family
 ** @param ushort            address_len
 ** @param const ubyte      *address
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_change_hosts_checked (xcb_connection_t *c  /**< */,
                          ubyte             mode  /**< */,
                          ubyte             family  /**< */,
                          ushort            address_len  /**< */,
                          const ubyte      *address  /**< */);

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
 ** xcb_void_cookie_t xcb_change_hosts
 ** 
 ** @param xcb_connection_t *c
 ** @param ubyte             mode
 ** @param ubyte             family
 ** @param ushort            address_len
 ** @param const ubyte      *address
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_change_hosts (xcb_connection_t *c  /**< */,
                  ubyte             mode  /**< */,
                  ubyte             family  /**< */,
                  ushort            address_len  /**< */,
                  const ubyte      *address  /**< */);

extern(C) int
xcb_host_sizeof (const void  *_buffer  /**< */);


/*****************************************************************************
 **
 ** ubyte * xcb_host_address
 ** 
 ** @param const xcb_host_t *R
 ** @returns ubyte *
 **
 *****************************************************************************/
 
ubyte *
xcb_host_address (const xcb_host_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_host_address_length
 ** 
 ** @param const xcb_host_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_host_address_length (const xcb_host_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_host_address_end
 ** 
 ** @param const xcb_host_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_host_address_end (const xcb_host_t *R  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_host_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_host_t)
 */

/*****************************************************************************
 **
 ** void xcb_host_next
 ** 
 ** @param xcb_host_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_host_next (xcb_host_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_host_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_host_end
 ** 
 ** @param xcb_host_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
xcb_generic_iterator_t
xcb_host_end (xcb_host_iterator_t i  /**< */);

extern(C) int
xcb_list_hosts_sizeof (const void  *_buffer  /**< */);

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
 ** xcb_list_hosts_cookie_t xcb_list_hosts
 ** 
 ** @param xcb_connection_t *c
 ** @returns xcb_list_hosts_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_list_hosts_cookie_t
xcb_list_hosts (xcb_connection_t *c  /**< */);

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
 ** xcb_list_hosts_cookie_t xcb_list_hosts_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @returns xcb_list_hosts_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_list_hosts_cookie_t
xcb_list_hosts_unchecked (xcb_connection_t *c  /**< */);


/*****************************************************************************
 **
 ** int xcb_list_hosts_hosts_length
 ** 
 ** @param const xcb_list_hosts_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_list_hosts_hosts_length (const xcb_list_hosts_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_host_iterator_t xcb_list_hosts_hosts_iterator
 ** 
 ** @param const xcb_list_hosts_reply_t *R
 ** @returns xcb_host_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_host_iterator_t
xcb_list_hosts_hosts_iterator (const xcb_list_hosts_reply_t *R  /**< */);

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 * 
 * The parameter @p e supplied to this function must be NULL if
 * xcb_list_hosts_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */

/*****************************************************************************
 **
 ** xcb_list_hosts_reply_t * xcb_list_hosts_reply
 ** 
 ** @param xcb_connection_t         *c
 ** @param xcb_list_hosts_cookie_t   cookie
 ** @param xcb_generic_error_t     **e
 ** @returns xcb_list_hosts_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_list_hosts_reply_t *
xcb_list_hosts_reply (xcb_connection_t         *c  /**< */,
                      xcb_list_hosts_cookie_t   cookie  /**< */,
                      xcb_generic_error_t     **e  /**< */);

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
 ** xcb_void_cookie_t xcb_set_access_control_checked
 ** 
 ** @param xcb_connection_t *c
 ** @param ubyte             mode
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_set_access_control_checked (xcb_connection_t *c  /**< */,
                                ubyte             mode  /**< */);

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
 ** xcb_void_cookie_t xcb_set_access_control
 ** 
 ** @param xcb_connection_t *c
 ** @param ubyte             mode
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_set_access_control (xcb_connection_t *c  /**< */,
                        ubyte             mode  /**< */);

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
 ** xcb_void_cookie_t xcb_set_close_down_mode_checked
 ** 
 ** @param xcb_connection_t *c
 ** @param ubyte             mode
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_set_close_down_mode_checked (xcb_connection_t *c  /**< */,
                                 ubyte             mode  /**< */);

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
 ** xcb_void_cookie_t xcb_set_close_down_mode
 ** 
 ** @param xcb_connection_t *c
 ** @param ubyte             mode
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_set_close_down_mode (xcb_connection_t *c  /**< */,
                         ubyte             mode  /**< */);

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
 ** xcb_void_cookie_t xcb_kill_client_checked
 ** 
 ** @param xcb_connection_t *c
 ** @param uint              resource
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_kill_client_checked (xcb_connection_t *c  /**< */,
                         uint              resource  /**< */);

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
 ** xcb_void_cookie_t xcb_kill_client
 ** 
 ** @param xcb_connection_t *c
 ** @param uint              resource
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_kill_client (xcb_connection_t *c  /**< */,
                 uint              resource  /**< */);

extern(C) int
xcb_rotate_properties_sizeof (const void  *_buffer  /**< */);

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
 ** xcb_void_cookie_t xcb_rotate_properties_checked
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_window_t      window
 ** @param ushort            atoms_len
 ** @param short             delta
 ** @param const xcb_atom_t *atoms
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_rotate_properties_checked (xcb_connection_t *c  /**< */,
                               xcb_window_t      window  /**< */,
                               ushort            atoms_len  /**< */,
                               short             delta  /**< */,
                               const xcb_atom_t *atoms  /**< */);

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
 ** xcb_void_cookie_t xcb_rotate_properties
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_window_t      window
 ** @param ushort            atoms_len
 ** @param short             delta
 ** @param const xcb_atom_t *atoms
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_rotate_properties (xcb_connection_t *c  /**< */,
                       xcb_window_t      window  /**< */,
                       ushort            atoms_len  /**< */,
                       short             delta  /**< */,
                       const xcb_atom_t *atoms  /**< */);

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
 ** xcb_void_cookie_t xcb_force_screen_saver_checked
 ** 
 ** @param xcb_connection_t *c
 ** @param ubyte             mode
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_force_screen_saver_checked (xcb_connection_t *c  /**< */,
                                ubyte             mode  /**< */);

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
 ** xcb_void_cookie_t xcb_force_screen_saver
 ** 
 ** @param xcb_connection_t *c
 ** @param ubyte             mode
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_force_screen_saver (xcb_connection_t *c  /**< */,
                        ubyte             mode  /**< */);

extern(C) int
xcb_set_pointer_mapping_sizeof (const void  *_buffer  /**< */);

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
 ** xcb_set_pointer_mapping_cookie_t xcb_set_pointer_mapping
 ** 
 ** @param xcb_connection_t *c
 ** @param ubyte             map_len
 ** @param const ubyte      *map
 ** @returns xcb_set_pointer_mapping_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_set_pointer_mapping_cookie_t
xcb_set_pointer_mapping (xcb_connection_t *c  /**< */,
                         ubyte             map_len  /**< */,
                         const ubyte      *map  /**< */);

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
 ** xcb_set_pointer_mapping_cookie_t xcb_set_pointer_mapping_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @param ubyte             map_len
 ** @param const ubyte      *map
 ** @returns xcb_set_pointer_mapping_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_set_pointer_mapping_cookie_t
xcb_set_pointer_mapping_unchecked (xcb_connection_t *c  /**< */,
                                   ubyte             map_len  /**< */,
                                   const ubyte      *map  /**< */);

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 * 
 * The parameter @p e supplied to this function must be NULL if
 * xcb_set_pointer_mapping_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */

/*****************************************************************************
 **
 ** xcb_set_pointer_mapping_reply_t * xcb_set_pointer_mapping_reply
 ** 
 ** @param xcb_connection_t                  *c
 ** @param xcb_set_pointer_mapping_cookie_t   cookie
 ** @param xcb_generic_error_t              **e
 ** @returns xcb_set_pointer_mapping_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_set_pointer_mapping_reply_t *
xcb_set_pointer_mapping_reply (xcb_connection_t                  *c  /**< */,
                               xcb_set_pointer_mapping_cookie_t   cookie  /**< */,
                               xcb_generic_error_t              **e  /**< */);

extern(C) int
xcb_get_pointer_mapping_sizeof (const void  *_buffer  /**< */);

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
 ** xcb_get_pointer_mapping_cookie_t xcb_get_pointer_mapping
 ** 
 ** @param xcb_connection_t *c
 ** @returns xcb_get_pointer_mapping_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_get_pointer_mapping_cookie_t
xcb_get_pointer_mapping (xcb_connection_t *c  /**< */);

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
 ** xcb_get_pointer_mapping_cookie_t xcb_get_pointer_mapping_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @returns xcb_get_pointer_mapping_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_get_pointer_mapping_cookie_t
xcb_get_pointer_mapping_unchecked (xcb_connection_t *c  /**< */);


/*****************************************************************************
 **
 ** ubyte * xcb_get_pointer_mapping_map
 ** 
 ** @param const xcb_get_pointer_mapping_reply_t *R
 ** @returns ubyte *
 **
 *****************************************************************************/
 
ubyte *
xcb_get_pointer_mapping_map (const xcb_get_pointer_mapping_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_get_pointer_mapping_map_length
 ** 
 ** @param const xcb_get_pointer_mapping_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_get_pointer_mapping_map_length (const xcb_get_pointer_mapping_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_get_pointer_mapping_map_end
 ** 
 ** @param const xcb_get_pointer_mapping_reply_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_get_pointer_mapping_map_end (const xcb_get_pointer_mapping_reply_t *R  /**< */);

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 * 
 * The parameter @p e supplied to this function must be NULL if
 * xcb_get_pointer_mapping_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */

/*****************************************************************************
 **
 ** xcb_get_pointer_mapping_reply_t * xcb_get_pointer_mapping_reply
 ** 
 ** @param xcb_connection_t                  *c
 ** @param xcb_get_pointer_mapping_cookie_t   cookie
 ** @param xcb_generic_error_t              **e
 ** @returns xcb_get_pointer_mapping_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_get_pointer_mapping_reply_t *
xcb_get_pointer_mapping_reply (xcb_connection_t                  *c  /**< */,
                               xcb_get_pointer_mapping_cookie_t   cookie  /**< */,
                               xcb_generic_error_t              **e  /**< */);

extern(C) int
xcb_set_modifier_mapping_sizeof (const void  *_buffer  /**< */);

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
 ** xcb_set_modifier_mapping_cookie_t xcb_set_modifier_mapping
 ** 
 ** @param xcb_connection_t    *c
 ** @param ubyte                keycodes_per_modifier
 ** @param const xcb_keycode_t *keycodes
 ** @returns xcb_set_modifier_mapping_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_set_modifier_mapping_cookie_t
xcb_set_modifier_mapping (xcb_connection_t    *c  /**< */,
                          ubyte                keycodes_per_modifier  /**< */,
                          const xcb_keycode_t *keycodes  /**< */);

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
 ** xcb_set_modifier_mapping_cookie_t xcb_set_modifier_mapping_unchecked
 ** 
 ** @param xcb_connection_t    *c
 ** @param ubyte                keycodes_per_modifier
 ** @param const xcb_keycode_t *keycodes
 ** @returns xcb_set_modifier_mapping_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_set_modifier_mapping_cookie_t
xcb_set_modifier_mapping_unchecked (xcb_connection_t    *c  /**< */,
                                    ubyte                keycodes_per_modifier  /**< */,
                                    const xcb_keycode_t *keycodes  /**< */);

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 * 
 * The parameter @p e supplied to this function must be NULL if
 * xcb_set_modifier_mapping_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */

/*****************************************************************************
 **
 ** xcb_set_modifier_mapping_reply_t * xcb_set_modifier_mapping_reply
 ** 
 ** @param xcb_connection_t                   *c
 ** @param xcb_set_modifier_mapping_cookie_t   cookie
 ** @param xcb_generic_error_t               **e
 ** @returns xcb_set_modifier_mapping_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_set_modifier_mapping_reply_t *
xcb_set_modifier_mapping_reply (xcb_connection_t                   *c  /**< */,
                                xcb_set_modifier_mapping_cookie_t   cookie  /**< */,
                                xcb_generic_error_t               **e  /**< */);

extern(C) int
xcb_get_modifier_mapping_sizeof (const void  *_buffer  /**< */);

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
 ** xcb_get_modifier_mapping_cookie_t xcb_get_modifier_mapping
 ** 
 ** @param xcb_connection_t *c
 ** @returns xcb_get_modifier_mapping_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_get_modifier_mapping_cookie_t
xcb_get_modifier_mapping (xcb_connection_t *c  /**< */);

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
 ** xcb_get_modifier_mapping_cookie_t xcb_get_modifier_mapping_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @returns xcb_get_modifier_mapping_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_get_modifier_mapping_cookie_t
xcb_get_modifier_mapping_unchecked (xcb_connection_t *c  /**< */);


/*****************************************************************************
 **
 ** xcb_keycode_t * xcb_get_modifier_mapping_keycodes
 ** 
 ** @param const xcb_get_modifier_mapping_reply_t *R
 ** @returns xcb_keycode_t *
 **
 *****************************************************************************/
 
xcb_keycode_t *
xcb_get_modifier_mapping_keycodes (const xcb_get_modifier_mapping_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_get_modifier_mapping_keycodes_length
 ** 
 ** @param const xcb_get_modifier_mapping_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_get_modifier_mapping_keycodes_length (const xcb_get_modifier_mapping_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_get_modifier_mapping_keycodes_end
 ** 
 ** @param const xcb_get_modifier_mapping_reply_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_get_modifier_mapping_keycodes_end (const xcb_get_modifier_mapping_reply_t *R  /**< */);

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 * 
 * The parameter @p e supplied to this function must be NULL if
 * xcb_get_modifier_mapping_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */

/*****************************************************************************
 **
 ** xcb_get_modifier_mapping_reply_t * xcb_get_modifier_mapping_reply
 ** 
 ** @param xcb_connection_t                   *c
 ** @param xcb_get_modifier_mapping_cookie_t   cookie
 ** @param xcb_generic_error_t               **e
 ** @returns xcb_get_modifier_mapping_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_get_modifier_mapping_reply_t *
xcb_get_modifier_mapping_reply (xcb_connection_t                   *c  /**< */,
                                xcb_get_modifier_mapping_cookie_t   cookie  /**< */,
                                xcb_generic_error_t               **e  /**< */);

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
 ** xcb_void_cookie_t xcb_no_operation_checked
 ** 
 ** @param xcb_connection_t *c
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_no_operation_checked (xcb_connection_t *c  /**< */);

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
 ** xcb_void_cookie_t xcb_no_operation
 ** 
 ** @param xcb_connection_t *c
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_no_operation (xcb_connection_t *c  /**< */);

/**
 * @}
 */
