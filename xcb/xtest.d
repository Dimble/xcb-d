/*
 * This file generated automatically from xtest.xml by d_client.py.
 * Edit at your peril.
 */

/**
 * @defgroup XCB_Test_API XCB Test API
 * @brief Test XCB Protocol Implementation.
 * @{
 **/

module interim.xcb.xtest;

import interim.xcb.xcb;
import interim.xcb.xproto;

const int XCB_TEST_MAJOR_VERSION = 2;
const int XCB_TEST_MINOR_VERSION = 1;
  
extern(C) xcb_extension_t xcb_test_id;

/**
 * @brief xcb_test_get_version_cookie_t
 **/
struct xcb_test_get_version_cookie_t {
    uint sequence; /**<  */
}

/** Opcode for xcb_test_get_version. */
const ubyte XCB_TEST_GET_VERSION = 0;

/**
 * @brief xcb_test_get_version_request_t
 **/
struct xcb_test_get_version_request_t {
    ubyte  major_opcode; /**<  */
    ubyte  minor_opcode; /**<  */
    ushort length; /**<  */
    ubyte  major_version; /**<  */
    ubyte  pad0; /**<  */
    ushort minor_version; /**<  */
}

/**
 * @brief xcb_test_get_version_reply_t
 **/
struct xcb_test_get_version_reply_t {
    ubyte  response_type; /**<  */
    ubyte  major_version; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    ushort minor_version; /**<  */
}

enum XcbTestCursor {
    NONE    = 0,
    CURRENT = 1
}
alias XcbTestCursor xcb_test_cursor_t;

/**
 * @brief xcb_test_compare_cursor_cookie_t
 **/
struct xcb_test_compare_cursor_cookie_t {
    uint sequence; /**<  */
}

/** Opcode for xcb_test_compare_cursor. */
const ubyte XCB_TEST_COMPARE_CURSOR = 1;

/**
 * @brief xcb_test_compare_cursor_request_t
 **/
struct xcb_test_compare_cursor_request_t {
    ubyte        major_opcode; /**<  */
    ubyte        minor_opcode; /**<  */
    ushort       length; /**<  */
    xcb_window_t window; /**<  */
    xcb_cursor_t cursor; /**<  */
}

/**
 * @brief xcb_test_compare_cursor_reply_t
 **/
struct xcb_test_compare_cursor_reply_t {
    ubyte  response_type; /**<  */
    ubyte  same; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
}

/** Opcode for xcb_test_fake_input. */
const ubyte XCB_TEST_FAKE_INPUT = 2;

/**
 * @brief xcb_test_fake_input_request_t
 **/
struct xcb_test_fake_input_request_t {
    ubyte        major_opcode; /**<  */
    ubyte        minor_opcode; /**<  */
    ushort       length; /**<  */
    ubyte        type; /**<  */
    ubyte        detail; /**<  */
    ubyte        pad0[2]; /**<  */
    uint         time; /**<  */
    xcb_window_t root; /**<  */
    ubyte        pad1[8]; /**<  */
    short        rootX; /**<  */
    short        rootY; /**<  */
    ubyte        pad2[7]; /**<  */
    ubyte        deviceid; /**<  */
}

/** Opcode for xcb_test_grab_control. */
const ubyte XCB_TEST_GRAB_CONTROL = 3;

/**
 * @brief xcb_test_grab_control_request_t
 **/
struct xcb_test_grab_control_request_t {
    ubyte  major_opcode; /**<  */
    ubyte  minor_opcode; /**<  */
    ushort length; /**<  */
    ubyte  impervious; /**<  */
    ubyte  pad0[3]; /**<  */
}

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
 ** xcb_test_get_version_cookie_t xcb_test_get_version
 ** 
 ** @param xcb_connection_t *c
 ** @param ubyte             major_version
 ** @param ushort            minor_version
 ** @returns xcb_test_get_version_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_test_get_version_cookie_t
xcb_test_get_version (xcb_connection_t *c  /**< */,
                      ubyte             major_version  /**< */,
                      ushort            minor_version  /**< */);

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
 ** xcb_test_get_version_cookie_t xcb_test_get_version_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @param ubyte             major_version
 ** @param ushort            minor_version
 ** @returns xcb_test_get_version_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_test_get_version_cookie_t
