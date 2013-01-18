/*
 * This file generated automatically from xinput.xml by d_client.py.
 * Edit at your peril.
 */

/**
 * @defgroup XCB_Input_API XCB Input API
 * @brief Input XCB Protocol Implementation.
 * @{
 **/

module interim.xcb.xinput;

import interim.xcb.xcb;
import interim.xcb.xproto;

const int XCB_INPUT_MAJOR_VERSION = 1;
const int XCB_INPUT_MINOR_VERSION = 4;
  
extern(C) xcb_extension_t xcb_input_id;

alias ubyte xcb_input_key_code_t;

/**
 * @brief xcb_input_key_code_iterator_t
 **/
struct xcb_input_key_code_iterator_t {
    xcb_input_key_code_t *data; /**<  */
    int                   rem; /**<  */
    int                   index; /**<  */
}

alias uint xcb_input_event_class_t;

/**
 * @brief xcb_input_event_class_iterator_t
 **/
struct xcb_input_event_class_iterator_t {
    xcb_input_event_class_t *data; /**<  */
    int                      rem; /**<  */
    int                      index; /**<  */
}

enum XcbInputValuatorMode {
    RELATIVE = 0,
    ABSOLUTE = 1
}
alias XcbInputValuatorMode xcb_input_valuator_mode_t;

enum XcbInputPropagateMode {
    ADD_TO_LIST      = 0,
    DELETE_FROM_LIST = 1
}
alias XcbInputPropagateMode xcb_input_propagate_mode_t;

/**
 * @brief xcb_input_get_extension_version_cookie_t
 **/
struct xcb_input_get_extension_version_cookie_t {
    uint sequence; /**<  */
}

/** Opcode for xcb_input_get_extension_version. */
const ubyte XCB_INPUT_GET_EXTENSION_VERSION = 1;

/**
 * @brief xcb_input_get_extension_version_request_t
 **/
struct xcb_input_get_extension_version_request_t {
    ubyte  major_opcode; /**<  */
    ubyte  minor_opcode; /**<  */
    ushort length; /**<  */
    ushort name_len; /**<  */
    ubyte  pad0[2]; /**<  */
}

/**
 * @brief xcb_input_get_extension_version_reply_t
 **/
struct xcb_input_get_extension_version_reply_t {
    ubyte  response_type; /**<  */
    ubyte  pad0; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    ushort server_major; /**<  */
    ushort server_minor; /**<  */
    ubyte  present; /**<  */
    ubyte  pad1[19]; /**<  */
}

enum XcbInputDeviceUse {
    IS_X_POINTER            = 0,
    IS_X_KEYBOARD           = 1,
    IS_X_EXTENSION_DEVICE   = 2,
    IS_X_EXTENSION_KEYBOARD = 3,
    IS_X_EXTENSION_POINTER  = 4
}
alias XcbInputDeviceUse xcb_input_device_use_t;

/**
 * @brief xcb_input_device_info_t
 **/
struct xcb_input_device_info_t {
    xcb_atom_t device_type; /**<  */
    ubyte      device_id; /**<  */
    ubyte      num_class_info; /**<  */
    ubyte      device_use; /**<  */
    ubyte      pad0; /**<  */
}

/**
 * @brief xcb_input_device_info_iterator_t
 **/
struct xcb_input_device_info_iterator_t {
    xcb_input_device_info_t *data; /**<  */
    int                      rem; /**<  */
    int                      index; /**<  */
}

/**
 * @brief xcb_input_list_input_devices_cookie_t
 **/
struct xcb_input_list_input_devices_cookie_t {
    uint sequence; /**<  */
}

/** Opcode for xcb_input_list_input_devices. */
const ubyte XCB_INPUT_LIST_INPUT_DEVICES = 2;

/**
 * @brief xcb_input_list_input_devices_request_t
 **/
struct xcb_input_list_input_devices_request_t {
    ubyte  major_opcode; /**<  */
    ubyte  minor_opcode; /**<  */
    ushort length; /**<  */
}

/**
 * @brief xcb_input_list_input_devices_reply_t
 **/
struct xcb_input_list_input_devices_reply_t {
    ubyte  response_type; /**<  */
    ubyte  pad0; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    ubyte  devices_len; /**<  */
    ubyte  pad1[23]; /**<  */
}

enum XcbInputInputClass {
    KEY       = 0,
    BUTTON    = 1,
    VALUATOR  = 2,
    FEEDBACK  = 3,
    PROXIMITY = 4,
    FOCUS     = 5,
    OTHER     = 6
}
alias XcbInputInputClass xcb_input_input_class_t;

/**
 * @brief xcb_input_input_info_t
 **/
struct xcb_input_input_info_t {
    ubyte class_id; /**<  */
    ubyte len; /**<  */
}

/**
 * @brief xcb_input_input_info_iterator_t
 **/
struct xcb_input_input_info_iterator_t {
    xcb_input_input_info_t *data; /**<  */
    int                     rem; /**<  */
    int                     index; /**<  */
}

/**
 * @brief xcb_input_key_info_t
 **/
struct xcb_input_key_info_t {
    ubyte                class_id; /**<  */
    ubyte                len; /**<  */
    xcb_input_key_code_t min_keycode; /**<  */
    xcb_input_key_code_t max_keycode; /**<  */
    ushort               num_keys; /**<  */
    ubyte                pad0[2]; /**<  */
}

/**
 * @brief xcb_input_key_info_iterator_t
 **/
struct xcb_input_key_info_iterator_t {
    xcb_input_key_info_t *data; /**<  */
    int                   rem; /**<  */
    int                   index; /**<  */
}

/**
 * @brief xcb_input_button_info_t
 **/
struct xcb_input_button_info_t {
    ubyte  class_id; /**<  */
    ubyte  len; /**<  */
    ushort num_buttons; /**<  */
}

/**
 * @brief xcb_input_button_info_iterator_t
 **/
struct xcb_input_button_info_iterator_t {
    xcb_input_button_info_t *data; /**<  */
    int                      rem; /**<  */
    int                      index; /**<  */
}

/**
 * @brief xcb_input_axis_info_t
 **/
struct xcb_input_axis_info_t {
    uint resolution; /**<  */
    int  minimum; /**<  */
    int  maximum; /**<  */
}

/**
 * @brief xcb_input_axis_info_iterator_t
 **/
struct xcb_input_axis_info_iterator_t {
    xcb_input_axis_info_t *data; /**<  */
    int                    rem; /**<  */
    int                    index; /**<  */
}

/**
 * @brief xcb_input_valuator_info_t
 **/
struct xcb_input_valuator_info_t {
    ubyte class_id; /**<  */
    ubyte len; /**<  */
    ubyte axes_len; /**<  */
    ubyte mode; /**<  */
    uint  motion_size; /**<  */
}

/**
 * @brief xcb_input_valuator_info_iterator_t
 **/
struct xcb_input_valuator_info_iterator_t {
    xcb_input_valuator_info_t *data; /**<  */
    int                        rem; /**<  */
    int                        index; /**<  */
}

/**
 * @brief xcb_input_input_class_info_t
 **/
struct xcb_input_input_class_info_t {
    ubyte class_id; /**<  */
    ubyte event_type_base; /**<  */
}

/**
 * @brief xcb_input_input_class_info_iterator_t
 **/
struct xcb_input_input_class_info_iterator_t {
    xcb_input_input_class_info_t *data; /**<  */
    int                           rem; /**<  */
    int                           index; /**<  */
}

/**
 * @brief xcb_input_open_device_cookie_t
 **/
struct xcb_input_open_device_cookie_t {
    uint sequence; /**<  */
}

/** Opcode for xcb_input_open_device. */
const ubyte XCB_INPUT_OPEN_DEVICE = 3;

/**
 * @brief xcb_input_open_device_request_t
 **/
struct xcb_input_open_device_request_t {
    ubyte  major_opcode; /**<  */
    ubyte  minor_opcode; /**<  */
    ushort length; /**<  */
    ubyte  device_id; /**<  */
    ubyte  pad0[3]; /**<  */
}

/**
 * @brief xcb_input_open_device_reply_t
 **/
struct xcb_input_open_device_reply_t {
    ubyte  response_type; /**<  */
    ubyte  pad0; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    ubyte  num_classes; /**<  */
    ubyte  pad1[23]; /**<  */
}

/** Opcode for xcb_input_close_device. */
const ubyte XCB_INPUT_CLOSE_DEVICE = 4;

/**
 * @brief xcb_input_close_device_request_t
 **/
struct xcb_input_close_device_request_t {
    ubyte  major_opcode; /**<  */
    ubyte  minor_opcode; /**<  */
    ushort length; /**<  */
    ubyte  device_id; /**<  */
    ubyte  pad0[3]; /**<  */
}

/**
 * @brief xcb_input_set_device_mode_cookie_t
 **/
struct xcb_input_set_device_mode_cookie_t {
    uint sequence; /**<  */
}

/** Opcode for xcb_input_set_device_mode. */
const ubyte XCB_INPUT_SET_DEVICE_MODE = 5;

/**
 * @brief xcb_input_set_device_mode_request_t
 **/
struct xcb_input_set_device_mode_request_t {
    ubyte  major_opcode; /**<  */
    ubyte  minor_opcode; /**<  */
    ushort length; /**<  */
    ubyte  device_id; /**<  */
    ubyte  mode; /**<  */
    ubyte  pad0[2]; /**<  */
}

/**
 * @brief xcb_input_set_device_mode_reply_t
 **/
struct xcb_input_set_device_mode_reply_t {
    ubyte  response_type; /**<  */
    ubyte  pad0; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    ubyte  status; /**<  */
    ubyte  pad1[23]; /**<  */
}

/** Opcode for xcb_input_select_extension_event. */
const ubyte XCB_INPUT_SELECT_EXTENSION_EVENT = 6;

/**
 * @brief xcb_input_select_extension_event_request_t
 **/
struct xcb_input_select_extension_event_request_t {
    ubyte        major_opcode; /**<  */
    ubyte        minor_opcode; /**<  */
    ushort       length; /**<  */
    xcb_window_t window; /**<  */
    ushort       num_classes; /**<  */
    ubyte        pad0[2]; /**<  */
}

/**
 * @brief xcb_input_get_selected_extension_events_cookie_t
 **/
struct xcb_input_get_selected_extension_events_cookie_t {
    uint sequence; /**<  */
}

/** Opcode for xcb_input_get_selected_extension_events. */
const ubyte XCB_INPUT_GET_SELECTED_EXTENSION_EVENTS = 7;

/**
 * @brief xcb_input_get_selected_extension_events_request_t
 **/
struct xcb_input_get_selected_extension_events_request_t {
    ubyte        major_opcode; /**<  */
    ubyte        minor_opcode; /**<  */
    ushort       length; /**<  */
    xcb_window_t window; /**<  */
}

/**
 * @brief xcb_input_get_selected_extension_events_reply_t
 **/
struct xcb_input_get_selected_extension_events_reply_t {
    ubyte  response_type; /**<  */
    ubyte  pad0; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    ushort num_this_classes; /**<  */
    ushort num_all_classes; /**<  */
    ubyte  pad1[20]; /**<  */
}

/** Opcode for xcb_input_change_device_dont_propagate_list. */
const ubyte XCB_INPUT_CHANGE_DEVICE_DONT_PROPAGATE_LIST = 8;

/**
 * @brief xcb_input_change_device_dont_propagate_list_request_t
 **/
struct xcb_input_change_device_dont_propagate_list_request_t {
    ubyte        major_opcode; /**<  */
    ubyte        minor_opcode; /**<  */
    ushort       length; /**<  */
    xcb_window_t window; /**<  */
    ushort       num_classes; /**<  */
    ubyte        mode; /**<  */
    ubyte        pad0; /**<  */
}

/**
 * @brief xcb_input_get_device_dont_propagate_list_cookie_t
 **/
struct xcb_input_get_device_dont_propagate_list_cookie_t {
    uint sequence; /**<  */
}

/** Opcode for xcb_input_get_device_dont_propagate_list. */
const ubyte XCB_INPUT_GET_DEVICE_DONT_PROPAGATE_LIST = 9;

/**
 * @brief xcb_input_get_device_dont_propagate_list_request_t
 **/
struct xcb_input_get_device_dont_propagate_list_request_t {
    ubyte        major_opcode; /**<  */
    ubyte        minor_opcode; /**<  */
    ushort       length; /**<  */
    xcb_window_t window; /**<  */
}

/**
 * @brief xcb_input_get_device_dont_propagate_list_reply_t
 **/
struct xcb_input_get_device_dont_propagate_list_reply_t {
    ubyte  response_type; /**<  */
    ubyte  pad0; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    ushort num_classes; /**<  */
    ubyte  pad1[22]; /**<  */
}

/**
 * @brief xcb_input_get_device_motion_events_cookie_t
 **/
struct xcb_input_get_device_motion_events_cookie_t {
    uint sequence; /**<  */
}

/** Opcode for xcb_input_get_device_motion_events. */
const ubyte XCB_INPUT_GET_DEVICE_MOTION_EVENTS = 10;

/**
 * @brief xcb_input_get_device_motion_events_request_t
 **/
struct xcb_input_get_device_motion_events_request_t {
    ubyte           major_opcode; /**<  */
    ubyte           minor_opcode; /**<  */
    ushort          length; /**<  */
    xcb_timestamp_t start; /**<  */
    xcb_timestamp_t stop; /**<  */
    ubyte           device_id; /**<  */
}

/**
 * @brief xcb_input_get_device_motion_events_reply_t
 **/
struct xcb_input_get_device_motion_events_reply_t {
    ubyte  response_type; /**<  */
    ubyte  pad0; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    uint   num_coords; /**<  */
    ubyte  num_axes; /**<  */
    ubyte  device_mode; /**<  */
    ubyte  pad1[18]; /**<  */
}

/**
 * @brief xcb_input_device_time_coord_t
 **/
struct xcb_input_device_time_coord_t {
    xcb_timestamp_t time; /**<  */
}

/**
 * @brief xcb_input_device_time_coord_iterator_t
 **/
struct xcb_input_device_time_coord_iterator_t {
    xcb_input_device_time_coord_t *data; /**<  */
    int                            rem; /**<  */
    int                            index; /**<  */
}

/**
 * @brief xcb_input_change_keyboard_device_cookie_t
 **/
struct xcb_input_change_keyboard_device_cookie_t {
    uint sequence; /**<  */
}

/** Opcode for xcb_input_change_keyboard_device. */
const ubyte XCB_INPUT_CHANGE_KEYBOARD_DEVICE = 11;

/**
 * @brief xcb_input_change_keyboard_device_request_t
 **/
struct xcb_input_change_keyboard_device_request_t {
    ubyte  major_opcode; /**<  */
    ubyte  minor_opcode; /**<  */
    ushort length; /**<  */
    ubyte  device_id; /**<  */
    ubyte  pad0[3]; /**<  */
}

/**
 * @brief xcb_input_change_keyboard_device_reply_t
 **/
struct xcb_input_change_keyboard_device_reply_t {
    ubyte  response_type; /**<  */
    ubyte  pad0; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    ubyte  status; /**<  */
    ubyte  pad1[23]; /**<  */
}

/**
 * @brief xcb_input_change_pointer_device_cookie_t
 **/
struct xcb_input_change_pointer_device_cookie_t {
    uint sequence; /**<  */
}

/** Opcode for xcb_input_change_pointer_device. */
const ubyte XCB_INPUT_CHANGE_POINTER_DEVICE = 12;

/**
 * @brief xcb_input_change_pointer_device_request_t
 **/
struct xcb_input_change_pointer_device_request_t {
    ubyte  major_opcode; /**<  */
    ubyte  minor_opcode; /**<  */
    ushort length; /**<  */
    ubyte  x_axis; /**<  */
    ubyte  y_axis; /**<  */
    ubyte  device_id; /**<  */
    ubyte  pad0; /**<  */
}

/**
 * @brief xcb_input_change_pointer_device_reply_t
 **/
struct xcb_input_change_pointer_device_reply_t {
    ubyte  response_type; /**<  */
    ubyte  pad0; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    ubyte  status; /**<  */
    ubyte  pad1[23]; /**<  */
}

/**
 * @brief xcb_input_grab_device_cookie_t
 **/
struct xcb_input_grab_device_cookie_t {
    uint sequence; /**<  */
}

/** Opcode for xcb_input_grab_device. */
const ubyte XCB_INPUT_GRAB_DEVICE = 13;

/**
 * @brief xcb_input_grab_device_request_t
 **/
struct xcb_input_grab_device_request_t {
    ubyte           major_opcode; /**<  */
    ubyte           minor_opcode; /**<  */
    ushort          length; /**<  */
    xcb_window_t    grab_window; /**<  */
    xcb_timestamp_t time; /**<  */
    ushort          num_classes; /**<  */
    ubyte           this_device_mode; /**<  */
    ubyte           other_device_mode; /**<  */
    ubyte           owner_events; /**<  */
    ubyte           device_id; /**<  */
    ubyte           pad0[2]; /**<  */
}

/**
 * @brief xcb_input_grab_device_reply_t
 **/
struct xcb_input_grab_device_reply_t {
    ubyte  response_type; /**<  */
    ubyte  pad0; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    ubyte  status; /**<  */
    ubyte  pad1[23]; /**<  */
}

/** Opcode for xcb_input_ungrab_device. */
const ubyte XCB_INPUT_UNGRAB_DEVICE = 14;

/**
 * @brief xcb_input_ungrab_device_request_t
 **/
struct xcb_input_ungrab_device_request_t {
    ubyte           major_opcode; /**<  */
    ubyte           minor_opcode; /**<  */
    ushort          length; /**<  */
    xcb_timestamp_t time; /**<  */
    ubyte           device_id; /**<  */
}

/** Opcode for xcb_input_grab_device_key. */
const ubyte XCB_INPUT_GRAB_DEVICE_KEY = 15;

/**
 * @brief xcb_input_grab_device_key_request_t
 **/
struct xcb_input_grab_device_key_request_t {
    ubyte        major_opcode; /**<  */
    ubyte        minor_opcode; /**<  */
    ushort       length; /**<  */
    xcb_window_t grab_window; /**<  */
    ushort       num_classes; /**<  */
    ushort       modifiers; /**<  */
    ubyte        modifier_device; /**<  */
    ubyte        grabbed_device; /**<  */
    ubyte        key; /**<  */
    ubyte        this_device_mode; /**<  */
    ubyte        other_device_mode; /**<  */
    ubyte        owner_events; /**<  */
    ubyte        pad0[2]; /**<  */
}

