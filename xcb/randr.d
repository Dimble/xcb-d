/*
 * This file generated automatically from randr.xml by d_client.py.
 * Edit at your peril.
 */

/**
 * @defgroup XCB_RandR_API XCB RandR API
 * @brief RandR XCB Protocol Implementation.
 * @{
 **/

module interim.xcb.randr;

import interim.xcb.xcb;
import interim.xcb.xproto;
import interim.xcb.render;

const int XCB_RANDR_MAJOR_VERSION = 1;
const int XCB_RANDR_MINOR_VERSION = 3;
  
extern(C) xcb_extension_t xcb_randr_id;

alias uint xcb_randr_mode_t;

/**
 * @brief xcb_randr_mode_iterator_t
 **/
struct xcb_randr_mode_iterator_t {
    xcb_randr_mode_t *data; /**<  */
    int               rem; /**<  */
    int               index; /**<  */
}

alias uint xcb_randr_crtc_t;

/**
 * @brief xcb_randr_crtc_iterator_t
 **/
struct xcb_randr_crtc_iterator_t {
    xcb_randr_crtc_t *data; /**<  */
    int               rem; /**<  */
    int               index; /**<  */
}

alias uint xcb_randr_output_t;

/**
 * @brief xcb_randr_output_iterator_t
 **/
struct xcb_randr_output_iterator_t {
    xcb_randr_output_t *data; /**<  */
    int                 rem; /**<  */
    int                 index; /**<  */
}

/** Opcode for xcb_randr_bad_output. */
const ubyte XCB_RANDR_BAD_OUTPUT = 0;

/**
 * @brief xcb_randr_bad_output_error_t
 **/
struct xcb_randr_bad_output_error_t {
    ubyte  response_type; /**<  */
    ubyte  error_code; /**<  */
    ushort sequence; /**<  */
}

/** Opcode for xcb_randr_bad_crtc. */
const ubyte XCB_RANDR_BAD_CRTC = 1;

/**
 * @brief xcb_randr_bad_crtc_error_t
 **/
struct xcb_randr_bad_crtc_error_t {
    ubyte  response_type; /**<  */
    ubyte  error_code; /**<  */
    ushort sequence; /**<  */
}

/** Opcode for xcb_randr_bad_mode. */
const ubyte XCB_RANDR_BAD_MODE = 2;

/**
 * @brief xcb_randr_bad_mode_error_t
 **/
struct xcb_randr_bad_mode_error_t {
    ubyte  response_type; /**<  */
    ubyte  error_code; /**<  */
    ushort sequence; /**<  */
}

enum XcbRandrRotation {
    ROTATE_0   = 1,
    ROTATE_90  = 2,
    ROTATE_180 = 4,
    ROTATE_270 = 8,
    REFLECT_X  = 16,
    REFLECT_Y  = 32
}
alias XcbRandrRotation xcb_randr_rotation_t;

/**
 * @brief xcb_randr_screen_size_t
 **/
struct xcb_randr_screen_size_t {
    ushort width; /**<  */
    ushort height; /**<  */
    ushort mwidth; /**<  */
    ushort mheight; /**<  */
}

/**
 * @brief xcb_randr_screen_size_iterator_t
 **/
struct xcb_randr_screen_size_iterator_t {
    xcb_randr_screen_size_t *data; /**<  */
    int                      rem; /**<  */
    int                      index; /**<  */
}

/**
 * @brief xcb_randr_refresh_rates_t
 **/
struct xcb_randr_refresh_rates_t {
    ushort nRates; /**<  */
}

/**
 * @brief xcb_randr_refresh_rates_iterator_t
 **/
struct xcb_randr_refresh_rates_iterator_t {
    xcb_randr_refresh_rates_t *data; /**<  */
    int                        rem; /**<  */
    int                        index; /**<  */
}

/**
 * @brief xcb_randr_query_version_cookie_t
 **/
struct xcb_randr_query_version_cookie_t {
    uint sequence; /**<  */
}

/** Opcode for xcb_randr_query_version. */
const ubyte XCB_RANDR_QUERY_VERSION = 0;

/**
 * @brief xcb_randr_query_version_request_t
 **/
struct xcb_randr_query_version_request_t {
    ubyte  major_opcode; /**<  */
    ubyte  minor_opcode; /**<  */
    ushort length; /**<  */
    uint   major_version; /**<  */
    uint   minor_version; /**<  */
}

/**
 * @brief xcb_randr_query_version_reply_t
 **/
struct xcb_randr_query_version_reply_t {
    ubyte  response_type; /**<  */
    ubyte  pad0; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    uint   major_version; /**<  */
    uint   minor_version; /**<  */
    ubyte  pad1[16]; /**<  */
}

enum XcbRandrSetConfig {
    SUCCESS             = 0,
    INVALID_CONFIG_TIME = 1,
    INVALID_TIME        = 2,
    FAILED              = 3
}
alias XcbRandrSetConfig xcb_randr_set_config_t;

/**
 * @brief xcb_randr_set_screen_config_cookie_t
 **/
struct xcb_randr_set_screen_config_cookie_t {
    uint sequence; /**<  */
}

/** Opcode for xcb_randr_set_screen_config. */
const ubyte XCB_RANDR_SET_SCREEN_CONFIG = 2;

/**
 * @brief xcb_randr_set_screen_config_request_t
 **/
struct xcb_randr_set_screen_config_request_t {
    ubyte           major_opcode; /**<  */
    ubyte           minor_opcode; /**<  */
    ushort          length; /**<  */
    xcb_window_t    window; /**<  */
    xcb_timestamp_t timestamp; /**<  */
    xcb_timestamp_t config_timestamp; /**<  */
    ushort          sizeID; /**<  */
    ushort          rotation; /**<  */
    ushort          rate; /**<  */
    ubyte           pad0[2]; /**<  */
}

/**
 * @brief xcb_randr_set_screen_config_reply_t
 **/
struct xcb_randr_set_screen_config_reply_t {
    ubyte           response_type; /**<  */
    ubyte           status; /**<  */
    ushort          sequence; /**<  */
    uint            length; /**<  */
    xcb_timestamp_t new_timestamp; /**<  */
    xcb_timestamp_t config_timestamp; /**<  */
    xcb_window_t    root; /**<  */
    ushort          subpixel_order; /**<  */
    ubyte           pad0[10]; /**<  */
}

enum XcbRandrNotifyMask {
    SCREEN_CHANGE   = 1,
    CRTC_CHANGE     = 2,
    OUTPUT_CHANGE   = 4,
    OUTPUT_PROPERTY = 8
}
alias XcbRandrNotifyMask xcb_randr_notify_mask_t;

/** Opcode for xcb_randr_select_input. */
const ubyte XCB_RANDR_SELECT_INPUT = 4;

/**
 * @brief xcb_randr_select_input_request_t
 **/
struct xcb_randr_select_input_request_t {
    ubyte        major_opcode; /**<  */
    ubyte        minor_opcode; /**<  */
    ushort       length; /**<  */
    xcb_window_t window; /**<  */
    ushort       enable; /**<  */
    ubyte        pad0[2]; /**<  */
}

/**
 * @brief xcb_randr_get_screen_info_cookie_t
 **/
struct xcb_randr_get_screen_info_cookie_t {
    uint sequence; /**<  */
}

/** Opcode for xcb_randr_get_screen_info. */
const ubyte XCB_RANDR_GET_SCREEN_INFO = 5;

/**
 * @brief xcb_randr_get_screen_info_request_t
 **/
struct xcb_randr_get_screen_info_request_t {
    ubyte        major_opcode; /**<  */
    ubyte        minor_opcode; /**<  */
    ushort       length; /**<  */
    xcb_window_t window; /**<  */
}

/**
 * @brief xcb_randr_get_screen_info_reply_t
 **/
struct xcb_randr_get_screen_info_reply_t {
    ubyte           response_type; /**<  */
    ubyte           rotations; /**<  */
    ushort          sequence; /**<  */
    uint            length; /**<  */
    xcb_window_t    root; /**<  */
    xcb_timestamp_t timestamp; /**<  */
    xcb_timestamp_t config_timestamp; /**<  */
    ushort          nSizes; /**<  */
    ushort          sizeID; /**<  */
    ushort          rotation; /**<  */
    ushort          rate; /**<  */
    ushort          nInfo; /**<  */
    ubyte           pad0[2]; /**<  */
}

/**
 * @brief xcb_randr_get_screen_size_range_cookie_t
 **/
struct xcb_randr_get_screen_size_range_cookie_t {
    uint sequence; /**<  */
}

/** Opcode for xcb_randr_get_screen_size_range. */
const ubyte XCB_RANDR_GET_SCREEN_SIZE_RANGE = 6;

/**
 * @brief xcb_randr_get_screen_size_range_request_t
 **/
struct xcb_randr_get_screen_size_range_request_t {
    ubyte        major_opcode; /**<  */
    ubyte        minor_opcode; /**<  */
    ushort       length; /**<  */
    xcb_window_t window; /**<  */
}

/**
 * @brief xcb_randr_get_screen_size_range_reply_t
 **/
struct xcb_randr_get_screen_size_range_reply_t {
    ubyte  response_type; /**<  */
    ubyte  pad0; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    ushort min_width; /**<  */
    ushort min_height; /**<  */
    ushort max_width; /**<  */
    ushort max_height; /**<  */
    ubyte  pad1[16]; /**<  */
}

/** Opcode for xcb_randr_set_screen_size. */
const ubyte XCB_RANDR_SET_SCREEN_SIZE = 7;

/**
 * @brief xcb_randr_set_screen_size_request_t
 **/
struct xcb_randr_set_screen_size_request_t {
    ubyte        major_opcode; /**<  */
    ubyte        minor_opcode; /**<  */
    ushort       length; /**<  */
    xcb_window_t window; /**<  */
    ushort       width; /**<  */
    ushort       height; /**<  */
    uint         mm_width; /**<  */
    uint         mm_height; /**<  */
}

enum XcbRandrModeFlag {
    HSYNC_POSITIVE  = 1,
    HSYNC_NEGATIVE  = 2,
    VSYNC_POSITIVE  = 4,
    VSYNC_NEGATIVE  = 8,
    INTERLACE       = 16,
    DOUBLE_SCAN     = 32,
    CSYNC           = 64,
    CSYNC_POSITIVE  = 128,
    CSYNC_NEGATIVE  = 256,
    HSKEW_PRESENT   = 512,
    BCAST           = 1024,
    PIXEL_MULTIPLEX = 2048,
    DOUBLE_CLOCK    = 4096,
    HALVE_CLOCK     = 8192
}
alias XcbRandrModeFlag xcb_randr_mode_flag_t;

/**
 * @brief xcb_randr_mode_info_t
 **/
struct xcb_randr_mode_info_t {
    uint   id; /**<  */
    ushort width; /**<  */
    ushort height; /**<  */
    uint   dot_clock; /**<  */
    ushort hsync_start; /**<  */
    ushort hsync_end; /**<  */
    ushort htotal; /**<  */
    ushort hskew; /**<  */
    ushort vsync_start; /**<  */
    ushort vsync_end; /**<  */
    ushort vtotal; /**<  */
    ushort name_len; /**<  */
    uint   mode_flags; /**<  */
}

/**
 * @brief xcb_randr_mode_info_iterator_t
 **/
struct xcb_randr_mode_info_iterator_t {
    xcb_randr_mode_info_t *data; /**<  */
    int                    rem; /**<  */
    int                    index; /**<  */
}

/**
 * @brief xcb_randr_get_screen_resources_cookie_t
 **/
struct xcb_randr_get_screen_resources_cookie_t {
    uint sequence; /**<  */
}

/** Opcode for xcb_randr_get_screen_resources. */
const ubyte XCB_RANDR_GET_SCREEN_RESOURCES = 8;

/**
 * @brief xcb_randr_get_screen_resources_request_t
 **/
struct xcb_randr_get_screen_resources_request_t {
    ubyte        major_opcode; /**<  */
    ubyte        minor_opcode; /**<  */
    ushort       length; /**<  */
    xcb_window_t window; /**<  */
}

/**
 * @brief xcb_randr_get_screen_resources_reply_t
 **/
struct xcb_randr_get_screen_resources_reply_t {
    ubyte           response_type; /**<  */
    ubyte           pad0; /**<  */
    ushort          sequence; /**<  */
    uint            length; /**<  */
    xcb_timestamp_t timestamp; /**<  */
    xcb_timestamp_t config_timestamp; /**<  */
    ushort          num_crtcs; /**<  */
    ushort          num_outputs; /**<  */
    ushort          num_modes; /**<  */
    ushort          names_len; /**<  */
    ubyte           pad1[8]; /**<  */
}

enum XcbRandrConnection {
    CONNECTED,
    DISCONNECTED,
    UNKNOWN
}
alias XcbRandrConnection xcb_randr_connection_t;

/**
 * @brief xcb_randr_get_output_info_cookie_t
 **/
struct xcb_randr_get_output_info_cookie_t {
    uint sequence; /**<  */
}

/** Opcode for xcb_randr_get_output_info. */
const ubyte XCB_RANDR_GET_OUTPUT_INFO = 9;

/**
 * @brief xcb_randr_get_output_info_request_t
 **/
struct xcb_randr_get_output_info_request_t {
    ubyte              major_opcode; /**<  */
    ubyte              minor_opcode; /**<  */
    ushort             length; /**<  */
    xcb_randr_output_t output; /**<  */
    xcb_timestamp_t    config_timestamp; /**<  */
}

/**
 * @brief xcb_randr_get_output_info_reply_t
 **/
