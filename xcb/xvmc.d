/*
 * This file generated automatically from xvmc.xml by d_client.py.
 * Edit at your peril.
 */

/**
 * @defgroup XCB_XvMC_API XCB XvMC API
 * @brief XvMC XCB Protocol Implementation.
 * @{
 **/

module interim.xcb.xvmc;

import interim.xcb.xcb;
import interim.xcb.xproto;
import interim.xcb.shm;
import interim.xcb.xv;

const int XCB_XVMC_MAJOR_VERSION = 1;
const int XCB_XVMC_MINOR_VERSION = 1;
  
extern(C) xcb_extension_t xcb_xvmc_id;

alias uint xcb_xvmc_context_t;

/**
 * @brief xcb_xvmc_context_iterator_t
 **/
struct xcb_xvmc_context_iterator_t {
    xcb_xvmc_context_t *data; /**<  */
    int                 rem; /**<  */
    int                 index; /**<  */
}

alias uint xcb_xvmc_surface_t;

/**
 * @brief xcb_xvmc_surface_iterator_t
 **/
struct xcb_xvmc_surface_iterator_t {
    xcb_xvmc_surface_t *data; /**<  */
    int                 rem; /**<  */
    int                 index; /**<  */
}

alias uint xcb_xvmc_subpicture_t;

/**
 * @brief xcb_xvmc_subpicture_iterator_t
 **/
struct xcb_xvmc_subpicture_iterator_t {
    xcb_xvmc_subpicture_t *data; /**<  */
    int                    rem; /**<  */
    int                    index; /**<  */
}

/**
 * @brief xcb_xvmc_surface_info_t
 **/
struct xcb_xvmc_surface_info_t {
    xcb_xvmc_surface_t id; /**<  */
    ushort             chroma_format; /**<  */
    ushort             pad0; /**<  */
    ushort             max_width; /**<  */
    ushort             max_height; /**<  */
    ushort             subpicture_max_width; /**<  */
    ushort             subpicture_max_height; /**<  */
    uint               mc_type; /**<  */
    uint               flags; /**<  */
}

/**
 * @brief xcb_xvmc_surface_info_iterator_t
 **/
struct xcb_xvmc_surface_info_iterator_t {
    xcb_xvmc_surface_info_t *data; /**<  */
    int                      rem; /**<  */
    int                      index; /**<  */
}

/**
 * @brief xcb_xvmc_query_version_cookie_t
 **/
struct xcb_xvmc_query_version_cookie_t {
    uint sequence; /**<  */
}

/** Opcode for xcb_xvmc_query_version. */
const ubyte XCB_XVMC_QUERY_VERSION = 0;

/**
 * @brief xcb_xvmc_query_version_request_t
 **/
struct xcb_xvmc_query_version_request_t {
    ubyte  major_opcode; /**<  */
    ubyte  minor_opcode; /**<  */
    ushort length; /**<  */
}

/**
 * @brief xcb_xvmc_query_version_reply_t
 **/
struct xcb_xvmc_query_version_reply_t {
    ubyte  response_type; /**<  */
    ubyte  pad0; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    uint   major; /**<  */
    uint   minor; /**<  */
}

/**
 * @brief xcb_xvmc_list_surface_types_cookie_t
 **/
struct xcb_xvmc_list_surface_types_cookie_t {
    uint sequence; /**<  */
}

/** Opcode for xcb_xvmc_list_surface_types. */
const ubyte XCB_XVMC_LIST_SURFACE_TYPES = 1;

/**
 * @brief xcb_xvmc_list_surface_types_request_t
 **/
struct xcb_xvmc_list_surface_types_request_t {
    ubyte         major_opcode; /**<  */
    ubyte         minor_opcode; /**<  */
    ushort        length; /**<  */
    xcb_xv_port_t port_id; /**<  */
}

/**
 * @brief xcb_xvmc_list_surface_types_reply_t
 **/