/** Opcode for xcb_input_ungrab_device_key. */
const ubyte XCB_INPUT_UNGRAB_DEVICE_KEY = 16;

/**
 * @brief xcb_input_ungrab_device_key_request_t
 **/
struct xcb_input_ungrab_device_key_request_t {
    ubyte        major_opcode; /**<  */
    ubyte        minor_opcode; /**<  */
    ushort       length; /**<  */
    xcb_window_t grabWindow; /**<  */
    ushort       modifiers; /**<  */
    ubyte        modifier_device; /**<  */
    ubyte        key; /**<  */
    ubyte        grabbed_device; /**<  */
}

/** Opcode for xcb_input_grab_device_button. */
const ubyte XCB_INPUT_GRAB_DEVICE_BUTTON = 17;

/**
 * @brief xcb_input_grab_device_button_request_t
 **/
struct xcb_input_grab_device_button_request_t {
    ubyte        major_opcode; /**<  */
    ubyte        minor_opcode; /**<  */
    ushort       length; /**<  */
    xcb_window_t grab_window; /**<  */
    ubyte        grabbed_device; /**<  */
    ubyte        modifier_device; /**<  */
    ushort       num_classes; /**<  */
    ushort       modifiers; /**<  */
    ubyte        this_device_mode; /**<  */
    ubyte        other_device_mode; /**<  */
    ubyte        button; /**<  */
    ubyte        owner_events; /**<  */
    ubyte        pad0[2]; /**<  */
}

/** Opcode for xcb_input_ungrab_device_button. */
const ubyte XCB_INPUT_UNGRAB_DEVICE_BUTTON = 18;

/**
 * @brief xcb_input_ungrab_device_button_request_t
 **/
struct xcb_input_ungrab_device_button_request_t {
    ubyte        major_opcode; /**<  */
    ubyte        minor_opcode; /**<  */
    ushort       length; /**<  */
    xcb_window_t grab_window; /**<  */
    ushort       modifiers; /**<  */
    ubyte        modifier_device; /**<  */
    ubyte        button; /**<  */
    ubyte        grabbed_device; /**<  */
}

enum XcbInputDeviceInputMode {
    ASYNC_THIS_DEVICE,
    SYNC_THIS_DEVICE,
    REPLAY_THIS_DEVICE,
    ASYNC_OTHER_DEVICES,
    ASYNC_ALL,
    SYNC_ALL
}
alias XcbInputDeviceInputMode xcb_input_device_input_mode_t;

/** Opcode for xcb_input_allow_device_events. */
const ubyte XCB_INPUT_ALLOW_DEVICE_EVENTS = 19;

/**
 * @brief xcb_input_allow_device_events_request_t
 **/
struct xcb_input_allow_device_events_request_t {
    ubyte           major_opcode; /**<  */
    ubyte           minor_opcode; /**<  */
    ushort          length; /**<  */
    xcb_timestamp_t time; /**<  */
    ubyte           mode; /**<  */
    ubyte           device_id; /**<  */
}

/**
 * @brief xcb_input_get_device_focus_cookie_t
 **/
struct xcb_input_get_device_focus_cookie_t {
    uint sequence; /**<  */
}

/** Opcode for xcb_input_get_device_focus. */
const ubyte XCB_INPUT_GET_DEVICE_FOCUS = 20;

/**
 * @brief xcb_input_get_device_focus_request_t
 **/
struct xcb_input_get_device_focus_request_t {
    ubyte  major_opcode; /**<  */
    ubyte  minor_opcode; /**<  */
    ushort length; /**<  */
    ubyte  device_id; /**<  */
    ubyte  pad0[3]; /**<  */
}

/**
 * @brief xcb_input_get_device_focus_reply_t
 **/
struct xcb_input_get_device_focus_reply_t {
    ubyte           response_type; /**<  */
    ubyte           pad0; /**<  */
    ushort          sequence; /**<  */
    uint            length; /**<  */
    xcb_window_t    focus; /**<  */
    xcb_timestamp_t time; /**<  */
    ubyte           revert_to; /**<  */
    ubyte           pad1[15]; /**<  */
}

/** Opcode for xcb_input_set_device_focus. */
const ubyte XCB_INPUT_SET_DEVICE_FOCUS = 21;

/**
 * @brief xcb_input_set_device_focus_request_t
 **/
struct xcb_input_set_device_focus_request_t {
    ubyte           major_opcode; /**<  */
    ubyte           minor_opcode; /**<  */
    ushort          length; /**<  */
    xcb_window_t    focus; /**<  */
    xcb_timestamp_t time; /**<  */
    ubyte           revert_to; /**<  */
    ubyte           device_id; /**<  */
}

/**
 * @brief xcb_input_get_feedback_control_cookie_t
 **/
struct xcb_input_get_feedback_control_cookie_t {
    uint sequence; /**<  */
}

/** Opcode for xcb_input_get_feedback_control. */
const ubyte XCB_INPUT_GET_FEEDBACK_CONTROL = 22;

/**
 * @brief xcb_input_get_feedback_control_request_t
 **/
struct xcb_input_get_feedback_control_request_t {
    ubyte  major_opcode; /**<  */
    ubyte  minor_opcode; /**<  */
    ushort length; /**<  */
    ubyte  device_id; /**<  */
    ubyte  pad0[3]; /**<  */
}

/**
 * @brief xcb_input_get_feedback_control_reply_t
 **/
struct xcb_input_get_feedback_control_reply_t {
    ubyte  response_type; /**<  */
    ubyte  pad0; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    ushort num_feedback; /**<  */
    ubyte  pad1[22]; /**<  */
}

enum XcbInputFeedbackClass {
    KEYBOARD,
    POINTER,
    STRING,
    INTEGER,
    LED,
    BELL
}
alias XcbInputFeedbackClass xcb_input_feedback_class_t;

/**
 * @brief xcb_input_feedback_state_t
 **/
struct xcb_input_feedback_state_t {
    ubyte  class_id; /**<  */
    ubyte  id; /**<  */
    ushort len; /**<  */
}

/**
 * @brief xcb_input_feedback_state_iterator_t
 **/
struct xcb_input_feedback_state_iterator_t {
    xcb_input_feedback_state_t *data; /**<  */
    int                         rem; /**<  */
    int                         index; /**<  */
}

/**
 * @brief xcb_input_kbd_feedback_state_t
 **/
struct xcb_input_kbd_feedback_state_t {
    ubyte  class_id; /**<  */
    ubyte  id; /**<  */
    ushort len; /**<  */
    ushort pitch; /**<  */
    ushort duration; /**<  */
    uint   led_mask; /**<  */
    uint   led_values; /**<  */
    ubyte  global_auto_repeat; /**<  */
    ubyte  click; /**<  */
    ubyte  percent; /**<  */
    ubyte  pad0; /**<  */
    ubyte  auto_repeats[32]; /**<  */
}

/**
 * @brief xcb_input_kbd_feedback_state_iterator_t
 **/
struct xcb_input_kbd_feedback_state_iterator_t {
    xcb_input_kbd_feedback_state_t *data; /**<  */
    int                             rem; /**<  */
    int                             index; /**<  */
}

/**
 * @brief xcb_input_ptr_feedback_state_t
 **/
struct xcb_input_ptr_feedback_state_t {
    ubyte  class_id; /**<  */
    ubyte  id; /**<  */
    ushort len; /**<  */
    ubyte  pad0[2]; /**<  */
    ushort accel_num; /**<  */
    ushort accel_denom; /**<  */
    ushort threshold; /**<  */
}

/**
 * @brief xcb_input_ptr_feedback_state_iterator_t
 **/
struct xcb_input_ptr_feedback_state_iterator_t {
    xcb_input_ptr_feedback_state_t *data; /**<  */
    int                             rem; /**<  */
    int                             index; /**<  */
}

/**
 * @brief xcb_input_integer_feedback_state_t
 **/
struct xcb_input_integer_feedback_state_t {
    ubyte  class_id; /**<  */
    ubyte  id; /**<  */
    ushort len; /**<  */
    uint   resolution; /**<  */
    int    min_value; /**<  */
    int    max_value; /**<  */
}

/**
 * @brief xcb_input_integer_feedback_state_iterator_t
 **/
struct xcb_input_integer_feedback_state_iterator_t {
    xcb_input_integer_feedback_state_t *data; /**<  */
    int                                 rem; /**<  */
    int                                 index; /**<  */
}

/**
 * @brief xcb_input_string_feedback_state_t
 **/
struct xcb_input_string_feedback_state_t {
    ubyte  class_id; /**<  */
    ubyte  id; /**<  */
    ushort len; /**<  */
    ushort max_symbols; /**<  */
    ushort num_keysyms; /**<  */
}

/**
 * @brief xcb_input_string_feedback_state_iterator_t
 **/
struct xcb_input_string_feedback_state_iterator_t {
    xcb_input_string_feedback_state_t *data; /**<  */
    int                                rem; /**<  */
    int                                index; /**<  */
}

/**
 * @brief xcb_input_bell_feedback_state_t
 **/
struct xcb_input_bell_feedback_state_t {
    ubyte  class_id; /**<  */
    ubyte  id; /**<  */
    ushort len; /**<  */
    ubyte  percent; /**<  */
    ubyte  pad0[3]; /**<  */
    ushort pitch; /**<  */
    ushort duration; /**<  */
}

/**
 * @brief xcb_input_bell_feedback_state_iterator_t
 **/
struct xcb_input_bell_feedback_state_iterator_t {
    xcb_input_bell_feedback_state_t *data; /**<  */
    int                              rem; /**<  */
    int                              index; /**<  */
}

/**
 * @brief xcb_input_led_feedback_state_t
 **/
struct xcb_input_led_feedback_state_t {
    ubyte  class_id; /**<  */
    ubyte  id; /**<  */
    ushort len; /**<  */
    uint   led_mask; /**<  */
    uint   led_values; /**<  */
}

/**
 * @brief xcb_input_led_feedback_state_iterator_t
 **/
struct xcb_input_led_feedback_state_iterator_t {
    xcb_input_led_feedback_state_t *data; /**<  */
    int                             rem; /**<  */
    int                             index; /**<  */
}

/**
 * @brief xcb_input_feedback_ctl_t
 **/
struct xcb_input_feedback_ctl_t {
    ubyte  class_id; /**<  */
    ubyte  id; /**<  */
    ushort len; /**<  */
}

/**
 * @brief xcb_input_feedback_ctl_iterator_t
 **/
struct xcb_input_feedback_ctl_iterator_t {
    xcb_input_feedback_ctl_t *data; /**<  */
    int                       rem; /**<  */
    int                       index; /**<  */
}

/**
 * @brief xcb_input_kbd_feedback_ctl_t
 **/
struct xcb_input_kbd_feedback_ctl_t {
    ubyte                class_id; /**<  */
    ubyte                id; /**<  */
    ushort               len; /**<  */
    xcb_input_key_code_t key; /**<  */
    ubyte                auto_repeat_mode; /**<  */
    byte                 key_click_percent; /**<  */
    byte                 bell_percent; /**<  */
    short                bell_pitch; /**<  */
    short                bell_duration; /**<  */
    uint                 led_mask; /**<  */
    uint                 led_values; /**<  */
}

/**
 * @brief xcb_input_kbd_feedback_ctl_iterator_t
 **/
struct xcb_input_kbd_feedback_ctl_iterator_t {
    xcb_input_kbd_feedback_ctl_t *data; /**<  */
    int                           rem; /**<  */
    int                           index; /**<  */
}

/**
 * @brief xcb_input_ptr_feedback_ctl_t
 **/
struct xcb_input_ptr_feedback_ctl_t {
    ubyte  class_id; /**<  */
    ubyte  id; /**<  */
    ushort len; /**<  */
    ubyte  pad0[2]; /**<  */
    short  num; /**<  */
    short  denom; /**<  */
    short  threshold; /**<  */
}

/**
 * @brief xcb_input_ptr_feedback_ctl_iterator_t
 **/
struct xcb_input_ptr_feedback_ctl_iterator_t {
    xcb_input_ptr_feedback_ctl_t *data; /**<  */
    int                           rem; /**<  */
    int                           index; /**<  */
}

/**
 * @brief xcb_input_integer_feedback_ctl_t
 **/
struct xcb_input_integer_feedback_ctl_t {
    ubyte  class_id; /**<  */
    ubyte  id; /**<  */
    ushort len; /**<  */
    int    int_to_display; /**<  */
}

/**
 * @brief xcb_input_integer_feedback_ctl_iterator_t
 **/
struct xcb_input_integer_feedback_ctl_iterator_t {
    xcb_input_integer_feedback_ctl_t *data; /**<  */
    int                               rem; /**<  */
    int                               index; /**<  */
}

/**
 * @brief xcb_input_string_feedback_ctl_t
 **/
struct xcb_input_string_feedback_ctl_t {
    ubyte  class_id; /**<  */
    ubyte  id; /**<  */
    ushort len; /**<  */
    ubyte  pad0[2]; /**<  */
    ushort num_keysyms; /**<  */
}

/**
 * @brief xcb_input_string_feedback_ctl_iterator_t
 **/
struct xcb_input_string_feedback_ctl_iterator_t {
    xcb_input_string_feedback_ctl_t *data; /**<  */
    int                              rem; /**<  */
    int                              index; /**<  */
}

/**
 * @brief xcb_input_bell_feedback_ctl_t
 **/
struct xcb_input_bell_feedback_ctl_t {
    ubyte  class_id; /**<  */
    ubyte  id; /**<  */
    ushort len; /**<  */
    byte   percent; /**<  */
    ubyte  pad0[3]; /**<  */
    short  pitch; /**<  */
    short  duration; /**<  */
}

/**
 * @brief xcb_input_bell_feedback_ctl_iterator_t
 **/
struct xcb_input_bell_feedback_ctl_iterator_t {
    xcb_input_bell_feedback_ctl_t *data; /**<  */
    int                            rem; /**<  */
    int                            index; /**<  */
}

/**
 * @brief xcb_input_led_feedback_ctl_t
 **/
struct xcb_input_led_feedback_ctl_t {
    ubyte  class_id; /**<  */
    ubyte  id; /**<  */
    ushort len; /**<  */
    uint   led_mask; /**<  */
    uint   led_values; /**<  */
}

/**
 * @brief xcb_input_led_feedback_ctl_iterator_t
 **/
struct xcb_input_led_feedback_ctl_iterator_t {
    xcb_input_led_feedback_ctl_t *data; /**<  */
    int                           rem; /**<  */
    int                           index; /**<  */
}

/**
 * @brief xcb_input_get_device_key_mapping_cookie_t
 **/
struct xcb_input_get_device_key_mapping_cookie_t {
    uint sequence; /**<  */
}

/** Opcode for xcb_input_get_device_key_mapping. */
const ubyte XCB_INPUT_GET_DEVICE_KEY_MAPPING = 24;

/**
 * @brief xcb_input_get_device_key_mapping_request_t
 **/
struct xcb_input_get_device_key_mapping_request_t {
    ubyte                major_opcode; /**<  */
    ubyte                minor_opcode; /**<  */
    ushort               length; /**<  */
    ubyte                device_id; /**<  */
    xcb_input_key_code_t first_keycode; /**<  */
    ubyte                count; /**<  */
}

/**
 * @brief xcb_input_get_device_key_mapping_reply_t
 **/
struct xcb_input_get_device_key_mapping_reply_t {
    ubyte  response_type; /**<  */
    ubyte  pad0; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    ubyte  keysyms_per_keycode; /**<  */
    ubyte  pad1[23]; /**<  */
}

/** Opcode for xcb_input_change_device_key_mapping. */
const ubyte XCB_INPUT_CHANGE_DEVICE_KEY_MAPPING = 25;

/**
 * @brief xcb_input_change_device_key_mapping_request_t
 **/
struct xcb_input_change_device_key_mapping_request_t {
    ubyte                major_opcode; /**<  */
    ubyte                minor_opcode; /**<  */
    ushort               length; /**<  */
    ubyte                device_id; /**<  */
    xcb_input_key_code_t first_keycode; /**<  */
    ubyte                keysyms_per_keycode; /**<  */
    ubyte                keycode_count; /**<  */
}

/**
 * @brief xcb_input_get_device_modifier_mapping_cookie_t
 **/
struct xcb_input_get_device_modifier_mapping_cookie_t {
    uint sequence; /**<  */
}

/** Opcode for xcb_input_get_device_modifier_mapping. */
const ubyte XCB_INPUT_GET_DEVICE_MODIFIER_MAPPING = 26;

/**
 * @brief xcb_input_get_device_modifier_mapping_request_t
 **/
struct xcb_input_get_device_modifier_mapping_request_t {
    ubyte  major_opcode; /**<  */
    ubyte  minor_opcode; /**<  */
    ushort length; /**<  */
    ubyte  device_id; /**<  */
    ubyte  pad0[3]; /**<  */
}

/**
 * @brief xcb_input_get_device_modifier_mapping_reply_t
 **/
struct xcb_input_get_device_modifier_mapping_reply_t {
    ubyte  response_type; /**<  */
    ubyte  pad0; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    ubyte  keycodes_per_modifier; /**<  */
    ubyte  pad1[23]; /**<  */
}

/**
 * @brief xcb_input_set_device_modifier_mapping_cookie_t
 **/
struct xcb_input_set_device_modifier_mapping_cookie_t {
    uint sequence; /**<  */
}

/** Opcode for xcb_input_set_device_modifier_mapping. */
const ubyte XCB_INPUT_SET_DEVICE_MODIFIER_MAPPING = 27;

/**
 * @brief xcb_input_set_device_modifier_mapping_request_t
 **/
struct xcb_input_set_device_modifier_mapping_request_t {
    ubyte  major_opcode; /**<  */
    ubyte  minor_opcode; /**<  */
    ushort length; /**<  */
    ubyte  device_id; /**<  */
    ubyte  keycodes_per_modifier; /**<  */
    ubyte  pad0; /**<  */
}

/**
 * @brief xcb_input_set_device_modifier_mapping_reply_t
 **/