struct xcb_randr_get_output_info_reply_t {
    ubyte            response_type; /**<  */
    ubyte            status; /**<  */
    ushort           sequence; /**<  */
    uint             length; /**<  */
    xcb_timestamp_t  timestamp; /**<  */
    xcb_randr_crtc_t crtc; /**<  */
    uint             mm_width; /**<  */
    uint             mm_height; /**<  */
    ubyte            connection; /**<  */
    ubyte            subpixel_order; /**<  */
    ushort           num_crtcs; /**<  */
    ushort           num_modes; /**<  */
    ushort           num_preferred; /**<  */
    ushort           num_clones; /**<  */
    ushort           name_len; /**<  */
}

/**
 * @brief xcb_randr_list_output_properties_cookie_t
 **/
struct xcb_randr_list_output_properties_cookie_t {
    uint sequence; /**<  */
}

/** Opcode for xcb_randr_list_output_properties. */
const ubyte XCB_RANDR_LIST_OUTPUT_PROPERTIES = 10;

/**
 * @brief xcb_randr_list_output_properties_request_t
 **/
struct xcb_randr_list_output_properties_request_t {
    ubyte              major_opcode; /**<  */
    ubyte              minor_opcode; /**<  */
    ushort             length; /**<  */
    xcb_randr_output_t output; /**<  */
}

/**
 * @brief xcb_randr_list_output_properties_reply_t
 **/
struct xcb_randr_list_output_properties_reply_t {
    ubyte  response_type; /**<  */
    ubyte  pad0; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    ushort num_atoms; /**<  */
    ubyte  pad1[22]; /**<  */
}

/**
 * @brief xcb_randr_query_output_property_cookie_t
 **/
struct xcb_randr_query_output_property_cookie_t {
    uint sequence; /**<  */
}

/** Opcode for xcb_randr_query_output_property. */
const ubyte XCB_RANDR_QUERY_OUTPUT_PROPERTY = 11;

/**
 * @brief xcb_randr_query_output_property_request_t
 **/
struct xcb_randr_query_output_property_request_t {
    ubyte              major_opcode; /**<  */
    ubyte              minor_opcode; /**<  */
    ushort             length; /**<  */
    xcb_randr_output_t output; /**<  */
    xcb_atom_t         property; /**<  */
}

/**
 * @brief xcb_randr_query_output_property_reply_t
 **/
struct xcb_randr_query_output_property_reply_t {
    ubyte  response_type; /**<  */
    ubyte  pad0; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    ubyte  pending; /**<  */
    ubyte  range; /**<  */
    ubyte  immutable; /**<  */
    ubyte  pad1[21]; /**<  */
}

/** Opcode for xcb_randr_configure_output_property. */
const ubyte XCB_RANDR_CONFIGURE_OUTPUT_PROPERTY = 12;

/**
 * @brief xcb_randr_configure_output_property_request_t
 **/
struct xcb_randr_configure_output_property_request_t {
    ubyte              major_opcode; /**<  */
    ubyte              minor_opcode; /**<  */
    ushort             length; /**<  */
    xcb_randr_output_t output; /**<  */
    xcb_atom_t         property; /**<  */
    ubyte              pending; /**<  */
    ubyte              range; /**<  */
    ubyte              pad0[2]; /**<  */
}

/** Opcode for xcb_randr_change_output_property. */
const ubyte XCB_RANDR_CHANGE_OUTPUT_PROPERTY = 13;

/**
 * @brief xcb_randr_change_output_property_request_t
 **/
struct xcb_randr_change_output_property_request_t {
    ubyte              major_opcode; /**<  */
    ubyte              minor_opcode; /**<  */
    ushort             length; /**<  */
    xcb_randr_output_t output; /**<  */
    xcb_atom_t         property; /**<  */
    xcb_atom_t         type; /**<  */
    ubyte              format; /**<  */
    ubyte              mode; /**<  */
    ubyte              pad0[2]; /**<  */
    uint               num_units; /**<  */
}

/** Opcode for xcb_randr_delete_output_property. */
const ubyte XCB_RANDR_DELETE_OUTPUT_PROPERTY = 14;

/**
 * @brief xcb_randr_delete_output_property_request_t
 **/
struct xcb_randr_delete_output_property_request_t {
    ubyte              major_opcode; /**<  */
    ubyte              minor_opcode; /**<  */
    ushort             length; /**<  */
    xcb_randr_output_t output; /**<  */
    xcb_atom_t         property; /**<  */
}

/**
 * @brief xcb_randr_get_output_property_cookie_t
 **/
struct xcb_randr_get_output_property_cookie_t {
    uint sequence; /**<  */
}

/** Opcode for xcb_randr_get_output_property. */
const ubyte XCB_RANDR_GET_OUTPUT_PROPERTY = 15;

/**
 * @brief xcb_randr_get_output_property_request_t
 **/
struct xcb_randr_get_output_property_request_t {
    ubyte              major_opcode; /**<  */
    ubyte              minor_opcode; /**<  */
    ushort             length; /**<  */
    xcb_randr_output_t output; /**<  */
    xcb_atom_t         property; /**<  */
    xcb_atom_t         type; /**<  */
    uint               long_offset; /**<  */
    uint               long_length; /**<  */
    ubyte              _delete; /**<  */
    ubyte              pending; /**<  */
    ubyte              pad0[2]; /**<  */
}

/**
 * @brief xcb_randr_get_output_property_reply_t
 **/
struct xcb_randr_get_output_property_reply_t {
    ubyte      response_type; /**<  */
    ubyte      format; /**<  */
    ushort     sequence; /**<  */
    uint       length; /**<  */
    xcb_atom_t type; /**<  */
    uint       bytes_after; /**<  */
    uint       num_items; /**<  */
    ubyte      pad0[12]; /**<  */
}

/**
 * @brief xcb_randr_create_mode_cookie_t
 **/
struct xcb_randr_create_mode_cookie_t {
    uint sequence; /**<  */
}

/** Opcode for xcb_randr_create_mode. */
const ubyte XCB_RANDR_CREATE_MODE = 16;

/**
 * @brief xcb_randr_create_mode_request_t
 **/
struct xcb_randr_create_mode_request_t {
    ubyte                 major_opcode; /**<  */
    ubyte                 minor_opcode; /**<  */
    ushort                length; /**<  */
    xcb_window_t          window; /**<  */
    xcb_randr_mode_info_t mode_info; /**<  */
}

/**
 * @brief xcb_randr_create_mode_reply_t
 **/
struct xcb_randr_create_mode_reply_t {
    ubyte            response_type; /**<  */
    ubyte            pad0; /**<  */
    ushort           sequence; /**<  */
    uint             length; /**<  */
    xcb_randr_mode_t mode; /**<  */
    ubyte            pad1[20]; /**<  */
}

/** Opcode for xcb_randr_destroy_mode. */
const ubyte XCB_RANDR_DESTROY_MODE = 17;

/**
 * @brief xcb_randr_destroy_mode_request_t
 **/
struct xcb_randr_destroy_mode_request_t {
    ubyte            major_opcode; /**<  */
    ubyte            minor_opcode; /**<  */
    ushort           length; /**<  */
    xcb_randr_mode_t mode; /**<  */
}

/** Opcode for xcb_randr_add_output_mode. */
const ubyte XCB_RANDR_ADD_OUTPUT_MODE = 18;

/**
 * @brief xcb_randr_add_output_mode_request_t
 **/
struct xcb_randr_add_output_mode_request_t {
    ubyte              major_opcode; /**<  */
    ubyte              minor_opcode; /**<  */
    ushort             length; /**<  */
    xcb_randr_output_t output; /**<  */
    xcb_randr_mode_t   mode; /**<  */
}

/** Opcode for xcb_randr_delete_output_mode. */
const ubyte XCB_RANDR_DELETE_OUTPUT_MODE = 19;

/**
 * @brief xcb_randr_delete_output_mode_request_t
 **/
struct xcb_randr_delete_output_mode_request_t {
    ubyte              major_opcode; /**<  */
    ubyte              minor_opcode; /**<  */
    ushort             length; /**<  */
    xcb_randr_output_t output; /**<  */
    xcb_randr_mode_t   mode; /**<  */
}

/**
 * @brief xcb_randr_get_crtc_info_cookie_t
 **/
struct xcb_randr_get_crtc_info_cookie_t {
    uint sequence; /**<  */
}

/** Opcode for xcb_randr_get_crtc_info. */
const ubyte XCB_RANDR_GET_CRTC_INFO = 20;

/**
 * @brief xcb_randr_get_crtc_info_request_t
 **/
struct xcb_randr_get_crtc_info_request_t {
    ubyte            major_opcode; /**<  */
    ubyte            minor_opcode; /**<  */
    ushort           length; /**<  */
    xcb_randr_crtc_t crtc; /**<  */
    xcb_timestamp_t  config_timestamp; /**<  */
}

/**
 * @brief xcb_randr_get_crtc_info_reply_t
 **/
struct xcb_randr_get_crtc_info_reply_t {
    ubyte            response_type; /**<  */
    ubyte            status; /**<  */
    ushort           sequence; /**<  */
    uint             length; /**<  */
    xcb_timestamp_t  timestamp; /**<  */
    short            x; /**<  */
    short            y; /**<  */
    ushort           width; /**<  */
    ushort           height; /**<  */
    xcb_randr_mode_t mode; /**<  */
    ushort           rotation; /**<  */
    ushort           rotations; /**<  */
    ushort           num_outputs; /**<  */
    ushort           num_possible_outputs; /**<  */
}

/**
 * @brief xcb_randr_set_crtc_config_cookie_t
 **/
struct xcb_randr_set_crtc_config_cookie_t {
    uint sequence; /**<  */
}

/** Opcode for xcb_randr_set_crtc_config. */
const ubyte XCB_RANDR_SET_CRTC_CONFIG = 21;

/**
 * @brief xcb_randr_set_crtc_config_request_t
 **/
struct xcb_randr_set_crtc_config_request_t {
    ubyte            major_opcode; /**<  */
    ubyte            minor_opcode; /**<  */
    ushort           length; /**<  */
    xcb_randr_crtc_t crtc; /**<  */
    xcb_timestamp_t  timestamp; /**<  */
    xcb_timestamp_t  config_timestamp; /**<  */
    short            x; /**<  */
    short            y; /**<  */
    xcb_randr_mode_t mode; /**<  */
    ushort           rotation; /**<  */
    ubyte            pad0[2]; /**<  */
}

/**
 * @brief xcb_randr_set_crtc_config_reply_t
 **/
struct xcb_randr_set_crtc_config_reply_t {
    ubyte           response_type; /**<  */
    ubyte           status; /**<  */
    ushort          sequence; /**<  */
    uint            length; /**<  */
    xcb_timestamp_t timestamp; /**<  */
    ubyte           pad0[20]; /**<  */
}

/**
 * @brief xcb_randr_get_crtc_gamma_size_cookie_t
 **/
struct xcb_randr_get_crtc_gamma_size_cookie_t {
    uint sequence; /**<  */
}

/** Opcode for xcb_randr_get_crtc_gamma_size. */
const ubyte XCB_RANDR_GET_CRTC_GAMMA_SIZE = 22;

/**
 * @brief xcb_randr_get_crtc_gamma_size_request_t
 **/
struct xcb_randr_get_crtc_gamma_size_request_t {
    ubyte            major_opcode; /**<  */
    ubyte            minor_opcode; /**<  */
    ushort           length; /**<  */
    xcb_randr_crtc_t crtc; /**<  */
}

/**
 * @brief xcb_randr_get_crtc_gamma_size_reply_t
 **/
struct xcb_randr_get_crtc_gamma_size_reply_t {
    ubyte  response_type; /**<  */
    ubyte  pad0; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    ushort size; /**<  */
    ubyte  pad1[22]; /**<  */
}

/**
 * @brief xcb_randr_get_crtc_gamma_cookie_t
 **/
struct xcb_randr_get_crtc_gamma_cookie_t {
    uint sequence; /**<  */
}

/** Opcode for xcb_randr_get_crtc_gamma. */
const ubyte XCB_RANDR_GET_CRTC_GAMMA = 23;

/**
 * @brief xcb_randr_get_crtc_gamma_request_t
 **/
struct xcb_randr_get_crtc_gamma_request_t {
    ubyte            major_opcode; /**<  */
    ubyte            minor_opcode; /**<  */
    ushort           length; /**<  */
    xcb_randr_crtc_t crtc; /**<  */
}

/**
 * @brief xcb_randr_get_crtc_gamma_reply_t
 **/
struct xcb_randr_get_crtc_gamma_reply_t {
    ubyte  response_type; /**<  */
    ubyte  pad0; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    ushort size; /**<  */
    ubyte  pad1[22]; /**<  */
}

/** Opcode for xcb_randr_set_crtc_gamma. */
const ubyte XCB_RANDR_SET_CRTC_GAMMA = 24;

/**
 * @brief xcb_randr_set_crtc_gamma_request_t
 **/
struct xcb_randr_set_crtc_gamma_request_t {
    ubyte            major_opcode; /**<  */
    ubyte            minor_opcode; /**<  */
    ushort           length; /**<  */
    xcb_randr_crtc_t crtc; /**<  */
    ushort           size; /**<  */
    ubyte            pad0[2]; /**<  */
}

/**
 * @brief xcb_randr_get_screen_resources_current_cookie_t
 **/
struct xcb_randr_get_screen_resources_current_cookie_t {
    uint sequence; /**<  */
}

/** Opcode for xcb_randr_get_screen_resources_current. */
const ubyte XCB_RANDR_GET_SCREEN_RESOURCES_CURRENT = 25;

/**
 * @brief xcb_randr_get_screen_resources_current_request_t
 **/
struct xcb_randr_get_screen_resources_current_request_t {
    ubyte        major_opcode; /**<  */
    ubyte        minor_opcode; /**<  */
    ushort       length; /**<  */
    xcb_window_t window; /**<  */
}

/**
 * @brief xcb_randr_get_screen_resources_current_reply_t
 **/