struct xcb_xvmc_list_surface_types_reply_t {
    ubyte  response_type; /**<  */
    ubyte  pad0; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    uint   num; /**<  */
    ubyte  pad1[20]; /**<  */
}

/**
 * @brief xcb_xvmc_create_context_cookie_t
 **/
struct xcb_xvmc_create_context_cookie_t {
    uint sequence; /**<  */
}

/** Opcode for xcb_xvmc_create_context. */
const ubyte XCB_XVMC_CREATE_CONTEXT = 2;

/**
 * @brief xcb_xvmc_create_context_request_t
 **/
struct xcb_xvmc_create_context_request_t {
    ubyte              major_opcode; /**<  */
    ubyte              minor_opcode; /**<  */
    ushort             length; /**<  */
    xcb_xvmc_context_t context_id; /**<  */
    xcb_xv_port_t      port_id; /**<  */
    xcb_xvmc_surface_t surface_id; /**<  */
    ushort             width; /**<  */
    ushort             height; /**<  */
    uint               flags; /**<  */
}

/**
 * @brief xcb_xvmc_create_context_reply_t
 **/
struct xcb_xvmc_create_context_reply_t {
    ubyte  response_type; /**<  */
    ubyte  pad0; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    ushort width_actual; /**<  */
    ushort height_actual; /**<  */
    uint   flags_return; /**<  */
    ubyte  pad1[20]; /**<  */
}

/** Opcode for xcb_xvmc_destroy_context. */
const ubyte XCB_XVMC_DESTROY_CONTEXT = 3;

/**
 * @brief xcb_xvmc_destroy_context_request_t
 **/
struct xcb_xvmc_destroy_context_request_t {
    ubyte              major_opcode; /**<  */
    ubyte              minor_opcode; /**<  */
    ushort             length; /**<  */
    xcb_xvmc_context_t context_id; /**<  */
}

/**
 * @brief xcb_xvmc_create_surface_cookie_t
 **/
struct xcb_xvmc_create_surface_cookie_t {
    uint sequence; /**<  */
}

/** Opcode for xcb_xvmc_create_surface. */
const ubyte XCB_XVMC_CREATE_SURFACE = 4;

/**
 * @brief xcb_xvmc_create_surface_request_t
 **/
struct xcb_xvmc_create_surface_request_t {
    ubyte              major_opcode; /**<  */
    ubyte              minor_opcode; /**<  */
    ushort             length; /**<  */
    xcb_xvmc_surface_t surface_id; /**<  */
    xcb_xvmc_context_t context_id; /**<  */
}

/**
 * @brief xcb_xvmc_create_surface_reply_t
 **/
struct xcb_xvmc_create_surface_reply_t {
    ubyte  response_type; /**<  */
    ubyte  pad0; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    ubyte  pad1[24]; /**<  */
}

/** Opcode for xcb_xvmc_destroy_surface. */
const ubyte XCB_XVMC_DESTROY_SURFACE = 5;

/**
 * @brief xcb_xvmc_destroy_surface_request_t
 **/
struct xcb_xvmc_destroy_surface_request_t {
    ubyte              major_opcode; /**<  */
    ubyte              minor_opcode; /**<  */
    ushort             length; /**<  */
    xcb_xvmc_surface_t surface_id; /**<  */
}

/**
 * @brief xcb_xvmc_create_subpicture_cookie_t
 **/
struct xcb_xvmc_create_subpicture_cookie_t {
    uint sequence; /**<  */
}

/** Opcode for xcb_xvmc_create_subpicture. */
const ubyte XCB_XVMC_CREATE_SUBPICTURE = 6;

/**
 * @brief xcb_xvmc_create_subpicture_request_t
 **/
