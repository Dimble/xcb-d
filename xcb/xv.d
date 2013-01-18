/*
 * This file generated automatically from xv.xml by d_client.py.
 * Edit at your peril.
 */

/**
 * @defgroup XCB_Xv_API XCB Xv API
 * @brief Xv XCB Protocol Implementation.
 * @{
 **/

module interim.xcb.xv;

import interim.xcb.xcb;
import interim.xcb.xproto;
import interim.xcb.shm;

const int XCB_XV_MAJOR_VERSION = 2;
const int XCB_XV_MINOR_VERSION = 2;
  
extern(C) xcb_extension_t xcb_xv_id;

alias uint xcb_xv_port_t;

/**
 * @brief xcb_xv_port_iterator_t
 **/
struct xcb_xv_port_iterator_t {
    xcb_xv_port_t *data; /**<  */
    int            rem; /**<  */
    int            index; /**<  */
}

alias uint xcb_xv_encoding_t;

/**
 * @brief xcb_xv_encoding_iterator_t
 **/
struct xcb_xv_encoding_iterator_t {
    xcb_xv_encoding_t *data; /**<  */
    int                rem; /**<  */
    int                index; /**<  */
}

enum XcbXvType {
    INPUT_MASK  = 1,
    OUTPUT_MASK = 2,
    VIDEO_MASK  = 4,
    STILL_MASK  = 8,
    IMAGE_MASK  = 16
}
alias XcbXvType xcb_xv_type_t;

enum XcbXvImageFormatInfoType {
    RGB,
    YUV
}
alias XcbXvImageFormatInfoType xcb_xv_image_format_info_type_t;

enum XcbXvImageFormatInfoFormat {
    PACKED,
    PLANAR
}
alias XcbXvImageFormatInfoFormat xcb_xv_image_format_info_format_t;

enum XcbXvAttributeFlag {
    GETTABLE = 1,
    SETTABLE = 2
}
alias XcbXvAttributeFlag xcb_xv_attribute_flag_t;

enum XcbXvVideoNotifyReason {
    STARTED,
    STOPPED,
    BUSY,
    PREEMPTED,
    HARD_ERROR
}
alias XcbXvVideoNotifyReason xcb_xv_video_notify_reason_t;

enum XcbXvScanlineOrder {
    TOP_TO_BOTTOM,
    BOTTOM_TO_TOP
}
alias XcbXvScanlineOrder xcb_xv_scanline_order_t;

enum XcbXvGrabPortStatus {
    SUCCESS,
    BAD_EXTENSION,
    ALREADY_GRABBED,
    INVALID_TIME,
    BAD_REPLY,
    BAD_ALLOC
}
alias XcbXvGrabPortStatus xcb_xv_grab_port_status_t;

/**
 * @brief xcb_xv_rational_t
 **/
struct xcb_xv_rational_t {
    int numerator; /**<  */
    int denominator; /**<  */
}

/**
 * @brief xcb_xv_rational_iterator_t
 **/
struct xcb_xv_rational_iterator_t {
    xcb_xv_rational_t *data; /**<  */
    int                rem; /**<  */
    int                index; /**<  */
}

/**
 * @brief xcb_xv_format_t
 **/
struct xcb_xv_format_t {
    xcb_visualid_t visual; /**<  */
    ubyte          depth; /**<  */
    ubyte          pad0[3]; /**<  */
}

/**
 * @brief xcb_xv_format_iterator_t
 **/
struct xcb_xv_format_iterator_t {
    xcb_xv_format_t *data; /**<  */
    int              rem; /**<  */
    int              index; /**<  */
}

/**
 * @brief xcb_xv_adaptor_info_t
 **/
struct xcb_xv_adaptor_info_t {
    xcb_xv_port_t base_id; /**<  */
    ushort        name_size; /**<  */
    ushort        num_ports; /**<  */
    ushort        num_formats; /**<  */
    ubyte         type; /**<  */
    ubyte         pad0; /**<  */
}

/**
 * @brief xcb_xv_adaptor_info_iterator_t
 **/
struct xcb_xv_adaptor_info_iterator_t {
    xcb_xv_adaptor_info_t *data; /**<  */
    int                    rem; /**<  */
    int                    index; /**<  */
}

/**
 * @brief xcb_xv_encoding_info_t
 **/
struct xcb_xv_encoding_info_t {
    xcb_xv_encoding_t encoding; /**<  */
    ushort            name_size; /**<  */
    ushort            width; /**<  */
    ushort            height; /**<  */
    ubyte             pad0[2]; /**<  */
    xcb_xv_rational_t rate; /**<  */
}

/**
 * @brief xcb_xv_encoding_info_iterator_t
 **/
struct xcb_xv_encoding_info_iterator_t {
    xcb_xv_encoding_info_t *data; /**<  */
    int                     rem; /**<  */
    int                     index; /**<  */
}

/**
 * @brief xcb_xv_image_t
 **/
struct xcb_xv_image_t {
    uint   id; /**<  */
    ushort width; /**<  */
    ushort height; /**<  */
    uint   data_size; /**<  */
    uint   num_planes; /**<  */
}

/**
 * @brief xcb_xv_image_iterator_t
 **/
struct xcb_xv_image_iterator_t {
    xcb_xv_image_t *data; /**<  */
    int             rem; /**<  */
    int             index; /**<  */
}

/**
 * @brief xcb_xv_attribute_info_t
 **/
struct xcb_xv_attribute_info_t {
    uint flags; /**<  */
    int  min; /**<  */
    int  max; /**<  */
    uint size; /**<  */
}

/**
 * @brief xcb_xv_attribute_info_iterator_t
 **/
struct xcb_xv_attribute_info_iterator_t {
    xcb_xv_attribute_info_t *data; /**<  */
    int                      rem; /**<  */
    int                      index; /**<  */
}

/**
 * @brief xcb_xv_image_format_info_t
 **/
struct xcb_xv_image_format_info_t {
    uint  id; /**<  */
    ubyte type; /**<  */
    ubyte byte_order; /**<  */
    ubyte pad0[2]; /**<  */
    ubyte guid[16]; /**<  */
    ubyte bpp; /**<  */
    ubyte num_planes; /**<  */
    ubyte pad1[2]; /**<  */
    ubyte depth; /**<  */
    ubyte pad2[3]; /**<  */
    uint  red_mask; /**<  */
    uint  green_mask; /**<  */
    uint  blue_mask; /**<  */
    ubyte format; /**<  */
    ubyte pad3[3]; /**<  */
    uint  y_sample_bits; /**<  */
    uint  u_sample_bits; /**<  */
    uint  v_sample_bits; /**<  */
    uint  vhorz_y_period; /**<  */
    uint  vhorz_u_period; /**<  */
    uint  vhorz_v_period; /**<  */
    uint  vvert_y_period; /**<  */
    uint  vvert_u_period; /**<  */
    uint  vvert_v_period; /**<  */
    ubyte vcomp_order[32]; /**<  */
    ubyte vscanline_order; /**<  */
    ubyte pad4[11]; /**<  */
}

/**
 * @brief xcb_xv_image_format_info_iterator_t
 **/
struct xcb_xv_image_format_info_iterator_t {
    xcb_xv_image_format_info_t *data; /**<  */
    int                         rem; /**<  */
    int                         index; /**<  */
}

/** Opcode for xcb_xv_bad_port. */
const ubyte XCB_XV_BAD_PORT = 0;

/**
 * @brief xcb_xv_bad_port_error_t
 **/
struct xcb_xv_bad_port_error_t {
    ubyte  response_type; /**<  */
    ubyte  error_code; /**<  */
    ushort sequence; /**<  */
}

/** Opcode for xcb_xv_bad_encoding. */
const ubyte XCB_XV_BAD_ENCODING = 1;

/**
 * @brief xcb_xv_bad_encoding_error_t
 **/
struct xcb_xv_bad_encoding_error_t {
    ubyte  response_type; /**<  */
    ubyte  error_code; /**<  */
    ushort sequence; /**<  */
}

/** Opcode for xcb_xv_bad_control. */
const ubyte XCB_XV_BAD_CONTROL = 2;

/**
 * @brief xcb_xv_bad_control_error_t
 **/
struct xcb_xv_bad_control_error_t {
    ubyte  response_type; /**<  */
    ubyte  error_code; /**<  */
    ushort sequence; /**<  */
}

/** Opcode for xcb_xv_video_notify. */
const ubyte XCB_XV_VIDEO_NOTIFY = 0;

/**
 * @brief xcb_xv_video_notify_event_t
 **/
struct xcb_xv_video_notify_event_t {
    ubyte           response_type; /**<  */
    ubyte           reason; /**<  */
    ushort          sequence; /**<  */
    xcb_timestamp_t time; /**<  */
    xcb_drawable_t  drawable; /**<  */
    xcb_xv_port_t   port; /**<  */
}