struct xcb_randr_get_screen_resources_current_reply_t {
    ubyte           response_type; /**<  */
    ubyte           pad0; /**<  */
    ushort          sequence; /**<  */
    uint            length; /**<  */
    xcb_timestamp_t timestamp; /**<  */
    xcb_timestamp_t config_timestamp; /**<  */
    ushort          num_crtcs; /**<  */
    ushort          num_outputs; /**<  */
    ushort          num_modes; /**<  */
    ushort          names_len; /**<  */
    ubyte           pad1[8]; /**<  */
}

/** Opcode for xcb_randr_set_crtc_transform. */
const ubyte XCB_RANDR_SET_CRTC_TRANSFORM = 26;

/**
 * @brief xcb_randr_set_crtc_transform_request_t
 **/
struct xcb_randr_set_crtc_transform_request_t {
    ubyte                  major_opcode; /**<  */
    ubyte                  minor_opcode; /**<  */
    ushort                 length; /**<  */
    xcb_randr_crtc_t       crtc; /**<  */
    xcb_render_transform_t transform; /**<  */
    ushort                 filter_len; /**<  */
    ubyte                  pad0[2]; /**<  */
}

/**
 * @brief xcb_randr_get_crtc_transform_cookie_t
 **/
struct xcb_randr_get_crtc_transform_cookie_t {
    uint sequence; /**<  */
}

/** Opcode for xcb_randr_get_crtc_transform. */
const ubyte XCB_RANDR_GET_CRTC_TRANSFORM = 27;

/**
 * @brief xcb_randr_get_crtc_transform_request_t
 **/
struct xcb_randr_get_crtc_transform_request_t {
    ubyte            major_opcode; /**<  */
    ubyte            minor_opcode; /**<  */
    ushort           length; /**<  */
    xcb_randr_crtc_t crtc; /**<  */
}

/**
 * @brief xcb_randr_get_crtc_transform_reply_t
 **/
struct xcb_randr_get_crtc_transform_reply_t {
    ubyte                  response_type; /**<  */
    ubyte                  pad0; /**<  */
    ushort                 sequence; /**<  */
    uint                   length; /**<  */
    xcb_render_transform_t pending_transform; /**<  */
    ubyte                  has_transforms; /**<  */
    ubyte                  pad1[3]; /**<  */
    xcb_render_transform_t current_transform; /**<  */
    ubyte                  pad2[4]; /**<  */
    ushort                 pending_len; /**<  */
    ushort                 pending_nparams; /**<  */
    ushort                 current_len; /**<  */
    ushort                 current_nparams; /**<  */
}

/**
 * @brief xcb_randr_get_panning_cookie_t
 **/
struct xcb_randr_get_panning_cookie_t {
    uint sequence; /**<  */
}

/** Opcode for xcb_randr_get_panning. */
const ubyte XCB_RANDR_GET_PANNING = 28;

/**
 * @brief xcb_randr_get_panning_request_t
 **/
struct xcb_randr_get_panning_request_t {
    ubyte            major_opcode; /**<  */
    ubyte            minor_opcode; /**<  */
    ushort           length; /**<  */
    xcb_randr_crtc_t crtc; /**<  */
}

/**
 * @brief xcb_randr_get_panning_reply_t
 **/
struct xcb_randr_get_panning_reply_t {
    ubyte           response_type; /**<  */
    ubyte           status; /**<  */
    ushort          sequence; /**<  */
    uint            length; /**<  */
    xcb_timestamp_t timestamp; /**<  */
    ushort          left; /**<  */
    ushort          top; /**<  */
    ushort          width; /**<  */
    ushort          height; /**<  */
    ushort          track_left; /**<  */
    ushort          track_top; /**<  */
    ushort          track_width; /**<  */
    ushort          track_height; /**<  */
    short           border_left; /**<  */
    short           border_top; /**<  */
    short           border_right; /**<  */
    short           border_bottom; /**<  */
}

/**
 * @brief xcb_randr_set_panning_cookie_t
 **/
struct xcb_randr_set_panning_cookie_t {
    uint sequence; /**<  */
}

/** Opcode for xcb_randr_set_panning. */
const ubyte XCB_RANDR_SET_PANNING = 29;

/**
 * @brief xcb_randr_set_panning_request_t
 **/
struct xcb_randr_set_panning_request_t {
    ubyte            major_opcode; /**<  */
    ubyte            minor_opcode; /**<  */
    ushort           length; /**<  */
    xcb_randr_crtc_t crtc; /**<  */
    xcb_timestamp_t  timestamp; /**<  */
    ushort           left; /**<  */
    ushort           top; /**<  */
    ushort           width; /**<  */
    ushort           height; /**<  */
    ushort           track_left; /**<  */
    ushort           track_top; /**<  */
    ushort           track_width; /**<  */
    ushort           track_height; /**<  */
    short            border_left; /**<  */
    short            border_top; /**<  */
    short            border_right; /**<  */
    short            border_bottom; /**<  */
}

/**
 * @brief xcb_randr_set_panning_reply_t
 **/
struct xcb_randr_set_panning_reply_t {
    ubyte           response_type; /**<  */
    ubyte           status; /**<  */
    ushort          sequence; /**<  */
    uint            length; /**<  */
    xcb_timestamp_t timestamp; /**<  */
}

/** Opcode for xcb_randr_set_output_primary. */
const ubyte XCB_RANDR_SET_OUTPUT_PRIMARY = 30;

/**
 * @brief xcb_randr_set_output_primary_request_t
 **/
struct xcb_randr_set_output_primary_request_t {
    ubyte              major_opcode; /**<  */
    ubyte              minor_opcode; /**<  */
    ushort             length; /**<  */
    xcb_window_t       window; /**<  */
    xcb_randr_output_t output; /**<  */
}

/**
 * @brief xcb_randr_get_output_primary_cookie_t
 **/
struct xcb_randr_get_output_primary_cookie_t {
    uint sequence; /**<  */
}

/** Opcode for xcb_randr_get_output_primary. */
const ubyte XCB_RANDR_GET_OUTPUT_PRIMARY = 31;

/**
 * @brief xcb_randr_get_output_primary_request_t
 **/
struct xcb_randr_get_output_primary_request_t {
    ubyte        major_opcode; /**<  */
    ubyte        minor_opcode; /**<  */
    ushort       length; /**<  */
    xcb_window_t window; /**<  */
}

/**
 * @brief xcb_randr_get_output_primary_reply_t
 **/
struct xcb_randr_get_output_primary_reply_t {
    ubyte              response_type; /**<  */
    ubyte              pad0; /**<  */
    ushort             sequence; /**<  */
    uint               length; /**<  */
    xcb_randr_output_t output; /**<  */
}

/** Opcode for xcb_randr_screen_change_notify. */
const ubyte XCB_RANDR_SCREEN_CHANGE_NOTIFY = 0;

/**
 * @brief xcb_randr_screen_change_notify_event_t
 **/
struct xcb_randr_screen_change_notify_event_t {
    ubyte           response_type; /**<  */
    ubyte           rotation; /**<  */
    ushort          sequence; /**<  */
    xcb_timestamp_t timestamp; /**<  */
    xcb_timestamp_t config_timestamp; /**<  */
    xcb_window_t    root; /**<  */
    xcb_window_t    request_window; /**<  */
    ushort          sizeID; /**<  */
    ushort          subpixel_order; /**<  */
    ushort          width; /**<  */
    ushort          height; /**<  */
    ushort          mwidth; /**<  */
    ushort          mheight; /**<  */
}

enum XcbRandrNotify {
    CRTC_CHANGE     = 0,
    OUTPUT_CHANGE   = 1,
    OUTPUT_PROPERTY = 2
}
alias XcbRandrNotify xcb_randr_notify_t;

/**
 * @brief xcb_randr_crtc_change_t
 **/
struct xcb_randr_crtc_change_t {
    xcb_timestamp_t  timestamp; /**<  */
    xcb_window_t     window; /**<  */
    xcb_randr_crtc_t crtc; /**<  */
    xcb_randr_mode_t mode; /**<  */
    ushort           rotation; /**<  */
    ubyte            pad0[2]; /**<  */
    short            x; /**<  */
    short            y; /**<  */
    ushort           width; /**<  */
    ushort           height; /**<  */
}

/**
 * @brief xcb_randr_crtc_change_iterator_t
 **/
struct xcb_randr_crtc_change_iterator_t {
    xcb_randr_crtc_change_t *data; /**<  */
    int                      rem; /**<  */
    int                      index; /**<  */
}

/**
 * @brief xcb_randr_output_change_t
 **/
struct xcb_randr_output_change_t {
    xcb_timestamp_t    timestamp; /**<  */
    xcb_timestamp_t    config_timestamp; /**<  */
    xcb_window_t       window; /**<  */
    xcb_randr_output_t output; /**<  */
    xcb_randr_crtc_t   crtc; /**<  */
    xcb_randr_mode_t   mode; /**<  */
    ushort             rotation; /**<  */
    ubyte              connection; /**<  */
    ubyte              subpixel_order; /**<  */
}

/**
 * @brief xcb_randr_output_change_iterator_t
 **/
struct xcb_randr_output_change_iterator_t {
    xcb_randr_output_change_t *data; /**<  */
    int                        rem; /**<  */
    int                        index; /**<  */
}

/**
 * @brief xcb_randr_output_property_t
 **/
struct xcb_randr_output_property_t {
    xcb_window_t       window; /**<  */
    xcb_randr_output_t output; /**<  */
    xcb_atom_t         atom; /**<  */
    xcb_timestamp_t    timestamp; /**<  */
    ubyte              status; /**<  */
    ubyte              pad0[11]; /**<  */
}

/**
 * @brief xcb_randr_output_property_iterator_t
 **/
struct xcb_randr_output_property_iterator_t {
    xcb_randr_output_property_t *data; /**<  */
    int                          rem; /**<  */
    int                          index; /**<  */
}

/**
 * @brief xcb_randr_notify_data_t
 **/
union xcb_randr_notify_data_t {
    xcb_randr_crtc_change_t     cc; /**<  */
    xcb_randr_output_change_t   oc; /**<  */
    xcb_randr_output_property_t op; /**<  */
}

/**
 * @brief xcb_randr_notify_data_iterator_t
 **/
struct xcb_randr_notify_data_iterator_t {
    xcb_randr_notify_data_t *data; /**<  */
    int                      rem; /**<  */
    int                      index; /**<  */
}

/** Opcode for xcb_randr_notify. */
const ubyte XCB_RANDR_NOTIFY = 1;

/**
 * @brief xcb_randr_notify_event_t
 **/
struct xcb_randr_notify_event_t {
    ubyte                   response_type; /**<  */
    ubyte                   subCode; /**<  */
    ushort                  sequence; /**<  */
    xcb_randr_notify_data_t u; /**<  */
}

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_randr_mode_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_randr_mode_t)
 */

/*****************************************************************************
 **
 ** void xcb_randr_mode_next
 ** 
 ** @param xcb_randr_mode_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_randr_mode_next (xcb_randr_mode_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_randr_mode_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_randr_mode_end
 ** 
 ** @param xcb_randr_mode_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
xcb_generic_iterator_t
xcb_randr_mode_end (xcb_randr_mode_iterator_t i  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_randr_crtc_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_randr_crtc_t)
 */

/*****************************************************************************
 **
 ** void xcb_randr_crtc_next
 ** 
 ** @param xcb_randr_crtc_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_randr_crtc_next (xcb_randr_crtc_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_randr_crtc_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_randr_crtc_end
 ** 
 ** @param xcb_randr_crtc_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
xcb_generic_iterator_t
xcb_randr_crtc_end (xcb_randr_crtc_iterator_t i  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_randr_output_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_randr_output_t)
 */

/*****************************************************************************
 **
 ** void xcb_randr_output_next
 ** 
 ** @param xcb_randr_output_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_randr_output_next (xcb_randr_output_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_randr_output_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_randr_output_end
 ** 
 ** @param xcb_randr_output_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
xcb_generic_iterator_t
xcb_randr_output_end (xcb_randr_output_iterator_t i  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_randr_screen_size_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_randr_screen_size_t)
 */

/*****************************************************************************
 **
 ** void xcb_randr_screen_size_next
 ** 
 ** @param xcb_randr_screen_size_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_randr_screen_size_next (xcb_randr_screen_size_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_randr_screen_size_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_randr_screen_size_end
 ** 
 ** @param xcb_randr_screen_size_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
xcb_generic_iterator_t
xcb_randr_screen_size_end (xcb_randr_screen_size_iterator_t i  /**< */);

extern(C) int
xcb_randr_refresh_rates_sizeof (const void  *_buffer  /**< */);


/*****************************************************************************
 **
 ** ushort * xcb_randr_refresh_rates_rates
 ** 
 ** @param const xcb_randr_refresh_rates_t *R
 ** @returns ushort *
 **
 *****************************************************************************/
 