struct xcb_xvmc_create_subpicture_request_t {
    ubyte                 major_opcode; /**<  */
    ubyte                 minor_opcode; /**<  */
    ushort                length; /**<  */
    xcb_xvmc_subpicture_t subpicture_id; /**<  */
    xcb_xvmc_context_t    context; /**<  */
    uint                  xvimage_id; /**<  */
    ushort                width; /**<  */
    ushort                height; /**<  */
}

/**
 * @brief xcb_xvmc_create_subpicture_reply_t
 **/
struct xcb_xvmc_create_subpicture_reply_t {
    ubyte  response_type; /**<  */
    ubyte  pad0; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    ushort width_actual; /**<  */
    ushort height_actual; /**<  */
    ushort num_palette_entries; /**<  */
    ushort entry_bytes; /**<  */
    ubyte  component_order[4]; /**<  */
    ubyte  pad1[12]; /**<  */
}

/** Opcode for xcb_xvmc_destroy_subpicture. */
const ubyte XCB_XVMC_DESTROY_SUBPICTURE = 7;

/**
 * @brief xcb_xvmc_destroy_subpicture_request_t
 **/
struct xcb_xvmc_destroy_subpicture_request_t {
    ubyte                 major_opcode; /**<  */
    ubyte                 minor_opcode; /**<  */
    ushort                length; /**<  */
    xcb_xvmc_subpicture_t subpicture_id; /**<  */
}

/**
 * @brief xcb_xvmc_list_subpicture_types_cookie_t
 **/
struct xcb_xvmc_list_subpicture_types_cookie_t {
    uint sequence; /**<  */
}

/** Opcode for xcb_xvmc_list_subpicture_types. */
const ubyte XCB_XVMC_LIST_SUBPICTURE_TYPES = 8;

/**
 * @brief xcb_xvmc_list_subpicture_types_request_t
 **/
struct xcb_xvmc_list_subpicture_types_request_t {
    ubyte              major_opcode; /**<  */
    ubyte              minor_opcode; /**<  */
    ushort             length; /**<  */
    xcb_xv_port_t      port_id; /**<  */
    xcb_xvmc_surface_t surface_id; /**<  */
}

/**
 * @brief xcb_xvmc_list_subpicture_types_reply_t
 **/
struct xcb_xvmc_list_subpicture_types_reply_t {
    ubyte  response_type; /**<  */
    ubyte  pad0; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    uint   num; /**<  */
    ubyte  pad1[20]; /**<  */
}

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_xvmc_context_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_xvmc_context_t)
 */

/*****************************************************************************
 **
 ** void xcb_xvmc_context_next
 ** 
 ** @param xcb_xvmc_context_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_xvmc_context_next (xcb_xvmc_context_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_xvmc_context_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xvmc_context_end
 ** 
 ** @param xcb_xvmc_context_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
xcb_generic_iterator_t
xcb_xvmc_context_end (xcb_xvmc_context_iterator_t i  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_xvmc_surface_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_xvmc_surface_t)
 */

/*****************************************************************************
 **
 ** void xcb_xvmc_surface_next
 ** 
 ** @param xcb_xvmc_surface_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_xvmc_surface_next (xcb_xvmc_surface_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_xvmc_surface_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xvmc_surface_end
 ** 
 ** @param xcb_xvmc_surface_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
xcb_generic_iterator_t
xcb_xvmc_surface_end (xcb_xvmc_surface_iterator_t i  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_xvmc_subpicture_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_xvmc_subpicture_t)
 */

/*****************************************************************************
 **
 ** void xcb_xvmc_subpicture_next
 ** 
 ** @param xcb_xvmc_subpicture_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_xvmc_subpicture_next (xcb_xvmc_subpicture_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_xvmc_subpicture_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xvmc_subpicture_end
 ** 
 ** @param xcb_xvmc_subpicture_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
xcb_generic_iterator_t
xcb_xvmc_subpicture_end (xcb_xvmc_subpicture_iterator_t i  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_xvmc_surface_info_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_xvmc_surface_info_t)
 */

