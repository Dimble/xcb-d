/*
 * This file generated automatically from res.xml by d_client.py.
 * Edit at your peril.
 */

/**
 * @defgroup XCB_Res_API XCB Res API
 * @brief Res XCB Protocol Implementation.
 * @{
 **/

module std.c.xcb.res;

import std.c.xcb.xcb;
import std.c.xcb.xproto;

const int XCB_RES_MAJOR_VERSION = 1;
const int XCB_RES_MINOR_VERSION = 0;
  
extern(C) xcb_extension_t xcb_res_id;

/**
 * @brief xcb_res_client_t
 **/
struct xcb_res_client_t {
    uint resource_base; /**<  */
    uint resource_mask; /**<  */
}

/**
 * @brief xcb_res_client_iterator_t
 **/
struct xcb_res_client_iterator_t {
    xcb_res_client_t *data; /**<  */
    int               rem; /**<  */
    int               index; /**<  */
}

/**
 * @brief xcb_res_type_t
 **/
struct xcb_res_type_t {
    xcb_atom_t resource_type; /**<  */
    uint       count; /**<  */
}

/**
 * @brief xcb_res_type_iterator_t
 **/
struct xcb_res_type_iterator_t {
    xcb_res_type_t *data; /**<  */
    int             rem; /**<  */
    int             index; /**<  */
}

/**
 * @brief xcb_res_query_version_cookie_t
 **/
struct xcb_res_query_version_cookie_t {
    uint sequence; /**<  */
}

/** Opcode for xcb_res_query_version. */
const ubyte XCB_RES_QUERY_VERSION = 0;

/**
 * @brief xcb_res_query_version_request_t
 **/
struct xcb_res_query_version_request_t {
    ubyte  major_opcode; /**<  */
    ubyte  minor_opcode; /**<  */
    ushort length; /**<  */
    ubyte  client_major; /**<  */
    ubyte  client_minor; /**<  */
}

/**
 * @brief xcb_res_query_version_reply_t
 **/
struct xcb_res_query_version_reply_t {
    ubyte  response_type; /**<  */
    ubyte  pad0; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    ushort server_major; /**<  */
    ushort server_minor; /**<  */
}

/**
 * @brief xcb_res_query_clients_cookie_t
 **/
struct xcb_res_query_clients_cookie_t {
    uint sequence; /**<  */
}

/** Opcode for xcb_res_query_clients. */
const ubyte XCB_RES_QUERY_CLIENTS = 1;

/**
 * @brief xcb_res_query_clients_request_t
 **/
struct xcb_res_query_clients_request_t {
    ubyte  major_opcode; /**<  */
    ubyte  minor_opcode; /**<  */
    ushort length; /**<  */
}

/**
 * @brief xcb_res_query_clients_reply_t
 **/
struct xcb_res_query_clients_reply_t {
    ubyte  response_type; /**<  */
    ubyte  pad0; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    uint   num_clients; /**<  */
    ubyte  pad1[20]; /**<  */
}

/**
 * @brief xcb_res_query_client_resources_cookie_t
 **/
struct xcb_res_query_client_resources_cookie_t {
    uint sequence; /**<  */
}

/** Opcode for xcb_res_query_client_resources. */
const ubyte XCB_RES_QUERY_CLIENT_RESOURCES = 2;

/**
 * @brief xcb_res_query_client_resources_request_t
 **/
struct xcb_res_query_client_resources_request_t {
    ubyte  major_opcode; /**<  */
    ubyte  minor_opcode; /**<  */
    ushort length; /**<  */
    uint   xid; /**<  */
}

/**
 * @brief xcb_res_query_client_resources_reply_t
 **/
struct xcb_res_query_client_resources_reply_t {
    ubyte  response_type; /**<  */
    ubyte  pad0; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    uint   num_types; /**<  */
    ubyte  pad1[20]; /**<  */
}

/**
 * @brief xcb_res_query_client_pixmap_bytes_cookie_t
 **/
struct xcb_res_query_client_pixmap_bytes_cookie_t {
    uint sequence; /**<  */
}

/** Opcode for xcb_res_query_client_pixmap_bytes. */
const ubyte XCB_RES_QUERY_CLIENT_PIXMAP_BYTES = 3;

/**
 * @brief xcb_res_query_client_pixmap_bytes_request_t
 **/
struct xcb_res_query_client_pixmap_bytes_request_t {
    ubyte  major_opcode; /**<  */
    ubyte  minor_opcode; /**<  */
    ushort length; /**<  */
    uint   xid; /**<  */
}

