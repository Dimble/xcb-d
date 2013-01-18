/*
 * This file generated automatically from xf86vidmode.xml by d_client.py.
 * Edit at your peril.
 */

/**
 * @defgroup XCB_XF86VidMode_API XCB XF86VidMode API
 * @brief XF86VidMode XCB Protocol Implementation.
 * @{
 **/

module interim.xcb.xf86vidmode;

import interim.xcb.xcb;

const int XCB_XF86VIDMODE_MAJOR_VERSION = 2;
const int XCB_XF86VIDMODE_MINOR_VERSION = 2;
  
extern(C) xcb_extension_t xcb_xf86vidmode_id;

alias uint xcb_xf86vidmode_syncrange_t;

/**
 * @brief xcb_xf86vidmode_syncrange_iterator_t
 **/
struct xcb_xf86vidmode_syncrange_iterator_t {
    xcb_xf86vidmode_syncrange_t *data; /**<  */
    int                          rem; /**<  */
    int                          index; /**<  */
}

alias uint xcb_xf86vidmode_dotclock_t;

/**
 * @brief xcb_xf86vidmode_dotclock_iterator_t
 **/
struct xcb_xf86vidmode_dotclock_iterator_t {
    xcb_xf86vidmode_dotclock_t *data; /**<  */
    int                         rem; /**<  */
    int                         index; /**<  */
}

enum XcbXf86vidmodeModeFlag {
    POSITIVE_H_SYNC = 1,
    NEGATIVE_H_SYNC = 2,
    POSITIVE_V_SYNC = 4,
    NEGATIVE_V_SYNC = 8,
    INTERLACE       = 16,
    COMPOSITE_SYNC  = 32,
    POSITIVE_C_SYNC = 64,
    NEGATIVE_C_SYNC = 128,
    H_SKEW          = 256,
    BROADCAST       = 512,
    PIXMUX          = 1024,
    DOUBLE_CLOCK    = 2048,
    HALF_CLOCK      = 4096
}
alias XcbXf86vidmodeModeFlag xcb_xf86vidmode_mode_flag_t;

enum XcbXf86vidmodeClockFlag {
    PROGRAMABLE = 1
}
alias XcbXf86vidmodeClockFlag xcb_xf86vidmode_clock_flag_t;

enum XcbXf86vidmodePermission {
    READ  = 1,
    WRITE = 2
}
alias XcbXf86vidmodePermission xcb_xf86vidmode_permission_t;

/**
 * @brief xcb_xf86vidmode_mode_info_t
 **/
struct xcb_xf86vidmode_mode_info_t {
    xcb_xf86vidmode_dotclock_t dotclock; /**<  */
    ushort                     hdisplay; /**<  */
    ushort                     hsyncstart; /**<  */
    ushort                     hsyncend; /**<  */
    ushort                     htotal; /**<  */
    uint                       hskew; /**<  */
    ushort                     vdisplay; /**<  */
    ushort                     vsyncstart; /**<  */
    ushort                     vsyncend; /**<  */
    ushort                     vtotal; /**<  */
    ubyte                      pad0[4]; /**<  */
    uint                       flags; /**<  */
    ubyte                      pad1[12]; /**<  */
    uint                       privsize; /**<  */
}

/**
 * @brief xcb_xf86vidmode_mode_info_iterator_t
 **/
struct xcb_xf86vidmode_mode_info_iterator_t {
    xcb_xf86vidmode_mode_info_t *data; /**<  */
    int                          rem; /**<  */
    int                          index; /**<  */
}

/**
 * @brief xcb_xf86vidmode_query_version_cookie_t
 **/
struct xcb_xf86vidmode_query_version_cookie_t {
    uint sequence; /**<  */
}

/** Opcode for xcb_xf86vidmode_query_version. */
const ubyte XCB_XF86VIDMODE_QUERY_VERSION = 0;

/**
 * @brief xcb_xf86vidmode_query_version_request_t
 **/
struct xcb_xf86vidmode_query_version_request_t {
    ubyte  major_opcode; /**<  */
    ubyte  minor_opcode; /**<  */
    ushort length; /**<  */
}

/**
 * @brief xcb_xf86vidmode_query_version_reply_t
 **/
struct xcb_xf86vidmode_query_version_reply_t {
    ubyte  response_type; /**<  */
    ubyte  pad0; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    ushort major_version; /**<  */
    ushort minor_version; /**<  */
}

/**
 * @brief xcb_xf86vidmode_get_mode_line_cookie_t
 **/
struct xcb_xf86vidmode_get_mode_line_cookie_t {
    uint sequence; /**<  */
}

/** Opcode for xcb_xf86vidmode_get_mode_line. */
const ubyte XCB_XF86VIDMODE_GET_MODE_LINE = 1;

/**
 * @brief xcb_xf86vidmode_get_mode_line_request_t
 **/
struct xcb_xf86vidmode_get_mode_line_request_t {
    ubyte  major_opcode; /**<  */
    ubyte  minor_opcode; /**<  */
    ushort length; /**<  */
    ushort screen; /**<  */
    ubyte  pad0[2]; /**<  */
}

/**
 * @brief xcb_xf86vidmode_get_mode_line_reply_t
 **/
struct xcb_xf86vidmode_get_mode_line_reply_t {
    ubyte                      response_type; /**<  */
    ubyte                      pad0; /**<  */
    ushort                     sequence; /**<  */
    uint                       length; /**<  */
    xcb_xf86vidmode_dotclock_t dotclock; /**<  */
    ushort                     hdisplay; /**<  */
    ushort                     hsyncstart; /**<  */
    ushort                     hsyncend; /**<  */
    ushort                     htotal; /**<  */
    ushort                     hskew; /**<  */
    ushort                     vdisplay; /**<  */
    ushort                     vsyncstart; /**<  */
    ushort                     vsyncend; /**<  */
    ushort                     vtotal; /**<  */
    ubyte                      pad1[2]; /**<  */
    uint                       flags; /**<  */
    ubyte                      pad2[12]; /**<  */
    uint                       privsize; /**<  */
}

/** Opcode for xcb_xf86vidmode_mod_mode_line. */
const ubyte XCB_XF86VIDMODE_MOD_MODE_LINE = 2;

/**
 * @brief xcb_xf86vidmode_mod_mode_line_request_t
 **/
struct xcb_xf86vidmode_mod_mode_line_request_t {
    ubyte  major_opcode; /**<  */
    ubyte  minor_opcode; /**<  */
    ushort length; /**<  */
    uint   screen; /**<  */
    ushort hdisplay; /**<  */
    ushort hsyncstart; /**<  */
    ushort hsyncend; /**<  */
    ushort htotal; /**<  */
    ushort hskew; /**<  */
    ushort vdisplay; /**<  */
    ushort vsyncstart; /**<  */
    ushort vsyncend; /**<  */
    ushort vtotal; /**<  */
    ubyte  pad0[2]; /**<  */
    uint   flags; /**<  */
    ubyte  pad1[12]; /**<  */
    uint   privsize; /**<  */
}

/** Opcode for xcb_xf86vidmode_switch_mode. */
const ubyte XCB_XF86VIDMODE_SWITCH_MODE = 3;

/**
 * @brief xcb_xf86vidmode_switch_mode_request_t
 **/
struct xcb_xf86vidmode_switch_mode_request_t {
    ubyte  major_opcode; /**<  */
    ubyte  minor_opcode; /**<  */
    ushort length; /**<  */
    ushort screen; /**<  */
    ushort zoom; /**<  */
}

/**
 * @brief xcb_xf86vidmode_get_monitor_cookie_t
 **/
struct xcb_xf86vidmode_get_monitor_cookie_t {
    uint sequence; /**<  */
}

/** Opcode for xcb_xf86vidmode_get_monitor. */
const ubyte XCB_XF86VIDMODE_GET_MONITOR = 4;

/**
 * @brief xcb_xf86vidmode_get_monitor_request_t
 **/
struct xcb_xf86vidmode_get_monitor_request_t {
    ubyte  major_opcode; /**<  */
    ubyte  minor_opcode; /**<  */
    ushort length; /**<  */
    ushort screen; /**<  */
    ubyte  pad0[2]; /**<  */
}

/**
 * @brief xcb_xf86vidmode_get_monitor_reply_t
 **/
struct xcb_xf86vidmode_get_monitor_reply_t {
    ubyte  response_type; /**<  */
    ubyte  pad0; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    ubyte  vendor_length; /**<  */
    ubyte  model_length; /**<  */
    ubyte  num_hsync; /**<  */
    ubyte  num_vsync; /**<  */
    ubyte  pad1[20]; /**<  */
}

/** Opcode for xcb_xf86vidmode_lock_mode_switch. */
const ubyte XCB_XF86VIDMODE_LOCK_MODE_SWITCH = 5;

/**
 * @brief xcb_xf86vidmode_lock_mode_switch_request_t
 **/
struct xcb_xf86vidmode_lock_mode_switch_request_t {
    ubyte  major_opcode; /**<  */
    ubyte  minor_opcode; /**<  */
    ushort length; /**<  */
    ushort screen; /**<  */
    ushort lock; /**<  */
}

/**
 * @brief xcb_xf86vidmode_get_all_mode_lines_cookie_t
 **/
struct xcb_xf86vidmode_get_all_mode_lines_cookie_t {
    uint sequence; /**<  */
}

/** Opcode for xcb_xf86vidmode_get_all_mode_lines. */
const ubyte XCB_XF86VIDMODE_GET_ALL_MODE_LINES = 6;

/**
 * @brief xcb_xf86vidmode_get_all_mode_lines_request_t
 **/
struct xcb_xf86vidmode_get_all_mode_lines_request_t {
    ubyte  major_opcode; /**<  */
    ubyte  minor_opcode; /**<  */
    ushort length; /**<  */
    ushort screen; /**<  */
    ubyte  pad0[2]; /**<  */
}

/**
 * @brief xcb_xf86vidmode_get_all_mode_lines_reply_t
 **/