/*****************************************************************************
 **
 ** void xcb_xvmc_surface_info_next
 ** 
 ** @param xcb_xvmc_surface_info_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_xvmc_surface_info_next (xcb_xvmc_surface_info_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_xvmc_surface_info_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xvmc_surface_info_end
 ** 
 ** @param xcb_xvmc_surface_info_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
xcb_generic_iterator_t
xcb_xvmc_surface_info_end (xcb_xvmc_surface_info_iterator_t i  /**< */);

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
 ** xcb_xvmc_query_version_cookie_t xcb_xvmc_query_version
 ** 
 ** @param xcb_connection_t *c
 ** @returns xcb_xvmc_query_version_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_xvmc_query_version_cookie_t
xcb_xvmc_query_version (xcb_connection_t *c  /**< */);

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
 ** xcb_xvmc_query_version_cookie_t xcb_xvmc_query_version_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @returns xcb_xvmc_query_version_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_xvmc_query_version_cookie_t
xcb_xvmc_query_version_unchecked (xcb_connection_t *c  /**< */);

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 * 
 * The parameter @p e supplied to this function must be NULL if
 * xcb_xvmc_query_version_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */

/*****************************************************************************
 **
 ** xcb_xvmc_query_version_reply_t * xcb_xvmc_query_version_reply
 ** 
 ** @param xcb_connection_t                 *c
 ** @param xcb_xvmc_query_version_cookie_t   cookie
 ** @param xcb_generic_error_t             **e
 ** @returns xcb_xvmc_query_version_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_xvmc_query_version_reply_t *
xcb_xvmc_query_version_reply (xcb_connection_t                 *c  /**< */,
                              xcb_xvmc_query_version_cookie_t   cookie  /**< */,
                              xcb_generic_error_t             **e  /**< */);

extern(C) int
xcb_xvmc_list_surface_types_sizeof (const void  *_buffer  /**< */);

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
 ** xcb_xvmc_list_surface_types_cookie_t xcb_xvmc_list_surface_types
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_xv_port_t     port_id
 ** @returns xcb_xvmc_list_surface_types_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_xvmc_list_surface_types_cookie_t
xcb_xvmc_list_surface_types (xcb_connection_t *c  /**< */,
                             xcb_xv_port_t     port_id  /**< */);

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
 ** xcb_xvmc_list_surface_types_cookie_t xcb_xvmc_list_surface_types_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_xv_port_t     port_id
 ** @returns xcb_xvmc_list_surface_types_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_xvmc_list_surface_types_cookie_t
xcb_xvmc_list_surface_types_unchecked (xcb_connection_t *c  /**< */,
                                       xcb_xv_port_t     port_id  /**< */);


/*****************************************************************************
 **
 ** xcb_xvmc_surface_info_t * xcb_xvmc_list_surface_types_surfaces
 ** 
 ** @param const xcb_xvmc_list_surface_types_reply_t *R
 ** @returns xcb_xvmc_surface_info_t *
 **
 *****************************************************************************/
 
