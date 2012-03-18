/*
 * This file generated automatically from xinerama.xml by d_client.py.
 * Edit at your peril.
 */

/**
 * @defgroup XCB_Xinerama_API XCB Xinerama API
 * @brief Xinerama XCB Protocol Implementation.
 * @{
 **/

module std.c.xcb.xinerama;

import std.c.xcb.xcb;
import std.c.xcb.xproto;

const int XCB_XINERAMA_MAJOR_VERSION = 1;
const int XCB_XINERAMA_MINOR_VERSION = 1;
  
extern(C) xcb_extension_t xcb_xinerama_id;

/**
 * @brief xcb_xinerama_screen_info_t
 **/
struct xcb_xinerama_screen_info_t {
    short  x_org; /**<  */
    short  y_org; /**<  */
    ushort width; /**<  */
    ushort height; /**<  */
}

/**
 * @brief xcb_xinerama_screen_info_iterator_t
 **/
struct xcb_xinerama_screen_info_iterator_t {
    xcb_xinerama_screen_info_t *data; /**<  */
    int                         rem; /**<  */
    int                         index; /**<  */
}

/**
 * @brief xcb_xinerama_query_version_cookie_t
 **/
struct xcb_xinerama_query_version_cookie_t {
    uint sequence; /**<  */
}

/** Opcode for xcb_xinerama_query_version. */
const ubyte XCB_XINERAMA_QUERY_VERSION = 0;

/**
 * @brief xcb_xinerama_query_version_request_t
 **/
struct xcb_xinerama_query_version_request_t {
    ubyte  major_opcode; /**<  */
    ubyte  minor_opcode; /**<  */
    ushort length; /**<  */
    ubyte  major; /**<  */
    ubyte  minor; /**<  */
}

/**
 * @brief xcb_xinerama_query_version_reply_t
 **/
struct xcb_xinerama_query_version_reply_t {
    ubyte  response_type; /**<  */
    ubyte  pad0; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    ushort major; /**<  */
    ushort minor; /**<  */
}

/**
 * @brief xcb_xinerama_get_state_cookie_t
 **/
struct xcb_xinerama_get_state_cookie_t {
    uint sequence; /**<  */
}

/** Opcode for xcb_xinerama_get_state. */
const ubyte XCB_XINERAMA_GET_STATE = 1;

/**
 * @brief xcb_xinerama_get_state_request_t
 **/
struct xcb_xinerama_get_state_request_t {
    ubyte        major_opcode; /**<  */
    ubyte        minor_opcode; /**<  */
    ushort       length; /**<  */
    xcb_window_t window; /**<  */
}

/**
 * @brief xcb_xinerama_get_state_reply_t
 **/
struct xcb_xinerama_get_state_reply_t {
    ubyte        response_type; /**<  */
    ubyte        state; /**<  */
    ushort       sequence; /**<  */
    uint         length; /**<  */
    xcb_window_t window; /**<  */
}

/**
 * @brief xcb_xinerama_get_screen_count_cookie_t
 **/
struct xcb_xinerama_get_screen_count_cookie_t {
    uint sequence; /**<  */
}

/** Opcode for xcb_xinerama_get_screen_count. */
const ubyte XCB_XINERAMA_GET_SCREEN_COUNT = 2;

/**
 * @brief xcb_xinerama_get_screen_count_request_t
 **/
struct xcb_xinerama_get_screen_count_request_t {
    ubyte        major_opcode; /**<  */
    ubyte        minor_opcode; /**<  */
    ushort       length; /**<  */
    xcb_window_t window; /**<  */
}

/**
 * @brief xcb_xinerama_get_screen_count_reply_t
 **/
struct xcb_xinerama_get_screen_count_reply_t {
    ubyte        response_type; /**<  */
    ubyte        screen_count; /**<  */
    ushort       sequence; /**<  */
    uint         length; /**<  */
    xcb_window_t window; /**<  */
}

/**
 * @brief xcb_xinerama_get_screen_size_cookie_t
 **/
struct xcb_xinerama_get_screen_size_cookie_t {
    uint sequence; /**<  */
}

/** Opcode for xcb_xinerama_get_screen_size. */
const ubyte XCB_XINERAMA_GET_SCREEN_SIZE = 3;