xcb_test_get_version_unchecked (xcb_connection_t *c  /**< */,
                                ubyte             major_version  /**< */,
                                ushort            minor_version  /**< */);

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 * 
 * The parameter @p e supplied to this function must be NULL if
 * xcb_test_get_version_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */

/*****************************************************************************
 **
 ** xcb_test_get_version_reply_t * xcb_test_get_version_reply
 ** 
 ** @param xcb_connection_t               *c
 ** @param xcb_test_get_version_cookie_t   cookie
 ** @param xcb_generic_error_t           **e
 ** @returns xcb_test_get_version_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_test_get_version_reply_t *
xcb_test_get_version_reply (xcb_connection_t               *c  /**< */,
                            xcb_test_get_version_cookie_t   cookie  /**< */,
                            xcb_generic_error_t           **e  /**< */);

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
 ** xcb_test_compare_cursor_cookie_t xcb_test_compare_cursor
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_window_t      window
 ** @param xcb_cursor_t      cursor
 ** @returns xcb_test_compare_cursor_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_test_compare_cursor_cookie_t
xcb_test_compare_cursor (xcb_connection_t *c  /**< */,
                         xcb_window_t      window  /**< */,
                         xcb_cursor_t      cursor  /**< */);

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
 ** xcb_test_compare_cursor_cookie_t xcb_test_compare_cursor_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_window_t      window
 ** @param xcb_cursor_t      cursor
 ** @returns xcb_test_compare_cursor_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_test_compare_cursor_cookie_t
xcb_test_compare_cursor_unchecked (xcb_connection_t *c  /**< */,
                                   xcb_window_t      window  /**< */,
                                   xcb_cursor_t      cursor  /**< */);

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 * 
 * The parameter @p e supplied to this function must be NULL if
 * xcb_test_compare_cursor_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */

/*****************************************************************************
 **
 ** xcb_test_compare_cursor_reply_t * xcb_test_compare_cursor_reply
 ** 
 ** @param xcb_connection_t                  *c
 ** @param xcb_test_compare_cursor_cookie_t   cookie
 ** @param xcb_generic_error_t              **e
 ** @returns xcb_test_compare_cursor_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_test_compare_cursor_reply_t *
xcb_test_compare_cursor_reply (xcb_connection_t                  *c  /**< */,
                               xcb_test_compare_cursor_cookie_t   cookie  /**< */,
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
 ** xcb_void_cookie_t xcb_test_fake_input_checked
 ** 
 ** @param xcb_connection_t *c
 ** @param ubyte             type
 ** @param ubyte             detail
 ** @param uint              time
 ** @param xcb_window_t      root
 ** @param short             rootX
 ** @param short             rootY
 ** @param ubyte             deviceid
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_test_fake_input_checked (xcb_connection_t *c  /**< */,
                             ubyte             type  /**< */,
                             ubyte             detail  /**< */,
                             uint              time  /**< */,
                             xcb_window_t      root  /**< */,
                             short             rootX  /**< */,
                             short             rootY  /**< */,
                             ubyte             deviceid  /**< */);

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
 ** xcb_void_cookie_t xcb_test_fake_input
 ** 
 ** @param xcb_connection_t *c
 ** @param ubyte             type
 ** @param ubyte             detail
 ** @param uint              time
 ** @param xcb_window_t      root
 ** @param short             rootX
 ** @param short             rootY
 ** @param ubyte             deviceid
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_test_fake_input (xcb_connection_t *c  /**< */,
                     ubyte             type  /**< */,
                     ubyte             detail  /**< */,
                     uint              time  /**< */,
                     xcb_window_t      root  /**< */,
                     short             rootX  /**< */,
                     short             rootY  /**< */,
                     ubyte             deviceid  /**< */);

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
 ** xcb_void_cookie_t xcb_test_grab_control_checked
 ** 
 ** @param xcb_connection_t *c
 ** @param ubyte             impervious
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_test_grab_control_checked (xcb_connection_t *c  /**< */,
                               ubyte             impervious  /**< */);

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
 ** xcb_void_cookie_t xcb_test_grab_control
 ** 
 ** @param xcb_connection_t *c
 ** @param ubyte             impervious
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_test_grab_control (xcb_connection_t *c  /**< */,
                       ubyte             impervious  /**< */);

/**
 * @}
 */