struct xcb_input_set_device_modifier_mapping_reply_t {
    ubyte  response_type; /**<  */
    ubyte  pad0; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    ubyte  status; /**<  */
    ubyte  pad1[23]; /**<  */
}

/**
 * @brief xcb_input_get_device_button_mapping_cookie_t
 **/
struct xcb_input_get_device_button_mapping_cookie_t {
    uint sequence; /**<  */
}

/** Opcode for xcb_input_get_device_button_mapping. */
const ubyte XCB_INPUT_GET_DEVICE_BUTTON_MAPPING = 28;

/**
 * @brief xcb_input_get_device_button_mapping_request_t
 **/
struct xcb_input_get_device_button_mapping_request_t {
    ubyte  major_opcode; /**<  */
    ubyte  minor_opcode; /**<  */
    ushort length; /**<  */
    ubyte  device_id; /**<  */
    ubyte  pad0[3]; /**<  */
}

/**
 * @brief xcb_input_get_device_button_mapping_reply_t
 **/
struct xcb_input_get_device_button_mapping_reply_t {
    ubyte  response_type; /**<  */
    ubyte  pad0; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    ubyte  map_size; /**<  */
    ubyte  pad1[23]; /**<  */
}

/**
 * @brief xcb_input_set_device_button_mapping_cookie_t
 **/
struct xcb_input_set_device_button_mapping_cookie_t {
    uint sequence; /**<  */
}

/** Opcode for xcb_input_set_device_button_mapping. */
const ubyte XCB_INPUT_SET_DEVICE_BUTTON_MAPPING = 29;

/**
 * @brief xcb_input_set_device_button_mapping_request_t
 **/
struct xcb_input_set_device_button_mapping_request_t {
    ubyte  major_opcode; /**<  */
    ubyte  minor_opcode; /**<  */
    ushort length; /**<  */
    ubyte  device_id; /**<  */
    ubyte  map_size; /**<  */
    ubyte  pad0[2]; /**<  */
}

/**
 * @brief xcb_input_set_device_button_mapping_reply_t
 **/
struct xcb_input_set_device_button_mapping_reply_t {
    ubyte  response_type; /**<  */
    ubyte  pad0; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    ubyte  status; /**<  */
    ubyte  pad1[23]; /**<  */
}

/**
 * @brief xcb_input_query_device_state_cookie_t
 **/
struct xcb_input_query_device_state_cookie_t {
    uint sequence; /**<  */
}

/** Opcode for xcb_input_query_device_state. */
const ubyte XCB_INPUT_QUERY_DEVICE_STATE = 30;

/**
 * @brief xcb_input_query_device_state_request_t
 **/
struct xcb_input_query_device_state_request_t {
    ubyte  major_opcode; /**<  */
    ubyte  minor_opcode; /**<  */
    ushort length; /**<  */
    ubyte  device_id; /**<  */
    ubyte  pad0[3]; /**<  */
}

/**
 * @brief xcb_input_query_device_state_reply_t
 **/
struct xcb_input_query_device_state_reply_t {
    ubyte  response_type; /**<  */
    ubyte  pad0; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    ubyte  num_classes; /**<  */
    ubyte  pad1[23]; /**<  */
}

/**
 * @brief xcb_input_input_state_t
 **/
struct xcb_input_input_state_t {
    ubyte class_id; /**<  */
    ubyte len; /**<  */
    ubyte num_items; /**<  */
}

/**
 * @brief xcb_input_input_state_iterator_t
 **/
struct xcb_input_input_state_iterator_t {
    xcb_input_input_state_t *data; /**<  */
    int                      rem; /**<  */
    int                      index; /**<  */
}

/**
 * @brief xcb_input_key_state_t
 **/
struct xcb_input_key_state_t {
    ubyte class_id; /**<  */
    ubyte len; /**<  */
    ubyte num_keys; /**<  */
    ubyte pad0; /**<  */
    ubyte keys[32]; /**<  */
}

/**
 * @brief xcb_input_key_state_iterator_t
 **/
struct xcb_input_key_state_iterator_t {
    xcb_input_key_state_t *data; /**<  */
    int                    rem; /**<  */
    int                    index; /**<  */
}

/**
 * @brief xcb_input_button_state_t
 **/
struct xcb_input_button_state_t {
    ubyte class_id; /**<  */
    ubyte len; /**<  */
    ubyte num_buttons; /**<  */
    ubyte pad0; /**<  */
    ubyte buttons[32]; /**<  */
}

/**
 * @brief xcb_input_button_state_iterator_t
 **/
struct xcb_input_button_state_iterator_t {
    xcb_input_button_state_t *data; /**<  */
    int                       rem; /**<  */
    int                       index; /**<  */
}

/**
 * @brief xcb_input_valuator_state_t
 **/
struct xcb_input_valuator_state_t {
    ubyte class_id; /**<  */
    ubyte len; /**<  */
    ubyte num_valuators; /**<  */
    ubyte mode; /**<  */
}

/**
 * @brief xcb_input_valuator_state_iterator_t
 **/
struct xcb_input_valuator_state_iterator_t {
    xcb_input_valuator_state_t *data; /**<  */
    int                         rem; /**<  */
    int                         index; /**<  */
}

/** Opcode for xcb_input_send_extension_event. */
const ubyte XCB_INPUT_SEND_EXTENSION_EVENT = 31;

/**
 * @brief xcb_input_send_extension_event_request_t
 **/
struct xcb_input_send_extension_event_request_t {
    ubyte        major_opcode; /**<  */
    ubyte        minor_opcode; /**<  */
    ushort       length; /**<  */
    xcb_window_t destination; /**<  */
    ubyte        device_id; /**<  */
    ubyte        propagate; /**<  */
    ushort       num_classes; /**<  */
    ubyte        num_events; /**<  */
    ubyte        pad0[3]; /**<  */
}

/** Opcode for xcb_input_device_bell. */
const ubyte XCB_INPUT_DEVICE_BELL = 32;

/**
 * @brief xcb_input_device_bell_request_t
 **/
struct xcb_input_device_bell_request_t {
    ubyte  major_opcode; /**<  */
    ubyte  minor_opcode; /**<  */
    ushort length; /**<  */
    ubyte  device_id; /**<  */
    ubyte  feedback_id; /**<  */
    ubyte  feedback_class; /**<  */
    byte   percent; /**<  */
}

/**
 * @brief xcb_input_set_device_valuators_cookie_t
 **/
struct xcb_input_set_device_valuators_cookie_t {
    uint sequence; /**<  */
}

/** Opcode for xcb_input_set_device_valuators. */
const ubyte XCB_INPUT_SET_DEVICE_VALUATORS = 33;

/**
 * @brief xcb_input_set_device_valuators_request_t
 **/
struct xcb_input_set_device_valuators_request_t {
    ubyte  major_opcode; /**<  */
    ubyte  minor_opcode; /**<  */
    ushort length; /**<  */
    ubyte  device_id; /**<  */
    ubyte  first_valuator; /**<  */
    ubyte  num_valuators; /**<  */
    ubyte  pad0; /**<  */
}

/**
 * @brief xcb_input_set_device_valuators_reply_t
 **/
struct xcb_input_set_device_valuators_reply_t {
    ubyte  response_type; /**<  */
    ubyte  pad0; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    ubyte  status; /**<  */
    ubyte  pad1[23]; /**<  */
}

/**
 * @brief xcb_input_get_device_control_cookie_t
 **/
struct xcb_input_get_device_control_cookie_t {
    uint sequence; /**<  */
}

/** Opcode for xcb_input_get_device_control. */
const ubyte XCB_INPUT_GET_DEVICE_CONTROL = 34;

/**
 * @brief xcb_input_get_device_control_request_t
 **/
struct xcb_input_get_device_control_request_t {
    ubyte  major_opcode; /**<  */
    ubyte  minor_opcode; /**<  */
    ushort length; /**<  */
    ushort control_id; /**<  */
    ubyte  device_id; /**<  */
    ubyte  pad0; /**<  */
}

/**
 * @brief xcb_input_get_device_control_reply_t
 **/
struct xcb_input_get_device_control_reply_t {
    ubyte  response_type; /**<  */
    ubyte  pad0; /**<  */
    ushort sequence; /**<  */
    uint   length; /**<  */
    ubyte  status; /**<  */
    ubyte  pad1[23]; /**<  */
}

/**
 * @brief xcb_input_device_state_t
 **/
struct xcb_input_device_state_t {
    ushort control_id; /**<  */
    ushort len; /**<  */
}

/**
 * @brief xcb_input_device_state_iterator_t
 **/
struct xcb_input_device_state_iterator_t {
    xcb_input_device_state_t *data; /**<  */
    int                       rem; /**<  */
    int                       index; /**<  */
}

/**
 * @brief xcb_input_device_resolution_state_t
 **/
struct xcb_input_device_resolution_state_t {
    ushort control_id; /**<  */
    ushort len; /**<  */
    uint   num_valuators; /**<  */
}

/**
 * @brief xcb_input_device_resolution_state_iterator_t
 **/
struct xcb_input_device_resolution_state_iterator_t {
    xcb_input_device_resolution_state_t *data; /**<  */
    int                                  rem; /**<  */
    int                                  index; /**<  */
}

/**
 * @brief xcb_input_device_abs_calib_state_t
 **/
struct xcb_input_device_abs_calib_state_t {
    ushort control_id; /**<  */
    ushort len; /**<  */
    int    min_x; /**<  */
    int    max_x; /**<  */
    int    min_y; /**<  */
    int    max_y; /**<  */
    uint   flip_x; /**<  */
    uint   flip_y; /**<  */
    uint   rotation; /**<  */
    uint   button_threshold; /**<  */
}

/**
 * @brief xcb_input_device_abs_calib_state_iterator_t
 **/
struct xcb_input_device_abs_calib_state_iterator_t {
    xcb_input_device_abs_calib_state_t *data; /**<  */
    int                                 rem; /**<  */
    int                                 index; /**<  */
}

/**
 * @brief xcb_input_device_abs_area_state_t
 **/
struct xcb_input_device_abs_area_state_t {
    ushort control_id; /**<  */
    ushort len; /**<  */
    uint   offset_x; /**<  */
    uint   offset_y; /**<  */
    uint   width; /**<  */
    uint   height; /**<  */
    uint   screen; /**<  */
    uint   following; /**<  */
}

/**
 * @brief xcb_input_device_abs_area_state_iterator_t
 **/
struct xcb_input_device_abs_area_state_iterator_t {
    xcb_input_device_abs_area_state_t *data; /**<  */
    int                                rem; /**<  */
    int                                index; /**<  */
}

/**
 * @brief xcb_input_device_core_state_t
 **/
struct xcb_input_device_core_state_t {
    ushort control_id; /**<  */
    ushort len; /**<  */
    ubyte  status; /**<  */
    ubyte  iscore; /**<  */
    ubyte  pad0[2]; /**<  */
}

/**
 * @brief xcb_input_device_core_state_iterator_t
 **/
struct xcb_input_device_core_state_iterator_t {
    xcb_input_device_core_state_t *data; /**<  */
    int                            rem; /**<  */
    int                            index; /**<  */
}

/**
 * @brief xcb_input_device_enable_state_t
 **/
struct xcb_input_device_enable_state_t {
    ushort control_id; /**<  */
    ushort len; /**<  */
    ubyte  enable; /**<  */
    ubyte  pad0[3]; /**<  */
}

/**
 * @brief xcb_input_device_enable_state_iterator_t
 **/
struct xcb_input_device_enable_state_iterator_t {
    xcb_input_device_enable_state_t *data; /**<  */
    int                              rem; /**<  */
    int                              index; /**<  */
}

/**
 * @brief xcb_input_device_ctl_t
 **/
struct xcb_input_device_ctl_t {
    ushort control_id; /**<  */
    ushort len; /**<  */
}

/**
 * @brief xcb_input_device_ctl_iterator_t
 **/
struct xcb_input_device_ctl_iterator_t {
    xcb_input_device_ctl_t *data; /**<  */
    int                     rem; /**<  */
    int                     index; /**<  */
}

/**
 * @brief xcb_input_device_resolution_ctl_t
 **/
struct xcb_input_device_resolution_ctl_t {
    ushort control_id; /**<  */
    ushort len; /**<  */
    ubyte  first_valuator; /**<  */
    ubyte  num_valuators; /**<  */
}

/**
 * @brief xcb_input_device_resolution_ctl_iterator_t
 **/
struct xcb_input_device_resolution_ctl_iterator_t {
    xcb_input_device_resolution_ctl_t *data; /**<  */
    int                                rem; /**<  */
    int                                index; /**<  */
}

/**
 * @brief xcb_input_device_abs_calib_ctl_t
 **/
struct xcb_input_device_abs_calib_ctl_t {
    ushort control_id; /**<  */
    ushort len; /**<  */
    int    min_x; /**<  */
    int    max_x; /**<  */
    int    min_y; /**<  */
    int    max_y; /**<  */
    uint   flip_x; /**<  */
    uint   flip_y; /**<  */
    uint   rotation; /**<  */
    uint   button_threshold; /**<  */
}

/**
 * @brief xcb_input_device_abs_calib_ctl_iterator_t
 **/
struct xcb_input_device_abs_calib_ctl_iterator_t {
    xcb_input_device_abs_calib_ctl_t *data; /**<  */
    int                               rem; /**<  */
    int                               index; /**<  */
}

/**
 * @brief xcb_input_device_abs_area_ctrl_t
 **/
struct xcb_input_device_abs_area_ctrl_t {
    ushort control_id; /**<  */
    ushort len; /**<  */
    uint   offset_x; /**<  */
    uint   offset_y; /**<  */
    int    width; /**<  */
    int    height; /**<  */
    int    screen; /**<  */
    uint   following; /**<  */
}

/**
 * @brief xcb_input_device_abs_area_ctrl_iterator_t
 **/
struct xcb_input_device_abs_area_ctrl_iterator_t {
    xcb_input_device_abs_area_ctrl_t *data; /**<  */
    int                               rem; /**<  */
    int                               index; /**<  */
}

/**
 * @brief xcb_input_device_core_ctrl_t
 **/
struct xcb_input_device_core_ctrl_t {
    ushort control_id; /**<  */
    ushort len; /**<  */
    ubyte  status; /**<  */
    ubyte  pad0[3]; /**<  */
}

/**
 * @brief xcb_input_device_core_ctrl_iterator_t
 **/
struct xcb_input_device_core_ctrl_iterator_t {
    xcb_input_device_core_ctrl_t *data; /**<  */
    int                           rem; /**<  */
    int                           index; /**<  */
}

/**
 * @brief xcb_input_device_enable_ctrl_t
 **/
struct xcb_input_device_enable_ctrl_t {
    ushort control_id; /**<  */
    ushort len; /**<  */
    ubyte  enable; /**<  */
    ubyte  pad0[3]; /**<  */
}

/**
 * @brief xcb_input_device_enable_ctrl_iterator_t
 **/
struct xcb_input_device_enable_ctrl_iterator_t {
    xcb_input_device_enable_ctrl_t *data; /**<  */
    int                             rem; /**<  */
    int                             index; /**<  */
}

/** Opcode for xcb_input_device_valuator. */
const ubyte XCB_INPUT_DEVICE_VALUATOR = 0;

/**
 * @brief xcb_input_device_valuator_event_t
 **/
struct xcb_input_device_valuator_event_t {
    ubyte  response_type; /**<  */
    ubyte  device_id; /**<  */
    ushort sequence; /**<  */
    ushort device_state; /**<  */
    ubyte  num_valuators; /**<  */
    ubyte  first_valuator; /**<  */
    int    valuators[6]; /**<  */
}

/** Opcode for xcb_input_device_key_press. */
const ubyte XCB_INPUT_DEVICE_KEY_PRESS = 1;

/**
 * @brief xcb_input_device_key_press_event_t
 **/
struct xcb_input_device_key_press_event_t {
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
    ubyte           device_id; /**<  */
}

/** Opcode for xcb_input_device_key_release. */
const ubyte XCB_INPUT_DEVICE_KEY_RELEASE = 2;

alias xcb_input_device_key_press_event_t xcb_input_device_key_release_event_t;

/** Opcode for xcb_input_device_button_press. */
const ubyte XCB_INPUT_DEVICE_BUTTON_PRESS = 3;

alias xcb_input_device_key_press_event_t xcb_input_device_button_press_event_t;

/** Opcode for xcb_input_device_button_release. */
const ubyte XCB_INPUT_DEVICE_BUTTON_RELEASE = 4;

alias xcb_input_device_key_press_event_t xcb_input_device_button_release_event_t;

/** Opcode for xcb_input_device_motion_notify. */
const ubyte XCB_INPUT_DEVICE_MOTION_NOTIFY = 5;

alias xcb_input_device_key_press_event_t xcb_input_device_motion_notify_event_t;

/** Opcode for xcb_input_proximity_in. */
const ubyte XCB_INPUT_PROXIMITY_IN = 8;

alias xcb_input_device_key_press_event_t xcb_input_proximity_in_event_t;

/** Opcode for xcb_input_proximity_out. */
const ubyte XCB_INPUT_PROXIMITY_OUT = 9;

alias xcb_input_device_key_press_event_t xcb_input_proximity_out_event_t;

/** Opcode for xcb_input_focus_in. */
const ubyte XCB_INPUT_FOCUS_IN = 6;

/**
 * @brief xcb_input_focus_in_event_t
 **/
struct xcb_input_focus_in_event_t {
    ubyte           response_type; /**<  */
    ubyte           detail; /**<  */
    ushort          sequence; /**<  */
    xcb_timestamp_t time; /**<  */
    xcb_window_t    window; /**<  */
    ubyte           mode; /**<  */
    ubyte           device_id; /**<  */
    ubyte           pad0[18]; /**<  */
}

/** Opcode for xcb_input_focus_out. */
const ubyte XCB_INPUT_FOCUS_OUT = 7;

alias xcb_input_focus_in_event_t xcb_input_focus_out_event_t;

/** Opcode for xcb_input_device_state_notify. */
const ubyte XCB_INPUT_DEVICE_STATE_NOTIFY = 10;

/**
 * @brief xcb_input_device_state_notify_event_t
 **/