ushort *
xcb_randr_refresh_rates_rates (const xcb_randr_refresh_rates_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_randr_refresh_rates_rates_length
 ** 
 ** @param const xcb_randr_refresh_rates_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_randr_refresh_rates_rates_length (const xcb_randr_refresh_rates_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_randr_refresh_rates_rates_end
 ** 
 ** @param const xcb_randr_refresh_rates_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_randr_refresh_rates_rates_end (const xcb_randr_refresh_rates_t *R  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_randr_refresh_rates_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_randr_refresh_rates_t)
 */

/*****************************************************************************
 **
 ** void xcb_randr_refresh_rates_next
 ** 
 ** @param xcb_randr_refresh_rates_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_randr_refresh_rates_next (xcb_randr_refresh_rates_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_randr_refresh_rates_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_randr_refresh_rates_end
 ** 
 ** @param xcb_randr_refresh_rates_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
xcb_generic_iterator_t
xcb_randr_refresh_rates_end (xcb_randr_refresh_rates_iterator_t i  /**< */);

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
 ** xcb_randr_query_version_cookie_t xcb_randr_query_version
 ** 
 ** @param xcb_connection_t *c
 ** @param uint              major_version
 ** @param uint              minor_version
 ** @returns xcb_randr_query_version_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_randr_query_version_cookie_t
xcb_randr_query_version (xcb_connection_t *c  /**< */,
                         uint              major_version  /**< */,
                         uint              minor_version  /**< */);

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
 ** xcb_randr_query_version_cookie_t xcb_randr_query_version_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @param uint              major_version
 ** @param uint              minor_version
 ** @returns xcb_randr_query_version_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_randr_query_version_cookie_t
xcb_randr_query_version_unchecked (xcb_connection_t *c  /**< */,
                                   uint              major_version  /**< */,
                                   uint              minor_version  /**< */);

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 * 
 * The parameter @p e supplied to this function must be NULL if
 * xcb_randr_query_version_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */

/*****************************************************************************
 **
 ** xcb_randr_query_version_reply_t * xcb_randr_query_version_reply
 ** 
 ** @param xcb_connection_t                  *c
 ** @param xcb_randr_query_version_cookie_t   cookie
 ** @param xcb_generic_error_t              **e
 ** @returns xcb_randr_query_version_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_randr_query_version_reply_t *
xcb_randr_query_version_reply (xcb_connection_t                  *c  /**< */,
                               xcb_randr_query_version_cookie_t   cookie  /**< */,
                               xcb_generic_error_t              **e  /**< */);

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
 ** xcb_randr_set_screen_config_cookie_t xcb_randr_set_screen_config
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_window_t      window
 ** @param xcb_timestamp_t   timestamp
 ** @param xcb_timestamp_t   config_timestamp
 ** @param ushort            sizeID
 ** @param ushort            rotation
 ** @param ushort            rate
 ** @returns xcb_randr_set_screen_config_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_randr_set_screen_config_cookie_t
xcb_randr_set_screen_config (xcb_connection_t *c  /**< */,
                             xcb_window_t      window  /**< */,
                             xcb_timestamp_t   timestamp  /**< */,
                             xcb_timestamp_t   config_timestamp  /**< */,
                             ushort            sizeID  /**< */,
                             ushort            rotation  /**< */,
                             ushort            rate  /**< */);

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
 ** xcb_randr_set_screen_config_cookie_t xcb_randr_set_screen_config_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_window_t      window
 ** @param xcb_timestamp_t   timestamp
 ** @param xcb_timestamp_t   config_timestamp
 ** @param ushort            sizeID
 ** @param ushort            rotation
 ** @param ushort            rate
 ** @returns xcb_randr_set_screen_config_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_randr_set_screen_config_cookie_t
xcb_randr_set_screen_config_unchecked (xcb_connection_t *c  /**< */,
                                       xcb_window_t      window  /**< */,
                                       xcb_timestamp_t   timestamp  /**< */,
                                       xcb_timestamp_t   config_timestamp  /**< */,
                                       ushort            sizeID  /**< */,
                                       ushort            rotation  /**< */,
                                       ushort            rate  /**< */);

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 * 
 * The parameter @p e supplied to this function must be NULL if
 * xcb_randr_set_screen_config_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */

/*****************************************************************************
 **
 ** xcb_randr_set_screen_config_reply_t * xcb_randr_set_screen_config_reply
 ** 
 ** @param xcb_connection_t                      *c
 ** @param xcb_randr_set_screen_config_cookie_t   cookie
 ** @param xcb_generic_error_t                  **e
 ** @returns xcb_randr_set_screen_config_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_randr_set_screen_config_reply_t *
xcb_randr_set_screen_config_reply (xcb_connection_t                      *c  /**< */,
                                   xcb_randr_set_screen_config_cookie_t   cookie  /**< */,
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
 ** xcb_void_cookie_t xcb_randr_select_input_checked
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_window_t      window
 ** @param ushort            enable
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_randr_select_input_checked (xcb_connection_t *c  /**< */,
                                xcb_window_t      window  /**< */,
                                ushort            enable  /**< */);

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
 ** xcb_void_cookie_t xcb_randr_select_input
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_window_t      window
 ** @param ushort            enable
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_randr_select_input (xcb_connection_t *c  /**< */,
                        xcb_window_t      window  /**< */,
                        ushort            enable  /**< */);

extern(C) int
xcb_randr_get_screen_info_sizeof (const void  *_buffer  /**< */);

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
 ** xcb_randr_get_screen_info_cookie_t xcb_randr_get_screen_info
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_window_t      window
 ** @returns xcb_randr_get_screen_info_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_randr_get_screen_info_cookie_t