/** Opcode for xcb_xv_port_notify. */
const ubyte XCB_XV_PORT_NOTIFY = 1;

/**
 * @brief xcb_xv_port_notify_event_t
 **/
struct xcb_xv_port_notify_event_t {
    ubyte           response_type; /**<  */
    ubyte           pad0; /**<  */
    ushort          sequence; /**<  */
    xcb_timestamp_t time; /**<  */
    xcb_xv_port_t   port; /**<  */
    xcb_atom_t      attribute; /**<  */
    int             value; /**<  */
}

/**
 * @brief xcb_xv_query_extension_cookie_t
 **/
struct xcb_xv_query_extension_cookie_t {
    uint sequence; /**<  */
}

/** Opcode for xcb_xv_query_extension. */
const ubyte XCB_XV_QUERY_EXTENSION = 0;

/**
 * @brief xcb_xv_query_extension_request_t
 **/
struct xcb_xv_query_extension_request_t {
    ubyte  major_opcode; /**<  */
    ubyte  minor_opcode; /**<  */
    ushort length; /**<  */
}

/**
 * @brief xcb_xv_query_extension_reply_t
 **/
struct xcb_xv_query_extension_reply_t {
    ubyte  response_type; /**<  */
    ubyte  pad0; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    ushort major; /**<  */
    ushort minor; /**<  */
}

/**
 * @brief xcb_xv_query_adaptors_cookie_t
 **/
struct xcb_xv_query_adaptors_cookie_t {
    uint sequence; /**<  */
}

/** Opcode for xcb_xv_query_adaptors. */
const ubyte XCB_XV_QUERY_ADAPTORS = 1;

/**
 * @brief xcb_xv_query_adaptors_request_t
 **/
struct xcb_xv_query_adaptors_request_t {
    ubyte        major_opcode; /**<  */
    ubyte        minor_opcode; /**<  */
    ushort       length; /**<  */
    xcb_window_t window; /**<  */
}

/**
 * @brief xcb_xv_query_adaptors_reply_t
 **/
struct xcb_xv_query_adaptors_reply_t {
    ubyte  response_type; /**<  */
    ubyte  pad0; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    ushort num_adaptors; /**<  */
    ubyte  pad1[22]; /**<  */
}

/**
 * @brief xcb_xv_query_encodings_cookie_t
 **/
struct xcb_xv_query_encodings_cookie_t {
    uint sequence; /**<  */
}

/** Opcode for xcb_xv_query_encodings. */
const ubyte XCB_XV_QUERY_ENCODINGS = 2;

/**
 * @brief xcb_xv_query_encodings_request_t
 **/
struct xcb_xv_query_encodings_request_t {
    ubyte         major_opcode; /**<  */
    ubyte         minor_opcode; /**<  */
    ushort        length; /**<  */
    xcb_xv_port_t port; /**<  */
}

/**
 * @brief xcb_xv_query_encodings_reply_t
 **/
struct xcb_xv_query_encodings_reply_t {
    ubyte  response_type; /**<  */
    ubyte  pad0; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    ushort num_encodings; /**<  */
    ubyte  pad1[22]; /**<  */
}

/**
 * @brief xcb_xv_grab_port_cookie_t
 **/
struct xcb_xv_grab_port_cookie_t {
    uint sequence; /**<  */
}

/** Opcode for xcb_xv_grab_port. */
const ubyte XCB_XV_GRAB_PORT = 3;

/**
 * @brief xcb_xv_grab_port_request_t
 **/
struct xcb_xv_grab_port_request_t {
    ubyte           major_opcode; /**<  */
    ubyte           minor_opcode; /**<  */
    ushort          length; /**<  */
    xcb_xv_port_t   port; /**<  */
    xcb_timestamp_t time; /**<  */
}

/**
 * @brief xcb_xv_grab_port_reply_t
 **/
struct xcb_xv_grab_port_reply_t {
    ubyte  response_type; /**<  */
    ubyte  result; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
}

/** Opcode for xcb_xv_ungrab_port. */
const ubyte XCB_XV_UNGRAB_PORT = 4;

/**
 * @brief xcb_xv_ungrab_port_request_t
 **/
struct xcb_xv_ungrab_port_request_t {
    ubyte           major_opcode; /**<  */
    ubyte           minor_opcode; /**<  */
    ushort          length; /**<  */
    xcb_xv_port_t   port; /**<  */
    xcb_timestamp_t time; /**<  */
}

/** Opcode for xcb_xv_put_video. */
const ubyte XCB_XV_PUT_VIDEO = 5;

/**
 * @brief xcb_xv_put_video_request_t
 **/
struct xcb_xv_put_video_request_t {
    ubyte          major_opcode; /**<  */
    ubyte          minor_opcode; /**<  */
    ushort         length; /**<  */
    xcb_xv_port_t  port; /**<  */
    xcb_drawable_t drawable; /**<  */
    xcb_gcontext_t gc; /**<  */
    short          vid_x; /**<  */
    short          vid_y; /**<  */
    ushort         vid_w; /**<  */
    ushort         vid_h; /**<  */
    short          drw_x; /**<  */
    short          drw_y; /**<  */
    ushort         drw_w; /**<  */
    ushort         drw_h; /**<  */
}

/** Opcode for xcb_xv_put_still. */
const ubyte XCB_XV_PUT_STILL = 6;

/**
 * @brief xcb_xv_put_still_request_t
 **/
struct xcb_xv_put_still_request_t {
    ubyte          major_opcode; /**<  */
    ubyte          minor_opcode; /**<  */
    ushort         length; /**<  */
    xcb_xv_port_t  port; /**<  */
    xcb_drawable_t drawable; /**<  */
    xcb_gcontext_t gc; /**<  */
    short          vid_x; /**<  */
    short          vid_y; /**<  */
    ushort         vid_w; /**<  */
    ushort         vid_h; /**<  */
    short          drw_x; /**<  */
    short          drw_y; /**<  */
    ushort         drw_w; /**<  */
    ushort         drw_h; /**<  */
}

/** Opcode for xcb_xv_get_video. */
const ubyte XCB_XV_GET_VIDEO = 7;

/**
 * @brief xcb_xv_get_video_request_t
 **/
struct xcb_xv_get_video_request_t {
    ubyte          major_opcode; /**<  */
    ubyte          minor_opcode; /**<  */
    ushort         length; /**<  */
    xcb_xv_port_t  port; /**<  */
    xcb_drawable_t drawable; /**<  */
    xcb_gcontext_t gc; /**<  */
    short          vid_x; /**<  */
    short          vid_y; /**<  */
    ushort         vid_w; /**<  */
    ushort         vid_h; /**<  */
    short          drw_x; /**<  */
    short          drw_y; /**<  */
    ushort         drw_w; /**<  */
    ushort         drw_h; /**<  */
}

/** Opcode for xcb_xv_get_still. */
const ubyte XCB_XV_GET_STILL = 8;

/**
 * @brief xcb_xv_get_still_request_t
 **/
struct xcb_xv_get_still_request_t {
    ubyte          major_opcode; /**<  */
    ubyte          minor_opcode; /**<  */
    ushort         length; /**<  */
    xcb_xv_port_t  port; /**<  */
    xcb_drawable_t drawable; /**<  */
    xcb_gcontext_t gc; /**<  */
    short          vid_x; /**<  */
    short          vid_y; /**<  */
    ushort         vid_w; /**<  */
    ushort         vid_h; /**<  */
    short          drw_x; /**<  */
    short          drw_y; /**<  */
    ushort         drw_w; /**<  */
    ushort         drw_h; /**<  */
}

/** Opcode for xcb_xv_stop_video. */
const ubyte XCB_XV_STOP_VIDEO = 9;

/**
 * @brief xcb_xv_stop_video_request_t
 **/
struct xcb_xv_stop_video_request_t {
    ubyte          major_opcode; /**<  */
    ubyte          minor_opcode; /**<  */
    ushort         length; /**<  */
    xcb_xv_port_t  port; /**<  */
    xcb_drawable_t drawable; /**<  */
}

/** Opcode for xcb_xv_select_video_notify. */
const ubyte XCB_XV_SELECT_VIDEO_NOTIFY = 10;

/**
 * @brief xcb_xv_select_video_notify_request_t
 **/
struct xcb_xv_select_video_notify_request_t {
    ubyte          major_opcode; /**<  */
    ubyte          minor_opcode; /**<  */
    ushort         length; /**<  */
    xcb_drawable_t drawable; /**<  */
    ubyte          onoff; /**<  */
    ubyte          pad0[3]; /**<  */
}

/** Opcode for xcb_xv_select_port_notify. */
const ubyte XCB_XV_SELECT_PORT_NOTIFY = 11;