struct xcb_input_device_state_notify_event_t {
    ubyte           response_type; /**<  */
    ubyte           device_id; /**<  */
    ushort          sequence; /**<  */
    xcb_timestamp_t time; /**<  */
    ubyte           num_keys; /**<  */
    ubyte           num_buttons; /**<  */
    ubyte           num_valuators; /**<  */
    ubyte           classes_reported; /**<  */
    ubyte           buttons[4]; /**<  */
    ubyte           keys[4]; /**<  */
    uint            valuators[3]; /**<  */
}

/** Opcode for xcb_input_device_mapping_notify. */
const ubyte XCB_INPUT_DEVICE_MAPPING_NOTIFY = 11;

/**
 * @brief xcb_input_device_mapping_notify_event_t
 **/
struct xcb_input_device_mapping_notify_event_t {
    ubyte                response_type; /**<  */
    ubyte                device_id; /**<  */
    ushort               sequence; /**<  */
    ubyte                request; /**<  */
    xcb_input_key_code_t first_keycode; /**<  */
    ubyte                count; /**<  */
    ubyte                pad0; /**<  */
    xcb_timestamp_t      time; /**<  */
    ubyte                pad1[20]; /**<  */
}

/** Opcode for xcb_input_change_device_notify. */
const ubyte XCB_INPUT_CHANGE_DEVICE_NOTIFY = 12;

/**
 * @brief xcb_input_change_device_notify_event_t
 **/
struct xcb_input_change_device_notify_event_t {
    ubyte           response_type; /**<  */
    ubyte           device_id; /**<  */
    ushort          sequence; /**<  */
    xcb_timestamp_t time; /**<  */
    ubyte           request; /**<  */
    ubyte           pad0[23]; /**<  */
}

/** Opcode for xcb_input_device_key_state_notify. */
const ubyte XCB_INPUT_DEVICE_KEY_STATE_NOTIFY = 13;

/**
 * @brief xcb_input_device_key_state_notify_event_t
 **/
struct xcb_input_device_key_state_notify_event_t {
    ubyte  response_type; /**<  */
    ubyte  device_id; /**<  */
    ushort sequence; /**<  */
    ubyte  keys[28]; /**<  */
}

/** Opcode for xcb_input_device_button_state_notify. */
const ubyte XCB_INPUT_DEVICE_BUTTON_STATE_NOTIFY = 14;

/**
 * @brief xcb_input_device_button_state_notify_event_t
 **/
struct xcb_input_device_button_state_notify_event_t {
    ubyte  response_type; /**<  */
    ubyte  device_id; /**<  */
    ushort sequence; /**<  */
    ubyte  buttons[28]; /**<  */
}

/** Opcode for xcb_input_device_presence_notify. */
const ubyte XCB_INPUT_DEVICE_PRESENCE_NOTIFY = 15;

/**
 * @brief xcb_input_device_presence_notify_event_t
 **/
struct xcb_input_device_presence_notify_event_t {
    ubyte           response_type; /**<  */
    ubyte           pad0; /**<  */
    ushort          sequence; /**<  */
    xcb_timestamp_t time; /**<  */
    ubyte           devchange; /**<  */
    ubyte           device_id; /**<  */
    ushort          control; /**<  */
    ubyte           pad1[20]; /**<  */
}

/** Opcode for xcb_input_device. */
const ubyte XCB_INPUT_DEVICE = 0;

/**
 * @brief xcb_input_device_error_t
 **/
struct xcb_input_device_error_t {
    ubyte  response_type; /**<  */
    ubyte  error_code; /**<  */
    ushort sequence; /**<  */
}

/** Opcode for xcb_input_event. */
const ubyte XCB_INPUT_EVENT = 1;

/**
 * @brief xcb_input_event_error_t
 **/
struct xcb_input_event_error_t {
    ubyte  response_type; /**<  */
    ubyte  error_code; /**<  */
    ushort sequence; /**<  */
}

/** Opcode for xcb_input_mode. */
const ubyte XCB_INPUT_MODE = 2;

/**
 * @brief xcb_input_mode_error_t
 **/
struct xcb_input_mode_error_t {
    ubyte  response_type; /**<  */
    ubyte  error_code; /**<  */
    ushort sequence; /**<  */
}

/** Opcode for xcb_input_device_busy. */
const ubyte XCB_INPUT_DEVICE_BUSY = 3;

/**
 * @brief xcb_input_device_busy_error_t
 **/
struct xcb_input_device_busy_error_t {
    ubyte  response_type; /**<  */
    ubyte  error_code; /**<  */
    ushort sequence; /**<  */
}

/** Opcode for xcb_input_class. */
const ubyte XCB_INPUT_CLASS = 4;

/**
 * @brief xcb_input_class_error_t
 **/
struct xcb_input_class_error_t {
    ubyte  response_type; /**<  */
    ubyte  error_code; /**<  */
    ushort sequence; /**<  */
}

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_input_key_code_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_input_key_code_t)
 */

/*****************************************************************************
 **
 ** void xcb_input_key_code_next
 ** 
 ** @param xcb_input_key_code_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_input_key_code_next (xcb_input_key_code_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_input_key_code_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_input_key_code_end
 ** 
 ** @param xcb_input_key_code_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
xcb_generic_iterator_t
xcb_input_key_code_end (xcb_input_key_code_iterator_t i  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_input_event_class_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_input_event_class_t)
 */

/*****************************************************************************
 **
 ** void xcb_input_event_class_next
 ** 
 ** @param xcb_input_event_class_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_input_event_class_next (xcb_input_event_class_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_input_event_class_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_input_event_class_end
 ** 
 ** @param xcb_input_event_class_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
xcb_generic_iterator_t
xcb_input_event_class_end (xcb_input_event_class_iterator_t i  /**< */);

extern(C) int
xcb_input_get_extension_version_sizeof (const void  *_buffer  /**< */);

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
 ** xcb_input_get_extension_version_cookie_t xcb_input_get_extension_version
 ** 
 ** @param xcb_connection_t *c
 ** @param ushort            name_len
 ** @param const char       *name
 ** @returns xcb_input_get_extension_version_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_input_get_extension_version_cookie_t
xcb_input_get_extension_version (xcb_connection_t *c  /**< */,
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
 ** xcb_input_get_extension_version_cookie_t xcb_input_get_extension_version_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @param ushort            name_len
 ** @param const char       *name
 ** @returns xcb_input_get_extension_version_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_input_get_extension_version_cookie_t
xcb_input_get_extension_version_unchecked (xcb_connection_t *c  /**< */,
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
 * xcb_input_get_extension_version_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */

/*****************************************************************************
 **
 ** xcb_input_get_extension_version_reply_t * xcb_input_get_extension_version_reply
 ** 
 ** @param xcb_connection_t                          *c
 ** @param xcb_input_get_extension_version_cookie_t   cookie
 ** @param xcb_generic_error_t                      **e
 ** @returns xcb_input_get_extension_version_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_input_get_extension_version_reply_t *
xcb_input_get_extension_version_reply (xcb_connection_t                          *c  /**< */,
                                       xcb_input_get_extension_version_cookie_t   cookie  /**< */,
                                       xcb_generic_error_t                      **e  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_input_device_info_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_input_device_info_t)
 */

/*****************************************************************************
 **
 ** void xcb_input_device_info_next
 ** 
 ** @param xcb_input_device_info_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_input_device_info_next (xcb_input_device_info_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_input_device_info_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_input_device_info_end
 ** 
 ** @param xcb_input_device_info_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
xcb_generic_iterator_t
xcb_input_device_info_end (xcb_input_device_info_iterator_t i  /**< */);

extern(C) int
xcb_input_list_input_devices_sizeof (const void  *_buffer  /**< */);

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
 ** xcb_input_list_input_devices_cookie_t xcb_input_list_input_devices
 ** 
 ** @param xcb_connection_t *c
 ** @returns xcb_input_list_input_devices_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_input_list_input_devices_cookie_t
xcb_input_list_input_devices (xcb_connection_t *c  /**< */);

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
 ** xcb_input_list_input_devices_cookie_t xcb_input_list_input_devices_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @returns xcb_input_list_input_devices_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_input_list_input_devices_cookie_t
xcb_input_list_input_devices_unchecked (xcb_connection_t *c  /**< */);


/*****************************************************************************
 **
 ** xcb_input_device_info_t * xcb_input_list_input_devices_devices
 ** 
 ** @param const xcb_input_list_input_devices_reply_t *R
 ** @returns xcb_input_device_info_t *
 **
 *****************************************************************************/
 
xcb_input_device_info_t *
xcb_input_list_input_devices_devices (const xcb_input_list_input_devices_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_input_list_input_devices_devices_length
 ** 
 ** @param const xcb_input_list_input_devices_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_input_list_input_devices_devices_length (const xcb_input_list_input_devices_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_input_device_info_iterator_t xcb_input_list_input_devices_devices_iterator
 ** 
 ** @param const xcb_input_list_input_devices_reply_t *R
 ** @returns xcb_input_device_info_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_input_device_info_iterator_t
xcb_input_list_input_devices_devices_iterator (const xcb_input_list_input_devices_reply_t *R  /**< */);

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 * 
 * The parameter @p e supplied to this function must be NULL if
 * xcb_input_list_input_devices_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */

/*****************************************************************************
 **
 ** xcb_input_list_input_devices_reply_t * xcb_input_list_input_devices_reply
 ** 
 ** @param xcb_connection_t                       *c
 ** @param xcb_input_list_input_devices_cookie_t   cookie
 ** @param xcb_generic_error_t                   **e
 ** @returns xcb_input_list_input_devices_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_input_list_input_devices_reply_t *
xcb_input_list_input_devices_reply (xcb_connection_t                       *c  /**< */,
                                    xcb_input_list_input_devices_cookie_t   cookie  /**< */,
                                    xcb_generic_error_t                   **e  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_input_input_info_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_input_input_info_t)
 */

/*****************************************************************************
 **
 ** void xcb_input_input_info_next
 ** 
 ** @param xcb_input_input_info_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_input_input_info_next (xcb_input_input_info_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_input_input_info_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_input_input_info_end
 ** 
 ** @param xcb_input_input_info_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
xcb_generic_iterator_t
xcb_input_input_info_end (xcb_input_input_info_iterator_t i  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_input_key_info_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_input_key_info_t)
 */

/*****************************************************************************
 **
 ** void xcb_input_key_info_next
 ** 
 ** @param xcb_input_key_info_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_input_key_info_next (xcb_input_key_info_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_input_key_info_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_input_key_info_end
 ** 
 ** @param xcb_input_key_info_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
xcb_generic_iterator_t
xcb_input_key_info_end (xcb_input_key_info_iterator_t i  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_input_button_info_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_input_button_info_t)
 */

/*****************************************************************************
 **
 ** void xcb_input_button_info_next
 ** 
 ** @param xcb_input_button_info_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_input_button_info_next (xcb_input_button_info_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_input_button_info_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_input_button_info_end
 ** 
 ** @param xcb_input_button_info_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
xcb_generic_iterator_t
xcb_input_button_info_end (xcb_input_button_info_iterator_t i  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_input_axis_info_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_input_axis_info_t)
 */

/*****************************************************************************
 **
 ** void xcb_input_axis_info_next
 ** 
 ** @param xcb_input_axis_info_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_input_axis_info_next (xcb_input_axis_info_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_input_axis_info_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_input_axis_info_end
 ** 
 ** @param xcb_input_axis_info_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
xcb_generic_iterator_t
xcb_input_axis_info_end (xcb_input_axis_info_iterator_t i  /**< */);

extern(C) int
xcb_input_valuator_info_sizeof (const void  *_buffer  /**< */);


/*****************************************************************************
 **
 ** xcb_input_axis_info_t * xcb_input_valuator_info_axes
 ** 
 ** @param const xcb_input_valuator_info_t *R
 ** @returns xcb_input_axis_info_t *
 **
 *****************************************************************************/
 