/**
 * @brief xcb_res_query_client_pixmap_bytes_reply_t
 **/
struct xcb_res_query_client_pixmap_bytes_reply_t {
    ubyte  response_type; /**<  */
    ubyte  pad0; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    uint   bytes; /**<  */
    uint   bytes_overflow; /**<  */
}

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_res_client_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_res_client_t)
 */

/*****************************************************************************
 **
 ** void xcb_res_client_next
 ** 
 ** @param xcb_res_client_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_res_client_next (xcb_res_client_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_res_client_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_res_client_end
 ** 
 ** @param xcb_res_client_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
xcb_generic_iterator_t
xcb_res_client_end (xcb_res_client_iterator_t i  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_res_type_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_res_type_t)
 */

/*****************************************************************************
 **
 ** void xcb_res_type_next
 ** 
 ** @param xcb_res_type_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_res_type_next (xcb_res_type_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_res_type_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_res_type_end
 ** 
 ** @param xcb_res_type_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
xcb_generic_iterator_t
xcb_res_type_end (xcb_res_type_iterator_t i  /**< */);

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
 ** xcb_res_query_version_cookie_t xcb_res_query_version
 ** 
 ** @param xcb_connection_t *c
 ** @param ubyte             client_major
 ** @param ubyte             client_minor
 ** @returns xcb_res_query_version_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_res_query_version_cookie_t
xcb_res_query_version (xcb_connection_t *c  /**< */,
                       ubyte             client_major  /**< */,
                       ubyte             client_minor  /**< */);

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
 ** xcb_res_query_version_cookie_t xcb_res_query_version_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @param ubyte             client_major
 ** @param ubyte             client_minor
 ** @returns xcb_res_query_version_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_res_query_version_cookie_t
xcb_res_query_version_unchecked (xcb_connection_t *c  /**< */,
                                 ubyte             client_major  /**< */,
                                 ubyte             client_minor  /**< */);

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 * 
 * The parameter @p e supplied to this function must be NULL if
 * xcb_res_query_version_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */

/*****************************************************************************
 **
 ** xcb_res_query_version_reply_t * xcb_res_query_version_reply
 ** 
 ** @param xcb_connection_t                *c
 ** @param xcb_res_query_version_cookie_t   cookie
 ** @param xcb_generic_error_t            **e
 ** @returns xcb_res_query_version_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_res_query_version_reply_t *
xcb_res_query_version_reply (xcb_connection_t                *c  /**< */,
                             xcb_res_query_version_cookie_t   cookie  /**< */,
                             xcb_generic_error_t            **e  /**< */);

extern(C) int
xcb_res_query_clients_sizeof (const void  *_buffer  /**< */);

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
 ** xcb_res_query_clients_cookie_t xcb_res_query_clients
 ** 
 ** @param xcb_connection_t *c
 ** @returns xcb_res_query_clients_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_res_query_clients_cookie_t
xcb_res_query_clients (xcb_connection_t *c  /**< */);

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
 ** xcb_res_query_clients_cookie_t xcb_res_query_clients_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @returns xcb_res_query_clients_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_res_query_clients_cookie_t
xcb_res_query_clients_unchecked (xcb_connection_t *c  /**< */);


/*****************************************************************************
 **
 ** xcb_res_client_t * xcb_res_query_clients_clients
 ** 
 ** @param const xcb_res_query_clients_reply_t *R
 ** @returns xcb_res_client_t *
 **
 *****************************************************************************/
 