/**
 * @brief xcb_xv_select_port_notify_request_t
 **/
struct xcb_xv_select_port_notify_request_t {
    ubyte         major_opcode; /**<  */
    ubyte         minor_opcode; /**<  */
    ushort        length; /**<  */
    xcb_xv_port_t port; /**<  */
    ubyte         onoff; /**<  */
    ubyte         pad0[3]; /**<  */
}

/**
 * @brief xcb_xv_query_best_size_cookie_t
 **/
struct xcb_xv_query_best_size_cookie_t {
    uint sequence; /**<  */
}

/** Opcode for xcb_xv_query_best_size. */
const ubyte XCB_XV_QUERY_BEST_SIZE = 12;

/**
 * @brief xcb_xv_query_best_size_request_t
 **/
struct xcb_xv_query_best_size_request_t {
    ubyte         major_opcode; /**<  */
    ubyte         minor_opcode; /**<  */
    ushort        length; /**<  */
    xcb_xv_port_t port; /**<  */
    ushort        vid_w; /**<  */
    ushort        vid_h; /**<  */
    ushort        drw_w; /**<  */
    ushort        drw_h; /**<  */
    ubyte         motion; /**<  */
    ubyte         pad0[3]; /**<  */
}

/**
 * @brief xcb_xv_query_best_size_reply_t
 **/
struct xcb_xv_query_best_size_reply_t {
    ubyte  response_type; /**<  */
    ubyte  pad0; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    ushort actual_width; /**<  */
    ushort actual_height; /**<  */
}

/** Opcode for xcb_xv_set_port_attribute. */
const ubyte XCB_XV_SET_PORT_ATTRIBUTE = 13;

/**
 * @brief xcb_xv_set_port_attribute_request_t
 **/
struct xcb_xv_set_port_attribute_request_t {
    ubyte         major_opcode; /**<  */
    ubyte         minor_opcode; /**<  */
    ushort        length; /**<  */
    xcb_xv_port_t port; /**<  */
    xcb_atom_t    attribute; /**<  */
    int           value; /**<  */
}

/**
 * @brief xcb_xv_get_port_attribute_cookie_t
 **/
struct xcb_xv_get_port_attribute_cookie_t {
    uint sequence; /**<  */
}

/** Opcode for xcb_xv_get_port_attribute. */
const ubyte XCB_XV_GET_PORT_ATTRIBUTE = 14;

/**
 * @brief xcb_xv_get_port_attribute_request_t
 **/
struct xcb_xv_get_port_attribute_request_t {
    ubyte         major_opcode; /**<  */
    ubyte         minor_opcode; /**<  */
    ushort        length; /**<  */
    xcb_xv_port_t port; /**<  */
    xcb_atom_t    attribute; /**<  */
}

/**
 * @brief xcb_xv_get_port_attribute_reply_t
 **/
struct xcb_xv_get_port_attribute_reply_t {
    ubyte  response_type; /**<  */
    ubyte  pad0; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    int    value; /**<  */
}

/**
 * @brief xcb_xv_query_port_attributes_cookie_t
 **/
struct xcb_xv_query_port_attributes_cookie_t {
    uint sequence; /**<  */
}

/** Opcode for xcb_xv_query_port_attributes. */
const ubyte XCB_XV_QUERY_PORT_ATTRIBUTES = 15;

/**
 * @brief xcb_xv_query_port_attributes_request_t
 **/
struct xcb_xv_query_port_attributes_request_t {
    ubyte         major_opcode; /**<  */
    ubyte         minor_opcode; /**<  */
    ushort        length; /**<  */
    xcb_xv_port_t port; /**<  */
}

/**
 * @brief xcb_xv_query_port_attributes_reply_t
 **/
struct xcb_xv_query_port_attributes_reply_t {
    ubyte  response_type; /**<  */
    ubyte  pad0; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    uint   num_attributes; /**<  */
    uint   text_size; /**<  */
    ubyte  pad1[16]; /**<  */
}

/**
 * @brief xcb_xv_list_image_formats_cookie_t
 **/
struct xcb_xv_list_image_formats_cookie_t {
    uint sequence; /**<  */
}

/** Opcode for xcb_xv_list_image_formats. */
const ubyte XCB_XV_LIST_IMAGE_FORMATS = 16;

/**
 * @brief xcb_xv_list_image_formats_request_t
 **/
struct xcb_xv_list_image_formats_request_t {
    ubyte         major_opcode; /**<  */
    ubyte         minor_opcode; /**<  */
    ushort        length; /**<  */
    xcb_xv_port_t port; /**<  */
}

/**
 * @brief xcb_xv_list_image_formats_reply_t
 **/
struct xcb_xv_list_image_formats_reply_t {
    ubyte  response_type; /**<  */
    ubyte  pad0; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    uint   num_formats; /**<  */
    ubyte  pad1[20]; /**<  */
}

/**
 * @brief xcb_xv_query_image_attributes_cookie_t
 **/
struct xcb_xv_query_image_attributes_cookie_t {
    uint sequence; /**<  */
}

/** Opcode for xcb_xv_query_image_attributes. */
const ubyte XCB_XV_QUERY_IMAGE_ATTRIBUTES = 17;

/**
 * @brief xcb_xv_query_image_attributes_request_t
 **/
struct xcb_xv_query_image_attributes_request_t {
    ubyte         major_opcode; /**<  */
    ubyte         minor_opcode; /**<  */
    ushort        length; /**<  */
    xcb_xv_port_t port; /**<  */
    uint          id; /**<  */
    ushort        width; /**<  */
    ushort        height; /**<  */
}

/**
 * @brief xcb_xv_query_image_attributes_reply_t
 **/
struct xcb_xv_query_image_attributes_reply_t {
    ubyte  response_type; /**<  */
    ubyte  pad0; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    uint   num_planes; /**<  */
    uint   data_size; /**<  */
    ushort width; /**<  */
    ushort height; /**<  */
    ubyte  pad1[12]; /**<  */
}

/** Opcode for xcb_xv_put_image. */
const ubyte XCB_XV_PUT_IMAGE = 18;

/**
 * @brief xcb_xv_put_image_request_t
 **/
struct xcb_xv_put_image_request_t {
    ubyte          major_opcode; /**<  */
    ubyte          minor_opcode; /**<  */
    ushort         length; /**<  */
    xcb_xv_port_t  port; /**<  */
    xcb_drawable_t drawable; /**<  */
    xcb_gcontext_t gc; /**<  */
    uint           id; /**<  */
    short          src_x; /**<  */
    short          src_y; /**<  */
    ushort         src_w; /**<  */
    ushort         src_h; /**<  */
    short          drw_x; /**<  */
    short          drw_y; /**<  */
    ushort         drw_w; /**<  */
    ushort         drw_h; /**<  */
    ushort         width; /**<  */
    ushort         height; /**<  */
}

/** Opcode for xcb_xv_shm_put_image. */
const ubyte XCB_XV_SHM_PUT_IMAGE = 19;

/**
 * @brief xcb_xv_shm_put_image_request_t
 **/
struct xcb_xv_shm_put_image_request_t {
    ubyte          major_opcode; /**<  */
    ubyte          minor_opcode; /**<  */
    ushort         length; /**<  */
    xcb_xv_port_t  port; /**<  */
    xcb_drawable_t drawable; /**<  */
    xcb_gcontext_t gc; /**<  */
    xcb_shm_seg_t  shmseg; /**<  */
    uint           id; /**<  */
    uint           offset; /**<  */
    short          src_x; /**<  */
    short          src_y; /**<  */
    ushort         src_w; /**<  */
    ushort         src_h; /**<  */
    short          drw_x; /**<  */
    short          drw_y; /**<  */
    ushort         drw_w; /**<  */
    ushort         drw_h; /**<  */
    ushort         width; /**<  */
    ushort         height; /**<  */
    ubyte          send_event; /**<  */
    ubyte          pad0[3]; /**<  */
}

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_xv_port_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_xv_port_t)
 */

/*****************************************************************************
 **
 ** void xcb_xv_port_next
 ** 
 ** @param xcb_xv_port_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_xv_port_next (xcb_xv_port_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_xv_port_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xv_port_end
 ** 
 ** @param xcb_xv_port_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
xcb_generic_iterator_t
xcb_xv_port_end (xcb_xv_port_iterator_t i  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_xv_encoding_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_xv_encoding_t)
 */

/*****************************************************************************
 **
 ** void xcb_xv_encoding_next
 ** 
 ** @param xcb_xv_encoding_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_xv_encoding_next (xcb_xv_encoding_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_xv_encoding_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xv_encoding_end
 ** 
 ** @param xcb_xv_encoding_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
xcb_generic_iterator_t
xcb_xv_encoding_end (xcb_xv_encoding_iterator_t i  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_xv_rational_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_xv_rational_t)
 */