/**
 * @brief xcb_xinerama_get_screen_size_request_t
 **/
struct xcb_xinerama_get_screen_size_request_t {
    ubyte        major_opcode; /**<  */
    ubyte        minor_opcode; /**<  */
    ushort       length; /**<  */
    xcb_window_t window; /**<  */
    uint         screen; /**<  */
}

/**
 * @brief xcb_xinerama_get_screen_size_reply_t
 **/
struct xcb_xinerama_get_screen_size_reply_t {
    ubyte        response_type; /**<  */
    ubyte        pad0; /**<  */
    ushort       sequence; /**<  */
    uint         length; /**<  */
    uint         width; /**<  */
    uint         height; /**<  */
    xcb_window_t window; /**<  */
    uint         screen; /**<  */
}

/**
 * @brief xcb_xinerama_is_active_cookie_t
 **/
struct xcb_xinerama_is_active_cookie_t {
    uint sequence; /**<  */
}

/** Opcode for xcb_xinerama_is_active. */
const ubyte XCB_XINERAMA_IS_ACTIVE = 4;

/**
 * @brief xcb_xinerama_is_active_request_t
 **/
struct xcb_xinerama_is_active_request_t {
    ubyte  major_opcode; /**<  */
    ubyte  minor_opcode; /**<  */
    ushort length; /**<  */
}

/**
 * @brief xcb_xinerama_is_active_reply_t
 **/
struct xcb_xinerama_is_active_reply_t {
    ubyte  response_type; /**<  */
    ubyte  pad0; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    uint   state; /**<  */
}

/**
 * @brief xcb_xinerama_query_screens_cookie_t
 **/
struct xcb_xinerama_query_screens_cookie_t {
    uint sequence; /**<  */
}

/** Opcode for xcb_xinerama_query_screens. */
const ubyte XCB_XINERAMA_QUERY_SCREENS = 5;

/**
 * @brief xcb_xinerama_query_screens_request_t
 **/
struct xcb_xinerama_query_screens_request_t {
    ubyte  major_opcode; /**<  */
    ubyte  minor_opcode; /**<  */
    ushort length; /**<  */
}

/**
 * @brief xcb_xinerama_query_screens_reply_t
 **/
struct xcb_xinerama_query_screens_reply_t {
    ubyte  response_type; /**<  */
    ubyte  pad0; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    uint   number; /**<  */
    ubyte  pad1[20]; /**<  */
}

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_xinerama_screen_info_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_xinerama_screen_info_t)
 */

/*****************************************************************************
 **
 ** void xcb_xinerama_screen_info_next
 ** 
 ** @param xcb_xinerama_screen_info_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_xinerama_screen_info_next (xcb_xinerama_screen_info_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_xinerama_screen_info_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xinerama_screen_info_end
 ** 
 ** @param xcb_xinerama_screen_info_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
xcb_generic_iterator_t
xcb_xinerama_screen_info_end (xcb_xinerama_screen_info_iterator_t i  /**< */);

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
 ** xcb_xinerama_query_version_cookie_t xcb_xinerama_query_version
 ** 
 ** @param xcb_connection_t *c
 ** @param ubyte             major
 ** @param ubyte             minor
 ** @returns xcb_xinerama_query_version_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_xinerama_query_version_cookie_t
xcb_xinerama_query_version (xcb_connection_t *c  /**< */,
                            ubyte             major  /**< */,
                            ubyte             minor  /**< */);

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
 ** xcb_xinerama_query_version_cookie_t xcb_xinerama_query_version_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @param ubyte             major
 ** @param ubyte             minor
 ** @returns xcb_xinerama_query_version_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_xinerama_query_version_cookie_t
xcb_xinerama_query_version_unchecked (xcb_connection_t *c  /**< */,
                                      ubyte             major  /**< */,
                                      ubyte             minor  /**< */);

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 * 
 * The parameter @p e supplied to this function must be NULL if
 * xcb_xinerama_query_version_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */

/*****************************************************************************
 **
 ** xcb_xinerama_query_version_reply_t * xcb_xinerama_query_version_reply
 ** 
 ** @param xcb_connection_t                     *c
 ** @param xcb_xinerama_query_version_cookie_t   cookie
 ** @param xcb_generic_error_t                 **e
 ** @returns xcb_xinerama_query_version_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_xinerama_query_version_reply_t *
xcb_xinerama_query_version_reply (xcb_connection_t                     *c  /**< */,
                                  xcb_xinerama_query_version_cookie_t   cookie  /**< */,
                                  xcb_generic_error_t                 **e  /**< */);

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
 ** xcb_xinerama_get_state_cookie_t xcb_xinerama_get_state
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_window_t      window
 ** @returns xcb_xinerama_get_state_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_xinerama_get_state_cookie_t
xcb_xinerama_get_state (xcb_connection_t *c  /**< */,
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
 ** xcb_xinerama_get_state_cookie_t xcb_xinerama_get_state_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_window_t      window
 ** @returns xcb_xinerama_get_state_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_xinerama_get_state_cookie_t
xcb_xinerama_get_state_unchecked (xcb_connection_t *c  /**< */,
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
 * xcb_xinerama_get_state_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */

/*****************************************************************************
 **
 ** xcb_xinerama_get_state_reply_t * xcb_xinerama_get_state_reply
 ** 
 ** @param xcb_connection_t                 *c
 ** @param xcb_xinerama_get_state_cookie_t   cookie
 ** @param xcb_generic_error_t             **e
 ** @returns xcb_xinerama_get_state_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_xinerama_get_state_reply_t *
xcb_xinerama_get_state_reply (xcb_connection_t                 *c  /**< */,
                              xcb_xinerama_get_state_cookie_t   cookie  /**< */,
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
 ** xcb_xinerama_get_screen_count_cookie_t xcb_xinerama_get_screen_count
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_window_t      window
 ** @returns xcb_xinerama_get_screen_count_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_xinerama_get_screen_count_cookie_t
xcb_xinerama_get_screen_count (xcb_connection_t *c  /**< */,
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
 ** xcb_xinerama_get_screen_count_cookie_t xcb_xinerama_get_screen_count_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_window_t      window
 ** @returns xcb_xinerama_get_screen_count_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_xinerama_get_screen_count_cookie_t
xcb_xinerama_get_screen_count_unchecked (xcb_connection_t *c  /**< */,
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
 * xcb_xinerama_get_screen_count_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */

/*****************************************************************************
 **
 ** xcb_xinerama_get_screen_count_reply_t * xcb_xinerama_get_screen_count_reply
 ** 
 ** @param xcb_connection_t                        *c
 ** @param xcb_xinerama_get_screen_count_cookie_t   cookie
 ** @param xcb_generic_error_t                    **e
 ** @returns xcb_xinerama_get_screen_count_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_xinerama_get_screen_count_reply_t *
xcb_xinerama_get_screen_count_reply (xcb_connection_t                        *c  /**< */,
                                     xcb_xinerama_get_screen_count_cookie_t   cookie  /**< */,
                                     xcb_generic_error_t                    **e  /**< */);

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
 ** xcb_xinerama_get_screen_size_cookie_t xcb_xinerama_get_screen_size
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_window_t      window
 ** @param uint              screen
 ** @returns xcb_xinerama_get_screen_size_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_xinerama_get_screen_size_cookie_t
xcb_xinerama_get_screen_size (xcb_connection_t *c  /**< */,
                              xcb_window_t      window  /**< */,
                              uint              screen  /**< */);

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
 ** xcb_xinerama_get_screen_size_cookie_t xcb_xinerama_get_screen_size_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_window_t      window
 ** @param uint              screen
 ** @returns xcb_xinerama_get_screen_size_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_xinerama_get_screen_size_cookie_t
xcb_xinerama_get_screen_size_unchecked (xcb_connection_t *c  /**< */,
                                        xcb_window_t      window  /**< */,
                                        uint              screen  /**< */);

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 * 
 * The parameter @p e supplied to this function must be NULL if
 * xcb_xinerama_get_screen_size_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */

/*****************************************************************************
 **
 ** xcb_xinerama_get_screen_size_reply_t * xcb_xinerama_get_screen_size_reply
 ** 
 ** @param xcb_connection_t                       *c
 ** @param xcb_xinerama_get_screen_size_cookie_t   cookie
 ** @param xcb_generic_error_t                   **e
 ** @returns xcb_xinerama_get_screen_size_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_xinerama_get_screen_size_reply_t *
xcb_xinerama_get_screen_size_reply (xcb_connection_t                       *c  /**< */,
                                    xcb_xinerama_get_screen_size_cookie_t   cookie  /**< */,
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
 ** xcb_xinerama_is_active_cookie_t xcb_xinerama_is_active
 ** 
 ** @param xcb_connection_t *c
 ** @returns xcb_xinerama_is_active_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_xinerama_is_active_cookie_t
xcb_xinerama_is_active (xcb_connection_t *c  /**< */);

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
 ** xcb_xinerama_is_active_cookie_t xcb_xinerama_is_active_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @returns xcb_xinerama_is_active_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_xinerama_is_active_cookie_t
xcb_xinerama_is_active_unchecked (xcb_connection_t *c  /**< */);

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 * 
 * The parameter @p e supplied to this function must be NULL if
 * xcb_xinerama_is_active_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */

/*****************************************************************************
 **
 ** xcb_xinerama_is_active_reply_t * xcb_xinerama_is_active_reply
 ** 
 ** @param xcb_connection_t                 *c
 ** @param xcb_xinerama_is_active_cookie_t   cookie
 ** @param xcb_generic_error_t             **e
 ** @returns xcb_xinerama_is_active_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_xinerama_is_active_reply_t *
xcb_xinerama_is_active_reply (xcb_connection_t                 *c  /**< */,
                              xcb_xinerama_is_active_cookie_t   cookie  /**< */,
                              xcb_generic_error_t             **e  /**< */);

extern(C) int
xcb_xinerama_query_screens_sizeof (const void  *_buffer  /**< */);

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
 ** xcb_xinerama_query_screens_cookie_t xcb_xinerama_query_screens
 ** 
 ** @param xcb_connection_t *c
 ** @returns xcb_xinerama_query_screens_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_xinerama_query_screens_cookie_t
xcb_xinerama_query_screens (xcb_connection_t *c  /**< */);

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
 ** xcb_xinerama_query_screens_cookie_t xcb_xinerama_query_screens_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @returns xcb_xinerama_query_screens_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_xinerama_query_screens_cookie_t
xcb_xinerama_query_screens_unchecked (xcb_connection_t *c  /**< */);


/*****************************************************************************
 **
 ** xcb_xinerama_screen_info_t * xcb_xinerama_query_screens_screen_info
 ** 
 ** @param const xcb_xinerama_query_screens_reply_t *R
 ** @returns xcb_xinerama_screen_info_t *
 **
 *****************************************************************************/
 
xcb_xinerama_screen_info_t *
xcb_xinerama_query_screens_screen_info (const xcb_xinerama_query_screens_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_xinerama_query_screens_screen_info_length
 ** 
 ** @param const xcb_xinerama_query_screens_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xinerama_query_screens_screen_info_length (const xcb_xinerama_query_screens_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_xinerama_screen_info_iterator_t xcb_xinerama_query_screens_screen_info_iterator
 ** 
 ** @param const xcb_xinerama_query_screens_reply_t *R
 ** @returns xcb_xinerama_screen_info_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_xinerama_screen_info_iterator_t
xcb_xinerama_query_screens_screen_info_iterator (const xcb_xinerama_query_screens_reply_t *R  /**< */);

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 * 
 * The parameter @p e supplied to this function must be NULL if
 * xcb_xinerama_query_screens_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */

/*****************************************************************************
 **
 ** xcb_xinerama_query_screens_reply_t * xcb_xinerama_query_screens_reply
 ** 
 ** @param xcb_connection_t                     *c
 ** @param xcb_xinerama_query_screens_cookie_t   cookie
 ** @param xcb_generic_error_t                 **e
 ** @returns xcb_xinerama_query_screens_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_xinerama_query_screens_reply_t *
xcb_xinerama_query_screens_reply (xcb_connection_t                     *c  /**< */,
                                  xcb_xinerama_query_screens_cookie_t   cookie  /**< */,
                                  xcb_generic_error_t                 **e  /**< */);

/**
 * @}
 */