struct xcb_xf86vidmode_get_all_mode_lines_reply_t {
    ubyte  response_type; /**<  */
    ubyte  pad0; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    uint   modecount; /**<  */
    ubyte  pad1[20]; /**<  */
}

/** Opcode for xcb_xf86vidmode_add_mode_line. */
const ubyte XCB_XF86VIDMODE_ADD_MODE_LINE = 7;

/**
 * @brief xcb_xf86vidmode_add_mode_line_request_t
 **/
struct xcb_xf86vidmode_add_mode_line_request_t {
    ubyte                      major_opcode; /**<  */
    ubyte                      minor_opcode; /**<  */
    ushort                     length; /**<  */
    uint                       screen; /**<  */
    xcb_xf86vidmode_dotclock_t dotclock; /**<  */
    ushort                     hdisplay; /**<  */
    ushort                     hsyncstart; /**<  */
    ushort                     hsyncend; /**<  */
    ushort                     htotal; /**<  */
    ushort                     hskew; /**<  */
    ushort                     vdisplay; /**<  */
    ushort                     vsyncstart; /**<  */
    ushort                     vsyncend; /**<  */
    ushort                     vtotal; /**<  */
    ubyte                      pad0[2]; /**<  */
    uint                       flags; /**<  */
    ubyte                      pad1[12]; /**<  */
    uint                       privsize; /**<  */
    xcb_xf86vidmode_dotclock_t after_dotclock; /**<  */
    ushort                     after_hdisplay; /**<  */
    ushort                     after_hsyncstart; /**<  */
    ushort                     after_hsyncend; /**<  */
    ushort                     after_htotal; /**<  */
    ushort                     after_hskew; /**<  */
    ushort                     after_vdisplay; /**<  */
    ushort                     after_vsyncstart; /**<  */
    ushort                     after_vsyncend; /**<  */
    ushort                     after_vtotal; /**<  */
    ubyte                      pad2[2]; /**<  */
    uint                       after_flags; /**<  */
    ubyte                      pad3[12]; /**<  */
}

/** Opcode for xcb_xf86vidmode_delete_mode_line. */
const ubyte XCB_XF86VIDMODE_DELETE_MODE_LINE = 8;

/**
 * @brief xcb_xf86vidmode_delete_mode_line_request_t
 **/
struct xcb_xf86vidmode_delete_mode_line_request_t {
    ubyte                      major_opcode; /**<  */
    ubyte                      minor_opcode; /**<  */
    ushort                     length; /**<  */
    uint                       screen; /**<  */
    xcb_xf86vidmode_dotclock_t dotclock; /**<  */
    ushort                     hdisplay; /**<  */
    ushort                     hsyncstart; /**<  */
    ushort                     hsyncend; /**<  */
    ushort                     htotal; /**<  */
    ushort                     hskew; /**<  */
    ushort                     vdisplay; /**<  */
    ushort                     vsyncstart; /**<  */
    ushort                     vsyncend; /**<  */
    ushort                     vtotal; /**<  */
    ubyte                      pad0[2]; /**<  */
    uint                       flags; /**<  */
    ubyte                      pad1[12]; /**<  */
    uint                       privsize; /**<  */
}

/**
 * @brief xcb_xf86vidmode_validate_mode_line_cookie_t
 **/
struct xcb_xf86vidmode_validate_mode_line_cookie_t {
    uint sequence; /**<  */
}

/** Opcode for xcb_xf86vidmode_validate_mode_line. */
const ubyte XCB_XF86VIDMODE_VALIDATE_MODE_LINE = 9;

/**
 * @brief xcb_xf86vidmode_validate_mode_line_request_t
 **/
struct xcb_xf86vidmode_validate_mode_line_request_t {
    ubyte                      major_opcode; /**<  */
    ubyte                      minor_opcode; /**<  */
    ushort                     length; /**<  */
    uint                       screen; /**<  */
    xcb_xf86vidmode_dotclock_t dotclock; /**<  */
    ushort                     hdisplay; /**<  */
    ushort                     hsyncstart; /**<  */
    ushort                     hsyncend; /**<  */
    ushort                     htotal; /**<  */
    ushort                     hskew; /**<  */
    ushort                     vdisplay; /**<  */
    ushort                     vsyncstart; /**<  */
    ushort                     vsyncend; /**<  */
    ushort                     vtotal; /**<  */
    ubyte                      pad0[2]; /**<  */
    uint                       flags; /**<  */
    ubyte                      pad1[12]; /**<  */
    uint                       privsize; /**<  */
}

/**
 * @brief xcb_xf86vidmode_validate_mode_line_reply_t
 **/
struct xcb_xf86vidmode_validate_mode_line_reply_t {
    ubyte  response_type; /**<  */
    ubyte  pad0; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    uint   status; /**<  */
    ubyte  pad1[20]; /**<  */
}

/** Opcode for xcb_xf86vidmode_switch_to_mode. */
const ubyte XCB_XF86VIDMODE_SWITCH_TO_MODE = 10;

/**
 * @brief xcb_xf86vidmode_switch_to_mode_request_t
 **/
struct xcb_xf86vidmode_switch_to_mode_request_t {
    ubyte                      major_opcode; /**<  */
    ubyte                      minor_opcode; /**<  */
    ushort                     length; /**<  */
    uint                       screen; /**<  */
    xcb_xf86vidmode_dotclock_t dotclock; /**<  */
    ushort                     hdisplay; /**<  */
    ushort                     hsyncstart; /**<  */
    ushort                     hsyncend; /**<  */
    ushort                     htotal; /**<  */
    ushort                     hskew; /**<  */
    ushort                     vdisplay; /**<  */
    ushort                     vsyncstart; /**<  */
    ushort                     vsyncend; /**<  */
    ushort                     vtotal; /**<  */
    ubyte                      pad0[2]; /**<  */
    uint                       flags; /**<  */
    ubyte                      pad1[12]; /**<  */
    uint                       privsize; /**<  */
}

/**
 * @brief xcb_xf86vidmode_get_view_port_cookie_t
 **/
struct xcb_xf86vidmode_get_view_port_cookie_t {
    uint sequence; /**<  */
}

/** Opcode for xcb_xf86vidmode_get_view_port. */
const ubyte XCB_XF86VIDMODE_GET_VIEW_PORT = 11;

/**
 * @brief xcb_xf86vidmode_get_view_port_request_t
 **/
struct xcb_xf86vidmode_get_view_port_request_t {
    ubyte  major_opcode; /**<  */
    ubyte  minor_opcode; /**<  */
    ushort length; /**<  */
    ushort screen; /**<  */
    ubyte  pad0[2]; /**<  */
}

/**
 * @brief xcb_xf86vidmode_get_view_port_reply_t
 **/
struct xcb_xf86vidmode_get_view_port_reply_t {
    ubyte  response_type; /**<  */
    ubyte  pad0; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    uint   x; /**<  */
    uint   y; /**<  */
    ubyte  pad1[16]; /**<  */
}

/** Opcode for xcb_xf86vidmode_set_view_port. */
const ubyte XCB_XF86VIDMODE_SET_VIEW_PORT = 12;

/**
 * @brief xcb_xf86vidmode_set_view_port_request_t
 **/
struct xcb_xf86vidmode_set_view_port_request_t {
    ubyte  major_opcode; /**<  */
    ubyte  minor_opcode; /**<  */
    ushort length; /**<  */
    ushort screen; /**<  */
    ubyte  pad0[2]; /**<  */
    uint   x; /**<  */
    uint   y; /**<  */
}

/**
 * @brief xcb_xf86vidmode_get_dot_clocks_cookie_t
 **/
struct xcb_xf86vidmode_get_dot_clocks_cookie_t {
    uint sequence; /**<  */
}

/** Opcode for xcb_xf86vidmode_get_dot_clocks. */
const ubyte XCB_XF86VIDMODE_GET_DOT_CLOCKS = 13;

/**
 * @brief xcb_xf86vidmode_get_dot_clocks_request_t
 **/
struct xcb_xf86vidmode_get_dot_clocks_request_t {
    ubyte  major_opcode; /**<  */
    ubyte  minor_opcode; /**<  */
    ushort length; /**<  */
    ushort screen; /**<  */
    ubyte  pad0[2]; /**<  */
}

/**
 * @brief xcb_xf86vidmode_get_dot_clocks_reply_t
 **/
struct xcb_xf86vidmode_get_dot_clocks_reply_t {
    ubyte  response_type; /**<  */
    ubyte  pad0; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    uint   flags; /**<  */
    uint   clocks; /**<  */
    uint   maxclocks; /**<  */
    ubyte  pad1[12]; /**<  */
}

/** Opcode for xcb_xf86vidmode_set_client_version. */
const ubyte XCB_XF86VIDMODE_SET_CLIENT_VERSION = 14;

/**
 * @brief xcb_xf86vidmode_set_client_version_request_t
 **/
struct xcb_xf86vidmode_set_client_version_request_t {
    ubyte  major_opcode; /**<  */
    ubyte  minor_opcode; /**<  */
    ushort length; /**<  */
    ushort major; /**<  */
    ushort minor; /**<  */
}

/** Opcode for xcb_xf86vidmode_set_gamma. */
const ubyte XCB_XF86VIDMODE_SET_GAMMA = 15;

/**
 * @brief xcb_xf86vidmode_set_gamma_request_t
 **/
struct xcb_xf86vidmode_set_gamma_request_t {
    ubyte  major_opcode; /**<  */
    ubyte  minor_opcode; /**<  */
    ushort length; /**<  */
    ushort screen; /**<  */
    ubyte  pad0[2]; /**<  */
    uint   red; /**<  */
    uint   green; /**<  */
    uint   blue; /**<  */
    ubyte  pad1[12]; /**<  */
}

/**
 * @brief xcb_xf86vidmode_get_gamma_cookie_t
 **/
struct xcb_xf86vidmode_get_gamma_cookie_t {
    uint sequence; /**<  */
}

/** Opcode for xcb_xf86vidmode_get_gamma. */
const ubyte XCB_XF86VIDMODE_GET_GAMMA = 16;