/*****************************************************************************
 **
 ** void xcb_xv_rational_next
 ** 
 ** @param xcb_xv_rational_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_xv_rational_next (xcb_xv_rational_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_xv_rational_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xv_rational_end
 ** 
 ** @param xcb_xv_rational_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
xcb_generic_iterator_t
xcb_xv_rational_end (xcb_xv_rational_iterator_t i  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_xv_format_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_xv_format_t)
 */

/*****************************************************************************
 **
 ** void xcb_xv_format_next
 ** 
 ** @param xcb_xv_format_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_xv_format_next (xcb_xv_format_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_xv_format_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xv_format_end
 ** 
 ** @param xcb_xv_format_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
xcb_generic_iterator_t
xcb_xv_format_end (xcb_xv_format_iterator_t i  /**< */);

extern(C) int
xcb_xv_adaptor_info_sizeof (const void  *_buffer  /**< */);


/*****************************************************************************
 **
 ** char * xcb_xv_adaptor_info_name
 ** 
 ** @param const xcb_xv_adaptor_info_t *R
 ** @returns char *
 **
 *****************************************************************************/
 
char *
xcb_xv_adaptor_info_name (const xcb_xv_adaptor_info_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_xv_adaptor_info_name_length
 ** 
 ** @param const xcb_xv_adaptor_info_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xv_adaptor_info_name_length (const xcb_xv_adaptor_info_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xv_adaptor_info_name_end
 ** 
 ** @param const xcb_xv_adaptor_info_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_xv_adaptor_info_name_end (const xcb_xv_adaptor_info_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_xv_format_t * xcb_xv_adaptor_info_formats
 ** 
 ** @param const xcb_xv_adaptor_info_t *R
 ** @returns xcb_xv_format_t *
 **
 *****************************************************************************/
 
xcb_xv_format_t *
xcb_xv_adaptor_info_formats (const xcb_xv_adaptor_info_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_xv_adaptor_info_formats_length
 ** 
 ** @param const xcb_xv_adaptor_info_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xv_adaptor_info_formats_length (const xcb_xv_adaptor_info_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_xv_format_iterator_t xcb_xv_adaptor_info_formats_iterator
 ** 
 ** @param const xcb_xv_adaptor_info_t *R
 ** @returns xcb_xv_format_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_xv_format_iterator_t
xcb_xv_adaptor_info_formats_iterator (const xcb_xv_adaptor_info_t *R  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_xv_adaptor_info_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_xv_adaptor_info_t)
 */

/*****************************************************************************
 **
 ** void xcb_xv_adaptor_info_next
 ** 
 ** @param xcb_xv_adaptor_info_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_xv_adaptor_info_next (xcb_xv_adaptor_info_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_xv_adaptor_info_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xv_adaptor_info_end
 ** 
 ** @param xcb_xv_adaptor_info_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
xcb_generic_iterator_t
xcb_xv_adaptor_info_end (xcb_xv_adaptor_info_iterator_t i  /**< */);

extern(C) int
xcb_xv_encoding_info_sizeof (const void  *_buffer  /**< */);


/*****************************************************************************
 **
 ** char * xcb_xv_encoding_info_name
 ** 
 ** @param const xcb_xv_encoding_info_t *R
 ** @returns char *
 **
 *****************************************************************************/
 
char *
xcb_xv_encoding_info_name (const xcb_xv_encoding_info_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_xv_encoding_info_name_length
 ** 
 ** @param const xcb_xv_encoding_info_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xv_encoding_info_name_length (const xcb_xv_encoding_info_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xv_encoding_info_name_end
 ** 
 ** @param const xcb_xv_encoding_info_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_xv_encoding_info_name_end (const xcb_xv_encoding_info_t *R  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_xv_encoding_info_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_xv_encoding_info_t)
 */

/*****************************************************************************
 **
 ** void xcb_xv_encoding_info_next
 ** 
 ** @param xcb_xv_encoding_info_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_xv_encoding_info_next (xcb_xv_encoding_info_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_xv_encoding_info_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xv_encoding_info_end
 ** 
 ** @param xcb_xv_encoding_info_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
xcb_generic_iterator_t
xcb_xv_encoding_info_end (xcb_xv_encoding_info_iterator_t i  /**< */);

extern(C) int
xcb_xv_image_sizeof (const void  *_buffer  /**< */);


/*****************************************************************************
 **
 ** uint * xcb_xv_image_pitches
 ** 
 ** @param const xcb_xv_image_t *R
 ** @returns uint *
 **
 *****************************************************************************/
 
uint *
xcb_xv_image_pitches (const xcb_xv_image_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_xv_image_pitches_length
 ** 
 ** @param const xcb_xv_image_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xv_image_pitches_length (const xcb_xv_image_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xv_image_pitches_end
 ** 
 ** @param const xcb_xv_image_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_xv_image_pitches_end (const xcb_xv_image_t *R  /**< */);


/*****************************************************************************
 **
 ** uint * xcb_xv_image_offsets
 ** 
 ** @param const xcb_xv_image_t *R
 ** @returns uint *
 **
 *****************************************************************************/
 
uint *
xcb_xv_image_offsets (const xcb_xv_image_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_xv_image_offsets_length
 ** 
 ** @param const xcb_xv_image_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xv_image_offsets_length (const xcb_xv_image_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xv_image_offsets_end
 ** 
 ** @param const xcb_xv_image_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_xv_image_offsets_end (const xcb_xv_image_t *R  /**< */);


/*****************************************************************************
 **
 ** ubyte * xcb_xv_image_data
 ** 
 ** @param const xcb_xv_image_t *R
 ** @returns ubyte *
 **
 *****************************************************************************/
 
ubyte *
xcb_xv_image_data (const xcb_xv_image_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_xv_image_data_length
 ** 
 ** @param const xcb_xv_image_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xv_image_data_length (const xcb_xv_image_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xv_image_data_end
 ** 
 ** @param const xcb_xv_image_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_xv_image_data_end (const xcb_xv_image_t *R  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_xv_image_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_xv_image_t)
 */

/*****************************************************************************
 **
 ** void xcb_xv_image_next
 ** 
 ** @param xcb_xv_image_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_xv_image_next (xcb_xv_image_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_xv_image_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xv_image_end
 ** 
 ** @param xcb_xv_image_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
xcb_generic_iterator_t
xcb_xv_image_end (xcb_xv_image_iterator_t i  /**< */);

extern(C) int
xcb_xv_attribute_info_sizeof (const void  *_buffer  /**< */);


/*****************************************************************************
 **
 ** char * xcb_xv_attribute_info_name
 ** 
 ** @param const xcb_xv_attribute_info_t *R
 ** @returns char *
 **
 *****************************************************************************/
 
char *
xcb_xv_attribute_info_name (const xcb_xv_attribute_info_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_xv_attribute_info_name_length
 ** 
 ** @param const xcb_xv_attribute_info_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xv_attribute_info_name_length (const xcb_xv_attribute_info_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xv_attribute_info_name_end
 ** 
 ** @param const xcb_xv_attribute_info_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_xv_attribute_info_name_end (const xcb_xv_attribute_info_t *R  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_xv_attribute_info_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_xv_attribute_info_t)
 */

/*****************************************************************************
 **
 ** void xcb_xv_attribute_info_next
 ** 
 ** @param xcb_xv_attribute_info_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_xv_attribute_info_next (xcb_xv_attribute_info_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_xv_attribute_info_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xv_attribute_info_end
 ** 
 ** @param xcb_xv_attribute_info_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
xcb_generic_iterator_t
xcb_xv_attribute_info_end (xcb_xv_attribute_info_iterator_t i  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_xv_image_format_info_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_xv_image_format_info_t)
 */

/*****************************************************************************
 **
 ** void xcb_xv_image_format_info_next
 ** 
 ** @param xcb_xv_image_format_info_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_xv_image_format_info_next (xcb_xv_image_format_info_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_xv_image_format_info_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xv_image_format_info_end
 ** 
 ** @param xcb_xv_image_format_info_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
xcb_generic_iterator_t
xcb_xv_image_format_info_end (xcb_xv_image_format_info_iterator_t i  /**< */);

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
 ** xcb_xv_query_extension_cookie_t xcb_xv_query_extension
 ** 
 ** @param xcb_connection_t *c
 ** @returns xcb_xv_query_extension_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_xv_query_extension_cookie_t
xcb_xv_query_extension (xcb_connection_t *c  /**< */);

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
 ** xcb_xv_query_extension_cookie_t xcb_xv_query_extension_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @returns xcb_xv_query_extension_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_xv_query_extension_cookie_t
xcb_xv_query_extension_unchecked (xcb_connection_t *c  /**< */);

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 * 
 * The parameter @p e supplied to this function must be NULL if
 * xcb_xv_query_extension_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */

/*****************************************************************************
 **
 ** xcb_xv_query_extension_reply_t * xcb_xv_query_extension_reply
 ** 
 ** @param xcb_connection_t                 *c
 ** @param xcb_xv_query_extension_cookie_t   cookie
 ** @param xcb_generic_error_t             **e
 ** @returns xcb_xv_query_extension_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_xv_query_extension_reply_t *
xcb_xv_query_extension_reply (xcb_connection_t                 *c  /**< */,
                              xcb_xv_query_extension_cookie_t   cookie  /**< */,
                              xcb_generic_error_t             **e  /**< */);

extern(C) int
xcb_xv_query_adaptors_sizeof (const void  *_buffer  /**< */);

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
 ** xcb_xv_query_adaptors_cookie_t xcb_xv_query_adaptors
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_window_t      window
 ** @returns xcb_xv_query_adaptors_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_xv_query_adaptors_cookie_t
xcb_xv_query_adaptors (xcb_connection_t *c  /**< */,
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
 ** xcb_xv_query_adaptors_cookie_t xcb_xv_query_adaptors_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_window_t      window
 ** @returns xcb_xv_query_adaptors_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_xv_query_adaptors_cookie_t
xcb_xv_query_adaptors_unchecked (xcb_connection_t *c  /**< */,
                                 xcb_window_t      window  /**< */);


/*****************************************************************************
 **
 ** int xcb_xv_query_adaptors_info_length
 ** 
 ** @param const xcb_xv_query_adaptors_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xv_query_adaptors_info_length (const xcb_xv_query_adaptors_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_xv_adaptor_info_iterator_t xcb_xv_query_adaptors_info_iterator
 ** 
 ** @param const xcb_xv_query_adaptors_reply_t *R
 ** @returns xcb_xv_adaptor_info_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_xv_adaptor_info_iterator_t
xcb_xv_query_adaptors_info_iterator (const xcb_xv_query_adaptors_reply_t *R  /**< */);

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 * 
 * The parameter @p e supplied to this function must be NULL if
 * xcb_xv_query_adaptors_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */

/*****************************************************************************
 **
 ** xcb_xv_query_adaptors_reply_t * xcb_xv_query_adaptors_reply
 ** 
 ** @param xcb_connection_t                *c
 ** @param xcb_xv_query_adaptors_cookie_t   cookie
 ** @param xcb_generic_error_t            **e
 ** @returns xcb_xv_query_adaptors_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_xv_query_adaptors_reply_t *
xcb_xv_query_adaptors_reply (xcb_connection_t                *c  /**< */,
                             xcb_xv_query_adaptors_cookie_t   cookie  /**< */,
                             xcb_generic_error_t            **e  /**< */);

extern(C) int
xcb_xv_query_encodings_sizeof (const void  *_buffer  /**< */);

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
 ** xcb_xv_query_encodings_cookie_t xcb_xv_query_encodings
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_xv_port_t     port
 ** @returns xcb_xv_query_encodings_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_xv_query_encodings_cookie_t
xcb_xv_query_encodings (xcb_connection_t *c  /**< */,
                        xcb_xv_port_t     port  /**< */);

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
 ** xcb_xv_query_encodings_cookie_t xcb_xv_query_encodings_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_xv_port_t     port
 ** @returns xcb_xv_query_encodings_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_xv_query_encodings_cookie_t
xcb_xv_query_encodings_unchecked (xcb_connection_t *c  /**< */,
                                  xcb_xv_port_t     port  /**< */);


/*****************************************************************************
 **
 ** int xcb_xv_query_encodings_info_length
 ** 
 ** @param const xcb_xv_query_encodings_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xv_query_encodings_info_length (const xcb_xv_query_encodings_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_xv_encoding_info_iterator_t xcb_xv_query_encodings_info_iterator
 ** 
 ** @param const xcb_xv_query_encodings_reply_t *R
 ** @returns xcb_xv_encoding_info_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_xv_encoding_info_iterator_t
xcb_xv_query_encodings_info_iterator (const xcb_xv_query_encodings_reply_t *R  /**< */);

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 * 
 * The parameter @p e supplied to this function must be NULL if
 * xcb_xv_query_encodings_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */

/*****************************************************************************
 **
 ** xcb_xv_query_encodings_reply_t * xcb_xv_query_encodings_reply
 ** 
 ** @param xcb_connection_t                 *c
 ** @param xcb_xv_query_encodings_cookie_t   cookie
 ** @param xcb_generic_error_t             **e
 ** @returns xcb_xv_query_encodings_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_xv_query_encodings_reply_t *
xcb_xv_query_encodings_reply (xcb_connection_t                 *c  /**< */,
                              xcb_xv_query_encodings_cookie_t   cookie  /**< */,
                              xcb_generic_error_t             **e  /**< */);

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
 ** xcb_xv_grab_port_cookie_t xcb_xv_grab_port
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_xv_port_t     port
 ** @param xcb_timestamp_t   time
 ** @returns xcb_xv_grab_port_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_xv_grab_port_cookie_t
xcb_xv_grab_port (xcb_connection_t *c  /**< */,
                  xcb_xv_port_t     port  /**< */,
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
 ** xcb_xv_grab_port_cookie_t xcb_xv_grab_port_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_xv_port_t     port
 ** @param xcb_timestamp_t   time
 ** @returns xcb_xv_grab_port_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_xv_grab_port_cookie_t
xcb_xv_grab_port_unchecked (xcb_connection_t *c  /**< */,
                            xcb_xv_port_t     port  /**< */,
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
 * xcb_xv_grab_port_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */

/*****************************************************************************
 **
 ** xcb_xv_grab_port_reply_t * xcb_xv_grab_port_reply
 ** 
 ** @param xcb_connection_t           *c
 ** @param xcb_xv_grab_port_cookie_t   cookie
 ** @param xcb_generic_error_t       **e
 ** @returns xcb_xv_grab_port_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_xv_grab_port_reply_t *
xcb_xv_grab_port_reply (xcb_connection_t           *c  /**< */,
                        xcb_xv_grab_port_cookie_t   cookie  /**< */,
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
 ** xcb_void_cookie_t xcb_xv_ungrab_port_checked
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_xv_port_t     port
 ** @param xcb_timestamp_t   time
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_xv_ungrab_port_checked (xcb_connection_t *c  /**< */,
                            xcb_xv_port_t     port  /**< */,
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
 ** xcb_void_cookie_t xcb_xv_ungrab_port
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_xv_port_t     port
 ** @param xcb_timestamp_t   time
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_xv_ungrab_port (xcb_connection_t *c  /**< */,
                    xcb_xv_port_t     port  /**< */,
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
 ** xcb_void_cookie_t xcb_xv_put_video_checked
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_xv_port_t     port
 ** @param xcb_drawable_t    drawable
 ** @param xcb_gcontext_t    gc
 ** @param short             vid_x
 ** @param short             vid_y
 ** @param ushort            vid_w
 ** @param ushort            vid_h
 ** @param short             drw_x
 ** @param short             drw_y
 ** @param ushort            drw_w
 ** @param ushort            drw_h
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_xv_put_video_checked (xcb_connection_t *c  /**< */,
                          xcb_xv_port_t     port  /**< */,
                          xcb_drawable_t    drawable  /**< */,
                          xcb_gcontext_t    gc  /**< */,
                          short             vid_x  /**< */,
                          short             vid_y  /**< */,
                          ushort            vid_w  /**< */,
                          ushort            vid_h  /**< */,
                          short             drw_x  /**< */,
                          short             drw_y  /**< */,
                          ushort            drw_w  /**< */,
                          ushort            drw_h  /**< */);

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
 ** xcb_void_cookie_t xcb_xv_put_video
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_xv_port_t     port
 ** @param xcb_drawable_t    drawable
 ** @param xcb_gcontext_t    gc
 ** @param short             vid_x
 ** @param short             vid_y
 ** @param ushort            vid_w
 ** @param ushort            vid_h
 ** @param short             drw_x
 ** @param short             drw_y
 ** @param ushort            drw_w
 ** @param ushort            drw_h
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_xv_put_video (xcb_connection_t *c  /**< */,
                  xcb_xv_port_t     port  /**< */,
                  xcb_drawable_t    drawable  /**< */,
                  xcb_gcontext_t    gc  /**< */,
                  short             vid_x  /**< */,
                  short             vid_y  /**< */,
                  ushort            vid_w  /**< */,
                  ushort            vid_h  /**< */,
                  short             drw_x  /**< */,
                  short             drw_y  /**< */,
                  ushort            drw_w  /**< */,
                  ushort            drw_h  /**< */);

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
 ** xcb_void_cookie_t xcb_xv_put_still_checked
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_xv_port_t     port
 ** @param xcb_drawable_t    drawable
 ** @param xcb_gcontext_t    gc
 ** @param short             vid_x
 ** @param short             vid_y
 ** @param ushort            vid_w
 ** @param ushort            vid_h
 ** @param short             drw_x
 ** @param short             drw_y
 ** @param ushort            drw_w
 ** @param ushort            drw_h
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_xv_put_still_checked (xcb_connection_t *c  /**< */,
                          xcb_xv_port_t     port  /**< */,
                          xcb_drawable_t    drawable  /**< */,
                          xcb_gcontext_t    gc  /**< */,
                          short             vid_x  /**< */,
                          short             vid_y  /**< */,
                          ushort            vid_w  /**< */,
                          ushort            vid_h  /**< */,
                          short             drw_x  /**< */,
                          short             drw_y  /**< */,
                          ushort            drw_w  /**< */,
                          ushort            drw_h  /**< */);

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
 ** xcb_void_cookie_t xcb_xv_put_still
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_xv_port_t     port
 ** @param xcb_drawable_t    drawable
 ** @param xcb_gcontext_t    gc
 ** @param short             vid_x
 ** @param short             vid_y
 ** @param ushort            vid_w
 ** @param ushort            vid_h
 ** @param short             drw_x
 ** @param short             drw_y
 ** @param ushort            drw_w
 ** @param ushort            drw_h
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_xv_put_still (xcb_connection_t *c  /**< */,
                  xcb_xv_port_t     port  /**< */,
                  xcb_drawable_t    drawable  /**< */,
                  xcb_gcontext_t    gc  /**< */,
                  short             vid_x  /**< */,
                  short             vid_y  /**< */,
                  ushort            vid_w  /**< */,
                  ushort            vid_h  /**< */,
                  short             drw_x  /**< */,
                  short             drw_y  /**< */,
                  ushort            drw_w  /**< */,
                  ushort            drw_h  /**< */);

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
 ** xcb_void_cookie_t xcb_xv_get_video_checked
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_xv_port_t     port
 ** @param xcb_drawable_t    drawable
 ** @param xcb_gcontext_t    gc
 ** @param short             vid_x
 ** @param short             vid_y
 ** @param ushort            vid_w
 ** @param ushort            vid_h
 ** @param short             drw_x
 ** @param short             drw_y
 ** @param ushort            drw_w
 ** @param ushort            drw_h
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_xv_get_video_checked (xcb_connection_t *c  /**< */,
                          xcb_xv_port_t     port  /**< */,
                          xcb_drawable_t    drawable  /**< */,
                          xcb_gcontext_t    gc  /**< */,
                          short             vid_x  /**< */,
                          short             vid_y  /**< */,
                          ushort            vid_w  /**< */,
                          ushort            vid_h  /**< */,
                          short             drw_x  /**< */,
                          short             drw_y  /**< */,
                          ushort            drw_w  /**< */,
                          ushort            drw_h  /**< */);

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
 ** xcb_void_cookie_t xcb_xv_get_video
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_xv_port_t     port
 ** @param xcb_drawable_t    drawable
 ** @param xcb_gcontext_t    gc
 ** @param short             vid_x
 ** @param short             vid_y
 ** @param ushort            vid_w
 ** @param ushort            vid_h
 ** @param short             drw_x
 ** @param short             drw_y
 ** @param ushort            drw_w
 ** @param ushort            drw_h
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_xv_get_video (xcb_connection_t *c  /**< */,
                  xcb_xv_port_t     port  /**< */,
                  xcb_drawable_t    drawable  /**< */,
                  xcb_gcontext_t    gc  /**< */,
                  short             vid_x  /**< */,
                  short             vid_y  /**< */,
                  ushort            vid_w  /**< */,
                  ushort            vid_h  /**< */,
                  short             drw_x  /**< */,
                  short             drw_y  /**< */,
                  ushort            drw_w  /**< */,
                  ushort            drw_h  /**< */);

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
 ** xcb_void_cookie_t xcb_xv_get_still_checked
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_xv_port_t     port
 ** @param xcb_drawable_t    drawable
 ** @param xcb_gcontext_t    gc
 ** @param short             vid_x
 ** @param short             vid_y
 ** @param ushort            vid_w
 ** @param ushort            vid_h
 ** @param short             drw_x
 ** @param short             drw_y
 ** @param ushort            drw_w
 ** @param ushort            drw_h
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_xv_get_still_checked (xcb_connection_t *c  /**< */,
                          xcb_xv_port_t     port  /**< */,
                          xcb_drawable_t    drawable  /**< */,
                          xcb_gcontext_t    gc  /**< */,
                          short             vid_x  /**< */,
                          short             vid_y  /**< */,
                          ushort            vid_w  /**< */,
                          ushort            vid_h  /**< */,
                          short             drw_x  /**< */,
                          short             drw_y  /**< */,
                          ushort            drw_w  /**< */,
                          ushort            drw_h  /**< */);

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
 ** xcb_void_cookie_t xcb_xv_get_still
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_xv_port_t     port
 ** @param xcb_drawable_t    drawable
 ** @param xcb_gcontext_t    gc
 ** @param short             vid_x
 ** @param short             vid_y
 ** @param ushort            vid_w
 ** @param ushort            vid_h
 ** @param short             drw_x
 ** @param short             drw_y
 ** @param ushort            drw_w
 ** @param ushort            drw_h
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_xv_get_still (xcb_connection_t *c  /**< */,
                  xcb_xv_port_t     port  /**< */,
                  xcb_drawable_t    drawable  /**< */,
                  xcb_gcontext_t    gc  /**< */,
                  short             vid_x  /**< */,
                  short             vid_y  /**< */,
                  ushort            vid_w  /**< */,
                  ushort            vid_h  /**< */,
                  short             drw_x  /**< */,
                  short             drw_y  /**< */,
                  ushort            drw_w  /**< */,
                  ushort            drw_h  /**< */);

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
 ** xcb_void_cookie_t xcb_xv_stop_video_checked
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_xv_port_t     port
 ** @param xcb_drawable_t    drawable
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_xv_stop_video_checked (xcb_connection_t *c  /**< */,
                           xcb_xv_port_t     port  /**< */,
                           xcb_drawable_t    drawable  /**< */);

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
 ** xcb_void_cookie_t xcb_xv_stop_video
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_xv_port_t     port
 ** @param xcb_drawable_t    drawable
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_xv_stop_video (xcb_connection_t *c  /**< */,
                   xcb_xv_port_t     port  /**< */,
                   xcb_drawable_t    drawable  /**< */);

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
 ** xcb_void_cookie_t xcb_xv_select_video_notify_checked
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_drawable_t    drawable
 ** @param ubyte             onoff
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_xv_select_video_notify_checked (xcb_connection_t *c  /**< */,
                                    xcb_drawable_t    drawable  /**< */,
                                    ubyte             onoff  /**< */);

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
 ** xcb_void_cookie_t xcb_xv_select_video_notify
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_drawable_t    drawable
 ** @param ubyte             onoff
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_xv_select_video_notify (xcb_connection_t *c  /**< */,
                            xcb_drawable_t    drawable  /**< */,
                            ubyte             onoff  /**< */);

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
 ** xcb_void_cookie_t xcb_xv_select_port_notify_checked
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_xv_port_t     port
 ** @param ubyte             onoff
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_xv_select_port_notify_checked (xcb_connection_t *c  /**< */,
                                   xcb_xv_port_t     port  /**< */,
                                   ubyte             onoff  /**< */);

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
 ** xcb_void_cookie_t xcb_xv_select_port_notify
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_xv_port_t     port
 ** @param ubyte             onoff
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_xv_select_port_notify (xcb_connection_t *c  /**< */,
                           xcb_xv_port_t     port  /**< */,
                           ubyte             onoff  /**< */);

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
 ** xcb_xv_query_best_size_cookie_t xcb_xv_query_best_size
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_xv_port_t     port
 ** @param ushort            vid_w
 ** @param ushort            vid_h
 ** @param ushort            drw_w
 ** @param ushort            drw_h
 ** @param ubyte             motion
 ** @returns xcb_xv_query_best_size_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_xv_query_best_size_cookie_t
xcb_xv_query_best_size (xcb_connection_t *c  /**< */,
                        xcb_xv_port_t     port  /**< */,
                        ushort            vid_w  /**< */,
                        ushort            vid_h  /**< */,
                        ushort            drw_w  /**< */,
                        ushort            drw_h  /**< */,
                        ubyte             motion  /**< */);

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
 ** xcb_xv_query_best_size_cookie_t xcb_xv_query_best_size_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_xv_port_t     port
 ** @param ushort            vid_w
 ** @param ushort            vid_h
 ** @param ushort            drw_w
 ** @param ushort            drw_h
 ** @param ubyte             motion
 ** @returns xcb_xv_query_best_size_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_xv_query_best_size_cookie_t
xcb_xv_query_best_size_unchecked (xcb_connection_t *c  /**< */,
                                  xcb_xv_port_t     port  /**< */,
                                  ushort            vid_w  /**< */,
                                  ushort            vid_h  /**< */,
                                  ushort            drw_w  /**< */,
                                  ushort            drw_h  /**< */,
                                  ubyte             motion  /**< */);

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 * 
 * The parameter @p e supplied to this function must be NULL if
 * xcb_xv_query_best_size_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */

/*****************************************************************************
 **
 ** xcb_xv_query_best_size_reply_t * xcb_xv_query_best_size_reply
 ** 
 ** @param xcb_connection_t                 *c
 ** @param xcb_xv_query_best_size_cookie_t   cookie
 ** @param xcb_generic_error_t             **e
 ** @returns xcb_xv_query_best_size_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_xv_query_best_size_reply_t *
xcb_xv_query_best_size_reply (xcb_connection_t                 *c  /**< */,
                              xcb_xv_query_best_size_cookie_t   cookie  /**< */,
                              xcb_generic_error_t             **e  /**< */);

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
 ** xcb_void_cookie_t xcb_xv_set_port_attribute_checked
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_xv_port_t     port
 ** @param xcb_atom_t        attribute
 ** @param int               value
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_xv_set_port_attribute_checked (xcb_connection_t *c  /**< */,
                                   xcb_xv_port_t     port  /**< */,
                                   xcb_atom_t        attribute  /**< */,
                                   int               value  /**< */);

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
 ** xcb_void_cookie_t xcb_xv_set_port_attribute
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_xv_port_t     port
 ** @param xcb_atom_t        attribute
 ** @param int               value
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_xv_set_port_attribute (xcb_connection_t *c  /**< */,
                           xcb_xv_port_t     port  /**< */,
                           xcb_atom_t        attribute  /**< */,
                           int               value  /**< */);

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
 ** xcb_xv_get_port_attribute_cookie_t xcb_xv_get_port_attribute
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_xv_port_t     port
 ** @param xcb_atom_t        attribute
 ** @returns xcb_xv_get_port_attribute_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_xv_get_port_attribute_cookie_t
xcb_xv_get_port_attribute (xcb_connection_t *c  /**< */,
                           xcb_xv_port_t     port  /**< */,
                           xcb_atom_t        attribute  /**< */);

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
 ** xcb_xv_get_port_attribute_cookie_t xcb_xv_get_port_attribute_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_xv_port_t     port
 ** @param xcb_atom_t        attribute
 ** @returns xcb_xv_get_port_attribute_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_xv_get_port_attribute_cookie_t
xcb_xv_get_port_attribute_unchecked (xcb_connection_t *c  /**< */,
                                     xcb_xv_port_t     port  /**< */,
                                     xcb_atom_t        attribute  /**< */);

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 * 
 * The parameter @p e supplied to this function must be NULL if
 * xcb_xv_get_port_attribute_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */

/*****************************************************************************
 **
 ** xcb_xv_get_port_attribute_reply_t * xcb_xv_get_port_attribute_reply
 ** 
 ** @param xcb_connection_t                    *c
 ** @param xcb_xv_get_port_attribute_cookie_t   cookie
 ** @param xcb_generic_error_t                **e
 ** @returns xcb_xv_get_port_attribute_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_xv_get_port_attribute_reply_t *
xcb_xv_get_port_attribute_reply (xcb_connection_t                    *c  /**< */,
                                 xcb_xv_get_port_attribute_cookie_t   cookie  /**< */,
                                 xcb_generic_error_t                **e  /**< */);

extern(C) int
xcb_xv_query_port_attributes_sizeof (const void  *_buffer  /**< */);

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
 ** xcb_xv_query_port_attributes_cookie_t xcb_xv_query_port_attributes
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_xv_port_t     port
 ** @returns xcb_xv_query_port_attributes_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_xv_query_port_attributes_cookie_t
xcb_xv_query_port_attributes (xcb_connection_t *c  /**< */,
                              xcb_xv_port_t     port  /**< */);

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
 ** xcb_xv_query_port_attributes_cookie_t xcb_xv_query_port_attributes_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_xv_port_t     port
 ** @returns xcb_xv_query_port_attributes_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_xv_query_port_attributes_cookie_t
xcb_xv_query_port_attributes_unchecked (xcb_connection_t *c  /**< */,
                                        xcb_xv_port_t     port  /**< */);


/*****************************************************************************
 **
 ** int xcb_xv_query_port_attributes_attributes_length
 ** 
 ** @param const xcb_xv_query_port_attributes_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xv_query_port_attributes_attributes_length (const xcb_xv_query_port_attributes_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_xv_attribute_info_iterator_t xcb_xv_query_port_attributes_attributes_iterator
 ** 
 ** @param const xcb_xv_query_port_attributes_reply_t *R
 ** @returns xcb_xv_attribute_info_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_xv_attribute_info_iterator_t
xcb_xv_query_port_attributes_attributes_iterator (const xcb_xv_query_port_attributes_reply_t *R  /**< */);

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 * 
 * The parameter @p e supplied to this function must be NULL if
 * xcb_xv_query_port_attributes_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */

/*****************************************************************************
 **
 ** xcb_xv_query_port_attributes_reply_t * xcb_xv_query_port_attributes_reply
 ** 
 ** @param xcb_connection_t                       *c
 ** @param xcb_xv_query_port_attributes_cookie_t   cookie
 ** @param xcb_generic_error_t                   **e
 ** @returns xcb_xv_query_port_attributes_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_xv_query_port_attributes_reply_t *
xcb_xv_query_port_attributes_reply (xcb_connection_t                       *c  /**< */,
                                    xcb_xv_query_port_attributes_cookie_t   cookie  /**< */,
                                    xcb_generic_error_t                   **e  /**< */);

extern(C) int
xcb_xv_list_image_formats_sizeof (const void  *_buffer  /**< */);

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
 ** xcb_xv_list_image_formats_cookie_t xcb_xv_list_image_formats
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_xv_port_t     port
 ** @returns xcb_xv_list_image_formats_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_xv_list_image_formats_cookie_t
xcb_xv_list_image_formats (xcb_connection_t *c  /**< */,
                           xcb_xv_port_t     port  /**< */);

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
 ** xcb_xv_list_image_formats_cookie_t xcb_xv_list_image_formats_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_xv_port_t     port
 ** @returns xcb_xv_list_image_formats_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_xv_list_image_formats_cookie_t
xcb_xv_list_image_formats_unchecked (xcb_connection_t *c  /**< */,
                                     xcb_xv_port_t     port  /**< */);


/*****************************************************************************
 **
 ** xcb_xv_image_format_info_t * xcb_xv_list_image_formats_format
 ** 
 ** @param const xcb_xv_list_image_formats_reply_t *R
 ** @returns xcb_xv_image_format_info_t *
 **
 *****************************************************************************/
 
xcb_xv_image_format_info_t *
xcb_xv_list_image_formats_format (const xcb_xv_list_image_formats_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_xv_list_image_formats_format_length
 ** 
 ** @param const xcb_xv_list_image_formats_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xv_list_image_formats_format_length (const xcb_xv_list_image_formats_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_xv_image_format_info_iterator_t xcb_xv_list_image_formats_format_iterator
 ** 
 ** @param const xcb_xv_list_image_formats_reply_t *R
 ** @returns xcb_xv_image_format_info_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_xv_image_format_info_iterator_t
xcb_xv_list_image_formats_format_iterator (const xcb_xv_list_image_formats_reply_t *R  /**< */);

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 * 
 * The parameter @p e supplied to this function must be NULL if
 * xcb_xv_list_image_formats_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */

/*****************************************************************************
 **
 ** xcb_xv_list_image_formats_reply_t * xcb_xv_list_image_formats_reply
 ** 
 ** @param xcb_connection_t                    *c
 ** @param xcb_xv_list_image_formats_cookie_t   cookie
 ** @param xcb_generic_error_t                **e
 ** @returns xcb_xv_list_image_formats_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_xv_list_image_formats_reply_t *
xcb_xv_list_image_formats_reply (xcb_connection_t                    *c  /**< */,
                                 xcb_xv_list_image_formats_cookie_t   cookie  /**< */,
                                 xcb_generic_error_t                **e  /**< */);

extern(C) int
xcb_xv_query_image_attributes_sizeof (const void  *_buffer  /**< */);

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
 ** xcb_xv_query_image_attributes_cookie_t xcb_xv_query_image_attributes
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_xv_port_t     port
 ** @param uint              id
 ** @param ushort            width
 ** @param ushort            height
 ** @returns xcb_xv_query_image_attributes_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_xv_query_image_attributes_cookie_t
xcb_xv_query_image_attributes (xcb_connection_t *c  /**< */,
                               xcb_xv_port_t     port  /**< */,
                               uint              id  /**< */,
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
 ** xcb_xv_query_image_attributes_cookie_t xcb_xv_query_image_attributes_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_xv_port_t     port
 ** @param uint              id
 ** @param ushort            width
 ** @param ushort            height
 ** @returns xcb_xv_query_image_attributes_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_xv_query_image_attributes_cookie_t
xcb_xv_query_image_attributes_unchecked (xcb_connection_t *c  /**< */,
                                         xcb_xv_port_t     port  /**< */,
                                         uint              id  /**< */,
                                         ushort            width  /**< */,
                                         ushort            height  /**< */);


/*****************************************************************************
 **
 ** uint * xcb_xv_query_image_attributes_pitches
 ** 
 ** @param const xcb_xv_query_image_attributes_reply_t *R
 ** @returns uint *
 **
 *****************************************************************************/
 
uint *
xcb_xv_query_image_attributes_pitches (const xcb_xv_query_image_attributes_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_xv_query_image_attributes_pitches_length
 ** 
 ** @param const xcb_xv_query_image_attributes_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xv_query_image_attributes_pitches_length (const xcb_xv_query_image_attributes_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xv_query_image_attributes_pitches_end
 ** 
 ** @param const xcb_xv_query_image_attributes_reply_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_xv_query_image_attributes_pitches_end (const xcb_xv_query_image_attributes_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** uint * xcb_xv_query_image_attributes_offsets
 ** 
 ** @param const xcb_xv_query_image_attributes_reply_t *R
 ** @returns uint *
 **
 *****************************************************************************/
 
uint *
xcb_xv_query_image_attributes_offsets (const xcb_xv_query_image_attributes_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_xv_query_image_attributes_offsets_length
 ** 
 ** @param const xcb_xv_query_image_attributes_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xv_query_image_attributes_offsets_length (const xcb_xv_query_image_attributes_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xv_query_image_attributes_offsets_end
 ** 
 ** @param const xcb_xv_query_image_attributes_reply_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_xv_query_image_attributes_offsets_end (const xcb_xv_query_image_attributes_reply_t *R  /**< */);

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 * 
 * The parameter @p e supplied to this function must be NULL if
 * xcb_xv_query_image_attributes_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */

/*****************************************************************************
 **
 ** xcb_xv_query_image_attributes_reply_t * xcb_xv_query_image_attributes_reply
 ** 
 ** @param xcb_connection_t                        *c
 ** @param xcb_xv_query_image_attributes_cookie_t   cookie
 ** @param xcb_generic_error_t                    **e
 ** @returns xcb_xv_query_image_attributes_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_xv_query_image_attributes_reply_t *
xcb_xv_query_image_attributes_reply (xcb_connection_t                        *c  /**< */,
                                     xcb_xv_query_image_attributes_cookie_t   cookie  /**< */,
                                     xcb_generic_error_t                    **e  /**< */);

extern(C) int
xcb_xv_put_image_sizeof (const void  *_buffer  /**< */,
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
 ** xcb_void_cookie_t xcb_xv_put_image_checked
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_xv_port_t     port
 ** @param xcb_drawable_t    drawable
 ** @param xcb_gcontext_t    gc
 ** @param uint              id
 ** @param short             src_x
 ** @param short             src_y
 ** @param ushort            src_w
 ** @param ushort            src_h
 ** @param short             drw_x
 ** @param short             drw_y
 ** @param ushort            drw_w
 ** @param ushort            drw_h
 ** @param ushort            width
 ** @param ushort            height
 ** @param uint              data_len
 ** @param const ubyte      *data
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_xv_put_image_checked (xcb_connection_t *c  /**< */,
                          xcb_xv_port_t     port  /**< */,
                          xcb_drawable_t    drawable  /**< */,
                          xcb_gcontext_t    gc  /**< */,
                          uint              id  /**< */,
                          short             src_x  /**< */,
                          short             src_y  /**< */,
                          ushort            src_w  /**< */,
                          ushort            src_h  /**< */,
                          short             drw_x  /**< */,
                          short             drw_y  /**< */,
                          ushort            drw_w  /**< */,
                          ushort            drw_h  /**< */,
                          ushort            width  /**< */,
                          ushort            height  /**< */,
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
 ** xcb_void_cookie_t xcb_xv_put_image
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_xv_port_t     port
 ** @param xcb_drawable_t    drawable
 ** @param xcb_gcontext_t    gc
 ** @param uint              id
 ** @param short             src_x
 ** @param short             src_y
 ** @param ushort            src_w
 ** @param ushort            src_h
 ** @param short             drw_x
 ** @param short             drw_y
 ** @param ushort            drw_w
 ** @param ushort            drw_h
 ** @param ushort            width
 ** @param ushort            height
 ** @param uint              data_len
 ** @param const ubyte      *data
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_xv_put_image (xcb_connection_t *c  /**< */,
                  xcb_xv_port_t     port  /**< */,
                  xcb_drawable_t    drawable  /**< */,
                  xcb_gcontext_t    gc  /**< */,
                  uint              id  /**< */,
                  short             src_x  /**< */,
                  short             src_y  /**< */,
                  ushort            src_w  /**< */,
                  ushort            src_h  /**< */,
                  short             drw_x  /**< */,
                  short             drw_y  /**< */,
                  ushort            drw_w  /**< */,
                  ushort            drw_h  /**< */,
                  ushort            width  /**< */,
                  ushort            height  /**< */,
                  uint              data_len  /**< */,
                  const ubyte      *data  /**< */);

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
 ** xcb_void_cookie_t xcb_xv_shm_put_image_checked
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_xv_port_t     port
 ** @param xcb_drawable_t    drawable
 ** @param xcb_gcontext_t    gc
 ** @param xcb_shm_seg_t     shmseg
 ** @param uint              id
 ** @param uint              offset
 ** @param short             src_x
 ** @param short             src_y
 ** @param ushort            src_w
 ** @param ushort            src_h
 ** @param short             drw_x
 ** @param short             drw_y
 ** @param ushort            drw_w
 ** @param ushort            drw_h
 ** @param ushort            width
 ** @param ushort            height
 ** @param ubyte             send_event
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_xv_shm_put_image_checked (xcb_connection_t *c  /**< */,
                              xcb_xv_port_t     port  /**< */,
                              xcb_drawable_t    drawable  /**< */,
                              xcb_gcontext_t    gc  /**< */,
                              xcb_shm_seg_t     shmseg  /**< */,
                              uint              id  /**< */,
                              uint              offset  /**< */,
                              short             src_x  /**< */,
                              short             src_y  /**< */,
                              ushort            src_w  /**< */,
                              ushort            src_h  /**< */,
                              short             drw_x  /**< */,
                              short             drw_y  /**< */,
                              ushort            drw_w  /**< */,
                              ushort            drw_h  /**< */,
                              ushort            width  /**< */,
                              ushort            height  /**< */,
                              ubyte             send_event  /**< */);

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
 ** xcb_void_cookie_t xcb_xv_shm_put_image
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_xv_port_t     port
 ** @param xcb_drawable_t    drawable
 ** @param xcb_gcontext_t    gc
 ** @param xcb_shm_seg_t     shmseg
 ** @param uint              id
 ** @param uint              offset
 ** @param short             src_x
 ** @param short             src_y
 ** @param ushort            src_w
 ** @param ushort            src_h
 ** @param short             drw_x
 ** @param short             drw_y
 ** @param ushort            drw_w
 ** @param ushort            drw_h
 ** @param ushort            width
 ** @param ushort            height
 ** @param ubyte             send_event
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_xv_shm_put_image (xcb_connection_t *c  /**< */,
                      xcb_xv_port_t     port  /**< */,
                      xcb_drawable_t    drawable  /**< */,
                      xcb_gcontext_t    gc  /**< */,
                      xcb_shm_seg_t     shmseg  /**< */,
                      uint              id  /**< */,
                      uint              offset  /**< */,
                      short             src_x  /**< */,
                      short             src_y  /**< */,
                      ushort            src_w  /**< */,
                      ushort            src_h  /**< */,
                      short             drw_x  /**< */,
                      short             drw_y  /**< */,
                      ushort            drw_w  /**< */,
                      ushort            drw_h  /**< */,
                      ushort            width  /**< */,
                      ushort            height  /**< */,
                      ubyte             send_event  /**< */);

/**
 * @}
 */
