/*
 * This file generated automatically from shm.xml by d_client.py.
 * Edit at your peril.
 */

/**
 * @defgroup XCB_Shm_API XCB Shm API
 * @brief Shm XCB Protocol Implementation.
 * @{
 **/

module interim.xcb.shm;

import interim.xcb.xcb;
import interim.xcb.xproto;

const int XCB_SHM_MAJOR_VERSION = 1;
const int XCB_SHM_MINOR_VERSION = 1;
  
extern(C) xcb_extension_t xcb_shm_id;

alias uint xcb_shm_seg_t;

/**
 * @brief xcb_shm_seg_iterator_t
 **/
struct xcb_shm_seg_iterator_t {
    xcb_shm_seg_t *data; /**<  */
    int            rem; /**<  */
    int            index; /**<  */
}

/** Opcode for xcb_shm_completion. */
const ubyte XCB_SHM_COMPLETION = 0;

/**
 * @brief xcb_shm_completion_event_t
 **/
struct xcb_shm_completion_event_t {
    ubyte          response_type; /**<  */
    ubyte          pad0; /**<  */
    ushort         sequence; /**<  */
    xcb_drawable_t drawable; /**<  */
    ushort         minor_event; /**<  */
    ubyte          major_event; /**<  */
    ubyte          pad1; /**<  */
    xcb_shm_seg_t  shmseg; /**<  */
    uint           offset; /**<  */
}

/** Opcode for xcb_shm_bad_seg. */
const ubyte XCB_SHM_BAD_SEG = 0;

alias xcb_value_error_t xcb_shm_bad_seg_error_t;

/**
 * @brief xcb_shm_query_version_cookie_t
 **/
struct xcb_shm_query_version_cookie_t {
    uint sequence; /**<  */
}

/** Opcode for xcb_shm_query_version. */
const ubyte XCB_SHM_QUERY_VERSION = 0;

/**
 * @brief xcb_shm_query_version_request_t
 **/
struct xcb_shm_query_version_request_t {
    ubyte  major_opcode; /**<  */
    ubyte  minor_opcode; /**<  */
    ushort length; /**<  */
}

/**
 * @brief xcb_shm_query_version_reply_t
 **/
struct xcb_shm_query_version_reply_t {
    ubyte  response_type; /**<  */
    ubyte  shared_pixmaps; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    ushort major_version; /**<  */
    ushort minor_version; /**<  */
    ushort uid; /**<  */
    ushort gid; /**<  */
    ubyte  pixmap_format; /**<  */
    ubyte  pad0[15]; /**<  */
}

/** Opcode for xcb_shm_attach. */
const ubyte XCB_SHM_ATTACH = 1;

/**
 * @brief xcb_shm_attach_request_t
 **/
struct xcb_shm_attach_request_t {
    ubyte         major_opcode; /**<  */
    ubyte         minor_opcode; /**<  */
    ushort        length; /**<  */
    xcb_shm_seg_t shmseg; /**<  */
    uint          shmid; /**<  */
    ubyte         read_only; /**<  */
    ubyte         pad0[3]; /**<  */
}

/** Opcode for xcb_shm_detach. */
const ubyte XCB_SHM_DETACH = 2;

/**
 * @brief xcb_shm_detach_request_t
 **/
struct xcb_shm_detach_request_t {
    ubyte         major_opcode; /**<  */
    ubyte         minor_opcode; /**<  */
    ushort        length; /**<  */
    xcb_shm_seg_t shmseg; /**<  */
}

/** Opcode for xcb_shm_put_image. */
const ubyte XCB_SHM_PUT_IMAGE = 3;

/**
 * @brief xcb_shm_put_image_request_t
 **/