xcb_res_client_t *
xcb_res_query_clients_clients (const xcb_res_query_clients_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_res_query_clients_clients_length
 ** 
 ** @param const xcb_res_query_clients_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_res_query_clients_clients_length (const xcb_res_query_clients_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_res_client_iterator_t xcb_res_query_clients_clients_iterator
 ** 
 ** @param const xcb_res_query_clients_reply_t *R
 ** @returns xcb_res_client_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_res_client_iterator_t
xcb_res_query_clients_clients_iterator (const xcb_res_query_clients_reply_t *R  /**< */);

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 * 
 * The parameter @p e supplied to this function must be NULL if
 * xcb_res_query_clients_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */

/*****************************************************************************
 **
 ** xcb_res_query_clients_reply_t * xcb_res_query_clients_reply
 ** 
 ** @param xcb_connection_t                *c
 ** @param xcb_res_query_clients_cookie_t   cookie
 ** @param xcb_generic_error_t            **e
 ** @returns xcb_res_query_clients_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_res_query_clients_reply_t *
xcb_res_query_clients_reply (xcb_connection_t                *c  /**< */,
                             xcb_res_query_clients_cookie_t   cookie  /**< */,
                             xcb_generic_error_t            **e  /**< */);

extern(C) int
xcb_res_query_client_resources_sizeof (const void  *_buffer  /**< */);

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
 ** xcb_res_query_client_resources_cookie_t xcb_res_query_client_resources
 ** 
 ** @param xcb_connection_t *c
 ** @param uint              xid
 ** @returns xcb_res_query_client_resources_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_res_query_client_resources_cookie_t
xcb_res_query_client_resources (xcb_connection_t *c  /**< */,
                                uint              xid  /**< */);

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
 ** xcb_res_query_client_resources_cookie_t xcb_res_query_client_resources_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @param uint              xid
 ** @returns xcb_res_query_client_resources_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_res_query_client_resources_cookie_t
xcb_res_query_client_resources_unchecked (xcb_connection_t *c  /**< */,
                                          uint              xid  /**< */);


/*****************************************************************************
 **
 ** xcb_res_type_t * xcb_res_query_client_resources_types
 ** 
 ** @param const xcb_res_query_client_resources_reply_t *R
 ** @returns xcb_res_type_t *
 **
 *****************************************************************************/
 
xcb_res_type_t *
xcb_res_query_client_resources_types (const xcb_res_query_client_resources_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_res_query_client_resources_types_length
 ** 
 ** @param const xcb_res_query_client_resources_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_res_query_client_resources_types_length (const xcb_res_query_client_resources_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_res_type_iterator_t xcb_res_query_client_resources_types_iterator
 ** 
 ** @param const xcb_res_query_client_resources_reply_t *R
 ** @returns xcb_res_type_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_res_type_iterator_t
xcb_res_query_client_resources_types_iterator (const xcb_res_query_client_resources_reply_t *R  /**< */);

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 * 
 * The parameter @p e supplied to this function must be NULL if
 * xcb_res_query_client_resources_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */

/*****************************************************************************
 **
 ** xcb_res_query_client_resources_reply_t * xcb_res_query_client_resources_reply
 ** 
 ** @param xcb_connection_t                         *c
 ** @param xcb_res_query_client_resources_cookie_t   cookie
 ** @param xcb_generic_error_t                     **e
 ** @returns xcb_res_query_client_resources_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_res_query_client_resources_reply_t *
xcb_res_query_client_resources_reply (xcb_connection_t                         *c  /**< */,
                                      xcb_res_query_client_resources_cookie_t   cookie  /**< */,
                                      xcb_generic_error_t                     **e  /**< */);

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
 ** xcb_res_query_client_pixmap_bytes_cookie_t xcb_res_query_client_pixmap_bytes
 ** 
 ** @param xcb_connection_t *c
 ** @param uint              xid
 ** @returns xcb_res_query_client_pixmap_bytes_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_res_query_client_pixmap_bytes_cookie_t
xcb_res_query_client_pixmap_bytes (xcb_connection_t *c  /**< */,
                                   uint              xid  /**< */);

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
 ** xcb_res_query_client_pixmap_bytes_cookie_t xcb_res_query_client_pixmap_bytes_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @param uint              xid
 ** @returns xcb_res_query_client_pixmap_bytes_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_res_query_client_pixmap_bytes_cookie_t
xcb_res_query_client_pixmap_bytes_unchecked (xcb_connection_t *c  /**< */,
                                             uint              xid  /**< */);

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 * 
 * The parameter @p e supplied to this function must be NULL if
 * xcb_res_query_client_pixmap_bytes_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */

/*****************************************************************************
 **
 ** xcb_res_query_client_pixmap_bytes_reply_t * xcb_res_query_client_pixmap_bytes_reply
 ** 
 ** @param xcb_connection_t                            *c
 ** @param xcb_res_query_client_pixmap_bytes_cookie_t   cookie
 ** @param xcb_generic_error_t                        **e
 ** @returns xcb_res_query_client_pixmap_bytes_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_res_query_client_pixmap_bytes_reply_t *
xcb_res_query_client_pixmap_bytes_reply (xcb_connection_t                            *c  /**< */,
                                         xcb_res_query_client_pixmap_bytes_cookie_t   cookie  /**< */,
                                         xcb_generic_error_t                        **e  /**< */);

/**
 * @}
 */