xcb_xvmc_surface_info_t *
xcb_xvmc_list_surface_types_surfaces (const xcb_xvmc_list_surface_types_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_xvmc_list_surface_types_surfaces_length
 ** 
 ** @param const xcb_xvmc_list_surface_types_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xvmc_list_surface_types_surfaces_length (const xcb_xvmc_list_surface_types_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_xvmc_surface_info_iterator_t xcb_xvmc_list_surface_types_surfaces_iterator
 ** 
 ** @param const xcb_xvmc_list_surface_types_reply_t *R
 ** @returns xcb_xvmc_surface_info_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_xvmc_surface_info_iterator_t
xcb_xvmc_list_surface_types_surfaces_iterator (const xcb_xvmc_list_surface_types_reply_t *R  /**< */);

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 * 
 * The parameter @p e supplied to this function must be NULL if
 * xcb_xvmc_list_surface_types_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */

/*****************************************************************************
 **
 ** xcb_xvmc_list_surface_types_reply_t * xcb_xvmc_list_surface_types_reply
 ** 
 ** @param xcb_connection_t                      *c
 ** @param xcb_xvmc_list_surface_types_cookie_t   cookie
 ** @param xcb_generic_error_t                  **e
 ** @returns xcb_xvmc_list_surface_types_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_xvmc_list_surface_types_reply_t *
xcb_xvmc_list_surface_types_reply (xcb_connection_t                      *c  /**< */,
                                   xcb_xvmc_list_surface_types_cookie_t   cookie  /**< */,
                                   xcb_generic_error_t                  **e  /**< */);

extern(C) int
xcb_xvmc_create_context_sizeof (const void  *_buffer  /**< */);

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
 ** xcb_xvmc_create_context_cookie_t xcb_xvmc_create_context
 ** 
 ** @param xcb_connection_t   *c
 ** @param xcb_xvmc_context_t  context_id
 ** @param xcb_xv_port_t       port_id
 ** @param xcb_xvmc_surface_t  surface_id
 ** @param ushort              width
 ** @param ushort              height
 ** @param uint                flags
 ** @returns xcb_xvmc_create_context_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_xvmc_create_context_cookie_t
xcb_xvmc_create_context (xcb_connection_t   *c  /**< */,
                         xcb_xvmc_context_t  context_id  /**< */,
                         xcb_xv_port_t       port_id  /**< */,
                         xcb_xvmc_surface_t  surface_id  /**< */,
                         ushort              width  /**< */,
                         ushort              height  /**< */,
                         uint                flags  /**< */);

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
 ** xcb_xvmc_create_context_cookie_t xcb_xvmc_create_context_unchecked
 ** 
 ** @param xcb_connection_t   *c
 ** @param xcb_xvmc_context_t  context_id
 ** @param xcb_xv_port_t       port_id
 ** @param xcb_xvmc_surface_t  surface_id
 ** @param ushort              width
 ** @param ushort              height
 ** @param uint                flags
 ** @returns xcb_xvmc_create_context_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_xvmc_create_context_cookie_t
xcb_xvmc_create_context_unchecked (xcb_connection_t   *c  /**< */,
                                   xcb_xvmc_context_t  context_id  /**< */,
                                   xcb_xv_port_t       port_id  /**< */,
                                   xcb_xvmc_surface_t  surface_id  /**< */,
                                   ushort              width  /**< */,
                                   ushort              height  /**< */,
                                   uint                flags  /**< */);


/*****************************************************************************
 **
 ** uint * xcb_xvmc_create_context_priv_data
 ** 
 ** @param const xcb_xvmc_create_context_reply_t *R
 ** @returns uint *
 **
 *****************************************************************************/
 
uint *
xcb_xvmc_create_context_priv_data (const xcb_xvmc_create_context_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_xvmc_create_context_priv_data_length
 ** 
 ** @param const xcb_xvmc_create_context_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xvmc_create_context_priv_data_length (const xcb_xvmc_create_context_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xvmc_create_context_priv_data_end
 ** 
 ** @param const xcb_xvmc_create_context_reply_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_xvmc_create_context_priv_data_end (const xcb_xvmc_create_context_reply_t *R  /**< */);

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 * 
 * The parameter @p e supplied to this function must be NULL if
 * xcb_xvmc_create_context_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */

/*****************************************************************************
 **
 ** xcb_xvmc_create_context_reply_t * xcb_xvmc_create_context_reply
 ** 
 ** @param xcb_connection_t                  *c
 ** @param xcb_xvmc_create_context_cookie_t   cookie
 ** @param xcb_generic_error_t              **e
 ** @returns xcb_xvmc_create_context_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_xvmc_create_context_reply_t *
xcb_xvmc_create_context_reply (xcb_connection_t                  *c  /**< */,
                               xcb_xvmc_create_context_cookie_t   cookie  /**< */,
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
 ** xcb_void_cookie_t xcb_xvmc_destroy_context_checked
 ** 
 ** @param xcb_connection_t   *c
 ** @param xcb_xvmc_context_t  context_id
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_xvmc_destroy_context_checked (xcb_connection_t   *c  /**< */,
                                  xcb_xvmc_context_t  context_id  /**< */);

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
 ** xcb_void_cookie_t xcb_xvmc_destroy_context
 ** 
 ** @param xcb_connection_t   *c
 ** @param xcb_xvmc_context_t  context_id
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_xvmc_destroy_context (xcb_connection_t   *c  /**< */,
                          xcb_xvmc_context_t  context_id  /**< */);

extern(C) int
xcb_xvmc_create_surface_sizeof (const void  *_buffer  /**< */);

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
 ** xcb_xvmc_create_surface_cookie_t xcb_xvmc_create_surface
 ** 
 ** @param xcb_connection_t   *c
 ** @param xcb_xvmc_surface_t  surface_id
 ** @param xcb_xvmc_context_t  context_id
 ** @returns xcb_xvmc_create_surface_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_xvmc_create_surface_cookie_t
xcb_xvmc_create_surface (xcb_connection_t   *c  /**< */,
                         xcb_xvmc_surface_t  surface_id  /**< */,
                         xcb_xvmc_context_t  context_id  /**< */);

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
 ** xcb_xvmc_create_surface_cookie_t xcb_xvmc_create_surface_unchecked
 ** 
 ** @param xcb_connection_t   *c
 ** @param xcb_xvmc_surface_t  surface_id
 ** @param xcb_xvmc_context_t  context_id
 ** @returns xcb_xvmc_create_surface_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_xvmc_create_surface_cookie_t
xcb_xvmc_create_surface_unchecked (xcb_connection_t   *c  /**< */,
                                   xcb_xvmc_surface_t  surface_id  /**< */,
                                   xcb_xvmc_context_t  context_id  /**< */);


/*****************************************************************************
 **
 ** uint * xcb_xvmc_create_surface_priv_data
 ** 
 ** @param const xcb_xvmc_create_surface_reply_t *R
 ** @returns uint *
 **
 *****************************************************************************/
 
uint *
xcb_xvmc_create_surface_priv_data (const xcb_xvmc_create_surface_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_xvmc_create_surface_priv_data_length
 ** 
 ** @param const xcb_xvmc_create_surface_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xvmc_create_surface_priv_data_length (const xcb_xvmc_create_surface_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xvmc_create_surface_priv_data_end
 ** 
 ** @param const xcb_xvmc_create_surface_reply_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_xvmc_create_surface_priv_data_end (const xcb_xvmc_create_surface_reply_t *R  /**< */);

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 * 
 * The parameter @p e supplied to this function must be NULL if
 * xcb_xvmc_create_surface_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */

/*****************************************************************************
 **
 ** xcb_xvmc_create_surface_reply_t * xcb_xvmc_create_surface_reply
 ** 
 ** @param xcb_connection_t                  *c
 ** @param xcb_xvmc_create_surface_cookie_t   cookie
 ** @param xcb_generic_error_t              **e
 ** @returns xcb_xvmc_create_surface_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_xvmc_create_surface_reply_t *
xcb_xvmc_create_surface_reply (xcb_connection_t                  *c  /**< */,
                               xcb_xvmc_create_surface_cookie_t   cookie  /**< */,
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
 ** xcb_void_cookie_t xcb_xvmc_destroy_surface_checked
 ** 
 ** @param xcb_connection_t   *c
 ** @param xcb_xvmc_surface_t  surface_id
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_xvmc_destroy_surface_checked (xcb_connection_t   *c  /**< */,
                                  xcb_xvmc_surface_t  surface_id  /**< */);

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
 ** xcb_void_cookie_t xcb_xvmc_destroy_surface
 ** 
 ** @param xcb_connection_t   *c
 ** @param xcb_xvmc_surface_t  surface_id
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_xvmc_destroy_surface (xcb_connection_t   *c  /**< */,
                          xcb_xvmc_surface_t  surface_id  /**< */);

extern(C) int
xcb_xvmc_create_subpicture_sizeof (const void  *_buffer  /**< */);

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
 ** xcb_xvmc_create_subpicture_cookie_t xcb_xvmc_create_subpicture
 ** 
 ** @param xcb_connection_t      *c
 ** @param xcb_xvmc_subpicture_t  subpicture_id
 ** @param xcb_xvmc_context_t     context
 ** @param uint                   xvimage_id
 ** @param ushort                 width
 ** @param ushort                 height
 ** @returns xcb_xvmc_create_subpicture_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_xvmc_create_subpicture_cookie_t
xcb_xvmc_create_subpicture (xcb_connection_t      *c  /**< */,
                            xcb_xvmc_subpicture_t  subpicture_id  /**< */,
                            xcb_xvmc_context_t     context  /**< */,
                            uint                   xvimage_id  /**< */,
                            ushort                 width  /**< */,
                            ushort                 height  /**< */);

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
 ** xcb_xvmc_create_subpicture_cookie_t xcb_xvmc_create_subpicture_unchecked
 ** 
 ** @param xcb_connection_t      *c
 ** @param xcb_xvmc_subpicture_t  subpicture_id
 ** @param xcb_xvmc_context_t     context
 ** @param uint                   xvimage_id
 ** @param ushort                 width
 ** @param ushort                 height
 ** @returns xcb_xvmc_create_subpicture_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_xvmc_create_subpicture_cookie_t
xcb_xvmc_create_subpicture_unchecked (xcb_connection_t      *c  /**< */,
                                      xcb_xvmc_subpicture_t  subpicture_id  /**< */,
                                      xcb_xvmc_context_t     context  /**< */,
                                      uint                   xvimage_id  /**< */,
                                      ushort                 width  /**< */,
                                      ushort                 height  /**< */);


/*****************************************************************************
 **
 ** uint * xcb_xvmc_create_subpicture_priv_data
 ** 
 ** @param const xcb_xvmc_create_subpicture_reply_t *R
 ** @returns uint *
 **
 *****************************************************************************/
 
uint *
xcb_xvmc_create_subpicture_priv_data (const xcb_xvmc_create_subpicture_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_xvmc_create_subpicture_priv_data_length
 ** 
 ** @param const xcb_xvmc_create_subpicture_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xvmc_create_subpicture_priv_data_length (const xcb_xvmc_create_subpicture_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_xvmc_create_subpicture_priv_data_end
 ** 
 ** @param const xcb_xvmc_create_subpicture_reply_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_xvmc_create_subpicture_priv_data_end (const xcb_xvmc_create_subpicture_reply_t *R  /**< */);

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 * 
 * The parameter @p e supplied to this function must be NULL if
 * xcb_xvmc_create_subpicture_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */

/*****************************************************************************
 **
 ** xcb_xvmc_create_subpicture_reply_t * xcb_xvmc_create_subpicture_reply
 ** 
 ** @param xcb_connection_t                     *c
 ** @param xcb_xvmc_create_subpicture_cookie_t   cookie
 ** @param xcb_generic_error_t                 **e
 ** @returns xcb_xvmc_create_subpicture_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_xvmc_create_subpicture_reply_t *
xcb_xvmc_create_subpicture_reply (xcb_connection_t                     *c  /**< */,
                                  xcb_xvmc_create_subpicture_cookie_t   cookie  /**< */,
                                  xcb_generic_error_t                 **e  /**< */);

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
 ** xcb_void_cookie_t xcb_xvmc_destroy_subpicture_checked
 ** 
 ** @param xcb_connection_t      *c
 ** @param xcb_xvmc_subpicture_t  subpicture_id
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_xvmc_destroy_subpicture_checked (xcb_connection_t      *c  /**< */,
                                     xcb_xvmc_subpicture_t  subpicture_id  /**< */);

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
 ** xcb_void_cookie_t xcb_xvmc_destroy_subpicture
 ** 
 ** @param xcb_connection_t      *c
 ** @param xcb_xvmc_subpicture_t  subpicture_id
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_xvmc_destroy_subpicture (xcb_connection_t      *c  /**< */,
                             xcb_xvmc_subpicture_t  subpicture_id  /**< */);

extern(C) int
xcb_xvmc_list_subpicture_types_sizeof (const void  *_buffer  /**< */);

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
 ** xcb_xvmc_list_subpicture_types_cookie_t xcb_xvmc_list_subpicture_types
 ** 
 ** @param xcb_connection_t   *c
 ** @param xcb_xv_port_t       port_id
 ** @param xcb_xvmc_surface_t  surface_id
 ** @returns xcb_xvmc_list_subpicture_types_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_xvmc_list_subpicture_types_cookie_t
xcb_xvmc_list_subpicture_types (xcb_connection_t   *c  /**< */,
                                xcb_xv_port_t       port_id  /**< */,
                                xcb_xvmc_surface_t  surface_id  /**< */);

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
 ** xcb_xvmc_list_subpicture_types_cookie_t xcb_xvmc_list_subpicture_types_unchecked
 ** 
 ** @param xcb_connection_t   *c
 ** @param xcb_xv_port_t       port_id
 ** @param xcb_xvmc_surface_t  surface_id
 ** @returns xcb_xvmc_list_subpicture_types_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_xvmc_list_subpicture_types_cookie_t
xcb_xvmc_list_subpicture_types_unchecked (xcb_connection_t   *c  /**< */,
                                          xcb_xv_port_t       port_id  /**< */,
                                          xcb_xvmc_surface_t  surface_id  /**< */);


/*****************************************************************************
 **
 ** xcb_xv_image_format_info_t * xcb_xvmc_list_subpicture_types_types
 ** 
 ** @param const xcb_xvmc_list_subpicture_types_reply_t *R
 ** @returns xcb_xv_image_format_info_t *
 **
 *****************************************************************************/
 
xcb_xv_image_format_info_t *
xcb_xvmc_list_subpicture_types_types (const xcb_xvmc_list_subpicture_types_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_xvmc_list_subpicture_types_types_length
 ** 
 ** @param const xcb_xvmc_list_subpicture_types_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_xvmc_list_subpicture_types_types_length (const xcb_xvmc_list_subpicture_types_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_xv_image_format_info_iterator_t xcb_xvmc_list_subpicture_types_types_iterator
 ** 
 ** @param const xcb_xvmc_list_subpicture_types_reply_t *R
 ** @returns xcb_xv_image_format_info_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_xv_image_format_info_iterator_t
xcb_xvmc_list_subpicture_types_types_iterator (const xcb_xvmc_list_subpicture_types_reply_t *R  /**< */);

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 * 
 * The parameter @p e supplied to this function must be NULL if
 * xcb_xvmc_list_subpicture_types_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */

/*****************************************************************************
 **
 ** xcb_xvmc_list_subpicture_types_reply_t * xcb_xvmc_list_subpicture_types_reply
 ** 
 ** @param xcb_connection_t                         *c
 ** @param xcb_xvmc_list_subpicture_types_cookie_t   cookie
 ** @param xcb_generic_error_t                     **e
 ** @returns xcb_xvmc_list_subpicture_types_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_xvmc_list_subpicture_types_reply_t *
xcb_xvmc_list_subpicture_types_reply (xcb_connection_t                         *c  /**< */,
                                      xcb_xvmc_list_subpicture_types_cookie_t   cookie  /**< */,
                                      xcb_generic_error_t                     **e  /**< */);

/**
 * @}
 */