struct xcb_shm_put_image_request_t {
    ubyte          major_opcode; /**<  */
    ubyte          minor_opcode; /**<  */
    ushort         length; /**<  */
    xcb_drawable_t drawable; /**<  */
    xcb_gcontext_t gc; /**<  */
    ushort         total_width; /**<  */
    ushort         total_height; /**<  */
    ushort         src_x; /**<  */
    ushort         src_y; /**<  */
    ushort         src_width; /**<  */
    ushort         src_height; /**<  */
    short          dst_x; /**<  */
    short          dst_y; /**<  */
    ubyte          depth; /**<  */
    ubyte          format; /**<  */
    ubyte          send_event; /**<  */
    ubyte          pad0; /**<  */
    xcb_shm_seg_t  shmseg; /**<  */
    uint           offset; /**<  */
}

/**
 * @brief xcb_shm_get_image_cookie_t
 **/
struct xcb_shm_get_image_cookie_t {
    uint sequence; /**<  */
}

/** Opcode for xcb_shm_get_image. */
const ubyte XCB_SHM_GET_IMAGE = 4;

/**
 * @brief xcb_shm_get_image_request_t
 **/
struct xcb_shm_get_image_request_t {
    ubyte          major_opcode; /**<  */
    ubyte          minor_opcode; /**<  */
    ushort         length; /**<  */
    xcb_drawable_t drawable; /**<  */
    short          x; /**<  */
    short          y; /**<  */
    ushort         width; /**<  */
    ushort         height; /**<  */
    uint           plane_mask; /**<  */
    ubyte          format; /**<  */
    ubyte          pad0[3]; /**<  */
    xcb_shm_seg_t  shmseg; /**<  */
    uint           offset; /**<  */
}

/**
 * @brief xcb_shm_get_image_reply_t
 **/
struct xcb_shm_get_image_reply_t {
    ubyte          response_type; /**<  */
    ubyte          depth; /**<  */
    ushort         sequence; /**<  */
    uint           length; /**<  */
    xcb_visualid_t visual; /**<  */
    uint           size; /**<  */
}

/** Opcode for xcb_shm_create_pixmap. */
const ubyte XCB_SHM_CREATE_PIXMAP = 5;

/**
 * @brief xcb_shm_create_pixmap_request_t
 **/
struct xcb_shm_create_pixmap_request_t {
    ubyte          major_opcode; /**<  */
    ubyte          minor_opcode; /**<  */
    ushort         length; /**<  */
    xcb_pixmap_t   pid; /**<  */
    xcb_drawable_t drawable; /**<  */
    ushort         width; /**<  */
    ushort         height; /**<  */
    ubyte          depth; /**<  */
    ubyte          pad0[3]; /**<  */
    xcb_shm_seg_t  shmseg; /**<  */
    uint           offset; /**<  */
}

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_shm_seg_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_shm_seg_t)
 */

/*****************************************************************************
 **
 ** void xcb_shm_seg_next
 ** 
 ** @param xcb_shm_seg_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_shm_seg_next (xcb_shm_seg_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_shm_seg_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_shm_seg_end
 ** 
 ** @param xcb_shm_seg_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
xcb_generic_iterator_t
xcb_shm_seg_end (xcb_shm_seg_iterator_t i  /**< */);

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
 ** xcb_shm_query_version_cookie_t xcb_shm_query_version
 ** 
 ** @param xcb_connection_t *c
 ** @returns xcb_shm_query_version_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_shm_query_version_cookie_t
xcb_shm_query_version (xcb_connection_t *c  /**< */);

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
 ** xcb_shm_query_version_cookie_t xcb_shm_query_version_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @returns xcb_shm_query_version_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_shm_query_version_cookie_t
xcb_shm_query_version_unchecked (xcb_connection_t *c  /**< */);

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 * 
 * The parameter @p e supplied to this function must be NULL if
 * xcb_shm_query_version_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */

/*****************************************************************************
 **
 ** xcb_shm_query_version_reply_t * xcb_shm_query_version_reply
 ** 
 ** @param xcb_connection_t                *c
 ** @param xcb_shm_query_version_cookie_t   cookie
 ** @param xcb_generic_error_t            **e
 ** @returns xcb_shm_query_version_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_shm_query_version_reply_t *
xcb_shm_query_version_reply (xcb_connection_t                *c  /**< */,
                             xcb_shm_query_version_cookie_t   cookie  /**< */,
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
 ** xcb_void_cookie_t xcb_shm_attach_checked
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_shm_seg_t     shmseg
 ** @param uint              shmid
 ** @param ubyte             read_only
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_shm_attach_checked (xcb_connection_t *c  /**< */,
                        xcb_shm_seg_t     shmseg  /**< */,
                        uint              shmid  /**< */,
                        ubyte             read_only  /**< */);

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
 ** xcb_void_cookie_t xcb_shm_attach
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_shm_seg_t     shmseg
 ** @param uint              shmid
 ** @param ubyte             read_only
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_shm_attach (xcb_connection_t *c  /**< */,
                xcb_shm_seg_t     shmseg  /**< */,
                uint              shmid  /**< */,
                ubyte             read_only  /**< */);

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
 ** xcb_void_cookie_t xcb_shm_detach_checked
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_shm_seg_t     shmseg
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_shm_detach_checked (xcb_connection_t *c  /**< */,
                        xcb_shm_seg_t     shmseg  /**< */);

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
 ** xcb_void_cookie_t xcb_shm_detach
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_shm_seg_t     shmseg
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_shm_detach (xcb_connection_t *c  /**< */,
                xcb_shm_seg_t     shmseg  /**< */);

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
 ** xcb_void_cookie_t xcb_shm_put_image_checked
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_drawable_t    drawable
 ** @param xcb_gcontext_t    gc
 ** @param ushort            total_width
 ** @param ushort            total_height
 ** @param ushort            src_x
 ** @param ushort            src_y
 ** @param ushort            src_width
 ** @param ushort            src_height
 ** @param short             dst_x
 ** @param short             dst_y
 ** @param ubyte             depth
 ** @param ubyte             format
 ** @param ubyte             send_event
 ** @param xcb_shm_seg_t     shmseg
 ** @param uint              offset
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_shm_put_image_checked (xcb_connection_t *c  /**< */,
                           xcb_drawable_t    drawable  /**< */,
                           xcb_gcontext_t    gc  /**< */,
                           ushort            total_width  /**< */,
                           ushort            total_height  /**< */,
                           ushort            src_x  /**< */,
                           ushort            src_y  /**< */,
                           ushort            src_width  /**< */,
                           ushort            src_height  /**< */,
                           short             dst_x  /**< */,
                           short             dst_y  /**< */,
                           ubyte             depth  /**< */,
                           ubyte             format  /**< */,
                           ubyte             send_event  /**< */,
                           xcb_shm_seg_t     shmseg  /**< */,
                           uint              offset  /**< */);

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
 ** xcb_void_cookie_t xcb_shm_put_image
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_drawable_t    drawable
 ** @param xcb_gcontext_t    gc
 ** @param ushort            total_width
 ** @param ushort            total_height
 ** @param ushort            src_x
 ** @param ushort            src_y
 ** @param ushort            src_width
 ** @param ushort            src_height
 ** @param short             dst_x
 ** @param short             dst_y
 ** @param ubyte             depth
 ** @param ubyte             format
 ** @param ubyte             send_event
 ** @param xcb_shm_seg_t     shmseg
 ** @param uint              offset
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_shm_put_image (xcb_connection_t *c  /**< */,
                   xcb_drawable_t    drawable  /**< */,
                   xcb_gcontext_t    gc  /**< */,
                   ushort            total_width  /**< */,
                   ushort            total_height  /**< */,
                   ushort            src_x  /**< */,
                   ushort            src_y  /**< */,
                   ushort            src_width  /**< */,
                   ushort            src_height  /**< */,
                   short             dst_x  /**< */,
                   short             dst_y  /**< */,
                   ubyte             depth  /**< */,
                   ubyte             format  /**< */,
                   ubyte             send_event  /**< */,
                   xcb_shm_seg_t     shmseg  /**< */,
                   uint              offset  /**< */);

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
 ** xcb_shm_get_image_cookie_t xcb_shm_get_image
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_drawable_t    drawable
 ** @param short             x
 ** @param short             y
 ** @param ushort            width
 ** @param ushort            height
 ** @param uint              plane_mask
 ** @param ubyte             format
 ** @param xcb_shm_seg_t     shmseg
 ** @param uint              offset
 ** @returns xcb_shm_get_image_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_shm_get_image_cookie_t