xcb_input_axis_info_t *
xcb_input_valuator_info_axes (const xcb_input_valuator_info_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_input_valuator_info_axes_length
 ** 
 ** @param const xcb_input_valuator_info_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_input_valuator_info_axes_length (const xcb_input_valuator_info_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_input_axis_info_iterator_t xcb_input_valuator_info_axes_iterator
 ** 
 ** @param const xcb_input_valuator_info_t *R
 ** @returns xcb_input_axis_info_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_input_axis_info_iterator_t
xcb_input_valuator_info_axes_iterator (const xcb_input_valuator_info_t *R  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_input_valuator_info_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_input_valuator_info_t)
 */

/*****************************************************************************
 **
 ** void xcb_input_valuator_info_next
 ** 
 ** @param xcb_input_valuator_info_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_input_valuator_info_next (xcb_input_valuator_info_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_input_valuator_info_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_input_valuator_info_end
 ** 
 ** @param xcb_input_valuator_info_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
xcb_generic_iterator_t
xcb_input_valuator_info_end (xcb_input_valuator_info_iterator_t i  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_input_input_class_info_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_input_input_class_info_t)
 */

/*****************************************************************************
 **
 ** void xcb_input_input_class_info_next
 ** 
 ** @param xcb_input_input_class_info_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_input_input_class_info_next (xcb_input_input_class_info_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_input_input_class_info_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_input_input_class_info_end
 ** 
 ** @param xcb_input_input_class_info_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
xcb_generic_iterator_t
xcb_input_input_class_info_end (xcb_input_input_class_info_iterator_t i  /**< */);

extern(C) int
xcb_input_open_device_sizeof (const void  *_buffer  /**< */);

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
 ** xcb_input_open_device_cookie_t xcb_input_open_device
 ** 
 ** @param xcb_connection_t *c
 ** @param ubyte             device_id
 ** @returns xcb_input_open_device_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_input_open_device_cookie_t
xcb_input_open_device (xcb_connection_t *c  /**< */,
                       ubyte             device_id  /**< */);

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
 ** xcb_input_open_device_cookie_t xcb_input_open_device_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @param ubyte             device_id
 ** @returns xcb_input_open_device_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_input_open_device_cookie_t
xcb_input_open_device_unchecked (xcb_connection_t *c  /**< */,
                                 ubyte             device_id  /**< */);


/*****************************************************************************
 **
 ** xcb_input_input_class_info_t * xcb_input_open_device_class_info
 ** 
 ** @param const xcb_input_open_device_reply_t *R
 ** @returns xcb_input_input_class_info_t *
 **
 *****************************************************************************/
 
xcb_input_input_class_info_t *
xcb_input_open_device_class_info (const xcb_input_open_device_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_input_open_device_class_info_length
 ** 
 ** @param const xcb_input_open_device_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_input_open_device_class_info_length (const xcb_input_open_device_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_input_input_class_info_iterator_t xcb_input_open_device_class_info_iterator
 ** 
 ** @param const xcb_input_open_device_reply_t *R
 ** @returns xcb_input_input_class_info_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_input_input_class_info_iterator_t
xcb_input_open_device_class_info_iterator (const xcb_input_open_device_reply_t *R  /**< */);

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 * 
 * The parameter @p e supplied to this function must be NULL if
 * xcb_input_open_device_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */

/*****************************************************************************
 **
 ** xcb_input_open_device_reply_t * xcb_input_open_device_reply
 ** 
 ** @param xcb_connection_t                *c
 ** @param xcb_input_open_device_cookie_t   cookie
 ** @param xcb_generic_error_t            **e
 ** @returns xcb_input_open_device_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_input_open_device_reply_t *
xcb_input_open_device_reply (xcb_connection_t                *c  /**< */,
                             xcb_input_open_device_cookie_t   cookie  /**< */,
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
 ** xcb_void_cookie_t xcb_input_close_device_checked
 ** 
 ** @param xcb_connection_t *c
 ** @param ubyte             device_id
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_input_close_device_checked (xcb_connection_t *c  /**< */,
                                ubyte             device_id  /**< */);

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
 ** xcb_void_cookie_t xcb_input_close_device
 ** 
 ** @param xcb_connection_t *c
 ** @param ubyte             device_id
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_input_close_device (xcb_connection_t *c  /**< */,
                        ubyte             device_id  /**< */);

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
 ** xcb_input_set_device_mode_cookie_t xcb_input_set_device_mode
 ** 
 ** @param xcb_connection_t *c
 ** @param ubyte             device_id
 ** @param ubyte             mode
 ** @returns xcb_input_set_device_mode_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_input_set_device_mode_cookie_t
xcb_input_set_device_mode (xcb_connection_t *c  /**< */,
                           ubyte             device_id  /**< */,
                           ubyte             mode  /**< */);

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
 ** xcb_input_set_device_mode_cookie_t xcb_input_set_device_mode_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @param ubyte             device_id
 ** @param ubyte             mode
 ** @returns xcb_input_set_device_mode_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_input_set_device_mode_cookie_t
xcb_input_set_device_mode_unchecked (xcb_connection_t *c  /**< */,
                                     ubyte             device_id  /**< */,
                                     ubyte             mode  /**< */);

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 * 
 * The parameter @p e supplied to this function must be NULL if
 * xcb_input_set_device_mode_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */

/*****************************************************************************
 **
 ** xcb_input_set_device_mode_reply_t * xcb_input_set_device_mode_reply
 ** 
 ** @param xcb_connection_t                    *c
 ** @param xcb_input_set_device_mode_cookie_t   cookie
 ** @param xcb_generic_error_t                **e
 ** @returns xcb_input_set_device_mode_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_input_set_device_mode_reply_t *
xcb_input_set_device_mode_reply (xcb_connection_t                    *c  /**< */,
                                 xcb_input_set_device_mode_cookie_t   cookie  /**< */,
                                 xcb_generic_error_t                **e  /**< */);

extern(C) int
xcb_input_select_extension_event_sizeof (const void  *_buffer  /**< */);

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
 ** xcb_void_cookie_t xcb_input_select_extension_event_checked
 ** 
 ** @param xcb_connection_t              *c
 ** @param xcb_window_t                   window
 ** @param ushort                         num_classes
 ** @param const xcb_input_event_class_t *classes
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_input_select_extension_event_checked (xcb_connection_t              *c  /**< */,
                                          xcb_window_t                   window  /**< */,
                                          ushort                         num_classes  /**< */,
                                          const xcb_input_event_class_t *classes  /**< */);

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
 ** xcb_void_cookie_t xcb_input_select_extension_event
 ** 
 ** @param xcb_connection_t              *c
 ** @param xcb_window_t                   window
 ** @param ushort                         num_classes
 ** @param const xcb_input_event_class_t *classes
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_input_select_extension_event (xcb_connection_t              *c  /**< */,
                                  xcb_window_t                   window  /**< */,
                                  ushort                         num_classes  /**< */,
                                  const xcb_input_event_class_t *classes  /**< */);

extern(C) int
xcb_input_get_selected_extension_events_sizeof (const void  *_buffer  /**< */);

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
 ** xcb_input_get_selected_extension_events_cookie_t xcb_input_get_selected_extension_events
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_window_t      window
 ** @returns xcb_input_get_selected_extension_events_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_input_get_selected_extension_events_cookie_t
xcb_input_get_selected_extension_events (xcb_connection_t *c  /**< */,
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
 ** xcb_input_get_selected_extension_events_cookie_t xcb_input_get_selected_extension_events_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_window_t      window
 ** @returns xcb_input_get_selected_extension_events_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_input_get_selected_extension_events_cookie_t
xcb_input_get_selected_extension_events_unchecked (xcb_connection_t *c  /**< */,
                                                   xcb_window_t      window  /**< */);


/*****************************************************************************
 **
 ** xcb_input_event_class_t * xcb_input_get_selected_extension_events_this_classes
 ** 
 ** @param const xcb_input_get_selected_extension_events_reply_t *R
 ** @returns xcb_input_event_class_t *
 **
 *****************************************************************************/
 
xcb_input_event_class_t *
xcb_input_get_selected_extension_events_this_classes (const xcb_input_get_selected_extension_events_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_input_get_selected_extension_events_this_classes_length
 ** 
 ** @param const xcb_input_get_selected_extension_events_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_input_get_selected_extension_events_this_classes_length (const xcb_input_get_selected_extension_events_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_input_get_selected_extension_events_this_classes_end
 ** 
 ** @param const xcb_input_get_selected_extension_events_reply_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_input_get_selected_extension_events_this_classes_end (const xcb_input_get_selected_extension_events_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_input_event_class_t * xcb_input_get_selected_extension_events_all_classes
 ** 
 ** @param const xcb_input_get_selected_extension_events_reply_t *R
 ** @returns xcb_input_event_class_t *
 **
 *****************************************************************************/
 
xcb_input_event_class_t *
xcb_input_get_selected_extension_events_all_classes (const xcb_input_get_selected_extension_events_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_input_get_selected_extension_events_all_classes_length
 ** 
 ** @param const xcb_input_get_selected_extension_events_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_input_get_selected_extension_events_all_classes_length (const xcb_input_get_selected_extension_events_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_input_get_selected_extension_events_all_classes_end
 ** 
 ** @param const xcb_input_get_selected_extension_events_reply_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_input_get_selected_extension_events_all_classes_end (const xcb_input_get_selected_extension_events_reply_t *R  /**< */);

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 * 
 * The parameter @p e supplied to this function must be NULL if
 * xcb_input_get_selected_extension_events_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */

/*****************************************************************************
 **
 ** xcb_input_get_selected_extension_events_reply_t * xcb_input_get_selected_extension_events_reply
 ** 
 ** @param xcb_connection_t                                  *c
 ** @param xcb_input_get_selected_extension_events_cookie_t   cookie
 ** @param xcb_generic_error_t                              **e
 ** @returns xcb_input_get_selected_extension_events_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_input_get_selected_extension_events_reply_t *
xcb_input_get_selected_extension_events_reply (xcb_connection_t                                  *c  /**< */,
                                               xcb_input_get_selected_extension_events_cookie_t   cookie  /**< */,
                                               xcb_generic_error_t                              **e  /**< */);

extern(C) int
xcb_input_change_device_dont_propagate_list_sizeof (const void  *_buffer  /**< */);

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
 ** xcb_void_cookie_t xcb_input_change_device_dont_propagate_list_checked
 ** 
 ** @param xcb_connection_t              *c
 ** @param xcb_window_t                   window
 ** @param ushort                         num_classes
 ** @param ubyte                          mode
 ** @param const xcb_input_event_class_t *classes
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_input_change_device_dont_propagate_list_checked (xcb_connection_t              *c  /**< */,
                                                     xcb_window_t                   window  /**< */,
                                                     ushort                         num_classes  /**< */,
                                                     ubyte                          mode  /**< */,
                                                     const xcb_input_event_class_t *classes  /**< */);

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
 ** xcb_void_cookie_t xcb_input_change_device_dont_propagate_list
 ** 
 ** @param xcb_connection_t              *c
 ** @param xcb_window_t                   window
 ** @param ushort                         num_classes
 ** @param ubyte                          mode
 ** @param const xcb_input_event_class_t *classes
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_input_change_device_dont_propagate_list (xcb_connection_t              *c  /**< */,
                                             xcb_window_t                   window  /**< */,
                                             ushort                         num_classes  /**< */,
                                             ubyte                          mode  /**< */,
                                             const xcb_input_event_class_t *classes  /**< */);

extern(C) int
xcb_input_get_device_dont_propagate_list_sizeof (const void  *_buffer  /**< */);

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
 ** xcb_input_get_device_dont_propagate_list_cookie_t xcb_input_get_device_dont_propagate_list
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_window_t      window
 ** @returns xcb_input_get_device_dont_propagate_list_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_input_get_device_dont_propagate_list_cookie_t
xcb_input_get_device_dont_propagate_list (xcb_connection_t *c  /**< */,
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
 ** xcb_input_get_device_dont_propagate_list_cookie_t xcb_input_get_device_dont_propagate_list_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_window_t      window
 ** @returns xcb_input_get_device_dont_propagate_list_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_input_get_device_dont_propagate_list_cookie_t
xcb_input_get_device_dont_propagate_list_unchecked (xcb_connection_t *c  /**< */,
                                                    xcb_window_t      window  /**< */);


/*****************************************************************************
 **
 ** xcb_input_event_class_t * xcb_input_get_device_dont_propagate_list_classes
 ** 
 ** @param const xcb_input_get_device_dont_propagate_list_reply_t *R
 ** @returns xcb_input_event_class_t *
 **
 *****************************************************************************/
 
xcb_input_event_class_t *
xcb_input_get_device_dont_propagate_list_classes (const xcb_input_get_device_dont_propagate_list_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_input_get_device_dont_propagate_list_classes_length
 ** 
 ** @param const xcb_input_get_device_dont_propagate_list_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_input_get_device_dont_propagate_list_classes_length (const xcb_input_get_device_dont_propagate_list_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_input_get_device_dont_propagate_list_classes_end
 ** 
 ** @param const xcb_input_get_device_dont_propagate_list_reply_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_input_get_device_dont_propagate_list_classes_end (const xcb_input_get_device_dont_propagate_list_reply_t *R  /**< */);

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 * 
 * The parameter @p e supplied to this function must be NULL if
 * xcb_input_get_device_dont_propagate_list_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */

/*****************************************************************************
 **
 ** xcb_input_get_device_dont_propagate_list_reply_t * xcb_input_get_device_dont_propagate_list_reply
 ** 
 ** @param xcb_connection_t                                   *c
 ** @param xcb_input_get_device_dont_propagate_list_cookie_t   cookie
 ** @param xcb_generic_error_t                               **e
 ** @returns xcb_input_get_device_dont_propagate_list_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_input_get_device_dont_propagate_list_reply_t *
xcb_input_get_device_dont_propagate_list_reply (xcb_connection_t                                   *c  /**< */,
                                                xcb_input_get_device_dont_propagate_list_cookie_t   cookie  /**< */,
                                                xcb_generic_error_t                               **e  /**< */);

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
 ** xcb_input_get_device_motion_events_cookie_t xcb_input_get_device_motion_events
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_timestamp_t   start
 ** @param xcb_timestamp_t   stop
 ** @param ubyte             device_id
 ** @returns xcb_input_get_device_motion_events_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_input_get_device_motion_events_cookie_t
xcb_input_get_device_motion_events (xcb_connection_t *c  /**< */,
                                    xcb_timestamp_t   start  /**< */,
                                    xcb_timestamp_t   stop  /**< */,
                                    ubyte             device_id  /**< */);

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
 ** xcb_input_get_device_motion_events_cookie_t xcb_input_get_device_motion_events_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_timestamp_t   start
 ** @param xcb_timestamp_t   stop
 ** @param ubyte             device_id
 ** @returns xcb_input_get_device_motion_events_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_input_get_device_motion_events_cookie_t
xcb_input_get_device_motion_events_unchecked (xcb_connection_t *c  /**< */,
                                              xcb_timestamp_t   start  /**< */,
                                              xcb_timestamp_t   stop  /**< */,
                                              ubyte             device_id  /**< */);

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 * 
 * The parameter @p e supplied to this function must be NULL if
 * xcb_input_get_device_motion_events_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */

/*****************************************************************************
 **
 ** xcb_input_get_device_motion_events_reply_t * xcb_input_get_device_motion_events_reply
 ** 
 ** @param xcb_connection_t                             *c
 ** @param xcb_input_get_device_motion_events_cookie_t   cookie
 ** @param xcb_generic_error_t                         **e
 ** @returns xcb_input_get_device_motion_events_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_input_get_device_motion_events_reply_t *
xcb_input_get_device_motion_events_reply (xcb_connection_t                             *c  /**< */,
                                          xcb_input_get_device_motion_events_cookie_t   cookie  /**< */,
                                          xcb_generic_error_t                         **e  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_input_device_time_coord_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_input_device_time_coord_t)
 */

/*****************************************************************************
 **
 ** void xcb_input_device_time_coord_next
 ** 
 ** @param xcb_input_device_time_coord_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_input_device_time_coord_next (xcb_input_device_time_coord_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_input_device_time_coord_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_input_device_time_coord_end
 ** 
 ** @param xcb_input_device_time_coord_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
xcb_generic_iterator_t
xcb_input_device_time_coord_end (xcb_input_device_time_coord_iterator_t i  /**< */);

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
 ** xcb_input_change_keyboard_device_cookie_t xcb_input_change_keyboard_device
 ** 
 ** @param xcb_connection_t *c
 ** @param ubyte             device_id
 ** @returns xcb_input_change_keyboard_device_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_input_change_keyboard_device_cookie_t
xcb_input_change_keyboard_device (xcb_connection_t *c  /**< */,
                                  ubyte             device_id  /**< */);

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
 ** xcb_input_change_keyboard_device_cookie_t xcb_input_change_keyboard_device_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @param ubyte             device_id
 ** @returns xcb_input_change_keyboard_device_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_input_change_keyboard_device_cookie_t
xcb_input_change_keyboard_device_unchecked (xcb_connection_t *c  /**< */,
                                            ubyte             device_id  /**< */);

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 * 
 * The parameter @p e supplied to this function must be NULL if
 * xcb_input_change_keyboard_device_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */

/*****************************************************************************
 **
 ** xcb_input_change_keyboard_device_reply_t * xcb_input_change_keyboard_device_reply
 ** 
 ** @param xcb_connection_t                           *c
 ** @param xcb_input_change_keyboard_device_cookie_t   cookie
 ** @param xcb_generic_error_t                       **e
 ** @returns xcb_input_change_keyboard_device_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_input_change_keyboard_device_reply_t *
xcb_input_change_keyboard_device_reply (xcb_connection_t                           *c  /**< */,
                                        xcb_input_change_keyboard_device_cookie_t   cookie  /**< */,
                                        xcb_generic_error_t                       **e  /**< */);

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
 ** xcb_input_change_pointer_device_cookie_t xcb_input_change_pointer_device
 ** 
 ** @param xcb_connection_t *c
 ** @param ubyte             x_axis
 ** @param ubyte             y_axis
 ** @param ubyte             device_id
 ** @returns xcb_input_change_pointer_device_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_input_change_pointer_device_cookie_t
xcb_input_change_pointer_device (xcb_connection_t *c  /**< */,
                                 ubyte             x_axis  /**< */,
                                 ubyte             y_axis  /**< */,
                                 ubyte             device_id  /**< */);

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
 ** xcb_input_change_pointer_device_cookie_t xcb_input_change_pointer_device_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @param ubyte             x_axis
 ** @param ubyte             y_axis
 ** @param ubyte             device_id
 ** @returns xcb_input_change_pointer_device_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_input_change_pointer_device_cookie_t
xcb_input_change_pointer_device_unchecked (xcb_connection_t *c  /**< */,
                                           ubyte             x_axis  /**< */,
                                           ubyte             y_axis  /**< */,
                                           ubyte             device_id  /**< */);

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 * 
 * The parameter @p e supplied to this function must be NULL if
 * xcb_input_change_pointer_device_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */

/*****************************************************************************
 **
 ** xcb_input_change_pointer_device_reply_t * xcb_input_change_pointer_device_reply
 ** 
 ** @param xcb_connection_t                          *c
 ** @param xcb_input_change_pointer_device_cookie_t   cookie
 ** @param xcb_generic_error_t                      **e
 ** @returns xcb_input_change_pointer_device_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_input_change_pointer_device_reply_t *
xcb_input_change_pointer_device_reply (xcb_connection_t                          *c  /**< */,
                                       xcb_input_change_pointer_device_cookie_t   cookie  /**< */,
                                       xcb_generic_error_t                      **e  /**< */);

extern(C) int
xcb_input_grab_device_sizeof (const void  *_buffer  /**< */);

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
 ** xcb_input_grab_device_cookie_t xcb_input_grab_device
 ** 
 ** @param xcb_connection_t              *c
 ** @param xcb_window_t                   grab_window
 ** @param xcb_timestamp_t                time
 ** @param ushort                         num_classes
 ** @param ubyte                          this_device_mode
 ** @param ubyte                          other_device_mode
 ** @param ubyte                          owner_events
 ** @param ubyte                          device_id
 ** @param const xcb_input_event_class_t *classes
 ** @returns xcb_input_grab_device_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_input_grab_device_cookie_t
xcb_input_grab_device (xcb_connection_t              *c  /**< */,
                       xcb_window_t                   grab_window  /**< */,
                       xcb_timestamp_t                time  /**< */,
                       ushort                         num_classes  /**< */,
                       ubyte                          this_device_mode  /**< */,
                       ubyte                          other_device_mode  /**< */,
                       ubyte                          owner_events  /**< */,
                       ubyte                          device_id  /**< */,
                       const xcb_input_event_class_t *classes  /**< */);

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
 ** xcb_input_grab_device_cookie_t xcb_input_grab_device_unchecked
 ** 
 ** @param xcb_connection_t              *c
 ** @param xcb_window_t                   grab_window
 ** @param xcb_timestamp_t                time
 ** @param ushort                         num_classes
 ** @param ubyte                          this_device_mode
 ** @param ubyte                          other_device_mode
 ** @param ubyte                          owner_events
 ** @param ubyte                          device_id
 ** @param const xcb_input_event_class_t *classes
 ** @returns xcb_input_grab_device_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_input_grab_device_cookie_t
xcb_input_grab_device_unchecked (xcb_connection_t              *c  /**< */,
                                 xcb_window_t                   grab_window  /**< */,
                                 xcb_timestamp_t                time  /**< */,
                                 ushort                         num_classes  /**< */,
                                 ubyte                          this_device_mode  /**< */,
                                 ubyte                          other_device_mode  /**< */,
                                 ubyte                          owner_events  /**< */,
                                 ubyte                          device_id  /**< */,
                                 const xcb_input_event_class_t *classes  /**< */);

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 * 
 * The parameter @p e supplied to this function must be NULL if
 * xcb_input_grab_device_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */

/*****************************************************************************
 **
 ** xcb_input_grab_device_reply_t * xcb_input_grab_device_reply
 ** 
 ** @param xcb_connection_t                *c
 ** @param xcb_input_grab_device_cookie_t   cookie
 ** @param xcb_generic_error_t            **e
 ** @returns xcb_input_grab_device_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_input_grab_device_reply_t *
xcb_input_grab_device_reply (xcb_connection_t                *c  /**< */,
                             xcb_input_grab_device_cookie_t   cookie  /**< */,
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
 ** xcb_void_cookie_t xcb_input_ungrab_device_checked
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_timestamp_t   time
 ** @param ubyte             device_id
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_input_ungrab_device_checked (xcb_connection_t *c  /**< */,
                                 xcb_timestamp_t   time  /**< */,
                                 ubyte             device_id  /**< */);

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
 ** xcb_void_cookie_t xcb_input_ungrab_device
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_timestamp_t   time
 ** @param ubyte             device_id
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_input_ungrab_device (xcb_connection_t *c  /**< */,
                         xcb_timestamp_t   time  /**< */,
                         ubyte             device_id  /**< */);

extern(C) int
xcb_input_grab_device_key_sizeof (const void  *_buffer  /**< */);

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
 ** xcb_void_cookie_t xcb_input_grab_device_key_checked
 ** 
 ** @param xcb_connection_t              *c
 ** @param xcb_window_t                   grab_window
 ** @param ushort                         num_classes
 ** @param ushort                         modifiers
 ** @param ubyte                          modifier_device
 ** @param ubyte                          grabbed_device
 ** @param ubyte                          key
 ** @param ubyte                          this_device_mode
 ** @param ubyte                          other_device_mode
 ** @param ubyte                          owner_events
 ** @param const xcb_input_event_class_t *classes
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_input_grab_device_key_checked (xcb_connection_t              *c  /**< */,
                                   xcb_window_t                   grab_window  /**< */,
                                   ushort                         num_classes  /**< */,
                                   ushort                         modifiers  /**< */,
                                   ubyte                          modifier_device  /**< */,
                                   ubyte                          grabbed_device  /**< */,
                                   ubyte                          key  /**< */,
                                   ubyte                          this_device_mode  /**< */,
                                   ubyte                          other_device_mode  /**< */,
                                   ubyte                          owner_events  /**< */,
                                   const xcb_input_event_class_t *classes  /**< */);

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
 ** xcb_void_cookie_t xcb_input_grab_device_key
 ** 
 ** @param xcb_connection_t              *c
 ** @param xcb_window_t                   grab_window
 ** @param ushort                         num_classes
 ** @param ushort                         modifiers
 ** @param ubyte                          modifier_device
 ** @param ubyte                          grabbed_device
 ** @param ubyte                          key
 ** @param ubyte                          this_device_mode
 ** @param ubyte                          other_device_mode
 ** @param ubyte                          owner_events
 ** @param const xcb_input_event_class_t *classes
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_input_grab_device_key (xcb_connection_t              *c  /**< */,
                           xcb_window_t                   grab_window  /**< */,
                           ushort                         num_classes  /**< */,
                           ushort                         modifiers  /**< */,
                           ubyte                          modifier_device  /**< */,
                           ubyte                          grabbed_device  /**< */,
                           ubyte                          key  /**< */,
                           ubyte                          this_device_mode  /**< */,
                           ubyte                          other_device_mode  /**< */,
                           ubyte                          owner_events  /**< */,
                           const xcb_input_event_class_t *classes  /**< */);

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
 ** xcb_void_cookie_t xcb_input_ungrab_device_key_checked
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_window_t      grabWindow
 ** @param ushort            modifiers
 ** @param ubyte             modifier_device
 ** @param ubyte             key
 ** @param ubyte             grabbed_device
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_input_ungrab_device_key_checked (xcb_connection_t *c  /**< */,
                                     xcb_window_t      grabWindow  /**< */,
                                     ushort            modifiers  /**< */,
                                     ubyte             modifier_device  /**< */,
                                     ubyte             key  /**< */,
                                     ubyte             grabbed_device  /**< */);

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
 ** xcb_void_cookie_t xcb_input_ungrab_device_key
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_window_t      grabWindow
 ** @param ushort            modifiers
 ** @param ubyte             modifier_device
 ** @param ubyte             key
 ** @param ubyte             grabbed_device
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_input_ungrab_device_key (xcb_connection_t *c  /**< */,
                             xcb_window_t      grabWindow  /**< */,
                             ushort            modifiers  /**< */,
                             ubyte             modifier_device  /**< */,
                             ubyte             key  /**< */,
                             ubyte             grabbed_device  /**< */);

extern(C) int
xcb_input_grab_device_button_sizeof (const void  *_buffer  /**< */);

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
 ** xcb_void_cookie_t xcb_input_grab_device_button_checked
 ** 
 ** @param xcb_connection_t              *c
 ** @param xcb_window_t                   grab_window
 ** @param ubyte                          grabbed_device
 ** @param ubyte                          modifier_device
 ** @param ushort                         num_classes
 ** @param ushort                         modifiers
 ** @param ubyte                          this_device_mode
 ** @param ubyte                          other_device_mode
 ** @param ubyte                          button
 ** @param ubyte                          owner_events
 ** @param const xcb_input_event_class_t *classes
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_input_grab_device_button_checked (xcb_connection_t              *c  /**< */,
                                      xcb_window_t                   grab_window  /**< */,
                                      ubyte                          grabbed_device  /**< */,
                                      ubyte                          modifier_device  /**< */,
                                      ushort                         num_classes  /**< */,
                                      ushort                         modifiers  /**< */,
                                      ubyte                          this_device_mode  /**< */,
                                      ubyte                          other_device_mode  /**< */,
                                      ubyte                          button  /**< */,
                                      ubyte                          owner_events  /**< */,
                                      const xcb_input_event_class_t *classes  /**< */);

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
 ** xcb_void_cookie_t xcb_input_grab_device_button
 ** 
 ** @param xcb_connection_t              *c
 ** @param xcb_window_t                   grab_window
 ** @param ubyte                          grabbed_device
 ** @param ubyte                          modifier_device
 ** @param ushort                         num_classes
 ** @param ushort                         modifiers
 ** @param ubyte                          this_device_mode
 ** @param ubyte                          other_device_mode
 ** @param ubyte                          button
 ** @param ubyte                          owner_events
 ** @param const xcb_input_event_class_t *classes
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_input_grab_device_button (xcb_connection_t              *c  /**< */,
                              xcb_window_t                   grab_window  /**< */,
                              ubyte                          grabbed_device  /**< */,
                              ubyte                          modifier_device  /**< */,
                              ushort                         num_classes  /**< */,
                              ushort                         modifiers  /**< */,
                              ubyte                          this_device_mode  /**< */,
                              ubyte                          other_device_mode  /**< */,
                              ubyte                          button  /**< */,
                              ubyte                          owner_events  /**< */,
                              const xcb_input_event_class_t *classes  /**< */);

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
 ** xcb_void_cookie_t xcb_input_ungrab_device_button_checked
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_window_t      grab_window
 ** @param ushort            modifiers
 ** @param ubyte             modifier_device
 ** @param ubyte             button
 ** @param ubyte             grabbed_device
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_input_ungrab_device_button_checked (xcb_connection_t *c  /**< */,
                                        xcb_window_t      grab_window  /**< */,
                                        ushort            modifiers  /**< */,
                                        ubyte             modifier_device  /**< */,
                                        ubyte             button  /**< */,
                                        ubyte             grabbed_device  /**< */);

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
 ** xcb_void_cookie_t xcb_input_ungrab_device_button
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_window_t      grab_window
 ** @param ushort            modifiers
 ** @param ubyte             modifier_device
 ** @param ubyte             button
 ** @param ubyte             grabbed_device
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_input_ungrab_device_button (xcb_connection_t *c  /**< */,
                                xcb_window_t      grab_window  /**< */,
                                ushort            modifiers  /**< */,
                                ubyte             modifier_device  /**< */,
                                ubyte             button  /**< */,
                                ubyte             grabbed_device  /**< */);

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
 ** xcb_void_cookie_t xcb_input_allow_device_events_checked
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_timestamp_t   time
 ** @param ubyte             mode
 ** @param ubyte             device_id
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_input_allow_device_events_checked (xcb_connection_t *c  /**< */,
                                       xcb_timestamp_t   time  /**< */,
                                       ubyte             mode  /**< */,
                                       ubyte             device_id  /**< */);

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
 ** xcb_void_cookie_t xcb_input_allow_device_events
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_timestamp_t   time
 ** @param ubyte             mode
 ** @param ubyte             device_id
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_input_allow_device_events (xcb_connection_t *c  /**< */,
                               xcb_timestamp_t   time  /**< */,
                               ubyte             mode  /**< */,
                               ubyte             device_id  /**< */);

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
 ** xcb_input_get_device_focus_cookie_t xcb_input_get_device_focus
 ** 
 ** @param xcb_connection_t *c
 ** @param ubyte             device_id
 ** @returns xcb_input_get_device_focus_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_input_get_device_focus_cookie_t
xcb_input_get_device_focus (xcb_connection_t *c  /**< */,
                            ubyte             device_id  /**< */);

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
 ** xcb_input_get_device_focus_cookie_t xcb_input_get_device_focus_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @param ubyte             device_id
 ** @returns xcb_input_get_device_focus_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_input_get_device_focus_cookie_t
xcb_input_get_device_focus_unchecked (xcb_connection_t *c  /**< */,
                                      ubyte             device_id  /**< */);

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 * 
 * The parameter @p e supplied to this function must be NULL if
 * xcb_input_get_device_focus_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */

/*****************************************************************************
 **
 ** xcb_input_get_device_focus_reply_t * xcb_input_get_device_focus_reply
 ** 
 ** @param xcb_connection_t                     *c
 ** @param xcb_input_get_device_focus_cookie_t   cookie
 ** @param xcb_generic_error_t                 **e
 ** @returns xcb_input_get_device_focus_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_input_get_device_focus_reply_t *
xcb_input_get_device_focus_reply (xcb_connection_t                     *c  /**< */,
                                  xcb_input_get_device_focus_cookie_t   cookie  /**< */,
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
 ** xcb_void_cookie_t xcb_input_set_device_focus_checked
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_window_t      focus
 ** @param xcb_timestamp_t   time
 ** @param ubyte             revert_to
 ** @param ubyte             device_id
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_input_set_device_focus_checked (xcb_connection_t *c  /**< */,
                                    xcb_window_t      focus  /**< */,
                                    xcb_timestamp_t   time  /**< */,
                                    ubyte             revert_to  /**< */,
                                    ubyte             device_id  /**< */);

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
 ** xcb_void_cookie_t xcb_input_set_device_focus
 ** 
 ** @param xcb_connection_t *c
 ** @param xcb_window_t      focus
 ** @param xcb_timestamp_t   time
 ** @param ubyte             revert_to
 ** @param ubyte             device_id
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_input_set_device_focus (xcb_connection_t *c  /**< */,
                            xcb_window_t      focus  /**< */,
                            xcb_timestamp_t   time  /**< */,
                            ubyte             revert_to  /**< */,
                            ubyte             device_id  /**< */);

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
 ** xcb_input_get_feedback_control_cookie_t xcb_input_get_feedback_control
 ** 
 ** @param xcb_connection_t *c
 ** @param ubyte             device_id
 ** @returns xcb_input_get_feedback_control_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_input_get_feedback_control_cookie_t
xcb_input_get_feedback_control (xcb_connection_t *c  /**< */,
                                ubyte             device_id  /**< */);

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
 ** xcb_input_get_feedback_control_cookie_t xcb_input_get_feedback_control_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @param ubyte             device_id
 ** @returns xcb_input_get_feedback_control_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_input_get_feedback_control_cookie_t
xcb_input_get_feedback_control_unchecked (xcb_connection_t *c  /**< */,
                                          ubyte             device_id  /**< */);

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 * 
 * The parameter @p e supplied to this function must be NULL if
 * xcb_input_get_feedback_control_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */

/*****************************************************************************
 **
 ** xcb_input_get_feedback_control_reply_t * xcb_input_get_feedback_control_reply
 ** 
 ** @param xcb_connection_t                         *c
 ** @param xcb_input_get_feedback_control_cookie_t   cookie
 ** @param xcb_generic_error_t                     **e
 ** @returns xcb_input_get_feedback_control_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_input_get_feedback_control_reply_t *
xcb_input_get_feedback_control_reply (xcb_connection_t                         *c  /**< */,
                                      xcb_input_get_feedback_control_cookie_t   cookie  /**< */,
                                      xcb_generic_error_t                     **e  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_input_feedback_state_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_input_feedback_state_t)
 */

/*****************************************************************************
 **
 ** void xcb_input_feedback_state_next
 ** 
 ** @param xcb_input_feedback_state_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_input_feedback_state_next (xcb_input_feedback_state_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_input_feedback_state_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_input_feedback_state_end
 ** 
 ** @param xcb_input_feedback_state_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
xcb_generic_iterator_t
xcb_input_feedback_state_end (xcb_input_feedback_state_iterator_t i  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_input_kbd_feedback_state_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_input_kbd_feedback_state_t)
 */

/*****************************************************************************
 **
 ** void xcb_input_kbd_feedback_state_next
 ** 
 ** @param xcb_input_kbd_feedback_state_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_input_kbd_feedback_state_next (xcb_input_kbd_feedback_state_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_input_kbd_feedback_state_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_input_kbd_feedback_state_end
 ** 
 ** @param xcb_input_kbd_feedback_state_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
xcb_generic_iterator_t
xcb_input_kbd_feedback_state_end (xcb_input_kbd_feedback_state_iterator_t i  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_input_ptr_feedback_state_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_input_ptr_feedback_state_t)
 */

/*****************************************************************************
 **
 ** void xcb_input_ptr_feedback_state_next
 ** 
 ** @param xcb_input_ptr_feedback_state_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_input_ptr_feedback_state_next (xcb_input_ptr_feedback_state_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_input_ptr_feedback_state_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_input_ptr_feedback_state_end
 ** 
 ** @param xcb_input_ptr_feedback_state_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
xcb_generic_iterator_t
xcb_input_ptr_feedback_state_end (xcb_input_ptr_feedback_state_iterator_t i  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_input_integer_feedback_state_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_input_integer_feedback_state_t)
 */

/*****************************************************************************
 **
 ** void xcb_input_integer_feedback_state_next
 ** 
 ** @param xcb_input_integer_feedback_state_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_input_integer_feedback_state_next (xcb_input_integer_feedback_state_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_input_integer_feedback_state_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_input_integer_feedback_state_end
 ** 
 ** @param xcb_input_integer_feedback_state_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
xcb_generic_iterator_t
xcb_input_integer_feedback_state_end (xcb_input_integer_feedback_state_iterator_t i  /**< */);

extern(C) int
xcb_input_string_feedback_state_sizeof (const void  *_buffer  /**< */);


/*****************************************************************************
 **
 ** xcb_keysym_t * xcb_input_string_feedback_state_keysyms
 ** 
 ** @param const xcb_input_string_feedback_state_t *R
 ** @returns xcb_keysym_t *
 **
 *****************************************************************************/
 
xcb_keysym_t *
xcb_input_string_feedback_state_keysyms (const xcb_input_string_feedback_state_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_input_string_feedback_state_keysyms_length
 ** 
 ** @param const xcb_input_string_feedback_state_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_input_string_feedback_state_keysyms_length (const xcb_input_string_feedback_state_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_input_string_feedback_state_keysyms_end
 ** 
 ** @param const xcb_input_string_feedback_state_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_input_string_feedback_state_keysyms_end (const xcb_input_string_feedback_state_t *R  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_input_string_feedback_state_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_input_string_feedback_state_t)
 */

/*****************************************************************************
 **
 ** void xcb_input_string_feedback_state_next
 ** 
 ** @param xcb_input_string_feedback_state_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_input_string_feedback_state_next (xcb_input_string_feedback_state_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_input_string_feedback_state_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_input_string_feedback_state_end
 ** 
 ** @param xcb_input_string_feedback_state_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
xcb_generic_iterator_t
xcb_input_string_feedback_state_end (xcb_input_string_feedback_state_iterator_t i  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_input_bell_feedback_state_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_input_bell_feedback_state_t)
 */

/*****************************************************************************
 **
 ** void xcb_input_bell_feedback_state_next
 ** 
 ** @param xcb_input_bell_feedback_state_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_input_bell_feedback_state_next (xcb_input_bell_feedback_state_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_input_bell_feedback_state_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_input_bell_feedback_state_end
 ** 
 ** @param xcb_input_bell_feedback_state_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
xcb_generic_iterator_t
xcb_input_bell_feedback_state_end (xcb_input_bell_feedback_state_iterator_t i  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_input_led_feedback_state_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_input_led_feedback_state_t)
 */

/*****************************************************************************
 **
 ** void xcb_input_led_feedback_state_next
 ** 
 ** @param xcb_input_led_feedback_state_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_input_led_feedback_state_next (xcb_input_led_feedback_state_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_input_led_feedback_state_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_input_led_feedback_state_end
 ** 
 ** @param xcb_input_led_feedback_state_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
xcb_generic_iterator_t
xcb_input_led_feedback_state_end (xcb_input_led_feedback_state_iterator_t i  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_input_feedback_ctl_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_input_feedback_ctl_t)
 */

/*****************************************************************************
 **
 ** void xcb_input_feedback_ctl_next
 ** 
 ** @param xcb_input_feedback_ctl_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_input_feedback_ctl_next (xcb_input_feedback_ctl_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_input_feedback_ctl_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_input_feedback_ctl_end
 ** 
 ** @param xcb_input_feedback_ctl_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
xcb_generic_iterator_t
xcb_input_feedback_ctl_end (xcb_input_feedback_ctl_iterator_t i  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_input_kbd_feedback_ctl_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_input_kbd_feedback_ctl_t)
 */

/*****************************************************************************
 **
 ** void xcb_input_kbd_feedback_ctl_next
 ** 
 ** @param xcb_input_kbd_feedback_ctl_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_input_kbd_feedback_ctl_next (xcb_input_kbd_feedback_ctl_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_input_kbd_feedback_ctl_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_input_kbd_feedback_ctl_end
 ** 
 ** @param xcb_input_kbd_feedback_ctl_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
xcb_generic_iterator_t
xcb_input_kbd_feedback_ctl_end (xcb_input_kbd_feedback_ctl_iterator_t i  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_input_ptr_feedback_ctl_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_input_ptr_feedback_ctl_t)
 */

/*****************************************************************************
 **
 ** void xcb_input_ptr_feedback_ctl_next
 ** 
 ** @param xcb_input_ptr_feedback_ctl_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_input_ptr_feedback_ctl_next (xcb_input_ptr_feedback_ctl_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_input_ptr_feedback_ctl_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_input_ptr_feedback_ctl_end
 ** 
 ** @param xcb_input_ptr_feedback_ctl_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
xcb_generic_iterator_t
xcb_input_ptr_feedback_ctl_end (xcb_input_ptr_feedback_ctl_iterator_t i  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_input_integer_feedback_ctl_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_input_integer_feedback_ctl_t)
 */

/*****************************************************************************
 **
 ** void xcb_input_integer_feedback_ctl_next
 ** 
 ** @param xcb_input_integer_feedback_ctl_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_input_integer_feedback_ctl_next (xcb_input_integer_feedback_ctl_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_input_integer_feedback_ctl_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_input_integer_feedback_ctl_end
 ** 
 ** @param xcb_input_integer_feedback_ctl_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
xcb_generic_iterator_t
xcb_input_integer_feedback_ctl_end (xcb_input_integer_feedback_ctl_iterator_t i  /**< */);

extern(C) int
xcb_input_string_feedback_ctl_sizeof (const void  *_buffer  /**< */);


/*****************************************************************************
 **
 ** xcb_keysym_t * xcb_input_string_feedback_ctl_keysyms
 ** 
 ** @param const xcb_input_string_feedback_ctl_t *R
 ** @returns xcb_keysym_t *
 **
 *****************************************************************************/
 
xcb_keysym_t *
xcb_input_string_feedback_ctl_keysyms (const xcb_input_string_feedback_ctl_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_input_string_feedback_ctl_keysyms_length
 ** 
 ** @param const xcb_input_string_feedback_ctl_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_input_string_feedback_ctl_keysyms_length (const xcb_input_string_feedback_ctl_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_input_string_feedback_ctl_keysyms_end
 ** 
 ** @param const xcb_input_string_feedback_ctl_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_input_string_feedback_ctl_keysyms_end (const xcb_input_string_feedback_ctl_t *R  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_input_string_feedback_ctl_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_input_string_feedback_ctl_t)
 */

/*****************************************************************************
 **
 ** void xcb_input_string_feedback_ctl_next
 ** 
 ** @param xcb_input_string_feedback_ctl_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_input_string_feedback_ctl_next (xcb_input_string_feedback_ctl_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_input_string_feedback_ctl_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_input_string_feedback_ctl_end
 ** 
 ** @param xcb_input_string_feedback_ctl_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
xcb_generic_iterator_t
xcb_input_string_feedback_ctl_end (xcb_input_string_feedback_ctl_iterator_t i  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_input_bell_feedback_ctl_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_input_bell_feedback_ctl_t)
 */

/*****************************************************************************
 **
 ** void xcb_input_bell_feedback_ctl_next
 ** 
 ** @param xcb_input_bell_feedback_ctl_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_input_bell_feedback_ctl_next (xcb_input_bell_feedback_ctl_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_input_bell_feedback_ctl_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_input_bell_feedback_ctl_end
 ** 
 ** @param xcb_input_bell_feedback_ctl_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
xcb_generic_iterator_t
xcb_input_bell_feedback_ctl_end (xcb_input_bell_feedback_ctl_iterator_t i  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_input_led_feedback_ctl_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_input_led_feedback_ctl_t)
 */

/*****************************************************************************
 **
 ** void xcb_input_led_feedback_ctl_next
 ** 
 ** @param xcb_input_led_feedback_ctl_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_input_led_feedback_ctl_next (xcb_input_led_feedback_ctl_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_input_led_feedback_ctl_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_input_led_feedback_ctl_end
 ** 
 ** @param xcb_input_led_feedback_ctl_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
xcb_generic_iterator_t
xcb_input_led_feedback_ctl_end (xcb_input_led_feedback_ctl_iterator_t i  /**< */);

extern(C) int
xcb_input_get_device_key_mapping_sizeof (const void  *_buffer  /**< */);

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
 ** xcb_input_get_device_key_mapping_cookie_t xcb_input_get_device_key_mapping
 ** 
 ** @param xcb_connection_t     *c
 ** @param ubyte                 device_id
 ** @param xcb_input_key_code_t  first_keycode
 ** @param ubyte                 count
 ** @returns xcb_input_get_device_key_mapping_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_input_get_device_key_mapping_cookie_t
xcb_input_get_device_key_mapping (xcb_connection_t     *c  /**< */,
                                  ubyte                 device_id  /**< */,
                                  xcb_input_key_code_t  first_keycode  /**< */,
                                  ubyte                 count  /**< */);

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
 ** xcb_input_get_device_key_mapping_cookie_t xcb_input_get_device_key_mapping_unchecked
 ** 
 ** @param xcb_connection_t     *c
 ** @param ubyte                 device_id
 ** @param xcb_input_key_code_t  first_keycode
 ** @param ubyte                 count
 ** @returns xcb_input_get_device_key_mapping_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_input_get_device_key_mapping_cookie_t
xcb_input_get_device_key_mapping_unchecked (xcb_connection_t     *c  /**< */,
                                            ubyte                 device_id  /**< */,
                                            xcb_input_key_code_t  first_keycode  /**< */,
                                            ubyte                 count  /**< */);


/*****************************************************************************
 **
 ** xcb_keysym_t * xcb_input_get_device_key_mapping_keysyms
 ** 
 ** @param const xcb_input_get_device_key_mapping_reply_t *R
 ** @returns xcb_keysym_t *
 **
 *****************************************************************************/
 
xcb_keysym_t *
xcb_input_get_device_key_mapping_keysyms (const xcb_input_get_device_key_mapping_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_input_get_device_key_mapping_keysyms_length
 ** 
 ** @param const xcb_input_get_device_key_mapping_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_input_get_device_key_mapping_keysyms_length (const xcb_input_get_device_key_mapping_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_input_get_device_key_mapping_keysyms_end
 ** 
 ** @param const xcb_input_get_device_key_mapping_reply_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_input_get_device_key_mapping_keysyms_end (const xcb_input_get_device_key_mapping_reply_t *R  /**< */);

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 * 
 * The parameter @p e supplied to this function must be NULL if
 * xcb_input_get_device_key_mapping_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */

/*****************************************************************************
 **
 ** xcb_input_get_device_key_mapping_reply_t * xcb_input_get_device_key_mapping_reply
 ** 
 ** @param xcb_connection_t                           *c
 ** @param xcb_input_get_device_key_mapping_cookie_t   cookie
 ** @param xcb_generic_error_t                       **e
 ** @returns xcb_input_get_device_key_mapping_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_input_get_device_key_mapping_reply_t *
xcb_input_get_device_key_mapping_reply (xcb_connection_t                           *c  /**< */,
                                        xcb_input_get_device_key_mapping_cookie_t   cookie  /**< */,
                                        xcb_generic_error_t                       **e  /**< */);

extern(C) int
xcb_input_change_device_key_mapping_sizeof (const void  *_buffer  /**< */);

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
 ** xcb_void_cookie_t xcb_input_change_device_key_mapping_checked
 ** 
 ** @param xcb_connection_t     *c
 ** @param ubyte                 device_id
 ** @param xcb_input_key_code_t  first_keycode
 ** @param ubyte                 keysyms_per_keycode
 ** @param ubyte                 keycode_count
 ** @param const xcb_keysym_t   *keysyms
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_input_change_device_key_mapping_checked (xcb_connection_t     *c  /**< */,
                                             ubyte                 device_id  /**< */,
                                             xcb_input_key_code_t  first_keycode  /**< */,
                                             ubyte                 keysyms_per_keycode  /**< */,
                                             ubyte                 keycode_count  /**< */,
                                             const xcb_keysym_t   *keysyms  /**< */);

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
 ** xcb_void_cookie_t xcb_input_change_device_key_mapping
 ** 
 ** @param xcb_connection_t     *c
 ** @param ubyte                 device_id
 ** @param xcb_input_key_code_t  first_keycode
 ** @param ubyte                 keysyms_per_keycode
 ** @param ubyte                 keycode_count
 ** @param const xcb_keysym_t   *keysyms
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_input_change_device_key_mapping (xcb_connection_t     *c  /**< */,
                                     ubyte                 device_id  /**< */,
                                     xcb_input_key_code_t  first_keycode  /**< */,
                                     ubyte                 keysyms_per_keycode  /**< */,
                                     ubyte                 keycode_count  /**< */,
                                     const xcb_keysym_t   *keysyms  /**< */);

extern(C) int
xcb_input_get_device_modifier_mapping_sizeof (const void  *_buffer  /**< */);

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
 ** xcb_input_get_device_modifier_mapping_cookie_t xcb_input_get_device_modifier_mapping
 ** 
 ** @param xcb_connection_t *c
 ** @param ubyte             device_id
 ** @returns xcb_input_get_device_modifier_mapping_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_input_get_device_modifier_mapping_cookie_t
xcb_input_get_device_modifier_mapping (xcb_connection_t *c  /**< */,
                                       ubyte             device_id  /**< */);

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
 ** xcb_input_get_device_modifier_mapping_cookie_t xcb_input_get_device_modifier_mapping_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @param ubyte             device_id
 ** @returns xcb_input_get_device_modifier_mapping_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_input_get_device_modifier_mapping_cookie_t
xcb_input_get_device_modifier_mapping_unchecked (xcb_connection_t *c  /**< */,
                                                 ubyte             device_id  /**< */);


/*****************************************************************************
 **
 ** ubyte * xcb_input_get_device_modifier_mapping_keymaps
 ** 
 ** @param const xcb_input_get_device_modifier_mapping_reply_t *R
 ** @returns ubyte *
 **
 *****************************************************************************/
 
ubyte *
xcb_input_get_device_modifier_mapping_keymaps (const xcb_input_get_device_modifier_mapping_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_input_get_device_modifier_mapping_keymaps_length
 ** 
 ** @param const xcb_input_get_device_modifier_mapping_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_input_get_device_modifier_mapping_keymaps_length (const xcb_input_get_device_modifier_mapping_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_input_get_device_modifier_mapping_keymaps_end
 ** 
 ** @param const xcb_input_get_device_modifier_mapping_reply_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_input_get_device_modifier_mapping_keymaps_end (const xcb_input_get_device_modifier_mapping_reply_t *R  /**< */);

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 * 
 * The parameter @p e supplied to this function must be NULL if
 * xcb_input_get_device_modifier_mapping_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */

/*****************************************************************************
 **
 ** xcb_input_get_device_modifier_mapping_reply_t * xcb_input_get_device_modifier_mapping_reply
 ** 
 ** @param xcb_connection_t                                *c
 ** @param xcb_input_get_device_modifier_mapping_cookie_t   cookie
 ** @param xcb_generic_error_t                            **e
 ** @returns xcb_input_get_device_modifier_mapping_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_input_get_device_modifier_mapping_reply_t *
xcb_input_get_device_modifier_mapping_reply (xcb_connection_t                                *c  /**< */,
                                             xcb_input_get_device_modifier_mapping_cookie_t   cookie  /**< */,
                                             xcb_generic_error_t                            **e  /**< */);

extern(C) int
xcb_input_set_device_modifier_mapping_sizeof (const void  *_buffer  /**< */);

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
 ** xcb_input_set_device_modifier_mapping_cookie_t xcb_input_set_device_modifier_mapping
 ** 
 ** @param xcb_connection_t *c
 ** @param ubyte             device_id
 ** @param ubyte             keycodes_per_modifier
 ** @param const ubyte      *keymaps
 ** @returns xcb_input_set_device_modifier_mapping_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_input_set_device_modifier_mapping_cookie_t
xcb_input_set_device_modifier_mapping (xcb_connection_t *c  /**< */,
                                       ubyte             device_id  /**< */,
                                       ubyte             keycodes_per_modifier  /**< */,
                                       const ubyte      *keymaps  /**< */);

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
 ** xcb_input_set_device_modifier_mapping_cookie_t xcb_input_set_device_modifier_mapping_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @param ubyte             device_id
 ** @param ubyte             keycodes_per_modifier
 ** @param const ubyte      *keymaps
 ** @returns xcb_input_set_device_modifier_mapping_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_input_set_device_modifier_mapping_cookie_t
xcb_input_set_device_modifier_mapping_unchecked (xcb_connection_t *c  /**< */,
                                                 ubyte             device_id  /**< */,
                                                 ubyte             keycodes_per_modifier  /**< */,
                                                 const ubyte      *keymaps  /**< */);

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 * 
 * The parameter @p e supplied to this function must be NULL if
 * xcb_input_set_device_modifier_mapping_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */

/*****************************************************************************
 **
 ** xcb_input_set_device_modifier_mapping_reply_t * xcb_input_set_device_modifier_mapping_reply
 ** 
 ** @param xcb_connection_t                                *c
 ** @param xcb_input_set_device_modifier_mapping_cookie_t   cookie
 ** @param xcb_generic_error_t                            **e
 ** @returns xcb_input_set_device_modifier_mapping_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_input_set_device_modifier_mapping_reply_t *
xcb_input_set_device_modifier_mapping_reply (xcb_connection_t                                *c  /**< */,
                                             xcb_input_set_device_modifier_mapping_cookie_t   cookie  /**< */,
                                             xcb_generic_error_t                            **e  /**< */);

extern(C) int
xcb_input_get_device_button_mapping_sizeof (const void  *_buffer  /**< */);

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
 ** xcb_input_get_device_button_mapping_cookie_t xcb_input_get_device_button_mapping
 ** 
 ** @param xcb_connection_t *c
 ** @param ubyte             device_id
 ** @returns xcb_input_get_device_button_mapping_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_input_get_device_button_mapping_cookie_t
xcb_input_get_device_button_mapping (xcb_connection_t *c  /**< */,
                                     ubyte             device_id  /**< */);

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
 ** xcb_input_get_device_button_mapping_cookie_t xcb_input_get_device_button_mapping_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @param ubyte             device_id
 ** @returns xcb_input_get_device_button_mapping_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_input_get_device_button_mapping_cookie_t
xcb_input_get_device_button_mapping_unchecked (xcb_connection_t *c  /**< */,
                                               ubyte             device_id  /**< */);


/*****************************************************************************
 **
 ** ubyte * xcb_input_get_device_button_mapping_map
 ** 
 ** @param const xcb_input_get_device_button_mapping_reply_t *R
 ** @returns ubyte *
 **
 *****************************************************************************/
 
ubyte *
xcb_input_get_device_button_mapping_map (const xcb_input_get_device_button_mapping_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_input_get_device_button_mapping_map_length
 ** 
 ** @param const xcb_input_get_device_button_mapping_reply_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_input_get_device_button_mapping_map_length (const xcb_input_get_device_button_mapping_reply_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_input_get_device_button_mapping_map_end
 ** 
 ** @param const xcb_input_get_device_button_mapping_reply_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_input_get_device_button_mapping_map_end (const xcb_input_get_device_button_mapping_reply_t *R  /**< */);

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 * 
 * The parameter @p e supplied to this function must be NULL if
 * xcb_input_get_device_button_mapping_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */

/*****************************************************************************
 **
 ** xcb_input_get_device_button_mapping_reply_t * xcb_input_get_device_button_mapping_reply
 ** 
 ** @param xcb_connection_t                              *c
 ** @param xcb_input_get_device_button_mapping_cookie_t   cookie
 ** @param xcb_generic_error_t                          **e
 ** @returns xcb_input_get_device_button_mapping_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_input_get_device_button_mapping_reply_t *
xcb_input_get_device_button_mapping_reply (xcb_connection_t                              *c  /**< */,
                                           xcb_input_get_device_button_mapping_cookie_t   cookie  /**< */,
                                           xcb_generic_error_t                          **e  /**< */);

extern(C) int
xcb_input_set_device_button_mapping_sizeof (const void  *_buffer  /**< */);

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
 ** xcb_input_set_device_button_mapping_cookie_t xcb_input_set_device_button_mapping
 ** 
 ** @param xcb_connection_t *c
 ** @param ubyte             device_id
 ** @param ubyte             map_size
 ** @param const ubyte      *map
 ** @returns xcb_input_set_device_button_mapping_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_input_set_device_button_mapping_cookie_t
xcb_input_set_device_button_mapping (xcb_connection_t *c  /**< */,
                                     ubyte             device_id  /**< */,
                                     ubyte             map_size  /**< */,
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
 ** xcb_input_set_device_button_mapping_cookie_t xcb_input_set_device_button_mapping_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @param ubyte             device_id
 ** @param ubyte             map_size
 ** @param const ubyte      *map
 ** @returns xcb_input_set_device_button_mapping_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_input_set_device_button_mapping_cookie_t
xcb_input_set_device_button_mapping_unchecked (xcb_connection_t *c  /**< */,
                                               ubyte             device_id  /**< */,
                                               ubyte             map_size  /**< */,
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
 * xcb_input_set_device_button_mapping_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */

/*****************************************************************************
 **
 ** xcb_input_set_device_button_mapping_reply_t * xcb_input_set_device_button_mapping_reply
 ** 
 ** @param xcb_connection_t                              *c
 ** @param xcb_input_set_device_button_mapping_cookie_t   cookie
 ** @param xcb_generic_error_t                          **e
 ** @returns xcb_input_set_device_button_mapping_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_input_set_device_button_mapping_reply_t *
xcb_input_set_device_button_mapping_reply (xcb_connection_t                              *c  /**< */,
                                           xcb_input_set_device_button_mapping_cookie_t   cookie  /**< */,
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
 ** xcb_input_query_device_state_cookie_t xcb_input_query_device_state
 ** 
 ** @param xcb_connection_t *c
 ** @param ubyte             device_id
 ** @returns xcb_input_query_device_state_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_input_query_device_state_cookie_t
xcb_input_query_device_state (xcb_connection_t *c  /**< */,
                              ubyte             device_id  /**< */);

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
 ** xcb_input_query_device_state_cookie_t xcb_input_query_device_state_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @param ubyte             device_id
 ** @returns xcb_input_query_device_state_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_input_query_device_state_cookie_t
xcb_input_query_device_state_unchecked (xcb_connection_t *c  /**< */,
                                        ubyte             device_id  /**< */);

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 * 
 * The parameter @p e supplied to this function must be NULL if
 * xcb_input_query_device_state_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */

/*****************************************************************************
 **
 ** xcb_input_query_device_state_reply_t * xcb_input_query_device_state_reply
 ** 
 ** @param xcb_connection_t                       *c
 ** @param xcb_input_query_device_state_cookie_t   cookie
 ** @param xcb_generic_error_t                   **e
 ** @returns xcb_input_query_device_state_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_input_query_device_state_reply_t *
xcb_input_query_device_state_reply (xcb_connection_t                       *c  /**< */,
                                    xcb_input_query_device_state_cookie_t   cookie  /**< */,
                                    xcb_generic_error_t                   **e  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_input_input_state_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_input_input_state_t)
 */

/*****************************************************************************
 **
 ** void xcb_input_input_state_next
 ** 
 ** @param xcb_input_input_state_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_input_input_state_next (xcb_input_input_state_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_input_input_state_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_input_input_state_end
 ** 
 ** @param xcb_input_input_state_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
xcb_generic_iterator_t
xcb_input_input_state_end (xcb_input_input_state_iterator_t i  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_input_key_state_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_input_key_state_t)
 */

/*****************************************************************************
 **
 ** void xcb_input_key_state_next
 ** 
 ** @param xcb_input_key_state_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_input_key_state_next (xcb_input_key_state_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_input_key_state_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_input_key_state_end
 ** 
 ** @param xcb_input_key_state_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
xcb_generic_iterator_t
xcb_input_key_state_end (xcb_input_key_state_iterator_t i  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_input_button_state_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_input_button_state_t)
 */

/*****************************************************************************
 **
 ** void xcb_input_button_state_next
 ** 
 ** @param xcb_input_button_state_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_input_button_state_next (xcb_input_button_state_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_input_button_state_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_input_button_state_end
 ** 
 ** @param xcb_input_button_state_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
xcb_generic_iterator_t
xcb_input_button_state_end (xcb_input_button_state_iterator_t i  /**< */);

extern(C) int
xcb_input_valuator_state_sizeof (const void  *_buffer  /**< */);


/*****************************************************************************
 **
 ** uint * xcb_input_valuator_state_valuators
 ** 
 ** @param const xcb_input_valuator_state_t *R
 ** @returns uint *
 **
 *****************************************************************************/
 
uint *
xcb_input_valuator_state_valuators (const xcb_input_valuator_state_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_input_valuator_state_valuators_length
 ** 
 ** @param const xcb_input_valuator_state_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_input_valuator_state_valuators_length (const xcb_input_valuator_state_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_input_valuator_state_valuators_end
 ** 
 ** @param const xcb_input_valuator_state_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_input_valuator_state_valuators_end (const xcb_input_valuator_state_t *R  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_input_valuator_state_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_input_valuator_state_t)
 */

/*****************************************************************************
 **
 ** void xcb_input_valuator_state_next
 ** 
 ** @param xcb_input_valuator_state_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_input_valuator_state_next (xcb_input_valuator_state_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_input_valuator_state_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_input_valuator_state_end
 ** 
 ** @param xcb_input_valuator_state_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
xcb_generic_iterator_t
xcb_input_valuator_state_end (xcb_input_valuator_state_iterator_t i  /**< */);

extern(C) int
xcb_input_send_extension_event_sizeof (const void  *_buffer  /**< */);

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
 ** xcb_void_cookie_t xcb_input_send_extension_event_checked
 ** 
 ** @param xcb_connection_t              *c
 ** @param xcb_window_t                   destination
 ** @param ubyte                          device_id
 ** @param ubyte                          propagate
 ** @param ushort                         num_classes
 ** @param ubyte                          num_events
 ** @param const char                    *events
 ** @param const xcb_input_event_class_t *classes
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_input_send_extension_event_checked (xcb_connection_t              *c  /**< */,
                                        xcb_window_t                   destination  /**< */,
                                        ubyte                          device_id  /**< */,
                                        ubyte                          propagate  /**< */,
                                        ushort                         num_classes  /**< */,
                                        ubyte                          num_events  /**< */,
                                        const char                    *events  /**< */,
                                        const xcb_input_event_class_t *classes  /**< */);

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
 ** xcb_void_cookie_t xcb_input_send_extension_event
 ** 
 ** @param xcb_connection_t              *c
 ** @param xcb_window_t                   destination
 ** @param ubyte                          device_id
 ** @param ubyte                          propagate
 ** @param ushort                         num_classes
 ** @param ubyte                          num_events
 ** @param const char                    *events
 ** @param const xcb_input_event_class_t *classes
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_input_send_extension_event (xcb_connection_t              *c  /**< */,
                                xcb_window_t                   destination  /**< */,
                                ubyte                          device_id  /**< */,
                                ubyte                          propagate  /**< */,
                                ushort                         num_classes  /**< */,
                                ubyte                          num_events  /**< */,
                                const char                    *events  /**< */,
                                const xcb_input_event_class_t *classes  /**< */);

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
 ** xcb_void_cookie_t xcb_input_device_bell_checked
 ** 
 ** @param xcb_connection_t *c
 ** @param ubyte             device_id
 ** @param ubyte             feedback_id
 ** @param ubyte             feedback_class
 ** @param byte              percent
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_input_device_bell_checked (xcb_connection_t *c  /**< */,
                               ubyte             device_id  /**< */,
                               ubyte             feedback_id  /**< */,
                               ubyte             feedback_class  /**< */,
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
 ** xcb_void_cookie_t xcb_input_device_bell
 ** 
 ** @param xcb_connection_t *c
 ** @param ubyte             device_id
 ** @param ubyte             feedback_id
 ** @param ubyte             feedback_class
 ** @param byte              percent
 ** @returns xcb_void_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_void_cookie_t
xcb_input_device_bell (xcb_connection_t *c  /**< */,
                       ubyte             device_id  /**< */,
                       ubyte             feedback_id  /**< */,
                       ubyte             feedback_class  /**< */,
                       byte              percent  /**< */);

extern(C) int
xcb_input_set_device_valuators_sizeof (const void  *_buffer  /**< */);

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
 ** xcb_input_set_device_valuators_cookie_t xcb_input_set_device_valuators
 ** 
 ** @param xcb_connection_t *c
 ** @param ubyte             device_id
 ** @param ubyte             first_valuator
 ** @param ubyte             num_valuators
 ** @param const int        *valuators
 ** @returns xcb_input_set_device_valuators_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_input_set_device_valuators_cookie_t
xcb_input_set_device_valuators (xcb_connection_t *c  /**< */,
                                ubyte             device_id  /**< */,
                                ubyte             first_valuator  /**< */,
                                ubyte             num_valuators  /**< */,
                                const int        *valuators  /**< */);

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
 ** xcb_input_set_device_valuators_cookie_t xcb_input_set_device_valuators_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @param ubyte             device_id
 ** @param ubyte             first_valuator
 ** @param ubyte             num_valuators
 ** @param const int        *valuators
 ** @returns xcb_input_set_device_valuators_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_input_set_device_valuators_cookie_t
xcb_input_set_device_valuators_unchecked (xcb_connection_t *c  /**< */,
                                          ubyte             device_id  /**< */,
                                          ubyte             first_valuator  /**< */,
                                          ubyte             num_valuators  /**< */,
                                          const int        *valuators  /**< */);

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 * 
 * The parameter @p e supplied to this function must be NULL if
 * xcb_input_set_device_valuators_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */

/*****************************************************************************
 **
 ** xcb_input_set_device_valuators_reply_t * xcb_input_set_device_valuators_reply
 ** 
 ** @param xcb_connection_t                         *c
 ** @param xcb_input_set_device_valuators_cookie_t   cookie
 ** @param xcb_generic_error_t                     **e
 ** @returns xcb_input_set_device_valuators_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_input_set_device_valuators_reply_t *
xcb_input_set_device_valuators_reply (xcb_connection_t                         *c  /**< */,
                                      xcb_input_set_device_valuators_cookie_t   cookie  /**< */,
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
 ** xcb_input_get_device_control_cookie_t xcb_input_get_device_control
 ** 
 ** @param xcb_connection_t *c
 ** @param ushort            control_id
 ** @param ubyte             device_id
 ** @returns xcb_input_get_device_control_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_input_get_device_control_cookie_t
xcb_input_get_device_control (xcb_connection_t *c  /**< */,
                              ushort            control_id  /**< */,
                              ubyte             device_id  /**< */);

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
 ** xcb_input_get_device_control_cookie_t xcb_input_get_device_control_unchecked
 ** 
 ** @param xcb_connection_t *c
 ** @param ushort            control_id
 ** @param ubyte             device_id
 ** @returns xcb_input_get_device_control_cookie_t
 **
 *****************************************************************************/
 
extern(C) xcb_input_get_device_control_cookie_t
xcb_input_get_device_control_unchecked (xcb_connection_t *c  /**< */,
                                        ushort            control_id  /**< */,
                                        ubyte             device_id  /**< */);

/**
 * Return the reply
 * @param c      The connection
 * @param cookie The cookie
 * @param e      The xcb_generic_error_t supplied
 *
 * Returns the reply of the request asked by
 * 
 * The parameter @p e supplied to this function must be NULL if
 * xcb_input_get_device_control_unchecked(). is used.
 * Otherwise, it stores the error if any.
 *
 * The returned value must be freed by the caller using free().
 */

/*****************************************************************************
 **
 ** xcb_input_get_device_control_reply_t * xcb_input_get_device_control_reply
 ** 
 ** @param xcb_connection_t                       *c
 ** @param xcb_input_get_device_control_cookie_t   cookie
 ** @param xcb_generic_error_t                   **e
 ** @returns xcb_input_get_device_control_reply_t *
 **
 *****************************************************************************/
 
extern(C) xcb_input_get_device_control_reply_t *
xcb_input_get_device_control_reply (xcb_connection_t                       *c  /**< */,
                                    xcb_input_get_device_control_cookie_t   cookie  /**< */,
                                    xcb_generic_error_t                   **e  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_input_device_state_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_input_device_state_t)
 */

/*****************************************************************************
 **
 ** void xcb_input_device_state_next
 ** 
 ** @param xcb_input_device_state_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_input_device_state_next (xcb_input_device_state_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_input_device_state_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_input_device_state_end
 ** 
 ** @param xcb_input_device_state_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
xcb_generic_iterator_t
xcb_input_device_state_end (xcb_input_device_state_iterator_t i  /**< */);

extern(C) int
xcb_input_device_resolution_state_sizeof (const void  *_buffer  /**< */);


/*****************************************************************************
 **
 ** uint * xcb_input_device_resolution_state_resolution_values
 ** 
 ** @param const xcb_input_device_resolution_state_t *R
 ** @returns uint *
 **
 *****************************************************************************/
 
uint *
xcb_input_device_resolution_state_resolution_values (const xcb_input_device_resolution_state_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_input_device_resolution_state_resolution_values_length
 ** 
 ** @param const xcb_input_device_resolution_state_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_input_device_resolution_state_resolution_values_length (const xcb_input_device_resolution_state_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_input_device_resolution_state_resolution_values_end
 ** 
 ** @param const xcb_input_device_resolution_state_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_input_device_resolution_state_resolution_values_end (const xcb_input_device_resolution_state_t *R  /**< */);


/*****************************************************************************
 **
 ** uint * xcb_input_device_resolution_state_resolution_min
 ** 
 ** @param const xcb_input_device_resolution_state_t *R
 ** @returns uint *
 **
 *****************************************************************************/
 
uint *
xcb_input_device_resolution_state_resolution_min (const xcb_input_device_resolution_state_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_input_device_resolution_state_resolution_min_length
 ** 
 ** @param const xcb_input_device_resolution_state_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_input_device_resolution_state_resolution_min_length (const xcb_input_device_resolution_state_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_input_device_resolution_state_resolution_min_end
 ** 
 ** @param const xcb_input_device_resolution_state_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_input_device_resolution_state_resolution_min_end (const xcb_input_device_resolution_state_t *R  /**< */);


/*****************************************************************************
 **
 ** uint * xcb_input_device_resolution_state_resolution_max
 ** 
 ** @param const xcb_input_device_resolution_state_t *R
 ** @returns uint *
 **
 *****************************************************************************/
 
uint *
xcb_input_device_resolution_state_resolution_max (const xcb_input_device_resolution_state_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_input_device_resolution_state_resolution_max_length
 ** 
 ** @param const xcb_input_device_resolution_state_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_input_device_resolution_state_resolution_max_length (const xcb_input_device_resolution_state_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_input_device_resolution_state_resolution_max_end
 ** 
 ** @param const xcb_input_device_resolution_state_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_input_device_resolution_state_resolution_max_end (const xcb_input_device_resolution_state_t *R  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_input_device_resolution_state_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_input_device_resolution_state_t)
 */

/*****************************************************************************
 **
 ** void xcb_input_device_resolution_state_next
 ** 
 ** @param xcb_input_device_resolution_state_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_input_device_resolution_state_next (xcb_input_device_resolution_state_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_input_device_resolution_state_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_input_device_resolution_state_end
 ** 
 ** @param xcb_input_device_resolution_state_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
xcb_generic_iterator_t
xcb_input_device_resolution_state_end (xcb_input_device_resolution_state_iterator_t i  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_input_device_abs_calib_state_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_input_device_abs_calib_state_t)
 */

/*****************************************************************************
 **
 ** void xcb_input_device_abs_calib_state_next
 ** 
 ** @param xcb_input_device_abs_calib_state_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_input_device_abs_calib_state_next (xcb_input_device_abs_calib_state_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_input_device_abs_calib_state_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_input_device_abs_calib_state_end
 ** 
 ** @param xcb_input_device_abs_calib_state_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
xcb_generic_iterator_t
xcb_input_device_abs_calib_state_end (xcb_input_device_abs_calib_state_iterator_t i  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_input_device_abs_area_state_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_input_device_abs_area_state_t)
 */

/*****************************************************************************
 **
 ** void xcb_input_device_abs_area_state_next
 ** 
 ** @param xcb_input_device_abs_area_state_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_input_device_abs_area_state_next (xcb_input_device_abs_area_state_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_input_device_abs_area_state_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_input_device_abs_area_state_end
 ** 
 ** @param xcb_input_device_abs_area_state_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
xcb_generic_iterator_t
xcb_input_device_abs_area_state_end (xcb_input_device_abs_area_state_iterator_t i  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_input_device_core_state_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_input_device_core_state_t)
 */

/*****************************************************************************
 **
 ** void xcb_input_device_core_state_next
 ** 
 ** @param xcb_input_device_core_state_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_input_device_core_state_next (xcb_input_device_core_state_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_input_device_core_state_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_input_device_core_state_end
 ** 
 ** @param xcb_input_device_core_state_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
xcb_generic_iterator_t
xcb_input_device_core_state_end (xcb_input_device_core_state_iterator_t i  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_input_device_enable_state_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_input_device_enable_state_t)
 */

/*****************************************************************************
 **
 ** void xcb_input_device_enable_state_next
 ** 
 ** @param xcb_input_device_enable_state_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_input_device_enable_state_next (xcb_input_device_enable_state_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_input_device_enable_state_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_input_device_enable_state_end
 ** 
 ** @param xcb_input_device_enable_state_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
xcb_generic_iterator_t
xcb_input_device_enable_state_end (xcb_input_device_enable_state_iterator_t i  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_input_device_ctl_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_input_device_ctl_t)
 */

/*****************************************************************************
 **
 ** void xcb_input_device_ctl_next
 ** 
 ** @param xcb_input_device_ctl_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_input_device_ctl_next (xcb_input_device_ctl_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_input_device_ctl_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_input_device_ctl_end
 ** 
 ** @param xcb_input_device_ctl_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
xcb_generic_iterator_t
xcb_input_device_ctl_end (xcb_input_device_ctl_iterator_t i  /**< */);

extern(C) int
xcb_input_device_resolution_ctl_sizeof (const void  *_buffer  /**< */);


/*****************************************************************************
 **
 ** uint * xcb_input_device_resolution_ctl_resolution_values
 ** 
 ** @param const xcb_input_device_resolution_ctl_t *R
 ** @returns uint *
 **
 *****************************************************************************/
 
uint *
xcb_input_device_resolution_ctl_resolution_values (const xcb_input_device_resolution_ctl_t *R  /**< */);


/*****************************************************************************
 **
 ** int xcb_input_device_resolution_ctl_resolution_values_length
 ** 
 ** @param const xcb_input_device_resolution_ctl_t *R
 ** @returns int
 **
 *****************************************************************************/
 
extern(C) int
xcb_input_device_resolution_ctl_resolution_values_length (const xcb_input_device_resolution_ctl_t *R  /**< */);


/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_input_device_resolution_ctl_resolution_values_end
 ** 
 ** @param const xcb_input_device_resolution_ctl_t *R
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
extern(C) xcb_generic_iterator_t
xcb_input_device_resolution_ctl_resolution_values_end (const xcb_input_device_resolution_ctl_t *R  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_input_device_resolution_ctl_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_input_device_resolution_ctl_t)
 */

/*****************************************************************************
 **
 ** void xcb_input_device_resolution_ctl_next
 ** 
 ** @param xcb_input_device_resolution_ctl_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_input_device_resolution_ctl_next (xcb_input_device_resolution_ctl_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_input_device_resolution_ctl_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_input_device_resolution_ctl_end
 ** 
 ** @param xcb_input_device_resolution_ctl_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
xcb_generic_iterator_t
xcb_input_device_resolution_ctl_end (xcb_input_device_resolution_ctl_iterator_t i  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_input_device_abs_calib_ctl_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_input_device_abs_calib_ctl_t)
 */

/*****************************************************************************
 **
 ** void xcb_input_device_abs_calib_ctl_next
 ** 
 ** @param xcb_input_device_abs_calib_ctl_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_input_device_abs_calib_ctl_next (xcb_input_device_abs_calib_ctl_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_input_device_abs_calib_ctl_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_input_device_abs_calib_ctl_end
 ** 
 ** @param xcb_input_device_abs_calib_ctl_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
xcb_generic_iterator_t
xcb_input_device_abs_calib_ctl_end (xcb_input_device_abs_calib_ctl_iterator_t i  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_input_device_abs_area_ctrl_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_input_device_abs_area_ctrl_t)
 */

/*****************************************************************************
 **
 ** void xcb_input_device_abs_area_ctrl_next
 ** 
 ** @param xcb_input_device_abs_area_ctrl_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_input_device_abs_area_ctrl_next (xcb_input_device_abs_area_ctrl_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_input_device_abs_area_ctrl_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_input_device_abs_area_ctrl_end
 ** 
 ** @param xcb_input_device_abs_area_ctrl_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
xcb_generic_iterator_t
xcb_input_device_abs_area_ctrl_end (xcb_input_device_abs_area_ctrl_iterator_t i  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_input_device_core_ctrl_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_input_device_core_ctrl_t)
 */

/*****************************************************************************
 **
 ** void xcb_input_device_core_ctrl_next
 ** 
 ** @param xcb_input_device_core_ctrl_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_input_device_core_ctrl_next (xcb_input_device_core_ctrl_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_input_device_core_ctrl_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_input_device_core_ctrl_end
 ** 
 ** @param xcb_input_device_core_ctrl_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
xcb_generic_iterator_t
xcb_input_device_core_ctrl_end (xcb_input_device_core_ctrl_iterator_t i  /**< */);

/**
 * Get the next element of the iterator
 * @param i Pointer to a xcb_input_device_enable_ctrl_iterator_t
 *
 * Get the next element in the iterator. The member rem is
 * decreased by one. The member data points to the next
 * element. The member index is increased by sizeof(xcb_input_device_enable_ctrl_t)
 */

/*****************************************************************************
 **
 ** void xcb_input_device_enable_ctrl_next
 ** 
 ** @param xcb_input_device_enable_ctrl_iterator_t *i
 ** @returns void
 **
 *****************************************************************************/
 
extern(C) void
xcb_input_device_enable_ctrl_next (xcb_input_device_enable_ctrl_iterator_t *i  /**< */);

/**
 * Return the iterator pointing to the last element
 * @param i An xcb_input_device_enable_ctrl_iterator_t
 * @return  The iterator pointing to the last element
 *
 * Set the current element in the iterator to the last element.
 * The member rem is set to 0. The member data points to the
 * last element.
 */

/*****************************************************************************
 **
 ** xcb_generic_iterator_t xcb_input_device_enable_ctrl_end
 ** 
 ** @param xcb_input_device_enable_ctrl_iterator_t i
 ** @returns xcb_generic_iterator_t
 **
 *****************************************************************************/
 
xcb_generic_iterator_t
xcb_input_device_enable_ctrl_end (xcb_input_device_enable_ctrl_iterator_t i  /**< */);

/**
 * @}
 */