xcb_randr_get_screen_info (xcb_connection_t *c  /**< */,
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
 ** xcb_randr_get_screen_info_cookie_t xcb_randr_get_screen_info_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_window_t      window
 ** @returns xcb_randr_get_screen_info_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_randr_get_screen_info_cookie_t
xcb_randr_get_screen_info_unchecked (xcb_connection_t *c  /**< */,
                                     xcb_window_t      window  /**< */);


/*****************************************************************************
 **
 ** xcb_randr_screen_size_t * xcb_randr_get_screen_info_sizes
 ** 
 ** @param const xcb_randr_get_screen_info_reply_t *R
 ** @returns xcb_randr_screen_size_t *
 **
 *****************************************************************************/
 
xcb_randr_screen_size_t *
xcb_randr_get_screen_info_sizes (const xcb_randr_get_screen_info_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_randr_get_screen_info_sizes_length
 ** 
 ** @param const xcb_randr_get_screen_info_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_randr_get_screen_info_sizes_length (const xcb_randr_get_screen_info_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_randr_screen_size_iterator_t xcb_randr_get_screen_info_sizes_iterator
 ** 
 ** @param const xcb_randr_get_screen_info_reply_t *R
 ** @returns xcb_randr_screen_size_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_randr_screen_size_iterator_t
xcb_randr_get_screen_info_sizes_iterator (const xcb_randr_get_screen_info_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_randr_get_screen_info_rates_length
 ** 
 ** @param const xcb_randr_get_screen_info_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_randr_get_screen_info_rates_length (const xcb_randr_get_screen_info_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_randr_refresh_rates_iterator_t xcb_randr_get_screen_info_rates_iterator
 ** 
 ** @param const xcb_randr_get_screen_info_reply_t *R
 ** @returns xcb_randr_refresh_rates_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_randr_refresh_rates_iterator_t
xcb_randr_get_screen_info_rates_iterator (const xcb_randr_get_screen_info_reply_t *R  /**< */);

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 * 
 * The parameter @p e supplied to this function must be NULL if
 * xcb_randr_get_screen_info_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */

/*****************************************************************************
 **
 ** xcb_randr_get_screen_info_reply_t * xcb_randr_get_screen_info_reply
 ** 
 ** @param xcb_connection_t                    *c
 ** @param xcb_randr_get_screen_info_cookie_t   cookie
 ** @param xcb_generic_error_t                **e
 ** @returns xcb_randr_get_screen_info_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_randr_get_screen_info_reply_t *
xcb_randr_get_screen_info_reply (xcb_connection_t                    *c  /**< */,
                                 xcb_randr_get_screen_info_cookie_t   cookie  /**< */,
                                 xcb_generic_error_t                **e  /**< */);

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
 ** xcb_randr_get_screen_size_range_cookie_t xcb_randr_get_screen_size_range
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_window_t      window
 ** @returns xcb_randr_get_screen_size_range_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_randr_get_screen_size_range_cookie_t
xcb_randr_get_screen_size_range (xcb_connection_t *c  /**< */,
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
 ** xcb_randr_get_screen_size_range_cookie_t xcb_randr_get_screen_size_range_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_window_t      window
 ** @returns xcb_randr_get_screen_size_range_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_randr_get_screen_size_range_cookie_t
xcb_randr_get_screen_size_range_unchecked (xcb_connection_t *c  /**< */,
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
 * xcb_randr_get_screen_size_range_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */

/*****************************************************************************
 **
 ** xcb_randr_get_screen_size_range_reply_t * xcb_randr_get_screen_size_range_reply
 ** 
 ** @param xcb_connection_t                          *c
 ** @param xcb_randr_get_screen_size_range_cookie_t   cookie
 ** @param xcb_generic_error_t                      **e
 ** @returns xcb_randr_get_screen_size_range_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_randr_get_screen_size_range_reply_t *
xcb_randr_get_screen_size_range_reply (xcb_connection_t                          *c  /**< */,
                                       xcb_randr_get_screen_size_range_cookie_t   cookie  /**< */,
                                       xcb_generic_error_t                      **e  /**< */);

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
 ** xcb_void_cookie_t xcb_randr_set_screen_size_checked
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_window_t      window
 ** @param ushort            width
 ** @param ushort            height
 ** @param uint              mm_width
 ** @param uint              mm_height
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_randr_set_screen_size_checked (xcb_connection_t *c  /**< */,
                                   xcb_window_t      window  /**< */,
                                   ushort            width  /**< */,
                                   ushort            height  /**< */,
                                   uint              mm_width  /**< */,
                                   uint              mm_height  /**< */);

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
 ** xcb_void_cookie_t xcb_randr_set_screen_size
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_window_t      window
 ** @param ushort            width
 ** @param ushort            height
 ** @param uint              mm_width
 ** @param uint              mm_height
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_randr_set_screen_size (xcb_connection_t *c  /**< */,
                           xcb_window_t      window  /**< */,
                           ushort            width  /**< */,
                           ushort            height  /**< */,
                           uint              mm_width  /**< */,
                           uint              mm_height  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_randr_mode_info_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_randr_mode_info_t)
 */

/*****************************************************************************
 **
 ** void xcb_randr_mode_info_next
 ** 
 ** @param xcb_randr_mode_info_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_randr_mode_info_next (xcb_randr_mode_info_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_randr_mode_info_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_randr_mode_info_end
 ** 
 ** @param xcb_randr_mode_info_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
xcb_generic_iterator_t
xcb_randr_mode_info_end (xcb_randr_mode_info_iterator_t i  /**< */);

extern(C) int
xcb_randr_get_screen_resources_sizeof (const void  *_buffer  /**< */);

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
 ** xcb_randr_get_screen_resources_cookie_t xcb_randr_get_screen_resources
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_window_t      window
 ** @returns xcb_randr_get_screen_resources_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_randr_get_screen_resources_cookie_t
xcb_randr_get_screen_resources (xcb_connection_t *c  /**< */,
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
 ** xcb_randr_get_screen_resources_cookie_t xcb_randr_get_screen_resources_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_window_t      window
 ** @returns xcb_randr_get_screen_resources_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_randr_get_screen_resources_cookie_t
xcb_randr_get_screen_resources_unchecked (xcb_connection_t *c  /**< */,
                                          xcb_window_t      window  /**< */);


/*****************************************************************************
 **
 ** xcb_randr_crtc_t * xcb_randr_get_screen_resources_crtcs
 ** 
 ** @param const xcb_randr_get_screen_resources_reply_t *R
 ** @returns xcb_randr_crtc_t *
 **
 *****************************************************************************/
 
xcb_randr_crtc_t *
xcb_randr_get_screen_resources_crtcs (const xcb_randr_get_screen_resources_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_randr_get_screen_resources_crtcs_length
 ** 
 ** @param const xcb_randr_get_screen_resources_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_randr_get_screen_resources_crtcs_length (const xcb_randr_get_screen_resources_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_randr_get_screen_resources_crtcs_end
 ** 
 ** @param const xcb_randr_get_screen_resources_reply_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_randr_get_screen_resources_crtcs_end (const xcb_randr_get_screen_resources_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_randr_output_t * xcb_randr_get_screen_resources_outputs
 ** 
 ** @param const xcb_randr_get_screen_resources_reply_t *R
 ** @returns xcb_randr_output_t *
 **
 *****************************************************************************/
 
xcb_randr_output_t *
xcb_randr_get_screen_resources_outputs (const xcb_randr_get_screen_resources_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_randr_get_screen_resources_outputs_length
 ** 
 ** @param const xcb_randr_get_screen_resources_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_randr_get_screen_resources_outputs_length (const xcb_randr_get_screen_resources_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_randr_get_screen_resources_outputs_end
 ** 
 ** @param const xcb_randr_get_screen_resources_reply_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_randr_get_screen_resources_outputs_end (const xcb_randr_get_screen_resources_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_randr_mode_info_t * xcb_randr_get_screen_resources_modes
 ** 
 ** @param const xcb_randr_get_screen_resources_reply_t *R
 ** @returns xcb_randr_mode_info_t *
 **
 *****************************************************************************/
 
xcb_randr_mode_info_t *
xcb_randr_get_screen_resources_modes (const xcb_randr_get_screen_resources_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_randr_get_screen_resources_modes_length
 ** 
 ** @param const xcb_randr_get_screen_resources_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_randr_get_screen_resources_modes_length (const xcb_randr_get_screen_resources_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_randr_mode_info_iterator_t xcb_randr_get_screen_resources_modes_iterator
 ** 
 ** @param const xcb_randr_get_screen_resources_reply_t *R
 ** @returns xcb_randr_mode_info_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_randr_mode_info_iterator_t
xcb_randr_get_screen_resources_modes_iterator (const xcb_randr_get_screen_resources_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** ubyte * xcb_randr_get_screen_resources_names
 ** 
 ** @param const xcb_randr_get_screen_resources_reply_t *R
 ** @returns ubyte *
 **
 *****************************************************************************/
 
ubyte *
xcb_randr_get_screen_resources_names (const xcb_randr_get_screen_resources_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_randr_get_screen_resources_names_length
 ** 
 ** @param const xcb_randr_get_screen_resources_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_randr_get_screen_resources_names_length (const xcb_randr_get_screen_resources_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_randr_get_screen_resources_names_end
 ** 
 ** @param const xcb_randr_get_screen_resources_reply_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_randr_get_screen_resources_names_end (const xcb_randr_get_screen_resources_reply_t *R  /**< */);

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 * 
 * The parameter @p e supplied to this function must be NULL if
 * xcb_randr_get_screen_resources_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */

/*****************************************************************************
 **
 ** xcb_randr_get_screen_resources_reply_t * xcb_randr_get_screen_resources_reply
 ** 
 ** @param xcb_connection_t                         *c
 ** @param xcb_randr_get_screen_resources_cookie_t   cookie
 ** @param xcb_generic_error_t                     **e
 ** @returns xcb_randr_get_screen_resources_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_randr_get_screen_resources_reply_t *
xcb_randr_get_screen_resources_reply (xcb_connection_t                         *c  /**< */,
                                      xcb_randr_get_screen_resources_cookie_t   cookie  /**< */,
                                      xcb_generic_error_t                     **e  /**< */);

extern(C) int
xcb_randr_get_output_info_sizeof (const void  *_buffer  /**< */);

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
 ** xcb_randr_get_output_info_cookie_t xcb_randr_get_output_info
 ** 
 ** @param xcb_connection_t   *c
 ** @param xcb_randr_output_t  output
 ** @param xcb_timestamp_t     config_timestamp
 ** @returns xcb_randr_get_output_info_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_randr_get_output_info_cookie_t
xcb_randr_get_output_info (xcb_connection_t   *c  /**< */,
                           xcb_randr_output_t  output  /**< */,
                           xcb_timestamp_t     config_timestamp  /**< */);

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
 ** xcb_randr_get_output_info_cookie_t xcb_randr_get_output_info_unchecked
 ** 
 ** @param xcb_connection_t   *c
 ** @param xcb_randr_output_t  output
 ** @param xcb_timestamp_t     config_timestamp
 ** @returns xcb_randr_get_output_info_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_randr_get_output_info_cookie_t
xcb_randr_get_output_info_unchecked (xcb_connection_t   *c  /**< */,
                                     xcb_randr_output_t  output  /**< */,
                                     xcb_timestamp_t     config_timestamp  /**< */);


/*****************************************************************************
 **
 ** xcb_randr_crtc_t * xcb_randr_get_output_info_crtcs
 ** 
 ** @param const xcb_randr_get_output_info_reply_t *R
 ** @returns xcb_randr_crtc_t *
 **
 *****************************************************************************/
 
xcb_randr_crtc_t *
xcb_randr_get_output_info_crtcs (const xcb_randr_get_output_info_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_randr_get_output_info_crtcs_length
 ** 
 ** @param const xcb_randr_get_output_info_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_randr_get_output_info_crtcs_length (const xcb_randr_get_output_info_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_randr_get_output_info_crtcs_end
 ** 
 ** @param const xcb_randr_get_output_info_reply_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_randr_get_output_info_crtcs_end (const xcb_randr_get_output_info_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_randr_mode_t * xcb_randr_get_output_info_modes
 ** 
 ** @param const xcb_randr_get_output_info_reply_t *R
 ** @returns xcb_randr_mode_t *
 **
 *****************************************************************************/
 
xcb_randr_mode_t *
xcb_randr_get_output_info_modes (const xcb_randr_get_output_info_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_randr_get_output_info_modes_length
 ** 
 ** @param const xcb_randr_get_output_info_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_randr_get_output_info_modes_length (const xcb_randr_get_output_info_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_randr_get_output_info_modes_end
 ** 
 ** @param const xcb_randr_get_output_info_reply_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_randr_get_output_info_modes_end (const xcb_randr_get_output_info_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_randr_output_t * xcb_randr_get_output_info_clones
 ** 
 ** @param const xcb_randr_get_output_info_reply_t *R
 ** @returns xcb_randr_output_t *
 **
 *****************************************************************************/
 
xcb_randr_output_t *
xcb_randr_get_output_info_clones (const xcb_randr_get_output_info_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_randr_get_output_info_clones_length
 ** 
 ** @param const xcb_randr_get_output_info_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_randr_get_output_info_clones_length (const xcb_randr_get_output_info_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_randr_get_output_info_clones_end
 ** 
 ** @param const xcb_randr_get_output_info_reply_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_randr_get_output_info_clones_end (const xcb_randr_get_output_info_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** ubyte * xcb_randr_get_output_info_name
 ** 
 ** @param const xcb_randr_get_output_info_reply_t *R
 ** @returns ubyte *
 **
 *****************************************************************************/
 
ubyte *
xcb_randr_get_output_info_name (const xcb_randr_get_output_info_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_randr_get_output_info_name_length
 ** 
 ** @param const xcb_randr_get_output_info_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_randr_get_output_info_name_length (const xcb_randr_get_output_info_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_randr_get_output_info_name_end
 ** 
 ** @param const xcb_randr_get_output_info_reply_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_randr_get_output_info_name_end (const xcb_randr_get_output_info_reply_t *R  /**< */);

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 * 
 * The parameter @p e supplied to this function must be NULL if
 * xcb_randr_get_output_info_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */

/*****************************************************************************
 **
 ** xcb_randr_get_output_info_reply_t * xcb_randr_get_output_info_reply
 ** 
 ** @param xcb_connection_t                    *c
 ** @param xcb_randr_get_output_info_cookie_t   cookie
 ** @param xcb_generic_error_t                **e
 ** @returns xcb_randr_get_output_info_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_randr_get_output_info_reply_t *
xcb_randr_get_output_info_reply (xcb_connection_t                    *c  /**< */,
                                 xcb_randr_get_output_info_cookie_t   cookie  /**< */,
                                 xcb_generic_error_t                **e  /**< */);

extern(C) int
xcb_randr_list_output_properties_sizeof (const void  *_buffer  /**< */);

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
 ** xcb_randr_list_output_properties_cookie_t xcb_randr_list_output_properties
 ** 
 ** @param xcb_connection_t   *c
 ** @param xcb_randr_output_t  output
 ** @returns xcb_randr_list_output_properties_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_randr_list_output_properties_cookie_t
xcb_randr_list_output_properties (xcb_connection_t   *c  /**< */,
                                  xcb_randr_output_t  output  /**< */);

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
 ** xcb_randr_list_output_properties_cookie_t xcb_randr_list_output_properties_unchecked
 ** 
 ** @param xcb_connection_t   *c
 ** @param xcb_randr_output_t  output
 ** @returns xcb_randr_list_output_properties_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_randr_list_output_properties_cookie_t
xcb_randr_list_output_properties_unchecked (xcb_connection_t   *c  /**< */,
                                            xcb_randr_output_t  output  /**< */);


/*****************************************************************************
 **
 ** xcb_atom_t * xcb_randr_list_output_properties_atoms
 ** 
 ** @param const xcb_randr_list_output_properties_reply_t *R
 ** @returns xcb_atom_t *
 **
 *****************************************************************************/
 
xcb_atom_t *
xcb_randr_list_output_properties_atoms (const xcb_randr_list_output_properties_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_randr_list_output_properties_atoms_length
 ** 
 ** @param const xcb_randr_list_output_properties_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_randr_list_output_properties_atoms_length (const xcb_randr_list_output_properties_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_randr_list_output_properties_atoms_end
 ** 
 ** @param const xcb_randr_list_output_properties_reply_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_randr_list_output_properties_atoms_end (const xcb_randr_list_output_properties_reply_t *R  /**< */);

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 * 
 * The parameter @p e supplied to this function must be NULL if
 * xcb_randr_list_output_properties_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */

/*****************************************************************************
 **
 ** xcb_randr_list_output_properties_reply_t * xcb_randr_list_output_properties_reply
 ** 
 ** @param xcb_connection_t                           *c
 ** @param xcb_randr_list_output_properties_cookie_t   cookie
 ** @param xcb_generic_error_t                       **e
 ** @returns xcb_randr_list_output_properties_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_randr_list_output_properties_reply_t *
xcb_randr_list_output_properties_reply (xcb_connection_t                           *c  /**< */,
                                        xcb_randr_list_output_properties_cookie_t   cookie  /**< */,
                                        xcb_generic_error_t                       **e  /**< */);

extern(C) int
xcb_randr_query_output_property_sizeof (const void  *_buffer  /**< */);

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
 ** xcb_randr_query_output_property_cookie_t xcb_randr_query_output_property
 ** 
 ** @param xcb_connection_t   *c
 ** @param xcb_randr_output_t  output
 ** @param xcb_atom_t          property
 ** @returns xcb_randr_query_output_property_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_randr_query_output_property_cookie_t
xcb_randr_query_output_property (xcb_connection_t   *c  /**< */,
                                 xcb_randr_output_t  output  /**< */,
                                 xcb_atom_t          property  /**< */);

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
 ** xcb_randr_query_output_property_cookie_t xcb_randr_query_output_property_unchecked
 ** 
 ** @param xcb_connection_t   *c
 ** @param xcb_randr_output_t  output
 ** @param xcb_atom_t          property
 ** @returns xcb_randr_query_output_property_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_randr_query_output_property_cookie_t
xcb_randr_query_output_property_unchecked (xcb_connection_t   *c  /**< */,
                                           xcb_randr_output_t  output  /**< */,
                                           xcb_atom_t          property  /**< */);


/*****************************************************************************
 **
 ** int * xcb_randr_query_output_property_valid_values
 ** 
 ** @param const xcb_randr_query_output_property_reply_t *R
 ** @returns int *
 **
 *****************************************************************************/
 
int *
xcb_randr_query_output_property_valid_values (const xcb_randr_query_output_property_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_randr_query_output_property_valid_values_length
 ** 
 ** @param const xcb_randr_query_output_property_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_randr_query_output_property_valid_values_length (const xcb_randr_query_output_property_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_randr_query_output_property_valid_values_end
 ** 
 ** @param const xcb_randr_query_output_property_reply_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_randr_query_output_property_valid_values_end (const xcb_randr_query_output_property_reply_t *R  /**< */);

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 * 
 * The parameter @p e supplied to this function must be NULL if
 * xcb_randr_query_output_property_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */

/*****************************************************************************
 **
 ** xcb_randr_query_output_property_reply_t * xcb_randr_query_output_property_reply
 ** 
 ** @param xcb_connection_t                          *c
 ** @param xcb_randr_query_output_property_cookie_t   cookie
 ** @param xcb_generic_error_t                      **e
 ** @returns xcb_randr_query_output_property_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_randr_query_output_property_reply_t *
xcb_randr_query_output_property_reply (xcb_connection_t                          *c  /**< */,
                                       xcb_randr_query_output_property_cookie_t   cookie  /**< */,
                                       xcb_generic_error_t                      **e  /**< */);

extern(C) int
xcb_randr_configure_output_property_sizeof (const void  *_buffer  /**< */,
                                            uint         values_len  /**< */);

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
 ** xcb_void_cookie_t xcb_randr_configure_output_property_checked
 ** 
 ** @param xcb_connection_t   *c
 ** @param xcb_randr_output_t  output
 ** @param xcb_atom_t          property
 ** @param ubyte               pending
 ** @param ubyte               range
 ** @param uint                values_len
 ** @param const int          *values
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_randr_configure_output_property_checked (xcb_connection_t   *c  /**< */,
                                             xcb_randr_output_t  output  /**< */,
                                             xcb_atom_t          property  /**< */,
                                             ubyte               pending  /**< */,
                                             ubyte               range  /**< */,
                                             uint                values_len  /**< */,
                                             const int          *values  /**< */);

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
 ** xcb_void_cookie_t xcb_randr_configure_output_property
 ** 
 ** @param xcb_connection_t   *c
 ** @param xcb_randr_output_t  output
 ** @param xcb_atom_t          property
 ** @param ubyte               pending
 ** @param ubyte               range
 ** @param uint                values_len
 ** @param const int          *values
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_randr_configure_output_property (xcb_connection_t   *c  /**< */,
                                     xcb_randr_output_t  output  /**< */,
                                     xcb_atom_t          property  /**< */,
                                     ubyte               pending  /**< */,
                                     ubyte               range  /**< */,
                                     uint                values_len  /**< */,
                                     const int          *values  /**< */);

extern(C) int
xcb_randr_change_output_property_sizeof (const void  *_buffer  /**< */);

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
 ** xcb_void_cookie_t xcb_randr_change_output_property_checked
 ** 
 ** @param xcb_connection_t   *c
 ** @param xcb_randr_output_t  output
 ** @param xcb_atom_t          property
 ** @param xcb_atom_t          type
 ** @param ubyte               format
 ** @param ubyte               mode
 ** @param uint                num_units
 ** @param const void         *data
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_randr_change_output_property_checked (xcb_connection_t   *c  /**< */,
                                          xcb_randr_output_t  output  /**< */,
                                          xcb_atom_t          property  /**< */,
                                          xcb_atom_t          type  /**< */,
                                          ubyte               format  /**< */,
                                          ubyte               mode  /**< */,
                                          uint                num_units  /**< */,
                                          const void         *data  /**< */);

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
 ** xcb_void_cookie_t xcb_randr_change_output_property
 ** 
 ** @param xcb_connection_t   *c
 ** @param xcb_randr_output_t  output
 ** @param xcb_atom_t          property
 ** @param xcb_atom_t          type
 ** @param ubyte               format
 ** @param ubyte               mode
 ** @param uint                num_units
 ** @param const void         *data
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_randr_change_output_property (xcb_connection_t   *c  /**< */,
                                  xcb_randr_output_t  output  /**< */,
                                  xcb_atom_t          property  /**< */,
                                  xcb_atom_t          type  /**< */,
                                  ubyte               format  /**< */,
                                  ubyte               mode  /**< */,
                                  uint                num_units  /**< */,
                                  const void         *data  /**< */);

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
 ** xcb_void_cookie_t xcb_randr_delete_output_property_checked
 ** 
 ** @param xcb_connection_t   *c
 ** @param xcb_randr_output_t  output
 ** @param xcb_atom_t          property
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_randr_delete_output_property_checked (xcb_connection_t   *c  /**< */,
                                          xcb_randr_output_t  output  /**< */,
                                          xcb_atom_t          property  /**< */);

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
 ** xcb_void_cookie_t xcb_randr_delete_output_property
 ** 
 ** @param xcb_connection_t   *c
 ** @param xcb_randr_output_t  output
 ** @param xcb_atom_t          property
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_randr_delete_output_property (xcb_connection_t   *c  /**< */,
                                  xcb_randr_output_t  output  /**< */,
                                  xcb_atom_t          property  /**< */);

extern(C) int
xcb_randr_get_output_property_sizeof (const void  *_buffer  /**< */);

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
 ** xcb_randr_get_output_property_cookie_t xcb_randr_get_output_property
 ** 
 ** @param xcb_connection_t   *c
 ** @param xcb_randr_output_t  output
 ** @param xcb_atom_t          property
 ** @param xcb_atom_t          type
 ** @param uint                long_offset
 ** @param uint                long_length
 ** @param ubyte               _delete
 ** @param ubyte               pending
 ** @returns xcb_randr_get_output_property_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_randr_get_output_property_cookie_t
xcb_randr_get_output_property (xcb_connection_t   *c  /**< */,
                               xcb_randr_output_t  output  /**< */,
                               xcb_atom_t          property  /**< */,
                               xcb_atom_t          type  /**< */,
                               uint                long_offset  /**< */,
                               uint                long_length  /**< */,
                               ubyte               _delete  /**< */,
                               ubyte               pending  /**< */);

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
 ** xcb_randr_get_output_property_cookie_t xcb_randr_get_output_property_unchecked
 ** 
 ** @param xcb_connection_t   *c
 ** @param xcb_randr_output_t  output
 ** @param xcb_atom_t          property
 ** @param xcb_atom_t          type
 ** @param uint                long_offset
 ** @param uint                long_length
 ** @param ubyte               _delete
 ** @param ubyte               pending
 ** @returns xcb_randr_get_output_property_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_randr_get_output_property_cookie_t
xcb_randr_get_output_property_unchecked (xcb_connection_t   *c  /**< */,
                                         xcb_randr_output_t  output  /**< */,
                                         xcb_atom_t          property  /**< */,
                                         xcb_atom_t          type  /**< */,
                                         uint                long_offset  /**< */,
                                         uint                long_length  /**< */,
                                         ubyte               _delete  /**< */,
                                         ubyte               pending  /**< */);


/*****************************************************************************
 **
 ** ubyte * xcb_randr_get_output_property_data
 ** 
 ** @param const xcb_randr_get_output_property_reply_t *R
 ** @returns ubyte *
 **
 *****************************************************************************/
 
ubyte *
xcb_randr_get_output_property_data (const xcb_randr_get_output_property_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_randr_get_output_property_data_length
 ** 
 ** @param const xcb_randr_get_output_property_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_randr_get_output_property_data_length (const xcb_randr_get_output_property_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_randr_get_output_property_data_end
 ** 
 ** @param const xcb_randr_get_output_property_reply_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_randr_get_output_property_data_end (const xcb_randr_get_output_property_reply_t *R  /**< */);

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 * 
 * The parameter @p e supplied to this function must be NULL if
 * xcb_randr_get_output_property_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */

/*****************************************************************************
 **
 ** xcb_randr_get_output_property_reply_t * xcb_randr_get_output_property_reply
 ** 
 ** @param xcb_connection_t                        *c
 ** @param xcb_randr_get_output_property_cookie_t   cookie
 ** @param xcb_generic_error_t                    **e
 ** @returns xcb_randr_get_output_property_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_randr_get_output_property_reply_t *
xcb_randr_get_output_property_reply (xcb_connection_t                        *c  /**< */,
                                     xcb_randr_get_output_property_cookie_t   cookie  /**< */,
                                     xcb_generic_error_t                    **e  /**< */);

extern(C) int
xcb_randr_create_mode_sizeof (const void  *_buffer  /**< */,
                              uint         name_len  /**< */);

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
 ** xcb_randr_create_mode_cookie_t xcb_randr_create_mode
 ** 
 ** @param xcb_connection_t      *c
 ** @param xcb_window_t           window
 ** @param xcb_randr_mode_info_t  mode_info
 ** @param uint                   name_len
 ** @param const char            *name
 ** @returns xcb_randr_create_mode_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_randr_create_mode_cookie_t
xcb_randr_create_mode (xcb_connection_t      *c  /**< */,
                       xcb_window_t           window  /**< */,
                       xcb_randr_mode_info_t  mode_info  /**< */,
                       uint                   name_len  /**< */,
                       const char            *name  /**< */);

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
 ** xcb_randr_create_mode_cookie_t xcb_randr_create_mode_unchecked
 ** 
 ** @param xcb_connection_t      *c
 ** @param xcb_window_t           window
 ** @param xcb_randr_mode_info_t  mode_info
 ** @param uint                   name_len
 ** @param const char            *name
 ** @returns xcb_randr_create_mode_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_randr_create_mode_cookie_t
xcb_randr_create_mode_unchecked (xcb_connection_t      *c  /**< */,
                                 xcb_window_t           window  /**< */,
                                 xcb_randr_mode_info_t  mode_info  /**< */,
                                 uint                   name_len  /**< */,
                                 const char            *name  /**< */);

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 * 
 * The parameter @p e supplied to this function must be NULL if
 * xcb_randr_create_mode_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */

/*****************************************************************************
 **
 ** xcb_randr_create_mode_reply_t * xcb_randr_create_mode_reply
 ** 
 ** @param xcb_connection_t                *c
 ** @param xcb_randr_create_mode_cookie_t   cookie
 ** @param xcb_generic_error_t            **e
 ** @returns xcb_randr_create_mode_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_randr_create_mode_reply_t *
xcb_randr_create_mode_reply (xcb_connection_t                *c  /**< */,
                             xcb_randr_create_mode_cookie_t   cookie  /**< */,
                             xcb_generic_error_t            **e  /**< */);

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
 ** xcb_void_cookie_t xcb_randr_destroy_mode_checked
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_randr_mode_t  mode
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_randr_destroy_mode_checked (xcb_connection_t *c  /**< */,
                                xcb_randr_mode_t  mode  /**< */);

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
 ** xcb_void_cookie_t xcb_randr_destroy_mode
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_randr_mode_t  mode
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_randr_destroy_mode (xcb_connection_t *c  /**< */,
                        xcb_randr_mode_t  mode  /**< */);

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
 ** xcb_void_cookie_t xcb_randr_add_output_mode_checked
 ** 
 ** @param xcb_connection_t   *c
 ** @param xcb_randr_output_t  output
 ** @param xcb_randr_mode_t    mode
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_randr_add_output_mode_checked (xcb_connection_t   *c  /**< */,
                                   xcb_randr_output_t  output  /**< */,
                                   xcb_randr_mode_t    mode  /**< */);

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
 ** xcb_void_cookie_t xcb_randr_add_output_mode
 ** 
 ** @param xcb_connection_t   *c
 ** @param xcb_randr_output_t  output
 ** @param xcb_randr_mode_t    mode
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_randr_add_output_mode (xcb_connection_t   *c  /**< */,
                           xcb_randr_output_t  output  /**< */,
                           xcb_randr_mode_t    mode  /**< */);

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
 ** xcb_void_cookie_t xcb_randr_delete_output_mode_checked
 ** 
 ** @param xcb_connection_t   *c
 ** @param xcb_randr_output_t  output
 ** @param xcb_randr_mode_t    mode
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_randr_delete_output_mode_checked (xcb_connection_t   *c  /**< */,
                                      xcb_randr_output_t  output  /**< */,
                                      xcb_randr_mode_t    mode  /**< */);

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
 ** xcb_void_cookie_t xcb_randr_delete_output_mode
 ** 
 ** @param xcb_connection_t   *c
 ** @param xcb_randr_output_t  output
 ** @param xcb_randr_mode_t    mode
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_randr_delete_output_mode (xcb_connection_t   *c  /**< */,
                              xcb_randr_output_t  output  /**< */,
                              xcb_randr_mode_t    mode  /**< */);

extern(C) int
xcb_randr_get_crtc_info_sizeof (const void  *_buffer  /**< */);

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
 ** xcb_randr_get_crtc_info_cookie_t xcb_randr_get_crtc_info
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_randr_crtc_t  crtc
 ** @param xcb_timestamp_t   config_timestamp
 ** @returns xcb_randr_get_crtc_info_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_randr_get_crtc_info_cookie_t
xcb_randr_get_crtc_info (xcb_connection_t *c  /**< */,
                         xcb_randr_crtc_t  crtc  /**< */,
                         xcb_timestamp_t   config_timestamp  /**< */);

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
 ** xcb_randr_get_crtc_info_cookie_t xcb_randr_get_crtc_info_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_randr_crtc_t  crtc
 ** @param xcb_timestamp_t   config_timestamp
 ** @returns xcb_randr_get_crtc_info_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_randr_get_crtc_info_cookie_t
xcb_randr_get_crtc_info_unchecked (xcb_connection_t *c  /**< */,
                                   xcb_randr_crtc_t  crtc  /**< */,
                                   xcb_timestamp_t   config_timestamp  /**< */);


/*****************************************************************************
 **
 ** xcb_randr_output_t * xcb_randr_get_crtc_info_outputs
 ** 
 ** @param const xcb_randr_get_crtc_info_reply_t *R
 ** @returns xcb_randr_output_t *
 **
 *****************************************************************************/
 
xcb_randr_output_t *
xcb_randr_get_crtc_info_outputs (const xcb_randr_get_crtc_info_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_randr_get_crtc_info_outputs_length
 ** 
 ** @param const xcb_randr_get_crtc_info_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_randr_get_crtc_info_outputs_length (const xcb_randr_get_crtc_info_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_randr_get_crtc_info_outputs_end
 ** 
 ** @param const xcb_randr_get_crtc_info_reply_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_randr_get_crtc_info_outputs_end (const xcb_randr_get_crtc_info_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_randr_output_t * xcb_randr_get_crtc_info_possible
 ** 
 ** @param const xcb_randr_get_crtc_info_reply_t *R
 ** @returns xcb_randr_output_t *
 **
 *****************************************************************************/
 
xcb_randr_output_t *
xcb_randr_get_crtc_info_possible (const xcb_randr_get_crtc_info_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_randr_get_crtc_info_possible_length
 ** 
 ** @param const xcb_randr_get_crtc_info_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_randr_get_crtc_info_possible_length (const xcb_randr_get_crtc_info_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_randr_get_crtc_info_possible_end
 ** 
 ** @param const xcb_randr_get_crtc_info_reply_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_randr_get_crtc_info_possible_end (const xcb_randr_get_crtc_info_reply_t *R  /**< */);

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 * 
 * The parameter @p e supplied to this function must be NULL if
 * xcb_randr_get_crtc_info_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */

/*****************************************************************************
 **
 ** xcb_randr_get_crtc_info_reply_t * xcb_randr_get_crtc_info_reply
 ** 
 ** @param xcb_connection_t                  *c
 ** @param xcb_randr_get_crtc_info_cookie_t   cookie
 ** @param xcb_generic_error_t              **e
 ** @returns xcb_randr_get_crtc_info_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_randr_get_crtc_info_reply_t *
xcb_randr_get_crtc_info_reply (xcb_connection_t                  *c  /**< */,
                               xcb_randr_get_crtc_info_cookie_t   cookie  /**< */,
                               xcb_generic_error_t              **e  /**< */);

extern(C) int
xcb_randr_set_crtc_config_sizeof (const void  *_buffer  /**< */,
                                  uint         outputs_len  /**< */);

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
 ** xcb_randr_set_crtc_config_cookie_t xcb_randr_set_crtc_config
 ** 
 ** @param xcb_connection_t         *c
 ** @param xcb_randr_crtc_t          crtc
 ** @param xcb_timestamp_t           timestamp
 ** @param xcb_timestamp_t           config_timestamp
 ** @param short                     x
 ** @param short                     y
 ** @param xcb_randr_mode_t          mode
 ** @param ushort                    rotation
 ** @param uint                      outputs_len
 ** @param const xcb_randr_output_t *outputs
 ** @returns xcb_randr_set_crtc_config_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_randr_set_crtc_config_cookie_t
xcb_randr_set_crtc_config (xcb_connection_t         *c  /**< */,
                           xcb_randr_crtc_t          crtc  /**< */,
                           xcb_timestamp_t           timestamp  /**< */,
                           xcb_timestamp_t           config_timestamp  /**< */,
                           short                     x  /**< */,
                           short                     y  /**< */,
                           xcb_randr_mode_t          mode  /**< */,
                           ushort                    rotation  /**< */,
                           uint                      outputs_len  /**< */,
                           const xcb_randr_output_t *outputs  /**< */);

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
 ** xcb_randr_set_crtc_config_cookie_t xcb_randr_set_crtc_config_unchecked
 ** 
 ** @param xcb_connection_t         *c
 ** @param xcb_randr_crtc_t          crtc
 ** @param xcb_timestamp_t           timestamp
 ** @param xcb_timestamp_t           config_timestamp
 ** @param short                     x
 ** @param short                     y
 ** @param xcb_randr_mode_t          mode
 ** @param ushort                    rotation
 ** @param uint                      outputs_len
 ** @param const xcb_randr_output_t *outputs
 ** @returns xcb_randr_set_crtc_config_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_randr_set_crtc_config_cookie_t
xcb_randr_set_crtc_config_unchecked (xcb_connection_t         *c  /**< */,
                                     xcb_randr_crtc_t          crtc  /**< */,
                                     xcb_timestamp_t           timestamp  /**< */,
                                     xcb_timestamp_t           config_timestamp  /**< */,
                                     short                     x  /**< */,
                                     short                     y  /**< */,
                                     xcb_randr_mode_t          mode  /**< */,
                                     ushort                    rotation  /**< */,
                                     uint                      outputs_len  /**< */,
                                     const xcb_randr_output_t *outputs  /**< */);

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 * 
 * The parameter @p e supplied to this function must be NULL if
 * xcb_randr_set_crtc_config_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */

/*****************************************************************************
 **
 ** xcb_randr_set_crtc_config_reply_t * xcb_randr_set_crtc_config_reply
 ** 
 ** @param xcb_connection_t                    *c
 ** @param xcb_randr_set_crtc_config_cookie_t   cookie
 ** @param xcb_generic_error_t                **e
 ** @returns xcb_randr_set_crtc_config_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_randr_set_crtc_config_reply_t *
xcb_randr_set_crtc_config_reply (xcb_connection_t                    *c  /**< */,
                                 xcb_randr_set_crtc_config_cookie_t   cookie  /**< */,
                                 xcb_generic_error_t                **e  /**< */);

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
 ** xcb_randr_get_crtc_gamma_size_cookie_t xcb_randr_get_crtc_gamma_size
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_randr_crtc_t  crtc
 ** @returns xcb_randr_get_crtc_gamma_size_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_randr_get_crtc_gamma_size_cookie_t
xcb_randr_get_crtc_gamma_size (xcb_connection_t *c  /**< */,
                               xcb_randr_crtc_t  crtc  /**< */);

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
 ** xcb_randr_get_crtc_gamma_size_cookie_t xcb_randr_get_crtc_gamma_size_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_randr_crtc_t  crtc
 ** @returns xcb_randr_get_crtc_gamma_size_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_randr_get_crtc_gamma_size_cookie_t
xcb_randr_get_crtc_gamma_size_unchecked (xcb_connection_t *c  /**< */,
                                         xcb_randr_crtc_t  crtc  /**< */);

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 * 
 * The parameter @p e supplied to this function must be NULL if
 * xcb_randr_get_crtc_gamma_size_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */

/*****************************************************************************
 **
 ** xcb_randr_get_crtc_gamma_size_reply_t * xcb_randr_get_crtc_gamma_size_reply
 ** 
 ** @param xcb_connection_t                        *c
 ** @param xcb_randr_get_crtc_gamma_size_cookie_t   cookie
 ** @param xcb_generic_error_t                    **e
 ** @returns xcb_randr_get_crtc_gamma_size_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_randr_get_crtc_gamma_size_reply_t *
xcb_randr_get_crtc_gamma_size_reply (xcb_connection_t                        *c  /**< */,
                                     xcb_randr_get_crtc_gamma_size_cookie_t   cookie  /**< */,
                                     xcb_generic_error_t                    **e  /**< */);

extern(C) int
xcb_randr_get_crtc_gamma_sizeof (const void  *_buffer  /**< */);

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
 ** xcb_randr_get_crtc_gamma_cookie_t xcb_randr_get_crtc_gamma
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_randr_crtc_t  crtc
 ** @returns xcb_randr_get_crtc_gamma_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_randr_get_crtc_gamma_cookie_t
xcb_randr_get_crtc_gamma (xcb_connection_t *c  /**< */,
                          xcb_randr_crtc_t  crtc  /**< */);

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
 ** xcb_randr_get_crtc_gamma_cookie_t xcb_randr_get_crtc_gamma_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_randr_crtc_t  crtc
 ** @returns xcb_randr_get_crtc_gamma_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_randr_get_crtc_gamma_cookie_t
xcb_randr_get_crtc_gamma_unchecked (xcb_connection_t *c  /**< */,
                                    xcb_randr_crtc_t  crtc  /**< */);


/*****************************************************************************
 **
 ** ushort * xcb_randr_get_crtc_gamma_red
 ** 
 ** @param const xcb_randr_get_crtc_gamma_reply_t *R
 ** @returns ushort *
 **
 *****************************************************************************/
 
ushort *
xcb_randr_get_crtc_gamma_red (const xcb_randr_get_crtc_gamma_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_randr_get_crtc_gamma_red_length
 ** 
 ** @param const xcb_randr_get_crtc_gamma_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_randr_get_crtc_gamma_red_length (const xcb_randr_get_crtc_gamma_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_randr_get_crtc_gamma_red_end
 ** 
 ** @param const xcb_randr_get_crtc_gamma_reply_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_randr_get_crtc_gamma_red_end (const xcb_randr_get_crtc_gamma_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** ushort * xcb_randr_get_crtc_gamma_green
 ** 
 ** @param const xcb_randr_get_crtc_gamma_reply_t *R
 ** @returns ushort *
 **
 *****************************************************************************/
 
ushort *
xcb_randr_get_crtc_gamma_green (const xcb_randr_get_crtc_gamma_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_randr_get_crtc_gamma_green_length
 ** 
 ** @param const xcb_randr_get_crtc_gamma_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_randr_get_crtc_gamma_green_length (const xcb_randr_get_crtc_gamma_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_randr_get_crtc_gamma_green_end
 ** 
 ** @param const xcb_randr_get_crtc_gamma_reply_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_randr_get_crtc_gamma_green_end (const xcb_randr_get_crtc_gamma_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** ushort * xcb_randr_get_crtc_gamma_blue
 ** 
 ** @param const xcb_randr_get_crtc_gamma_reply_t *R
 ** @returns ushort *
 **
 *****************************************************************************/
 
ushort *
xcb_randr_get_crtc_gamma_blue (const xcb_randr_get_crtc_gamma_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_randr_get_crtc_gamma_blue_length
 ** 
 ** @param const xcb_randr_get_crtc_gamma_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_randr_get_crtc_gamma_blue_length (const xcb_randr_get_crtc_gamma_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_randr_get_crtc_gamma_blue_end
 ** 
 ** @param const xcb_randr_get_crtc_gamma_reply_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_randr_get_crtc_gamma_blue_end (const xcb_randr_get_crtc_gamma_reply_t *R  /**< */);

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 * 
 * The parameter @p e supplied to this function must be NULL if
 * xcb_randr_get_crtc_gamma_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */

/*****************************************************************************
 **
 ** xcb_randr_get_crtc_gamma_reply_t * xcb_randr_get_crtc_gamma_reply
 ** 
 ** @param xcb_connection_t                   *c
 ** @param xcb_randr_get_crtc_gamma_cookie_t   cookie
 ** @param xcb_generic_error_t               **e
 ** @returns xcb_randr_get_crtc_gamma_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_randr_get_crtc_gamma_reply_t *
xcb_randr_get_crtc_gamma_reply (xcb_connection_t                   *c  /**< */,
                                xcb_randr_get_crtc_gamma_cookie_t   cookie  /**< */,
                                xcb_generic_error_t               **e  /**< */);

extern(C) int
xcb_randr_set_crtc_gamma_sizeof (const void  *_buffer  /**< */);

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
 ** xcb_void_cookie_t xcb_randr_set_crtc_gamma_checked
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_randr_crtc_t  crtc
 ** @param ushort            size
 ** @param const ushort     *red
 ** @param const ushort     *green
 ** @param const ushort     *blue
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_randr_set_crtc_gamma_checked (xcb_connection_t *c  /**< */,
                                  xcb_randr_crtc_t  crtc  /**< */,
                                  ushort            size  /**< */,
                                  const ushort     *red  /**< */,
                                  const ushort     *green  /**< */,
                                  const ushort     *blue  /**< */);

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
 ** xcb_void_cookie_t xcb_randr_set_crtc_gamma
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_randr_crtc_t  crtc
 ** @param ushort            size
 ** @param const ushort     *red
 ** @param const ushort     *green
 ** @param const ushort     *blue
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_randr_set_crtc_gamma (xcb_connection_t *c  /**< */,
                          xcb_randr_crtc_t  crtc  /**< */,
                          ushort            size  /**< */,
                          const ushort     *red  /**< */,
                          const ushort     *green  /**< */,
                          const ushort     *blue  /**< */);

extern(C) int
xcb_randr_get_screen_resources_current_sizeof (const void  *_buffer  /**< */);

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
 ** xcb_randr_get_screen_resources_current_cookie_t xcb_randr_get_screen_resources_current
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_window_t      window
 ** @returns xcb_randr_get_screen_resources_current_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_randr_get_screen_resources_current_cookie_t
xcb_randr_get_screen_resources_current (xcb_connection_t *c  /**< */,
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
 ** xcb_randr_get_screen_resources_current_cookie_t xcb_randr_get_screen_resources_current_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_window_t      window
 ** @returns xcb_randr_get_screen_resources_current_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_randr_get_screen_resources_current_cookie_t
xcb_randr_get_screen_resources_current_unchecked (xcb_connection_t *c  /**< */,
                                                  xcb_window_t      window  /**< */);


/*****************************************************************************
 **
 ** xcb_randr_crtc_t * xcb_randr_get_screen_resources_current_crtcs
 ** 
 ** @param const xcb_randr_get_screen_resources_current_reply_t *R
 ** @returns xcb_randr_crtc_t *
 **
 *****************************************************************************/
 
xcb_randr_crtc_t *
xcb_randr_get_screen_resources_current_crtcs (const xcb_randr_get_screen_resources_current_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_randr_get_screen_resources_current_crtcs_length
 ** 
 ** @param const xcb_randr_get_screen_resources_current_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_randr_get_screen_resources_current_crtcs_length (const xcb_randr_get_screen_resources_current_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_randr_get_screen_resources_current_crtcs_end
 ** 
 ** @param const xcb_randr_get_screen_resources_current_reply_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_randr_get_screen_resources_current_crtcs_end (const xcb_randr_get_screen_resources_current_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_randr_output_t * xcb_randr_get_screen_resources_current_outputs
 ** 
 ** @param const xcb_randr_get_screen_resources_current_reply_t *R
 ** @returns xcb_randr_output_t *
 **
 *****************************************************************************/
 
xcb_randr_output_t *
xcb_randr_get_screen_resources_current_outputs (const xcb_randr_get_screen_resources_current_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_randr_get_screen_resources_current_outputs_length
 ** 
 ** @param const xcb_randr_get_screen_resources_current_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_randr_get_screen_resources_current_outputs_length (const xcb_randr_get_screen_resources_current_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_randr_get_screen_resources_current_outputs_end
 ** 
 ** @param const xcb_randr_get_screen_resources_current_reply_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_randr_get_screen_resources_current_outputs_end (const xcb_randr_get_screen_resources_current_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_randr_mode_info_t * xcb_randr_get_screen_resources_current_modes
 ** 
 ** @param const xcb_randr_get_screen_resources_current_reply_t *R
 ** @returns xcb_randr_mode_info_t *
 **
 *****************************************************************************/
 
xcb_randr_mode_info_t *
xcb_randr_get_screen_resources_current_modes (const xcb_randr_get_screen_resources_current_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_randr_get_screen_resources_current_modes_length
 ** 
 ** @param const xcb_randr_get_screen_resources_current_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_randr_get_screen_resources_current_modes_length (const xcb_randr_get_screen_resources_current_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_randr_mode_info_iterator_t xcb_randr_get_screen_resources_current_modes_iterator
 ** 
 ** @param const xcb_randr_get_screen_resources_current_reply_t *R
 ** @returns xcb_randr_mode_info_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_randr_mode_info_iterator_t
xcb_randr_get_screen_resources_current_modes_iterator (const xcb_randr_get_screen_resources_current_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** ubyte * xcb_randr_get_screen_resources_current_names
 ** 
 ** @param const xcb_randr_get_screen_resources_current_reply_t *R
 ** @returns ubyte *
 **
 *****************************************************************************/
 
ubyte *
xcb_randr_get_screen_resources_current_names (const xcb_randr_get_screen_resources_current_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_randr_get_screen_resources_current_names_length
 ** 
 ** @param const xcb_randr_get_screen_resources_current_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_randr_get_screen_resources_current_names_length (const xcb_randr_get_screen_resources_current_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_randr_get_screen_resources_current_names_end
 ** 
 ** @param const xcb_randr_get_screen_resources_current_reply_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_randr_get_screen_resources_current_names_end (const xcb_randr_get_screen_resources_current_reply_t *R  /**< */);

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 * 
 * The parameter @p e supplied to this function must be NULL if
 * xcb_randr_get_screen_resources_current_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */

/*****************************************************************************
 **
 ** xcb_randr_get_screen_resources_current_reply_t * xcb_randr_get_screen_resources_current_reply
 ** 
 ** @param xcb_connection_t                                 *c
 ** @param xcb_randr_get_screen_resources_current_cookie_t   cookie
 ** @param xcb_generic_error_t                             **e
 ** @returns xcb_randr_get_screen_resources_current_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_randr_get_screen_resources_current_reply_t *
xcb_randr_get_screen_resources_current_reply (xcb_connection_t                                 *c  /**< */,
                                              xcb_randr_get_screen_resources_current_cookie_t   cookie  /**< */,
                                              xcb_generic_error_t                             **e  /**< */);

extern(C) int
xcb_randr_set_crtc_transform_sizeof (const void  *_buffer  /**< */,
                                     uint         filter_params_len  /**< */);

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
 ** xcb_void_cookie_t xcb_randr_set_crtc_transform_checked
 ** 
 ** @param xcb_connection_t         *c
 ** @param xcb_randr_crtc_t          crtc
 ** @param xcb_render_transform_t    transform
 ** @param ushort                    filter_len
 ** @param const char               *filter_name
 ** @param uint                      filter_params_len
 ** @param const xcb_render_fixed_t *filter_params
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_randr_set_crtc_transform_checked (xcb_connection_t         *c  /**< */,
                                      xcb_randr_crtc_t          crtc  /**< */,
                                      xcb_render_transform_t    transform  /**< */,
                                      ushort                    filter_len  /**< */,
                                      const char               *filter_name  /**< */,
                                      uint                      filter_params_len  /**< */,
                                      const xcb_render_fixed_t *filter_params  /**< */);

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
 ** xcb_void_cookie_t xcb_randr_set_crtc_transform
 ** 
 ** @param xcb_connection_t         *c
 ** @param xcb_randr_crtc_t          crtc
 ** @param xcb_render_transform_t    transform
 ** @param ushort                    filter_len
 ** @param const char               *filter_name
 ** @param uint                      filter_params_len
 ** @param const xcb_render_fixed_t *filter_params
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_randr_set_crtc_transform (xcb_connection_t         *c  /**< */,
                              xcb_randr_crtc_t          crtc  /**< */,
                              xcb_render_transform_t    transform  /**< */,
                              ushort                    filter_len  /**< */,
                              const char               *filter_name  /**< */,
                              uint                      filter_params_len  /**< */,
                              const xcb_render_fixed_t *filter_params  /**< */);

extern(C) int
xcb_randr_get_crtc_transform_sizeof (const void  *_buffer  /**< */);

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
 ** xcb_randr_get_crtc_transform_cookie_t xcb_randr_get_crtc_transform
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_randr_crtc_t  crtc
 ** @returns xcb_randr_get_crtc_transform_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_randr_get_crtc_transform_cookie_t
xcb_randr_get_crtc_transform (xcb_connection_t *c  /**< */,
                              xcb_randr_crtc_t  crtc  /**< */);

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
 ** xcb_randr_get_crtc_transform_cookie_t xcb_randr_get_crtc_transform_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_randr_crtc_t  crtc
 ** @returns xcb_randr_get_crtc_transform_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_randr_get_crtc_transform_cookie_t
xcb_randr_get_crtc_transform_unchecked (xcb_connection_t *c  /**< */,
                                        xcb_randr_crtc_t  crtc  /**< */);


/*****************************************************************************
 **
 ** char * xcb_randr_get_crtc_transform_pending_filter_name
 ** 
 ** @param const xcb_randr_get_crtc_transform_reply_t *R
 ** @returns char *
 **
 *****************************************************************************/
 
char *
xcb_randr_get_crtc_transform_pending_filter_name (const xcb_randr_get_crtc_transform_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_randr_get_crtc_transform_pending_filter_name_length
 ** 
 ** @param const xcb_randr_get_crtc_transform_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_randr_get_crtc_transform_pending_filter_name_length (const xcb_randr_get_crtc_transform_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_randr_get_crtc_transform_pending_filter_name_end
 ** 
 ** @param const xcb_randr_get_crtc_transform_reply_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_randr_get_crtc_transform_pending_filter_name_end (const xcb_randr_get_crtc_transform_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_render_fixed_t * xcb_randr_get_crtc_transform_pending_params
 ** 
 ** @param const xcb_randr_get_crtc_transform_reply_t *R
 ** @returns xcb_render_fixed_t *
 **
 *****************************************************************************/
 
xcb_render_fixed_t *
xcb_randr_get_crtc_transform_pending_params (const xcb_randr_get_crtc_transform_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_randr_get_crtc_transform_pending_params_length
 ** 
 ** @param const xcb_randr_get_crtc_transform_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_randr_get_crtc_transform_pending_params_length (const xcb_randr_get_crtc_transform_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_randr_get_crtc_transform_pending_params_end
 ** 
 ** @param const xcb_randr_get_crtc_transform_reply_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_randr_get_crtc_transform_pending_params_end (const xcb_randr_get_crtc_transform_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** char * xcb_randr_get_crtc_transform_current_filter_name
 ** 
 ** @param const xcb_randr_get_crtc_transform_reply_t *R
 ** @returns char *
 **
 *****************************************************************************/
 
char *
xcb_randr_get_crtc_transform_current_filter_name (const xcb_randr_get_crtc_transform_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_randr_get_crtc_transform_current_filter_name_length
 ** 
 ** @param const xcb_randr_get_crtc_transform_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_randr_get_crtc_transform_current_filter_name_length (const xcb_randr_get_crtc_transform_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_randr_get_crtc_transform_current_filter_name_end
 ** 
 ** @param const xcb_randr_get_crtc_transform_reply_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_randr_get_crtc_transform_current_filter_name_end (const xcb_randr_get_crtc_transform_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_render_fixed_t * xcb_randr_get_crtc_transform_current_params
 ** 
 ** @param const xcb_randr_get_crtc_transform_reply_t *R
 ** @returns xcb_render_fixed_t *
 **
 *****************************************************************************/
 
xcb_render_fixed_t *
xcb_randr_get_crtc_transform_current_params (const xcb_randr_get_crtc_transform_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_randr_get_crtc_transform_current_params_length
 ** 
 ** @param const xcb_randr_get_crtc_transform_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_randr_get_crtc_transform_current_params_length (const xcb_randr_get_crtc_transform_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_randr_get_crtc_transform_current_params_end
 ** 
 ** @param const xcb_randr_get_crtc_transform_reply_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_randr_get_crtc_transform_current_params_end (const xcb_randr_get_crtc_transform_reply_t *R  /**< */);

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 * 
 * The parameter @p e supplied to this function must be NULL if
 * xcb_randr_get_crtc_transform_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */

/*****************************************************************************
 **
 ** xcb_randr_get_crtc_transform_reply_t * xcb_randr_get_crtc_transform_reply
 ** 
 ** @param xcb_connection_t                       *c
 ** @param xcb_randr_get_crtc_transform_cookie_t   cookie
 ** @param xcb_generic_error_t                   **e
 ** @returns xcb_randr_get_crtc_transform_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_randr_get_crtc_transform_reply_t *
xcb_randr_get_crtc_transform_reply (xcb_connection_t                       *c  /**< */,
                                    xcb_randr_get_crtc_transform_cookie_t   cookie  /**< */,
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
 ** xcb_randr_get_panning_cookie_t xcb_randr_get_panning
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_randr_crtc_t  crtc
 ** @returns xcb_randr_get_panning_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_randr_get_panning_cookie_t
xcb_randr_get_panning (xcb_connection_t *c  /**< */,
                       xcb_randr_crtc_t  crtc  /**< */);

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
 ** xcb_randr_get_panning_cookie_t xcb_randr_get_panning_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_randr_crtc_t  crtc
 ** @returns xcb_randr_get_panning_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_randr_get_panning_cookie_t
xcb_randr_get_panning_unchecked (xcb_connection_t *c  /**< */,
                                 xcb_randr_crtc_t  crtc  /**< */);

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 * 
 * The parameter @p e supplied to this function must be NULL if
 * xcb_randr_get_panning_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */

/*****************************************************************************
 **
 ** xcb_randr_get_panning_reply_t * xcb_randr_get_panning_reply
 ** 
 ** @param xcb_connection_t                *c
 ** @param xcb_randr_get_panning_cookie_t   cookie
 ** @param xcb_generic_error_t            **e
 ** @returns xcb_randr_get_panning_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_randr_get_panning_reply_t *
xcb_randr_get_panning_reply (xcb_connection_t                *c  /**< */,
                             xcb_randr_get_panning_cookie_t   cookie  /**< */,
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
 ** xcb_randr_set_panning_cookie_t xcb_randr_set_panning
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_randr_crtc_t  crtc
 ** @param xcb_timestamp_t   timestamp
 ** @param ushort            left
 ** @param ushort            top
 ** @param ushort            width
 ** @param ushort            height
 ** @param ushort            track_left
 ** @param ushort            track_top
 ** @param ushort            track_width
 ** @param ushort            track_height
 ** @param short             border_left
 ** @param short             border_top
 ** @param short             border_right
 ** @param short             border_bottom
 ** @returns xcb_randr_set_panning_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_randr_set_panning_cookie_t
xcb_randr_set_panning (xcb_connection_t *c  /**< */,
                       xcb_randr_crtc_t  crtc  /**< */,
                       xcb_timestamp_t   timestamp  /**< */,
                       ushort            left  /**< */,
                       ushort            top  /**< */,
                       ushort            width  /**< */,
                       ushort            height  /**< */,
                       ushort            track_left  /**< */,
                       ushort            track_top  /**< */,
                       ushort            track_width  /**< */,
                       ushort            track_height  /**< */,
                       short             border_left  /**< */,
                       short             border_top  /**< */,
                       short             border_right  /**< */,
                       short             border_bottom  /**< */);

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
 ** xcb_randr_set_panning_cookie_t xcb_randr_set_panning_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_randr_crtc_t  crtc
 ** @param xcb_timestamp_t   timestamp
 ** @param ushort            left
 ** @param ushort            top
 ** @param ushort            width
 ** @param ushort            height
 ** @param ushort            track_left
 ** @param ushort            track_top
 ** @param ushort            track_width
 ** @param ushort            track_height
 ** @param short             border_left
 ** @param short             border_top
 ** @param short             border_right
 ** @param short             border_bottom
 ** @returns xcb_randr_set_panning_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_randr_set_panning_cookie_t
xcb_randr_set_panning_unchecked (xcb_connection_t *c  /**< */,
                                 xcb_randr_crtc_t  crtc  /**< */,
                                 xcb_timestamp_t   timestamp  /**< */,
                                 ushort            left  /**< */,
                                 ushort            top  /**< */,
                                 ushort            width  /**< */,
                                 ushort            height  /**< */,
                                 ushort            track_left  /**< */,
                                 ushort            track_top  /**< */,
                                 ushort            track_width  /**< */,
                                 ushort            track_height  /**< */,
                                 short             border_left  /**< */,
                                 short             border_top  /**< */,
                                 short             border_right  /**< */,
                                 short             border_bottom  /**< */);

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 * 
 * The parameter @p e supplied to this function must be NULL if
 * xcb_randr_set_panning_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */

/*****************************************************************************
 **
 ** xcb_randr_set_panning_reply_t * xcb_randr_set_panning_reply
 ** 
 ** @param xcb_connection_t                *c
 ** @param xcb_randr_set_panning_cookie_t   cookie
 ** @param xcb_generic_error_t            **e
 ** @returns xcb_randr_set_panning_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_randr_set_panning_reply_t *
xcb_randr_set_panning_reply (xcb_connection_t                *c  /**< */,
                             xcb_randr_set_panning_cookie_t   cookie  /**< */,
                             xcb_generic_error_t            **e  /**< */);

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
 ** xcb_void_cookie_t xcb_randr_set_output_primary_checked
 ** 
 ** @param xcb_connection_t   *c
 ** @param xcb_window_t        window
 ** @param xcb_randr_output_t  output
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_randr_set_output_primary_checked (xcb_connection_t   *c  /**< */,
                                      xcb_window_t        window  /**< */,
                                      xcb_randr_output_t  output  /**< */);

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
 ** xcb_void_cookie_t xcb_randr_set_output_primary
 ** 
 ** @param xcb_connection_t   *c
 ** @param xcb_window_t        window
 ** @param xcb_randr_output_t  output
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_randr_set_output_primary (xcb_connection_t   *c  /**< */,
                              xcb_window_t        window  /**< */,
                              xcb_randr_output_t  output  /**< */);

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
 ** xcb_randr_get_output_primary_cookie_t xcb_randr_get_output_primary
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_window_t      window
 ** @returns xcb_randr_get_output_primary_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_randr_get_output_primary_cookie_t
xcb_randr_get_output_primary (xcb_connection_t *c  /**< */,
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
 ** xcb_randr_get_output_primary_cookie_t xcb_randr_get_output_primary_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_window_t      window
 ** @returns xcb_randr_get_output_primary_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_randr_get_output_primary_cookie_t
xcb_randr_get_output_primary_unchecked (xcb_connection_t *c  /**< */,
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
 * xcb_randr_get_output_primary_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */

/*****************************************************************************
 **
 ** xcb_randr_get_output_primary_reply_t * xcb_randr_get_output_primary_reply
 ** 
 ** @param xcb_connection_t                       *c
 ** @param xcb_randr_get_output_primary_cookie_t   cookie
 ** @param xcb_generic_error_t                   **e
 ** @returns xcb_randr_get_output_primary_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_randr_get_output_primary_reply_t *
xcb_randr_get_output_primary_reply (xcb_connection_t                       *c  /**< */,
                                    xcb_randr_get_output_primary_cookie_t   cookie  /**< */,
                                    xcb_generic_error_t                   **e  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_randr_crtc_change_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_randr_crtc_change_t)
 */

/*****************************************************************************
 **
 ** void xcb_randr_crtc_change_next
 ** 
 ** @param xcb_randr_crtc_change_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_randr_crtc_change_next (xcb_randr_crtc_change_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_randr_crtc_change_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_randr_crtc_change_end
 ** 
 ** @param xcb_randr_crtc_change_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
xcb_generic_iterator_t
xcb_randr_crtc_change_end (xcb_randr_crtc_change_iterator_t i  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_randr_output_change_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_randr_output_change_t)
 */

/*****************************************************************************
 **
 ** void xcb_randr_output_change_next
 ** 
 ** @param xcb_randr_output_change_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_randr_output_change_next (xcb_randr_output_change_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_randr_output_change_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_randr_output_change_end
 ** 
 ** @param xcb_randr_output_change_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
xcb_generic_iterator_t
xcb_randr_output_change_end (xcb_randr_output_change_iterator_t i  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_randr_output_property_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_randr_output_property_t)
 */

/*****************************************************************************
 **
 ** void xcb_randr_output_property_next
 ** 
 ** @param xcb_randr_output_property_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_randr_output_property_next (xcb_randr_output_property_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_randr_output_property_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_randr_output_property_end
 ** 
 ** @param xcb_randr_output_property_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
xcb_generic_iterator_t
xcb_randr_output_property_end (xcb_randr_output_property_iterator_t i  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_randr_notify_data_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_randr_notify_data_t)
 */

/*****************************************************************************
 **
 ** void xcb_randr_notify_data_next
 ** 
 ** @param xcb_randr_notify_data_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_randr_notify_data_next (xcb_randr_notify_data_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_randr_notify_data_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_randr_notify_data_end
 ** 
 ** @param xcb_randr_notify_data_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
xcb_generic_iterator_t
xcb_randr_notify_data_end (xcb_randr_notify_data_iterator_t i  /**< */);

/**
 * @}
 */