/**
 * @brief xcb_xf86vidmode_get_gamma_request_t
 **/
struct xcb_xf86vidmode_get_gamma_request_t {
    ubyte  major_opcode; /**<  */
    ubyte  minor_opcode; /**<  */
    ushort length; /**<  */
    ushort screen; /**<  */
    ubyte  pad0[26]; /**<  */
}

/**
 * @brief xcb_xf86vidmode_get_gamma_reply_t
 **/
struct xcb_xf86vidmode_get_gamma_reply_t {
    ubyte  response_type; /**<  */
    ubyte  pad0; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    uint   red; /**<  */
    uint   green; /**<  */
    uint   blue; /**<  */
    ubyte  pad1[12]; /**<  */
}

/**
 * @brief xcb_xf86vidmode_get_gamma_ramp_cookie_t
 **/
struct xcb_xf86vidmode_get_gamma_ramp_cookie_t {
    uint sequence; /**<  */
}

/** Opcode for xcb_xf86vidmode_get_gamma_ramp. */
const ubyte XCB_XF86VIDMODE_GET_GAMMA_RAMP = 17;

/**
 * @brief xcb_xf86vidmode_get_gamma_ramp_request_t
 **/
struct xcb_xf86vidmode_get_gamma_ramp_request_t {
    ubyte  major_opcode; /**<  */
    ubyte  minor_opcode; /**<  */
    ushort length; /**<  */
    ushort screen; /**<  */
    ushort size; /**<  */
}

/**
 * @brief xcb_xf86vidmode_get_gamma_ramp_reply_t
 **/
struct xcb_xf86vidmode_get_gamma_ramp_reply_t {
    ubyte  response_type; /**<  */
    ubyte  pad0; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    ushort size; /**<  */
    ubyte  pad1[22]; /**<  */
}

/** Opcode for xcb_xf86vidmode_set_gamma_ramp. */
const ubyte XCB_XF86VIDMODE_SET_GAMMA_RAMP = 18;

/**
 * @brief xcb_xf86vidmode_set_gamma_ramp_request_t
 **/
struct xcb_xf86vidmode_set_gamma_ramp_request_t {
    ubyte  major_opcode; /**<  */
    ubyte  minor_opcode; /**<  */
    ushort length; /**<  */
    ushort screen; /**<  */
    ushort size; /**<  */
}

/**
 * @brief xcb_xf86vidmode_get_gamma_ramp_size_cookie_t
 **/
struct xcb_xf86vidmode_get_gamma_ramp_size_cookie_t {
    uint sequence; /**<  */
}

/** Opcode for xcb_xf86vidmode_get_gamma_ramp_size. */
const ubyte XCB_XF86VIDMODE_GET_GAMMA_RAMP_SIZE = 19;

/**
 * @brief xcb_xf86vidmode_get_gamma_ramp_size_request_t
 **/
struct xcb_xf86vidmode_get_gamma_ramp_size_request_t {
    ubyte  major_opcode; /**<  */
    ubyte  minor_opcode; /**<  */
    ushort length; /**<  */
    ushort screen; /**<  */
    ubyte  pad0[2]; /**<  */
}

/**
 * @brief xcb_xf86vidmode_get_gamma_ramp_size_reply_t
 **/
struct xcb_xf86vidmode_get_gamma_ramp_size_reply_t {
    ubyte  response_type; /**<  */
    ubyte  pad0; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    ushort size; /**<  */
    ubyte  pad1[22]; /**<  */
}

/**
 * @brief xcb_xf86vidmode_get_permissions_cookie_t
 **/
struct xcb_xf86vidmode_get_permissions_cookie_t {
    uint sequence; /**<  */
}

/** Opcode for xcb_xf86vidmode_get_permissions. */
const ubyte XCB_XF86VIDMODE_GET_PERMISSIONS = 20;

/**
 * @brief xcb_xf86vidmode_get_permissions_request_t
 **/
struct xcb_xf86vidmode_get_permissions_request_t {
    ubyte  major_opcode; /**<  */
    ubyte  minor_opcode; /**<  */
    ushort length; /**<  */
    ushort screen; /**<  */
    ubyte  pad0[2]; /**<  */
}

/**
 * @brief xcb_xf86vidmode_get_permissions_reply_t
 **/
struct xcb_xf86vidmode_get_permissions_reply_t {
    ubyte  response_type; /**<  */
    ubyte  pad0; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    uint   permissions; /**<  */
    ubyte  pad1[20]; /**<  */
}

/** Opcode for xcb_xf86vidmode_bad_clock. */
const ubyte XCB_XF86VIDMODE_BAD_CLOCK = 0;

/**
 * @brief xcb_xf86vidmode_bad_clock_error_t
 **/
struct xcb_xf86vidmode_bad_clock_error_t {
    ubyte  response_type; /**<  */
    ubyte  error_code; /**<  */
    ushort sequence; /**<  */
}

/** Opcode for xcb_xf86vidmode_bad_h_timings. */
const ubyte XCB_XF86VIDMODE_BAD_H_TIMINGS = 1;

/**
 * @brief xcb_xf86vidmode_bad_h_timings_error_t
 **/
struct xcb_xf86vidmode_bad_h_timings_error_t {
    ubyte  response_type; /**<  */
    ubyte  error_code; /**<  */
    ushort sequence; /**<  */
}

/** Opcode for xcb_xf86vidmode_bad_v_timings. */
const ubyte XCB_XF86VIDMODE_BAD_V_TIMINGS = 2;

/**
 * @brief xcb_xf86vidmode_bad_v_timings_error_t
 **/
struct xcb_xf86vidmode_bad_v_timings_error_t {
    ubyte  response_type; /**<  */
    ubyte  error_code; /**<  */
    ushort sequence; /**<  */
}

/** Opcode for xcb_xf86vidmode_mode_unsuitable. */
const ubyte XCB_XF86VIDMODE_MODE_UNSUITABLE = 3;

/**
 * @brief xcb_xf86vidmode_mode_unsuitable_error_t
 **/
struct xcb_xf86vidmode_mode_unsuitable_error_t {
    ubyte  response_type; /**<  */
    ubyte  error_code; /**<  */
    ushort sequence; /**<  */
}

/** Opcode for xcb_xf86vidmode_extension_disabled. */
const ubyte XCB_XF86VIDMODE_EXTENSION_DISABLED = 4;

/**
 * @brief xcb_xf86vidmode_extension_disabled_error_t
 **/
struct xcb_xf86vidmode_extension_disabled_error_t {
    ubyte  response_type; /**<  */
    ubyte  error_code; /**<  */
    ushort sequence; /**<  */
}

/** Opcode for xcb_xf86vidmode_client_not_local. */
const ubyte XCB_XF86VIDMODE_CLIENT_NOT_LOCAL = 5;

/**
 * @brief xcb_xf86vidmode_client_not_local_error_t
 **/
struct xcb_xf86vidmode_client_not_local_error_t {
    ubyte  response_type; /**<  */
    ubyte  error_code; /**<  */
    ushort sequence; /**<  */
}

/** Opcode for xcb_xf86vidmode_zoom_locked. */
const ubyte XCB_XF86VIDMODE_ZOOM_LOCKED = 6;

/**
 * @brief xcb_xf86vidmode_zoom_locked_error_t
 **/
struct xcb_xf86vidmode_zoom_locked_error_t {
    ubyte  response_type; /**<  */
    ubyte  error_code; /**<  */
    ushort sequence; /**<  */
}

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_xf86vidmode_syncrange_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_xf86vidmode_syncrange_t)
 */

/*****************************************************************************
 **
 ** void xcb_xf86vidmode_syncrange_next
 ** 
 ** @param xcb_xf86vidmode_syncrange_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_xf86vidmode_syncrange_next (xcb_xf86vidmode_syncrange_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_xf86vidmode_syncrange_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xf86vidmode_syncrange_end
 ** 
 ** @param xcb_xf86vidmode_syncrange_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
xcb_generic_iterator_t
xcb_xf86vidmode_syncrange_end (xcb_xf86vidmode_syncrange_iterator_t i  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_xf86vidmode_dotclock_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_xf86vidmode_dotclock_t)
 */

/*****************************************************************************
 **
 ** void xcb_xf86vidmode_dotclock_next
 ** 
 ** @param xcb_xf86vidmode_dotclock_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_xf86vidmode_dotclock_next (xcb_xf86vidmode_dotclock_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_xf86vidmode_dotclock_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xf86vidmode_dotclock_end
 ** 
 ** @param xcb_xf86vidmode_dotclock_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
xcb_generic_iterator_t
xcb_xf86vidmode_dotclock_end (xcb_xf86vidmode_dotclock_iterator_t i  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_xf86vidmode_mode_info_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_xf86vidmode_mode_info_t)
 */

/*****************************************************************************
 **
 ** void xcb_xf86vidmode_mode_info_next
 ** 
 ** @param xcb_xf86vidmode_mode_info_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_xf86vidmode_mode_info_next (xcb_xf86vidmode_mode_info_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_xf86vidmode_mode_info_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xf86vidmode_mode_info_end
 ** 
 ** @param xcb_xf86vidmode_mode_info_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
xcb_generic_iterator_t
xcb_xf86vidmode_mode_info_end (xcb_xf86vidmode_mode_info_iterator_t i  /**< */);

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
 ** xcb_xf86vidmode_query_version_cookie_t xcb_xf86vidmode_query_version
 ** 
 ** @param xcb_connection_t *c
 ** @returns xcb_xf86vidmode_query_version_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_xf86vidmode_query_version_cookie_t
xcb_xf86vidmode_query_version (xcb_connection_t *c  /**< */);

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
 ** xcb_xf86vidmode_query_version_cookie_t xcb_xf86vidmode_query_version_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @returns xcb_xf86vidmode_query_version_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_xf86vidmode_query_version_cookie_t
xcb_xf86vidmode_query_version_unchecked (xcb_connection_t *c  /**< */);

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 * 
 * The parameter @p e supplied to this function must be NULL if
 * xcb_xf86vidmode_query_version_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */

/*****************************************************************************
 **
 ** xcb_xf86vidmode_query_version_reply_t * xcb_xf86vidmode_query_version_reply
 ** 
 ** @param xcb_connection_t                        *c
 ** @param xcb_xf86vidmode_query_version_cookie_t   cookie
 ** @param xcb_generic_error_t                    **e
 ** @returns xcb_xf86vidmode_query_version_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_xf86vidmode_query_version_reply_t *
xcb_xf86vidmode_query_version_reply (xcb_connection_t                        *c  /**< */,
                                     xcb_xf86vidmode_query_version_cookie_t   cookie  /**< */,
                                     xcb_generic_error_t                    **e  /**< */);

extern(C) int
xcb_xf86vidmode_get_mode_line_sizeof (const void  *_buffer  /**< */);

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
 ** xcb_xf86vidmode_get_mode_line_cookie_t xcb_xf86vidmode_get_mode_line
 ** 
 ** @param xcb_connection_t *c
 ** @param ushort            screen
 ** @returns xcb_xf86vidmode_get_mode_line_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_xf86vidmode_get_mode_line_cookie_t
xcb_xf86vidmode_get_mode_line (xcb_connection_t *c  /**< */,
                               ushort            screen  /**< */);

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
 ** xcb_xf86vidmode_get_mode_line_cookie_t xcb_xf86vidmode_get_mode_line_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @param ushort            screen
 ** @returns xcb_xf86vidmode_get_mode_line_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_xf86vidmode_get_mode_line_cookie_t
xcb_xf86vidmode_get_mode_line_unchecked (xcb_connection_t *c  /**< */,
                                         ushort            screen  /**< */);


/*****************************************************************************
 **
 ** ubyte * xcb_xf86vidmode_get_mode_line_private
 ** 
 ** @param const xcb_xf86vidmode_get_mode_line_reply_t *R
 ** @returns ubyte *
 **
 *****************************************************************************/
 