xcb_shm_get_image (xcb_connection_t *c  /**< */,
                   xcb_drawable_t    drawable  /**< */,
                   short             x  /**< */,
                   short             y  /**< */,
                   ushort            width  /**< */,
                   ushort            height  /**< */,
                   uint              plane_mask  /**< */,
                   ubyte             format  /**< */,
                   xcb_shm_seg_t     shmseg  /**< */,
                   uint              offset  /**< */);

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
 ** xcb_shm_get_image_cookie_t xcb_shm_get_image_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_drawable_t    drawable
 ** @param short             x
 ** @param short             y
 ** @param ushort            width
 ** @param ushort            height
 ** @param uint              plane_mask
 ** @param ubyte             format
 ** @param xcb_shm_seg_t     shmseg
 ** @param uint              offset
 ** @returns xcb_shm_get_image_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_shm_get_image_cookie_t
xcb_shm_get_image_unchecked (xcb_connection_t *c  /**< */,
                             xcb_drawable_t    drawable  /**< */,
                             short             x  /**< */,
                             short             y  /**< */,
                             ushort            width  /**< */,
                             ushort            height  /**< */,
                             uint              plane_mask  /**< */,
                             ubyte             format  /**< */,
                             xcb_shm_seg_t     shmseg  /**< */,
                             uint              offset  /**< */);

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 * 
 * The parameter @p e supplied to this function must be NULL if
 * xcb_shm_get_image_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */

/*****************************************************************************
 **
 ** xcb_shm_get_image_reply_t * xcb_shm_get_image_reply
 ** 
 ** @param xcb_connection_t            *c
 ** @param xcb_shm_get_image_cookie_t   cookie
 ** @param xcb_generic_error_t        **e
 ** @returns xcb_shm_get_image_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_shm_get_image_reply_t *
xcb_shm_get_image_reply (xcb_connection_t            *c  /**< */,
                         xcb_shm_get_image_cookie_t   cookie  /**< */,
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
 ** xcb_void_cookie_t xcb_shm_create_pixmap_checked
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_pixmap_t      pid
 ** @param xcb_drawable_t    drawable
 ** @param ushort            width
 ** @param ushort            height
 ** @param ubyte             depth
 ** @param xcb_shm_seg_t     shmseg
 ** @param uint              offset
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_shm_create_pixmap_checked (xcb_connection_t *c  /**< */,
                               xcb_pixmap_t      pid  /**< */,
                               xcb_drawable_t    drawable  /**< */,
                               ushort            width  /**< */,
                               ushort            height  /**< */,
                               ubyte             depth  /**< */,
                               xcb_shm_seg_t     shmseg  /**< */,
                               uint              offset  /**< */);

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
 ** xcb_void_cookie_t xcb_shm_create_pixmap
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_pixmap_t      pid
 ** @param xcb_drawable_t    drawable
 ** @param ushort            width
 ** @param ushort            height
 ** @param ubyte             depth
 ** @param xcb_shm_seg_t     shmseg
 ** @param uint              offset
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_shm_create_pixmap (xcb_connection_t *c  /**< */,
                       xcb_pixmap_t      pid  /**< */,
                       xcb_drawable_t    drawable  /**< */,
                       ushort            width  /**< */,
                       ushort            height  /**< */,
                       ubyte             depth  /**< */,
                       xcb_shm_seg_t     shmseg  /**< */,
                       uint              offset  /**< */);

/**
 * @}
 */