ubyte *
xcb_xf86vidmode_get_mode_line_private (const xcb_xf86vidmode_get_mode_line_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_xf86vidmode_get_mode_line_private_length
 ** 
 ** @param const xcb_xf86vidmode_get_mode_line_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xf86vidmode_get_mode_line_private_length (const xcb_xf86vidmode_get_mode_line_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xf86vidmode_get_mode_line_private_end
 ** 
 ** @param const xcb_xf86vidmode_get_mode_line_reply_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_xf86vidmode_get_mode_line_private_end (const xcb_xf86vidmode_get_mode_line_reply_t *R  /**< */);

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 * 
 * The parameter @p e supplied to this function must be NULL if
 * xcb_xf86vidmode_get_mode_line_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */

/*****************************************************************************
 **
 ** xcb_xf86vidmode_get_mode_line_reply_t * xcb_xf86vidmode_get_mode_line_reply
 ** 
 ** @param xcb_connection_t                        *c
 ** @param xcb_xf86vidmode_get_mode_line_cookie_t   cookie
 ** @param xcb_generic_error_t                    **e
 ** @returns xcb_xf86vidmode_get_mode_line_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_xf86vidmode_get_mode_line_reply_t *
xcb_xf86vidmode_get_mode_line_reply (xcb_connection_t                        *c  /**< */,
                                     xcb_xf86vidmode_get_mode_line_cookie_t   cookie  /**< */,
                                     xcb_generic_error_t                    **e  /**< */);

extern(C) int
xcb_xf86vidmode_mod_mode_line_sizeof (const void  *_buffer  /**< */);

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
 ** xcb_void_cookie_t xcb_xf86vidmode_mod_mode_line_checked
 ** 
 ** @param xcb_connection_t *c
 ** @param uint              screen
 ** @param ushort            hdisplay
 ** @param ushort            hsyncstart
 ** @param ushort            hsyncend
 ** @param ushort            htotal
 ** @param ushort            hskew
 ** @param ushort            vdisplay
 ** @param ushort            vsyncstart
 ** @param ushort            vsyncend
 ** @param ushort            vtotal
 ** @param uint              flags
 ** @param uint              privsize
 ** @param const ubyte      *private
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_xf86vidmode_mod_mode_line_checked (xcb_connection_t *c  /**< */,
                                       uint              screen  /**< */,
                                       ushort            hdisplay  /**< */,
                                       ushort            hsyncstart  /**< */,
                                       ushort            hsyncend  /**< */,
                                       ushort            htotal  /**< */,
                                       ushort            hskew  /**< */,
                                       ushort            vdisplay  /**< */,
                                       ushort            vsyncstart  /**< */,
                                       ushort            vsyncend  /**< */,
                                       ushort            vtotal  /**< */,
                                       uint              flags  /**< */,
                                       uint              privsize  /**< */,
                                       const ubyte      *private  /**< */);

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
 ** xcb_void_cookie_t xcb_xf86vidmode_mod_mode_line
 ** 
 ** @param xcb_connection_t *c
 ** @param uint              screen
 ** @param ushort            hdisplay
 ** @param ushort            hsyncstart
 ** @param ushort            hsyncend
 ** @param ushort            htotal
 ** @param ushort            hskew
 ** @param ushort            vdisplay
 ** @param ushort            vsyncstart
 ** @param ushort            vsyncend
 ** @param ushort            vtotal
 ** @param uint              flags
 ** @param uint              privsize
 ** @param const ubyte      *private
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_xf86vidmode_mod_mode_line (xcb_connection_t *c  /**< */,
                               uint              screen  /**< */,
                               ushort            hdisplay  /**< */,
                               ushort            hsyncstart  /**< */,
                               ushort            hsyncend  /**< */,
                               ushort            htotal  /**< */,
                               ushort            hskew  /**< */,
                               ushort            vdisplay  /**< */,
                               ushort            vsyncstart  /**< */,
                               ushort            vsyncend  /**< */,
                               ushort            vtotal  /**< */,
                               uint              flags  /**< */,
                               uint              privsize  /**< */,
                               const ubyte      *private  /**< */);

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
 ** xcb_void_cookie_t xcb_xf86vidmode_switch_mode_checked
 ** 
 ** @param xcb_connection_t *c
 ** @param ushort            screen
 ** @param ushort            zoom
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_xf86vidmode_switch_mode_checked (xcb_connection_t *c  /**< */,
                                     ushort            screen  /**< */,
                                     ushort            zoom  /**< */);

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
 ** xcb_void_cookie_t xcb_xf86vidmode_switch_mode
 ** 
 ** @param xcb_connection_t *c
 ** @param ushort            screen
 ** @param ushort            zoom
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_xf86vidmode_switch_mode (xcb_connection_t *c  /**< */,
                             ushort            screen  /**< */,
                             ushort            zoom  /**< */);

extern(C) int
xcb_xf86vidmode_get_monitor_sizeof (const void  *_buffer  /**< */);

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
 ** xcb_xf86vidmode_get_monitor_cookie_t xcb_xf86vidmode_get_monitor
 ** 
 ** @param xcb_connection_t *c
 ** @param ushort            screen
 ** @returns xcb_xf86vidmode_get_monitor_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_xf86vidmode_get_monitor_cookie_t
xcb_xf86vidmode_get_monitor (xcb_connection_t *c  /**< */,
                             ushort            screen  /**< */);

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
 ** xcb_xf86vidmode_get_monitor_cookie_t xcb_xf86vidmode_get_monitor_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @param ushort            screen
 ** @returns xcb_xf86vidmode_get_monitor_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_xf86vidmode_get_monitor_cookie_t
xcb_xf86vidmode_get_monitor_unchecked (xcb_connection_t *c  /**< */,
                                       ushort            screen  /**< */);


/*****************************************************************************
 **
 ** xcb_xf86vidmode_syncrange_t * xcb_xf86vidmode_get_monitor_hsync
 ** 
 ** @param const xcb_xf86vidmode_get_monitor_reply_t *R
 ** @returns xcb_xf86vidmode_syncrange_t *
 **
 *****************************************************************************/
 
xcb_xf86vidmode_syncrange_t *
xcb_xf86vidmode_get_monitor_hsync (const xcb_xf86vidmode_get_monitor_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_xf86vidmode_get_monitor_hsync_length
 ** 
 ** @param const xcb_xf86vidmode_get_monitor_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xf86vidmode_get_monitor_hsync_length (const xcb_xf86vidmode_get_monitor_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xf86vidmode_get_monitor_hsync_end
 ** 
 ** @param const xcb_xf86vidmode_get_monitor_reply_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_xf86vidmode_get_monitor_hsync_end (const xcb_xf86vidmode_get_monitor_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_xf86vidmode_syncrange_t * xcb_xf86vidmode_get_monitor_vsync
 ** 
 ** @param const xcb_xf86vidmode_get_monitor_reply_t *R
 ** @returns xcb_xf86vidmode_syncrange_t *
 **
 *****************************************************************************/
 
xcb_xf86vidmode_syncrange_t *
xcb_xf86vidmode_get_monitor_vsync (const xcb_xf86vidmode_get_monitor_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_xf86vidmode_get_monitor_vsync_length
 ** 
 ** @param const xcb_xf86vidmode_get_monitor_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xf86vidmode_get_monitor_vsync_length (const xcb_xf86vidmode_get_monitor_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xf86vidmode_get_monitor_vsync_end
 ** 
 ** @param const xcb_xf86vidmode_get_monitor_reply_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_xf86vidmode_get_monitor_vsync_end (const xcb_xf86vidmode_get_monitor_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** char * xcb_xf86vidmode_get_monitor_vendor
 ** 
 ** @param const xcb_xf86vidmode_get_monitor_reply_t *R
 ** @returns char *
 **
 *****************************************************************************/
 
char *
xcb_xf86vidmode_get_monitor_vendor (const xcb_xf86vidmode_get_monitor_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_xf86vidmode_get_monitor_vendor_length
 ** 
 ** @param const xcb_xf86vidmode_get_monitor_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xf86vidmode_get_monitor_vendor_length (const xcb_xf86vidmode_get_monitor_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xf86vidmode_get_monitor_vendor_end
 ** 
 ** @param const xcb_xf86vidmode_get_monitor_reply_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_xf86vidmode_get_monitor_vendor_end (const xcb_xf86vidmode_get_monitor_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** void * xcb_xf86vidmode_get_monitor_alignment_pad
 ** 
 ** @param const xcb_xf86vidmode_get_monitor_reply_t *R
 ** @returns void *
 **
 *****************************************************************************/
 
void *
xcb_xf86vidmode_get_monitor_alignment_pad (const xcb_xf86vidmode_get_monitor_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_xf86vidmode_get_monitor_alignment_pad_length
 ** 
 ** @param const xcb_xf86vidmode_get_monitor_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xf86vidmode_get_monitor_alignment_pad_length (const xcb_xf86vidmode_get_monitor_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xf86vidmode_get_monitor_alignment_pad_end
 ** 
 ** @param const xcb_xf86vidmode_get_monitor_reply_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_xf86vidmode_get_monitor_alignment_pad_end (const xcb_xf86vidmode_get_monitor_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** char * xcb_xf86vidmode_get_monitor_model
 ** 
 ** @param const xcb_xf86vidmode_get_monitor_reply_t *R
 ** @returns char *
 **
 *****************************************************************************/
 
char *
xcb_xf86vidmode_get_monitor_model (const xcb_xf86vidmode_get_monitor_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_xf86vidmode_get_monitor_model_length
 ** 
 ** @param const xcb_xf86vidmode_get_monitor_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xf86vidmode_get_monitor_model_length (const xcb_xf86vidmode_get_monitor_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xf86vidmode_get_monitor_model_end
 ** 
 ** @param const xcb_xf86vidmode_get_monitor_reply_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_xf86vidmode_get_monitor_model_end (const xcb_xf86vidmode_get_monitor_reply_t *R  /**< */);

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 * 
 * The parameter @p e supplied to this function must be NULL if
 * xcb_xf86vidmode_get_monitor_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */

/*****************************************************************************
 **
 ** xcb_xf86vidmode_get_monitor_reply_t * xcb_xf86vidmode_get_monitor_reply
 ** 
 ** @param xcb_connection_t                      *c
 ** @param xcb_xf86vidmode_get_monitor_cookie_t   cookie
 ** @param xcb_generic_error_t                  **e
 ** @returns xcb_xf86vidmode_get_monitor_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_xf86vidmode_get_monitor_reply_t *
xcb_xf86vidmode_get_monitor_reply (xcb_connection_t                      *c  /**< */,
                                   xcb_xf86vidmode_get_monitor_cookie_t   cookie  /**< */,
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
 ** xcb_void_cookie_t xcb_xf86vidmode_lock_mode_switch_checked
 ** 
 ** @param xcb_connection_t *c
 ** @param ushort            screen
 ** @param ushort            lock
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_xf86vidmode_lock_mode_switch_checked (xcb_connection_t *c  /**< */,
                                          ushort            screen  /**< */,
                                          ushort            lock  /**< */);

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
 ** xcb_void_cookie_t xcb_xf86vidmode_lock_mode_switch
 ** 
 ** @param xcb_connection_t *c
 ** @param ushort            screen
 ** @param ushort            lock
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_xf86vidmode_lock_mode_switch (xcb_connection_t *c  /**< */,
                                  ushort            screen  /**< */,
                                  ushort            lock  /**< */);

extern(C) int
xcb_xf86vidmode_get_all_mode_lines_sizeof (const void  *_buffer  /**< */);

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
 ** xcb_xf86vidmode_get_all_mode_lines_cookie_t xcb_xf86vidmode_get_all_mode_lines
 ** 
 ** @param xcb_connection_t *c
 ** @param ushort            screen
 ** @returns xcb_xf86vidmode_get_all_mode_lines_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_xf86vidmode_get_all_mode_lines_cookie_t
xcb_xf86vidmode_get_all_mode_lines (xcb_connection_t *c  /**< */,
                                    ushort            screen  /**< */);

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
 ** xcb_xf86vidmode_get_all_mode_lines_cookie_t xcb_xf86vidmode_get_all_mode_lines_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @param ushort            screen
 ** @returns xcb_xf86vidmode_get_all_mode_lines_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_xf86vidmode_get_all_mode_lines_cookie_t
xcb_xf86vidmode_get_all_mode_lines_unchecked (xcb_connection_t *c  /**< */,
                                              ushort            screen  /**< */);


/*****************************************************************************
 **
 ** xcb_xf86vidmode_mode_info_t * xcb_xf86vidmode_get_all_mode_lines_modeinfo
 ** 
 ** @param const xcb_xf86vidmode_get_all_mode_lines_reply_t *R
 ** @returns xcb_xf86vidmode_mode_info_t *
 **
 *****************************************************************************/
 
xcb_xf86vidmode_mode_info_t *
xcb_xf86vidmode_get_all_mode_lines_modeinfo (const xcb_xf86vidmode_get_all_mode_lines_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_xf86vidmode_get_all_mode_lines_modeinfo_length
 ** 
 ** @param const xcb_xf86vidmode_get_all_mode_lines_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xf86vidmode_get_all_mode_lines_modeinfo_length (const xcb_xf86vidmode_get_all_mode_lines_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_xf86vidmode_mode_info_iterator_t xcb_xf86vidmode_get_all_mode_lines_modeinfo_iterator
 ** 
 ** @param const xcb_xf86vidmode_get_all_mode_lines_reply_t *R
 ** @returns xcb_xf86vidmode_mode_info_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_xf86vidmode_mode_info_iterator_t
xcb_xf86vidmode_get_all_mode_lines_modeinfo_iterator (const xcb_xf86vidmode_get_all_mode_lines_reply_t *R  /**< */);

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 * 
 * The parameter @p e supplied to this function must be NULL if
 * xcb_xf86vidmode_get_all_mode_lines_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */

/*****************************************************************************
 **
 ** xcb_xf86vidmode_get_all_mode_lines_reply_t * xcb_xf86vidmode_get_all_mode_lines_reply
 ** 
 ** @param xcb_connection_t                             *c
 ** @param xcb_xf86vidmode_get_all_mode_lines_cookie_t   cookie
 ** @param xcb_generic_error_t                         **e
 ** @returns xcb_xf86vidmode_get_all_mode_lines_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_xf86vidmode_get_all_mode_lines_reply_t *
xcb_xf86vidmode_get_all_mode_lines_reply (xcb_connection_t                             *c  /**< */,
                                          xcb_xf86vidmode_get_all_mode_lines_cookie_t   cookie  /**< */,
                                          xcb_generic_error_t                         **e  /**< */);

extern(C) int
xcb_xf86vidmode_add_mode_line_sizeof (const void  *_buffer  /**< */);

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
 ** xcb_void_cookie_t xcb_xf86vidmode_add_mode_line_checked
 ** 
 ** @param xcb_connection_t           *c
 ** @param uint                        screen
 ** @param xcb_xf86vidmode_dotclock_t  dotclock
 ** @param ushort                      hdisplay
 ** @param ushort                      hsyncstart
 ** @param ushort                      hsyncend
 ** @param ushort                      htotal
 ** @param ushort                      hskew
 ** @param ushort                      vdisplay
 ** @param ushort                      vsyncstart
 ** @param ushort                      vsyncend
 ** @param ushort                      vtotal
 ** @param uint                        flags
 ** @param uint                        privsize
 ** @param xcb_xf86vidmode_dotclock_t  after_dotclock
 ** @param ushort                      after_hdisplay
 ** @param ushort                      after_hsyncstart
 ** @param ushort                      after_hsyncend
 ** @param ushort                      after_htotal
 ** @param ushort                      after_hskew
 ** @param ushort                      after_vdisplay
 ** @param ushort                      after_vsyncstart
 ** @param ushort                      after_vsyncend
 ** @param ushort                      after_vtotal
 ** @param uint                        after_flags
 ** @param const ubyte                *private
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_xf86vidmode_add_mode_line_checked (xcb_connection_t           *c  /**< */,
                                       uint                        screen  /**< */,
                                       xcb_xf86vidmode_dotclock_t  dotclock  /**< */,
                                       ushort                      hdisplay  /**< */,
                                       ushort                      hsyncstart  /**< */,
                                       ushort                      hsyncend  /**< */,
                                       ushort                      htotal  /**< */,
                                       ushort                      hskew  /**< */,
                                       ushort                      vdisplay  /**< */,
                                       ushort                      vsyncstart  /**< */,
                                       ushort                      vsyncend  /**< */,
                                       ushort                      vtotal  /**< */,
                                       uint                        flags  /**< */,
                                       uint                        privsize  /**< */,
                                       xcb_xf86vidmode_dotclock_t  after_dotclock  /**< */,
                                       ushort                      after_hdisplay  /**< */,
                                       ushort                      after_hsyncstart  /**< */,
                                       ushort                      after_hsyncend  /**< */,
                                       ushort                      after_htotal  /**< */,
                                       ushort                      after_hskew  /**< */,
                                       ushort                      after_vdisplay  /**< */,
                                       ushort                      after_vsyncstart  /**< */,
                                       ushort                      after_vsyncend  /**< */,
                                       ushort                      after_vtotal  /**< */,
                                       uint                        after_flags  /**< */,
                                       const ubyte                *private  /**< */);

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
 ** xcb_void_cookie_t xcb_xf86vidmode_add_mode_line
 ** 
 ** @param xcb_connection_t           *c
 ** @param uint                        screen
 ** @param xcb_xf86vidmode_dotclock_t  dotclock
 ** @param ushort                      hdisplay
 ** @param ushort                      hsyncstart
 ** @param ushort                      hsyncend
 ** @param ushort                      htotal
 ** @param ushort                      hskew
 ** @param ushort                      vdisplay
 ** @param ushort                      vsyncstart
 ** @param ushort                      vsyncend
 ** @param ushort                      vtotal
 ** @param uint                        flags
 ** @param uint                        privsize
 ** @param xcb_xf86vidmode_dotclock_t  after_dotclock
 ** @param ushort                      after_hdisplay
 ** @param ushort                      after_hsyncstart
 ** @param ushort                      after_hsyncend
 ** @param ushort                      after_htotal
 ** @param ushort                      after_hskew
 ** @param ushort                      after_vdisplay
 ** @param ushort                      after_vsyncstart
 ** @param ushort                      after_vsyncend
 ** @param ushort                      after_vtotal
 ** @param uint                        after_flags
 ** @param const ubyte                *private
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_xf86vidmode_add_mode_line (xcb_connection_t           *c  /**< */,
                               uint                        screen  /**< */,
                               xcb_xf86vidmode_dotclock_t  dotclock  /**< */,
                               ushort                      hdisplay  /**< */,
                               ushort                      hsyncstart  /**< */,
                               ushort                      hsyncend  /**< */,
                               ushort                      htotal  /**< */,
                               ushort                      hskew  /**< */,
                               ushort                      vdisplay  /**< */,
                               ushort                      vsyncstart  /**< */,
                               ushort                      vsyncend  /**< */,
                               ushort                      vtotal  /**< */,
                               uint                        flags  /**< */,
                               uint                        privsize  /**< */,
                               xcb_xf86vidmode_dotclock_t  after_dotclock  /**< */,
                               ushort                      after_hdisplay  /**< */,
                               ushort                      after_hsyncstart  /**< */,
                               ushort                      after_hsyncend  /**< */,
                               ushort                      after_htotal  /**< */,
                               ushort                      after_hskew  /**< */,
                               ushort                      after_vdisplay  /**< */,
                               ushort                      after_vsyncstart  /**< */,
                               ushort                      after_vsyncend  /**< */,
                               ushort                      after_vtotal  /**< */,
                               uint                        after_flags  /**< */,
                               const ubyte                *private  /**< */);

extern(C) int
xcb_xf86vidmode_delete_mode_line_sizeof (const void  *_buffer  /**< */);

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
 ** xcb_void_cookie_t xcb_xf86vidmode_delete_mode_line_checked
 ** 
 ** @param xcb_connection_t           *c
 ** @param uint                        screen
 ** @param xcb_xf86vidmode_dotclock_t  dotclock
 ** @param ushort                      hdisplay
 ** @param ushort                      hsyncstart
 ** @param ushort                      hsyncend
 ** @param ushort                      htotal
 ** @param ushort                      hskew
 ** @param ushort                      vdisplay
 ** @param ushort                      vsyncstart
 ** @param ushort                      vsyncend
 ** @param ushort                      vtotal
 ** @param uint                        flags
 ** @param uint                        privsize
 ** @param const ubyte                *private
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_xf86vidmode_delete_mode_line_checked (xcb_connection_t           *c  /**< */,
                                          uint                        screen  /**< */,
                                          xcb_xf86vidmode_dotclock_t  dotclock  /**< */,
                                          ushort                      hdisplay  /**< */,
                                          ushort                      hsyncstart  /**< */,
                                          ushort                      hsyncend  /**< */,
                                          ushort                      htotal  /**< */,
                                          ushort                      hskew  /**< */,
                                          ushort                      vdisplay  /**< */,
                                          ushort                      vsyncstart  /**< */,
                                          ushort                      vsyncend  /**< */,
                                          ushort                      vtotal  /**< */,
                                          uint                        flags  /**< */,
                                          uint                        privsize  /**< */,
                                          const ubyte                *private  /**< */);

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
 ** xcb_void_cookie_t xcb_xf86vidmode_delete_mode_line
 ** 
 ** @param xcb_connection_t           *c
 ** @param uint                        screen
 ** @param xcb_xf86vidmode_dotclock_t  dotclock
 ** @param ushort                      hdisplay
 ** @param ushort                      hsyncstart
 ** @param ushort                      hsyncend
 ** @param ushort                      htotal
 ** @param ushort                      hskew
 ** @param ushort                      vdisplay
 ** @param ushort                      vsyncstart
 ** @param ushort                      vsyncend
 ** @param ushort                      vtotal
 ** @param uint                        flags
 ** @param uint                        privsize
 ** @param const ubyte                *private
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_xf86vidmode_delete_mode_line (xcb_connection_t           *c  /**< */,
                                  uint                        screen  /**< */,
                                  xcb_xf86vidmode_dotclock_t  dotclock  /**< */,
                                  ushort                      hdisplay  /**< */,
                                  ushort                      hsyncstart  /**< */,
                                  ushort                      hsyncend  /**< */,
                                  ushort                      htotal  /**< */,
                                  ushort                      hskew  /**< */,
                                  ushort                      vdisplay  /**< */,
                                  ushort                      vsyncstart  /**< */,
                                  ushort                      vsyncend  /**< */,
                                  ushort                      vtotal  /**< */,
                                  uint                        flags  /**< */,
                                  uint                        privsize  /**< */,
                                  const ubyte                *private  /**< */);

extern(C) int
xcb_xf86vidmode_validate_mode_line_sizeof (const void  *_buffer  /**< */);

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
 ** xcb_xf86vidmode_validate_mode_line_cookie_t xcb_xf86vidmode_validate_mode_line
 ** 
 ** @param xcb_connection_t           *c
 ** @param uint                        screen
 ** @param xcb_xf86vidmode_dotclock_t  dotclock
 ** @param ushort                      hdisplay
 ** @param ushort                      hsyncstart
 ** @param ushort                      hsyncend
 ** @param ushort                      htotal
 ** @param ushort                      hskew
 ** @param ushort                      vdisplay
 ** @param ushort                      vsyncstart
 ** @param ushort                      vsyncend
 ** @param ushort                      vtotal
 ** @param uint                        flags
 ** @param uint                        privsize
 ** @param const ubyte                *private
 ** @returns xcb_xf86vidmode_validate_mode_line_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_xf86vidmode_validate_mode_line_cookie_t
xcb_xf86vidmode_validate_mode_line (xcb_connection_t           *c  /**< */,
                                    uint                        screen  /**< */,
                                    xcb_xf86vidmode_dotclock_t  dotclock  /**< */,
                                    ushort                      hdisplay  /**< */,
                                    ushort                      hsyncstart  /**< */,
                                    ushort                      hsyncend  /**< */,
                                    ushort                      htotal  /**< */,
                                    ushort                      hskew  /**< */,
                                    ushort                      vdisplay  /**< */,
                                    ushort                      vsyncstart  /**< */,
                                    ushort                      vsyncend  /**< */,
                                    ushort                      vtotal  /**< */,
                                    uint                        flags  /**< */,
                                    uint                        privsize  /**< */,
                                    const ubyte                *private  /**< */);

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
 ** xcb_xf86vidmode_validate_mode_line_cookie_t xcb_xf86vidmode_validate_mode_line_unchecked
 ** 
 ** @param xcb_connection_t           *c
 ** @param uint                        screen
 ** @param xcb_xf86vidmode_dotclock_t  dotclock
 ** @param ushort                      hdisplay
 ** @param ushort                      hsyncstart
 ** @param ushort                      hsyncend
 ** @param ushort                      htotal
 ** @param ushort                      hskew
 ** @param ushort                      vdisplay
 ** @param ushort                      vsyncstart
 ** @param ushort                      vsyncend
 ** @param ushort                      vtotal
 ** @param uint                        flags
 ** @param uint                        privsize
 ** @param const ubyte                *private
 ** @returns xcb_xf86vidmode_validate_mode_line_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_xf86vidmode_validate_mode_line_cookie_t
xcb_xf86vidmode_validate_mode_line_unchecked (xcb_connection_t           *c  /**< */,
                                              uint                        screen  /**< */,
                                              xcb_xf86vidmode_dotclock_t  dotclock  /**< */,
                                              ushort                      hdisplay  /**< */,
                                              ushort                      hsyncstart  /**< */,
                                              ushort                      hsyncend  /**< */,
                                              ushort                      htotal  /**< */,
                                              ushort                      hskew  /**< */,
                                              ushort                      vdisplay  /**< */,
                                              ushort                      vsyncstart  /**< */,
                                              ushort                      vsyncend  /**< */,
                                              ushort                      vtotal  /**< */,
                                              uint                        flags  /**< */,
                                              uint                        privsize  /**< */,
                                              const ubyte                *private  /**< */);

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 * 
 * The parameter @p e supplied to this function must be NULL if
 * xcb_xf86vidmode_validate_mode_line_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */

/*****************************************************************************
 **
 ** xcb_xf86vidmode_validate_mode_line_reply_t * xcb_xf86vidmode_validate_mode_line_reply
 ** 
 ** @param xcb_connection_t                             *c
 ** @param xcb_xf86vidmode_validate_mode_line_cookie_t   cookie
 ** @param xcb_generic_error_t                         **e
 ** @returns xcb_xf86vidmode_validate_mode_line_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_xf86vidmode_validate_mode_line_reply_t *
xcb_xf86vidmode_validate_mode_line_reply (xcb_connection_t                             *c  /**< */,
                                          xcb_xf86vidmode_validate_mode_line_cookie_t   cookie  /**< */,
                                          xcb_generic_error_t                         **e  /**< */);

extern(C) int
xcb_xf86vidmode_switch_to_mode_sizeof (const void  *_buffer  /**< */);

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
 ** xcb_void_cookie_t xcb_xf86vidmode_switch_to_mode_checked
 ** 
 ** @param xcb_connection_t           *c
 ** @param uint                        screen
 ** @param xcb_xf86vidmode_dotclock_t  dotclock
 ** @param ushort                      hdisplay
 ** @param ushort                      hsyncstart
 ** @param ushort                      hsyncend
 ** @param ushort                      htotal
 ** @param ushort                      hskew
 ** @param ushort                      vdisplay
 ** @param ushort                      vsyncstart
 ** @param ushort                      vsyncend
 ** @param ushort                      vtotal
 ** @param uint                        flags
 ** @param uint                        privsize
 ** @param const ubyte                *private
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_xf86vidmode_switch_to_mode_checked (xcb_connection_t           *c  /**< */,
                                        uint                        screen  /**< */,
                                        xcb_xf86vidmode_dotclock_t  dotclock  /**< */,
                                        ushort                      hdisplay  /**< */,
                                        ushort                      hsyncstart  /**< */,
                                        ushort                      hsyncend  /**< */,
                                        ushort                      htotal  /**< */,
                                        ushort                      hskew  /**< */,
                                        ushort                      vdisplay  /**< */,
                                        ushort                      vsyncstart  /**< */,
                                        ushort                      vsyncend  /**< */,
                                        ushort                      vtotal  /**< */,
                                        uint                        flags  /**< */,
                                        uint                        privsize  /**< */,
                                        const ubyte                *private  /**< */);

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
 ** xcb_void_cookie_t xcb_xf86vidmode_switch_to_mode
 ** 
 ** @param xcb_connection_t           *c
 ** @param uint                        screen
 ** @param xcb_xf86vidmode_dotclock_t  dotclock
 ** @param ushort                      hdisplay
 ** @param ushort                      hsyncstart
 ** @param ushort                      hsyncend
 ** @param ushort                      htotal
 ** @param ushort                      hskew
 ** @param ushort                      vdisplay
 ** @param ushort                      vsyncstart
 ** @param ushort                      vsyncend
 ** @param ushort                      vtotal
 ** @param uint                        flags
 ** @param uint                        privsize
 ** @param const ubyte                *private
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_xf86vidmode_switch_to_mode (xcb_connection_t           *c  /**< */,
                                uint                        screen  /**< */,
                                xcb_xf86vidmode_dotclock_t  dotclock  /**< */,
                                ushort                      hdisplay  /**< */,
                                ushort                      hsyncstart  /**< */,
                                ushort                      hsyncend  /**< */,
                                ushort                      htotal  /**< */,
                                ushort                      hskew  /**< */,
                                ushort                      vdisplay  /**< */,
                                ushort                      vsyncstart  /**< */,
                                ushort                      vsyncend  /**< */,
                                ushort                      vtotal  /**< */,
                                uint                        flags  /**< */,
                                uint                        privsize  /**< */,
                                const ubyte                *private  /**< */);

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
 ** xcb_xf86vidmode_get_view_port_cookie_t xcb_xf86vidmode_get_view_port
 ** 
 ** @param xcb_connection_t *c
 ** @param ushort            screen
 ** @returns xcb_xf86vidmode_get_view_port_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_xf86vidmode_get_view_port_cookie_t
xcb_xf86vidmode_get_view_port (xcb_connection_t *c  /**< */,
                               ushort            screen  /**< */);

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
 ** xcb_xf86vidmode_get_view_port_cookie_t xcb_xf86vidmode_get_view_port_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @param ushort            screen
 ** @returns xcb_xf86vidmode_get_view_port_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_xf86vidmode_get_view_port_cookie_t
xcb_xf86vidmode_get_view_port_unchecked (xcb_connection_t *c  /**< */,
                                         ushort            screen  /**< */);

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 * 
 * The parameter @p e supplied to this function must be NULL if
 * xcb_xf86vidmode_get_view_port_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */

/*****************************************************************************
 **
 ** xcb_xf86vidmode_get_view_port_reply_t * xcb_xf86vidmode_get_view_port_reply
 ** 
 ** @param xcb_connection_t                        *c
 ** @param xcb_xf86vidmode_get_view_port_cookie_t   cookie
 ** @param xcb_generic_error_t                    **e
 ** @returns xcb_xf86vidmode_get_view_port_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_xf86vidmode_get_view_port_reply_t *
xcb_xf86vidmode_get_view_port_reply (xcb_connection_t                        *c  /**< */,
                                     xcb_xf86vidmode_get_view_port_cookie_t   cookie  /**< */,
                                     xcb_generic_error_t                    **e  /**< */);

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
 ** xcb_void_cookie_t xcb_xf86vidmode_set_view_port_checked
 ** 
 ** @param xcb_connection_t *c
 ** @param ushort            screen
 ** @param uint              x
 ** @param uint              y
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_xf86vidmode_set_view_port_checked (xcb_connection_t *c  /**< */,
                                       ushort            screen  /**< */,
                                       uint              x  /**< */,
                                       uint              y  /**< */);

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
 ** xcb_void_cookie_t xcb_xf86vidmode_set_view_port
 ** 
 ** @param xcb_connection_t *c
 ** @param ushort            screen
 ** @param uint              x
 ** @param uint              y
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_xf86vidmode_set_view_port (xcb_connection_t *c  /**< */,
                               ushort            screen  /**< */,
                               uint              x  /**< */,
                               uint              y  /**< */);

extern(C) int
xcb_xf86vidmode_get_dot_clocks_sizeof (const void  *_buffer  /**< */);

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
 ** xcb_xf86vidmode_get_dot_clocks_cookie_t xcb_xf86vidmode_get_dot_clocks
 ** 
 ** @param xcb_connection_t *c
 ** @param ushort            screen
 ** @returns xcb_xf86vidmode_get_dot_clocks_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_xf86vidmode_get_dot_clocks_cookie_t
xcb_xf86vidmode_get_dot_clocks (xcb_connection_t *c  /**< */,
                                ushort            screen  /**< */);

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
 ** xcb_xf86vidmode_get_dot_clocks_cookie_t xcb_xf86vidmode_get_dot_clocks_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @param ushort            screen
 ** @returns xcb_xf86vidmode_get_dot_clocks_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_xf86vidmode_get_dot_clocks_cookie_t
xcb_xf86vidmode_get_dot_clocks_unchecked (xcb_connection_t *c  /**< */,
                                          ushort            screen  /**< */);


/*****************************************************************************
 **
 ** uint * xcb_xf86vidmode_get_dot_clocks_clock
 ** 
 ** @param const xcb_xf86vidmode_get_dot_clocks_reply_t *R
 ** @returns uint *
 **
 *****************************************************************************/
 
uint *
xcb_xf86vidmode_get_dot_clocks_clock (const xcb_xf86vidmode_get_dot_clocks_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_xf86vidmode_get_dot_clocks_clock_length
 ** 
 ** @param const xcb_xf86vidmode_get_dot_clocks_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xf86vidmode_get_dot_clocks_clock_length (const xcb_xf86vidmode_get_dot_clocks_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xf86vidmode_get_dot_clocks_clock_end
 ** 
 ** @param const xcb_xf86vidmode_get_dot_clocks_reply_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_xf86vidmode_get_dot_clocks_clock_end (const xcb_xf86vidmode_get_dot_clocks_reply_t *R  /**< */);

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 * 
 * The parameter @p e supplied to this function must be NULL if
 * xcb_xf86vidmode_get_dot_clocks_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */

/*****************************************************************************
 **
 ** xcb_xf86vidmode_get_dot_clocks_reply_t * xcb_xf86vidmode_get_dot_clocks_reply
 ** 
 ** @param xcb_connection_t                         *c
 ** @param xcb_xf86vidmode_get_dot_clocks_cookie_t   cookie
 ** @param xcb_generic_error_t                     **e
 ** @returns xcb_xf86vidmode_get_dot_clocks_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_xf86vidmode_get_dot_clocks_reply_t *
xcb_xf86vidmode_get_dot_clocks_reply (xcb_connection_t                         *c  /**< */,
                                      xcb_xf86vidmode_get_dot_clocks_cookie_t   cookie  /**< */,
                                      xcb_generic_error_t                     **e  /**< */);

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
 ** xcb_void_cookie_t xcb_xf86vidmode_set_client_version_checked
 ** 
 ** @param xcb_connection_t *c
 ** @param ushort            major
 ** @param ushort            minor
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_xf86vidmode_set_client_version_checked (xcb_connection_t *c  /**< */,
                                            ushort            major  /**< */,
                                            ushort            minor  /**< */);

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
 ** xcb_void_cookie_t xcb_xf86vidmode_set_client_version
 ** 
 ** @param xcb_connection_t *c
 ** @param ushort            major
 ** @param ushort            minor
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_xf86vidmode_set_client_version (xcb_connection_t *c  /**< */,
                                    ushort            major  /**< */,
                                    ushort            minor  /**< */);

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
 ** xcb_void_cookie_t xcb_xf86vidmode_set_gamma_checked
 ** 
 ** @param xcb_connection_t *c
 ** @param ushort            screen
 ** @param uint              red
 ** @param uint              green
 ** @param uint              blue
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_xf86vidmode_set_gamma_checked (xcb_connection_t *c  /**< */,
                                   ushort            screen  /**< */,
                                   uint              red  /**< */,
                                   uint              green  /**< */,
                                   uint              blue  /**< */);

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
 ** xcb_void_cookie_t xcb_xf86vidmode_set_gamma
 ** 
 ** @param xcb_connection_t *c
 ** @param ushort            screen
 ** @param uint              red
 ** @param uint              green
 ** @param uint              blue
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_xf86vidmode_set_gamma (xcb_connection_t *c  /**< */,
                           ushort            screen  /**< */,
                           uint              red  /**< */,
                           uint              green  /**< */,
                           uint              blue  /**< */);

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
 ** xcb_xf86vidmode_get_gamma_cookie_t xcb_xf86vidmode_get_gamma
 ** 
 ** @param xcb_connection_t *c
 ** @param ushort            screen
 ** @returns xcb_xf86vidmode_get_gamma_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_xf86vidmode_get_gamma_cookie_t
xcb_xf86vidmode_get_gamma (xcb_connection_t *c  /**< */,
                           ushort            screen  /**< */);

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
 ** xcb_xf86vidmode_get_gamma_cookie_t xcb_xf86vidmode_get_gamma_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @param ushort            screen
 ** @returns xcb_xf86vidmode_get_gamma_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_xf86vidmode_get_gamma_cookie_t
xcb_xf86vidmode_get_gamma_unchecked (xcb_connection_t *c  /**< */,
                                     ushort            screen  /**< */);

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 * 
 * The parameter @p e supplied to this function must be NULL if
 * xcb_xf86vidmode_get_gamma_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */

/*****************************************************************************
 **
 ** xcb_xf86vidmode_get_gamma_reply_t * xcb_xf86vidmode_get_gamma_reply
 ** 
 ** @param xcb_connection_t                    *c
 ** @param xcb_xf86vidmode_get_gamma_cookie_t   cookie
 ** @param xcb_generic_error_t                **e
 ** @returns xcb_xf86vidmode_get_gamma_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_xf86vidmode_get_gamma_reply_t *
xcb_xf86vidmode_get_gamma_reply (xcb_connection_t                    *c  /**< */,
                                 xcb_xf86vidmode_get_gamma_cookie_t   cookie  /**< */,
                                 xcb_generic_error_t                **e  /**< */);

extern(C) int
xcb_xf86vidmode_get_gamma_ramp_sizeof (const void  *_buffer  /**< */);

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
 ** xcb_xf86vidmode_get_gamma_ramp_cookie_t xcb_xf86vidmode_get_gamma_ramp
 ** 
 ** @param xcb_connection_t *c
 ** @param ushort            screen
 ** @param ushort            size
 ** @returns xcb_xf86vidmode_get_gamma_ramp_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_xf86vidmode_get_gamma_ramp_cookie_t
xcb_xf86vidmode_get_gamma_ramp (xcb_connection_t *c  /**< */,
                                ushort            screen  /**< */,
                                ushort            size  /**< */);

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
 ** xcb_xf86vidmode_get_gamma_ramp_cookie_t xcb_xf86vidmode_get_gamma_ramp_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @param ushort            screen
 ** @param ushort            size
 ** @returns xcb_xf86vidmode_get_gamma_ramp_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_xf86vidmode_get_gamma_ramp_cookie_t
xcb_xf86vidmode_get_gamma_ramp_unchecked (xcb_connection_t *c  /**< */,
                                          ushort            screen  /**< */,
                                          ushort            size  /**< */);


/*****************************************************************************
 **
 ** ushort * xcb_xf86vidmode_get_gamma_ramp_red
 ** 
 ** @param const xcb_xf86vidmode_get_gamma_ramp_reply_t *R
 ** @returns ushort *
 **
 *****************************************************************************/
 
ushort *
xcb_xf86vidmode_get_gamma_ramp_red (const xcb_xf86vidmode_get_gamma_ramp_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_xf86vidmode_get_gamma_ramp_red_length
 ** 
 ** @param const xcb_xf86vidmode_get_gamma_ramp_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xf86vidmode_get_gamma_ramp_red_length (const xcb_xf86vidmode_get_gamma_ramp_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xf86vidmode_get_gamma_ramp_red_end
 ** 
 ** @param const xcb_xf86vidmode_get_gamma_ramp_reply_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_xf86vidmode_get_gamma_ramp_red_end (const xcb_xf86vidmode_get_gamma_ramp_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** ushort * xcb_xf86vidmode_get_gamma_ramp_green
 ** 
 ** @param const xcb_xf86vidmode_get_gamma_ramp_reply_t *R
 ** @returns ushort *
 **
 *****************************************************************************/
 
ushort *
xcb_xf86vidmode_get_gamma_ramp_green (const xcb_xf86vidmode_get_gamma_ramp_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_xf86vidmode_get_gamma_ramp_green_length
 ** 
 ** @param const xcb_xf86vidmode_get_gamma_ramp_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xf86vidmode_get_gamma_ramp_green_length (const xcb_xf86vidmode_get_gamma_ramp_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xf86vidmode_get_gamma_ramp_green_end
 ** 
 ** @param const xcb_xf86vidmode_get_gamma_ramp_reply_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_xf86vidmode_get_gamma_ramp_green_end (const xcb_xf86vidmode_get_gamma_ramp_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** ushort * xcb_xf86vidmode_get_gamma_ramp_blue
 ** 
 ** @param const xcb_xf86vidmode_get_gamma_ramp_reply_t *R
 ** @returns ushort *
 **
 *****************************************************************************/
 
ushort *
xcb_xf86vidmode_get_gamma_ramp_blue (const xcb_xf86vidmode_get_gamma_ramp_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_xf86vidmode_get_gamma_ramp_blue_length
 ** 
 ** @param const xcb_xf86vidmode_get_gamma_ramp_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xf86vidmode_get_gamma_ramp_blue_length (const xcb_xf86vidmode_get_gamma_ramp_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xf86vidmode_get_gamma_ramp_blue_end
 ** 
 ** @param const xcb_xf86vidmode_get_gamma_ramp_reply_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_xf86vidmode_get_gamma_ramp_blue_end (const xcb_xf86vidmode_get_gamma_ramp_reply_t *R  /**< */);

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 * 
 * The parameter @p e supplied to this function must be NULL if
 * xcb_xf86vidmode_get_gamma_ramp_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */

/*****************************************************************************
 **
 ** xcb_xf86vidmode_get_gamma_ramp_reply_t * xcb_xf86vidmode_get_gamma_ramp_reply
 ** 
 ** @param xcb_connection_t                         *c
 ** @param xcb_xf86vidmode_get_gamma_ramp_cookie_t   cookie
 ** @param xcb_generic_error_t                     **e
 ** @returns xcb_xf86vidmode_get_gamma_ramp_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_xf86vidmode_get_gamma_ramp_reply_t *
xcb_xf86vidmode_get_gamma_ramp_reply (xcb_connection_t                         *c  /**< */,
                                      xcb_xf86vidmode_get_gamma_ramp_cookie_t   cookie  /**< */,
                                      xcb_generic_error_t                     **e  /**< */);

extern(C) int
xcb_xf86vidmode_set_gamma_ramp_sizeof (const void  *_buffer  /**< */);

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
 ** xcb_void_cookie_t xcb_xf86vidmode_set_gamma_ramp_checked
 ** 
 ** @param xcb_connection_t *c
 ** @param ushort            screen
 ** @param ushort            size
 ** @param const ushort     *red
 ** @param const ushort     *green
 ** @param const ushort     *blue
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_xf86vidmode_set_gamma_ramp_checked (xcb_connection_t *c  /**< */,
                                        ushort            screen  /**< */,
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
 ** xcb_void_cookie_t xcb_xf86vidmode_set_gamma_ramp
 ** 
 ** @param xcb_connection_t *c
 ** @param ushort            screen
 ** @param ushort            size
 ** @param const ushort     *red
 ** @param const ushort     *green
 ** @param const ushort     *blue
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_xf86vidmode_set_gamma_ramp (xcb_connection_t *c  /**< */,
                                ushort            screen  /**< */,
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
 ** xcb_xf86vidmode_get_gamma_ramp_size_cookie_t xcb_xf86vidmode_get_gamma_ramp_size
 ** 
 ** @param xcb_connection_t *c
 ** @param ushort            screen
 ** @returns xcb_xf86vidmode_get_gamma_ramp_size_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_xf86vidmode_get_gamma_ramp_size_cookie_t
xcb_xf86vidmode_get_gamma_ramp_size (xcb_connection_t *c  /**< */,
                                     ushort            screen  /**< */);

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
 ** xcb_xf86vidmode_get_gamma_ramp_size_cookie_t xcb_xf86vidmode_get_gamma_ramp_size_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @param ushort            screen
 ** @returns xcb_xf86vidmode_get_gamma_ramp_size_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_xf86vidmode_get_gamma_ramp_size_cookie_t
xcb_xf86vidmode_get_gamma_ramp_size_unchecked (xcb_connection_t *c  /**< */,
                                               ushort            screen  /**< */);

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 * 
 * The parameter @p e supplied to this function must be NULL if
 * xcb_xf86vidmode_get_gamma_ramp_size_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */

/*****************************************************************************
 **
 ** xcb_xf86vidmode_get_gamma_ramp_size_reply_t * xcb_xf86vidmode_get_gamma_ramp_size_reply
 ** 
 ** @param xcb_connection_t                              *c
 ** @param xcb_xf86vidmode_get_gamma_ramp_size_cookie_t   cookie
 ** @param xcb_generic_error_t                          **e
 ** @returns xcb_xf86vidmode_get_gamma_ramp_size_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_xf86vidmode_get_gamma_ramp_size_reply_t *
xcb_xf86vidmode_get_gamma_ramp_size_reply (xcb_connection_t                              *c  /**< */,
                                           xcb_xf86vidmode_get_gamma_ramp_size_cookie_t   cookie  /**< */,
                                           xcb_generic_error_t                          **e  /**< */);

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
 ** xcb_xf86vidmode_get_permissions_cookie_t xcb_xf86vidmode_get_permissions
 ** 
 ** @param xcb_connection_t *c
 ** @param ushort            screen
 ** @returns xcb_xf86vidmode_get_permissions_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_xf86vidmode_get_permissions_cookie_t
xcb_xf86vidmode_get_permissions (xcb_connection_t *c  /**< */,
                                 ushort            screen  /**< */);

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
 ** xcb_xf86vidmode_get_permissions_cookie_t xcb_xf86vidmode_get_permissions_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @param ushort            screen
 ** @returns xcb_xf86vidmode_get_permissions_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_xf86vidmode_get_permissions_cookie_t
xcb_xf86vidmode_get_permissions_unchecked (xcb_connection_t *c  /**< */,
                                           ushort            screen  /**< */);

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 * 
 * The parameter @p e supplied to this function must be NULL if
 * xcb_xf86vidmode_get_permissions_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */

/*****************************************************************************
 **
 ** xcb_xf86vidmode_get_permissions_reply_t * xcb_xf86vidmode_get_permissions_reply
 ** 
 ** @param xcb_connection_t                          *c
 ** @param xcb_xf86vidmode_get_permissions_cookie_t   cookie
 ** @param xcb_generic_error_t                      **e
 ** @returns xcb_xf86vidmode_get_permissions_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_xf86vidmode_get_permissions_reply_t *
xcb_xf86vidmode_get_permissions_reply (xcb_connection_t                          *c  /**< */,
                                       xcb_xf86vidmode_get_permissions_cookie_t   cookie  /**< */,
                                       xcb_generic_error_t                      **e  /**< */);

/**
 * @}
 */
