package bpy.types.keymapitem;
@:enum abstract Enum1(String) from String to String {
	var NONE : String = "NONE";
	var LEFTMOUSE : String = "LEFTMOUSE";
	var MIDDLEMOUSE : String = "MIDDLEMOUSE";
	var RIGHTMOUSE : String = "RIGHTMOUSE";
	var pyBUTTON4MOUSE : String = "BUTTON4MOUSE";
	var pyBUTTON5MOUSE : String = "BUTTON5MOUSE";
	var pyBUTTON6MOUSE : String = "BUTTON6MOUSE";
	var pyBUTTON7MOUSE : String = "BUTTON7MOUSE";
	var PEN : String = "PEN";
	var ERASER : String = "ERASER";
	var MOUSEMOVE : String = "MOUSEMOVE";
	var INBETWEEN_MOUSEMOVE : String = "INBETWEEN_MOUSEMOVE";
	var TRACKPADPAN : String = "TRACKPADPAN";
	var TRACKPADZOOM : String = "TRACKPADZOOM";
	var MOUSEROTATE : String = "MOUSEROTATE";
	var WHEELUPMOUSE : String = "WHEELUPMOUSE";
	var WHEELDOWNMOUSE : String = "WHEELDOWNMOUSE";
	var WHEELINMOUSE : String = "WHEELINMOUSE";
	var WHEELOUTMOUSE : String = "WHEELOUTMOUSE";
	var EVT_TWEAK_L : String = "EVT_TWEAK_L";
	var EVT_TWEAK_M : String = "EVT_TWEAK_M";
	var EVT_TWEAK_R : String = "EVT_TWEAK_R";
	var A : String = "A";
	var B : String = "B";
	var C : String = "C";
	var D : String = "D";
	var E : String = "E";
	var F : String = "F";
	var G : String = "G";
	var H : String = "H";
	var I : String = "I";
	var J : String = "J";
	var K : String = "K";
	var L : String = "L";
	var M : String = "M";
	var N : String = "N";
	var O : String = "O";
	var P : String = "P";
	var Q : String = "Q";
	var R : String = "R";
	var S : String = "S";
	var T : String = "T";
	var U : String = "U";
	var V : String = "V";
	var W : String = "W";
	var X : String = "X";
	var Y : String = "Y";
	var Z : String = "Z";
	var ZERO : String = "ZERO";
	var ONE : String = "ONE";
	var TWO : String = "TWO";
	var THREE : String = "THREE";
	var FOUR : String = "FOUR";
	var FIVE : String = "FIVE";
	var SIX : String = "SIX";
	var SEVEN : String = "SEVEN";
	var EIGHT : String = "EIGHT";
	var NINE : String = "NINE";
	var LEFT_CTRL : String = "LEFT_CTRL";
	var LEFT_ALT : String = "LEFT_ALT";
	var LEFT_SHIFT : String = "LEFT_SHIFT";
	var RIGHT_ALT : String = "RIGHT_ALT";
	var RIGHT_CTRL : String = "RIGHT_CTRL";
	var RIGHT_SHIFT : String = "RIGHT_SHIFT";
	var OSKEY : String = "OSKEY";
	var GRLESS : String = "GRLESS";
	var ESC : String = "ESC";
	var TAB : String = "TAB";
	var RET : String = "RET";
	var SPACE : String = "SPACE";
	var LINE_FEED : String = "LINE_FEED";
	var BACK_SPACE : String = "BACK_SPACE";
	var DEL : String = "DEL";
	var SEMI_COLON : String = "SEMI_COLON";
	var PERIOD : String = "PERIOD";
	var COMMA : String = "COMMA";
	var QUOTE : String = "QUOTE";
	var ACCENT_GRAVE : String = "ACCENT_GRAVE";
	var MINUS : String = "MINUS";
	var PLUS : String = "PLUS";
	var SLASH : String = "SLASH";
	var BACK_SLASH : String = "BACK_SLASH";
	var EQUAL : String = "EQUAL";
	var LEFT_BRACKET : String = "LEFT_BRACKET";
	var RIGHT_BRACKET : String = "RIGHT_BRACKET";
	var LEFT_ARROW : String = "LEFT_ARROW";
	var DOWN_ARROW : String = "DOWN_ARROW";
	var RIGHT_ARROW : String = "RIGHT_ARROW";
	var UP_ARROW : String = "UP_ARROW";
	var pyNUMPAD_2 : String = "NUMPAD_2";
	var pyNUMPAD_4 : String = "NUMPAD_4";
	var pyNUMPAD_6 : String = "NUMPAD_6";
	var pyNUMPAD_8 : String = "NUMPAD_8";
	var pyNUMPAD_1 : String = "NUMPAD_1";
	var pyNUMPAD_3 : String = "NUMPAD_3";
	var pyNUMPAD_5 : String = "NUMPAD_5";
	var pyNUMPAD_7 : String = "NUMPAD_7";
	var pyNUMPAD_9 : String = "NUMPAD_9";
	var NUMPAD_PERIOD : String = "NUMPAD_PERIOD";
	var NUMPAD_SLASH : String = "NUMPAD_SLASH";
	var NUMPAD_ASTERIX : String = "NUMPAD_ASTERIX";
	var pyNUMPAD_0 : String = "NUMPAD_0";
	var NUMPAD_MINUS : String = "NUMPAD_MINUS";
	var NUMPAD_ENTER : String = "NUMPAD_ENTER";
	var NUMPAD_PLUS : String = "NUMPAD_PLUS";
	var pyF1 : String = "F1";
	var pyF2 : String = "F2";
	var pyF3 : String = "F3";
	var pyF4 : String = "F4";
	var pyF5 : String = "F5";
	var pyF6 : String = "F6";
	var pyF7 : String = "F7";
	var pyF8 : String = "F8";
	var pyF9 : String = "F9";
	var pyF10 : String = "F10";
	var pyF11 : String = "F11";
	var pyF12 : String = "F12";
	var pyF13 : String = "F13";
	var pyF14 : String = "F14";
	var pyF15 : String = "F15";
	var pyF16 : String = "F16";
	var pyF17 : String = "F17";
	var pyF18 : String = "F18";
	var pyF19 : String = "F19";
	var PAUSE : String = "PAUSE";
	var INSERT : String = "INSERT";
	var HOME : String = "HOME";
	var PAGE_UP : String = "PAGE_UP";
	var PAGE_DOWN : String = "PAGE_DOWN";
	var END : String = "END";
	var MEDIA_PLAY : String = "MEDIA_PLAY";
	var MEDIA_STOP : String = "MEDIA_STOP";
	var MEDIA_FIRST : String = "MEDIA_FIRST";
	var MEDIA_LAST : String = "MEDIA_LAST";
	var TEXTINPUT : String = "TEXTINPUT";
	var WINDOW_DEACTIVATE : String = "WINDOW_DEACTIVATE";
	var TIMER : String = "TIMER";
	var pyTIMER0 : String = "TIMER0";
	var pyTIMER1 : String = "TIMER1";
	var pyTIMER2 : String = "TIMER2";
	var TIMER_JOBS : String = "TIMER_JOBS";
	var TIMER_AUTOSAVE : String = "TIMER_AUTOSAVE";
	var TIMER_REPORT : String = "TIMER_REPORT";
	var TIMERREGION : String = "TIMERREGION";
	var NDOF_MOTION : String = "NDOF_MOTION";
	var NDOF_BUTTON_MENU : String = "NDOF_BUTTON_MENU";
	var NDOF_BUTTON_FIT : String = "NDOF_BUTTON_FIT";
	var NDOF_BUTTON_TOP : String = "NDOF_BUTTON_TOP";
	var NDOF_BUTTON_BOTTOM : String = "NDOF_BUTTON_BOTTOM";
	var NDOF_BUTTON_LEFT : String = "NDOF_BUTTON_LEFT";
	var NDOF_BUTTON_RIGHT : String = "NDOF_BUTTON_RIGHT";
	var NDOF_BUTTON_FRONT : String = "NDOF_BUTTON_FRONT";
	var NDOF_BUTTON_BACK : String = "NDOF_BUTTON_BACK";
	var pyNDOF_BUTTON_ISO1 : String = "NDOF_BUTTON_ISO1";
	var pyNDOF_BUTTON_ISO2 : String = "NDOF_BUTTON_ISO2";
	var NDOF_BUTTON_ROLL_CW : String = "NDOF_BUTTON_ROLL_CW";
	var NDOF_BUTTON_ROLL_CCW : String = "NDOF_BUTTON_ROLL_CCW";
	var NDOF_BUTTON_SPIN_CW : String = "NDOF_BUTTON_SPIN_CW";
	var NDOF_BUTTON_SPIN_CCW : String = "NDOF_BUTTON_SPIN_CCW";
	var NDOF_BUTTON_TILT_CW : String = "NDOF_BUTTON_TILT_CW";
	var NDOF_BUTTON_TILT_CCW : String = "NDOF_BUTTON_TILT_CCW";
	var NDOF_BUTTON_ROTATE : String = "NDOF_BUTTON_ROTATE";
	var NDOF_BUTTON_PANZOOM : String = "NDOF_BUTTON_PANZOOM";
	var NDOF_BUTTON_DOMINANT : String = "NDOF_BUTTON_DOMINANT";
	var NDOF_BUTTON_PLUS : String = "NDOF_BUTTON_PLUS";
	var NDOF_BUTTON_MINUS : String = "NDOF_BUTTON_MINUS";
	var NDOF_BUTTON_ESC : String = "NDOF_BUTTON_ESC";
	var NDOF_BUTTON_ALT : String = "NDOF_BUTTON_ALT";
	var NDOF_BUTTON_SHIFT : String = "NDOF_BUTTON_SHIFT";
	var NDOF_BUTTON_CTRL : String = "NDOF_BUTTON_CTRL";
	var pyNDOF_BUTTON_1 : String = "NDOF_BUTTON_1";
	var pyNDOF_BUTTON_2 : String = "NDOF_BUTTON_2";
	var pyNDOF_BUTTON_3 : String = "NDOF_BUTTON_3";
	var pyNDOF_BUTTON_4 : String = "NDOF_BUTTON_4";
	var pyNDOF_BUTTON_5 : String = "NDOF_BUTTON_5";
	var pyNDOF_BUTTON_6 : String = "NDOF_BUTTON_6";
	var pyNDOF_BUTTON_7 : String = "NDOF_BUTTON_7";
	var pyNDOF_BUTTON_8 : String = "NDOF_BUTTON_8";
	var pyNDOF_BUTTON_9 : String = "NDOF_BUTTON_9";
	var pyNDOF_BUTTON_10 : String = "NDOF_BUTTON_10";
	var NDOF_BUTTON_A : String = "NDOF_BUTTON_A";
	var NDOF_BUTTON_B : String = "NDOF_BUTTON_B";
	var NDOF_BUTTON_C : String = "NDOF_BUTTON_C";
	var ACTIONZONE_AREA : String = "ACTIONZONE_AREA";
	var ACTIONZONE_REGION : String = "ACTIONZONE_REGION";
	var ACTIONZONE_FULLSCREEN : String = "ACTIONZONE_FULLSCREEN";
}@:enum abstract Enum2(String) from String to String {
	var KEYBOARD : String = "KEYBOARD";
	var TWEAK : String = "TWEAK";
	var MOUSE : String = "MOUSE";
	var NDOF : String = "NDOF";
	var TEXTINPUT : String = "TEXTINPUT";
	var TIMER : String = "TIMER";
}@:enum abstract Enum3(String) from String to String {
	var NONE : String = "NONE";
}@:enum abstract Enum4(String) from String to String {
	var NONE : String = "NONE";
	var LEFTMOUSE : String = "LEFTMOUSE";
	var MIDDLEMOUSE : String = "MIDDLEMOUSE";
	var RIGHTMOUSE : String = "RIGHTMOUSE";
	var pyBUTTON4MOUSE : String = "BUTTON4MOUSE";
	var pyBUTTON5MOUSE : String = "BUTTON5MOUSE";
	var pyBUTTON6MOUSE : String = "BUTTON6MOUSE";
	var pyBUTTON7MOUSE : String = "BUTTON7MOUSE";
	var PEN : String = "PEN";
	var ERASER : String = "ERASER";
	var MOUSEMOVE : String = "MOUSEMOVE";
	var INBETWEEN_MOUSEMOVE : String = "INBETWEEN_MOUSEMOVE";
	var TRACKPADPAN : String = "TRACKPADPAN";
	var TRACKPADZOOM : String = "TRACKPADZOOM";
	var MOUSEROTATE : String = "MOUSEROTATE";
	var WHEELUPMOUSE : String = "WHEELUPMOUSE";
	var WHEELDOWNMOUSE : String = "WHEELDOWNMOUSE";
	var WHEELINMOUSE : String = "WHEELINMOUSE";
	var WHEELOUTMOUSE : String = "WHEELOUTMOUSE";
	var EVT_TWEAK_L : String = "EVT_TWEAK_L";
	var EVT_TWEAK_M : String = "EVT_TWEAK_M";
	var EVT_TWEAK_R : String = "EVT_TWEAK_R";
	var A : String = "A";
	var B : String = "B";
	var C : String = "C";
	var D : String = "D";
	var E : String = "E";
	var F : String = "F";
	var G : String = "G";
	var H : String = "H";
	var I : String = "I";
	var J : String = "J";
	var K : String = "K";
	var L : String = "L";
	var M : String = "M";
	var N : String = "N";
	var O : String = "O";
	var P : String = "P";
	var Q : String = "Q";
	var R : String = "R";
	var S : String = "S";
	var T : String = "T";
	var U : String = "U";
	var V : String = "V";
	var W : String = "W";
	var X : String = "X";
	var Y : String = "Y";
	var Z : String = "Z";
	var ZERO : String = "ZERO";
	var ONE : String = "ONE";
	var TWO : String = "TWO";
	var THREE : String = "THREE";
	var FOUR : String = "FOUR";
	var FIVE : String = "FIVE";
	var SIX : String = "SIX";
	var SEVEN : String = "SEVEN";
	var EIGHT : String = "EIGHT";
	var NINE : String = "NINE";
	var LEFT_CTRL : String = "LEFT_CTRL";
	var LEFT_ALT : String = "LEFT_ALT";
	var LEFT_SHIFT : String = "LEFT_SHIFT";
	var RIGHT_ALT : String = "RIGHT_ALT";
	var RIGHT_CTRL : String = "RIGHT_CTRL";
	var RIGHT_SHIFT : String = "RIGHT_SHIFT";
	var OSKEY : String = "OSKEY";
	var GRLESS : String = "GRLESS";
	var ESC : String = "ESC";
	var TAB : String = "TAB";
	var RET : String = "RET";
	var SPACE : String = "SPACE";
	var LINE_FEED : String = "LINE_FEED";
	var BACK_SPACE : String = "BACK_SPACE";
	var DEL : String = "DEL";
	var SEMI_COLON : String = "SEMI_COLON";
	var PERIOD : String = "PERIOD";
	var COMMA : String = "COMMA";
	var QUOTE : String = "QUOTE";
	var ACCENT_GRAVE : String = "ACCENT_GRAVE";
	var MINUS : String = "MINUS";
	var PLUS : String = "PLUS";
	var SLASH : String = "SLASH";
	var BACK_SLASH : String = "BACK_SLASH";
	var EQUAL : String = "EQUAL";
	var LEFT_BRACKET : String = "LEFT_BRACKET";
	var RIGHT_BRACKET : String = "RIGHT_BRACKET";
	var LEFT_ARROW : String = "LEFT_ARROW";
	var DOWN_ARROW : String = "DOWN_ARROW";
	var RIGHT_ARROW : String = "RIGHT_ARROW";
	var UP_ARROW : String = "UP_ARROW";
	var pyNUMPAD_2 : String = "NUMPAD_2";
	var pyNUMPAD_4 : String = "NUMPAD_4";
	var pyNUMPAD_6 : String = "NUMPAD_6";
	var pyNUMPAD_8 : String = "NUMPAD_8";
	var pyNUMPAD_1 : String = "NUMPAD_1";
	var pyNUMPAD_3 : String = "NUMPAD_3";
	var pyNUMPAD_5 : String = "NUMPAD_5";
	var pyNUMPAD_7 : String = "NUMPAD_7";
	var pyNUMPAD_9 : String = "NUMPAD_9";
	var NUMPAD_PERIOD : String = "NUMPAD_PERIOD";
	var NUMPAD_SLASH : String = "NUMPAD_SLASH";
	var NUMPAD_ASTERIX : String = "NUMPAD_ASTERIX";
	var pyNUMPAD_0 : String = "NUMPAD_0";
	var NUMPAD_MINUS : String = "NUMPAD_MINUS";
	var NUMPAD_ENTER : String = "NUMPAD_ENTER";
	var NUMPAD_PLUS : String = "NUMPAD_PLUS";
	var pyF1 : String = "F1";
	var pyF2 : String = "F2";
	var pyF3 : String = "F3";
	var pyF4 : String = "F4";
	var pyF5 : String = "F5";
	var pyF6 : String = "F6";
	var pyF7 : String = "F7";
	var pyF8 : String = "F8";
	var pyF9 : String = "F9";
	var pyF10 : String = "F10";
	var pyF11 : String = "F11";
	var pyF12 : String = "F12";
	var pyF13 : String = "F13";
	var pyF14 : String = "F14";
	var pyF15 : String = "F15";
	var pyF16 : String = "F16";
	var pyF17 : String = "F17";
	var pyF18 : String = "F18";
	var pyF19 : String = "F19";
	var PAUSE : String = "PAUSE";
	var INSERT : String = "INSERT";
	var HOME : String = "HOME";
	var PAGE_UP : String = "PAGE_UP";
	var PAGE_DOWN : String = "PAGE_DOWN";
	var END : String = "END";
	var MEDIA_PLAY : String = "MEDIA_PLAY";
	var MEDIA_STOP : String = "MEDIA_STOP";
	var MEDIA_FIRST : String = "MEDIA_FIRST";
	var MEDIA_LAST : String = "MEDIA_LAST";
	var TEXTINPUT : String = "TEXTINPUT";
	var WINDOW_DEACTIVATE : String = "WINDOW_DEACTIVATE";
	var TIMER : String = "TIMER";
	var pyTIMER0 : String = "TIMER0";
	var pyTIMER1 : String = "TIMER1";
	var pyTIMER2 : String = "TIMER2";
	var TIMER_JOBS : String = "TIMER_JOBS";
	var TIMER_AUTOSAVE : String = "TIMER_AUTOSAVE";
	var TIMER_REPORT : String = "TIMER_REPORT";
	var TIMERREGION : String = "TIMERREGION";
	var NDOF_MOTION : String = "NDOF_MOTION";
	var NDOF_BUTTON_MENU : String = "NDOF_BUTTON_MENU";
	var NDOF_BUTTON_FIT : String = "NDOF_BUTTON_FIT";
	var NDOF_BUTTON_TOP : String = "NDOF_BUTTON_TOP";
	var NDOF_BUTTON_BOTTOM : String = "NDOF_BUTTON_BOTTOM";
	var NDOF_BUTTON_LEFT : String = "NDOF_BUTTON_LEFT";
	var NDOF_BUTTON_RIGHT : String = "NDOF_BUTTON_RIGHT";
	var NDOF_BUTTON_FRONT : String = "NDOF_BUTTON_FRONT";
	var NDOF_BUTTON_BACK : String = "NDOF_BUTTON_BACK";
	var pyNDOF_BUTTON_ISO1 : String = "NDOF_BUTTON_ISO1";
	var pyNDOF_BUTTON_ISO2 : String = "NDOF_BUTTON_ISO2";
	var NDOF_BUTTON_ROLL_CW : String = "NDOF_BUTTON_ROLL_CW";
	var NDOF_BUTTON_ROLL_CCW : String = "NDOF_BUTTON_ROLL_CCW";
	var NDOF_BUTTON_SPIN_CW : String = "NDOF_BUTTON_SPIN_CW";
	var NDOF_BUTTON_SPIN_CCW : String = "NDOF_BUTTON_SPIN_CCW";
	var NDOF_BUTTON_TILT_CW : String = "NDOF_BUTTON_TILT_CW";
	var NDOF_BUTTON_TILT_CCW : String = "NDOF_BUTTON_TILT_CCW";
	var NDOF_BUTTON_ROTATE : String = "NDOF_BUTTON_ROTATE";
	var NDOF_BUTTON_PANZOOM : String = "NDOF_BUTTON_PANZOOM";
	var NDOF_BUTTON_DOMINANT : String = "NDOF_BUTTON_DOMINANT";
	var NDOF_BUTTON_PLUS : String = "NDOF_BUTTON_PLUS";
	var NDOF_BUTTON_MINUS : String = "NDOF_BUTTON_MINUS";
	var NDOF_BUTTON_ESC : String = "NDOF_BUTTON_ESC";
	var NDOF_BUTTON_ALT : String = "NDOF_BUTTON_ALT";
	var NDOF_BUTTON_SHIFT : String = "NDOF_BUTTON_SHIFT";
	var NDOF_BUTTON_CTRL : String = "NDOF_BUTTON_CTRL";
	var pyNDOF_BUTTON_1 : String = "NDOF_BUTTON_1";
	var pyNDOF_BUTTON_2 : String = "NDOF_BUTTON_2";
	var pyNDOF_BUTTON_3 : String = "NDOF_BUTTON_3";
	var pyNDOF_BUTTON_4 : String = "NDOF_BUTTON_4";
	var pyNDOF_BUTTON_5 : String = "NDOF_BUTTON_5";
	var pyNDOF_BUTTON_6 : String = "NDOF_BUTTON_6";
	var pyNDOF_BUTTON_7 : String = "NDOF_BUTTON_7";
	var pyNDOF_BUTTON_8 : String = "NDOF_BUTTON_8";
	var pyNDOF_BUTTON_9 : String = "NDOF_BUTTON_9";
	var pyNDOF_BUTTON_10 : String = "NDOF_BUTTON_10";
	var NDOF_BUTTON_A : String = "NDOF_BUTTON_A";
	var NDOF_BUTTON_B : String = "NDOF_BUTTON_B";
	var NDOF_BUTTON_C : String = "NDOF_BUTTON_C";
	var ACTIONZONE_AREA : String = "ACTIONZONE_AREA";
	var ACTIONZONE_REGION : String = "ACTIONZONE_REGION";
	var ACTIONZONE_FULLSCREEN : String = "ACTIONZONE_FULLSCREEN";
}@:enum abstract Enum5(String) from String to String {
	var ANY : String = "ANY";
	var NOTHING : String = "NOTHING";
	var PRESS : String = "PRESS";
	var RELEASE : String = "RELEASE";
	var CLICK : String = "CLICK";
	var DOUBLE_CLICK : String = "DOUBLE_CLICK";
	var CLICK_DRAG : String = "CLICK_DRAG";
	var NORTH : String = "NORTH";
	var NORTH_EAST : String = "NORTH_EAST";
	var EAST : String = "EAST";
	var SOUTH_EAST : String = "SOUTH_EAST";
	var SOUTH : String = "SOUTH";
	var SOUTH_WEST : String = "SOUTH_WEST";
	var WEST : String = "WEST";
	var NORTH_WEST : String = "NORTH_WEST";
}/**
	Item in a Key Map
**/
@:native("bpy.types.KeyMapItem") extern class KeyMapItem {
	/**
		Activate or deactivate item
		
		Type: boolean, default False
	**/
	var active : Bool;
	/**
		Alt key pressed
		
		Type: boolean, default False
	**/
	var alt : Bool;
	/**
		Any modifier keys pressed
		
		Type: boolean, default False
	**/
	var any : Bool;
	/**
		Control key pressed
		
		Type: boolean, default False
	**/
	var ctrl : Bool;
	/**
		ID of the item
		
		Type: int in [-32768, 32767], default 0, (readonly)
	**/
	var id(default, never) : Int;
	/**
		Identifier of operator to call on input event
		
		Type: string, default “”, (never None)
	**/
	var idname : String;
	/**
		Is this keymap item user defined (doesn’t just replace a builtin item)
		
		Type: boolean, default False, (readonly)
	**/
	var is_user_defined(default, never) : Bool;
	/**
		Is this keymap item modified by the user
		
		Type: boolean, default False, (readonly)
	**/
	var is_user_modified(default, never) : Bool;
	/**
		Regular key pressed as a modifier
		
		Type: enum in [‘NONE’, ‘LEFTMOUSE’, ‘MIDDLEMOUSE’, ‘RIGHTMOUSE’, ‘BUTTON4MOUSE’, ‘BUTTON5MOUSE’, ‘BUTTON6MOUSE’, ‘BUTTON7MOUSE’, ‘PEN’, ‘ERASER’, ‘MOUSEMOVE’, ‘INBETWEEN_MOUSEMOVE’, ‘TRACKPADPAN’, ‘TRACKPADZOOM’, ‘MOUSEROTATE’, ‘WHEELUPMOUSE’, ‘WHEELDOWNMOUSE’, ‘WHEELINMOUSE’, ‘WHEELOUTMOUSE’, ‘EVT_TWEAK_L’, ‘EVT_TWEAK_M’, ‘EVT_TWEAK_R’, ‘A’, ‘B’, ‘C’, ‘D’, ‘E’, ‘F’, ‘G’, ‘H’, ‘I’, ‘J’, ‘K’, ‘L’, ‘M’, ‘N’, ‘O’, ‘P’, ‘Q’, ‘R’, ‘S’, ‘T’, ‘U’, ‘V’, ‘W’, ‘X’, ‘Y’, ‘Z’, ‘ZERO’, ‘ONE’, ‘TWO’, ‘THREE’, ‘FOUR’, ‘FIVE’, ‘SIX’, ‘SEVEN’, ‘EIGHT’, ‘NINE’, ‘LEFT_CTRL’, ‘LEFT_ALT’, ‘LEFT_SHIFT’, ‘RIGHT_ALT’, ‘RIGHT_CTRL’, ‘RIGHT_SHIFT’, ‘OSKEY’, ‘GRLESS’, ‘ESC’, ‘TAB’, ‘RET’, ‘SPACE’, ‘LINE_FEED’, ‘BACK_SPACE’, ‘DEL’, ‘SEMI_COLON’, ‘PERIOD’, ‘COMMA’, ‘QUOTE’, ‘ACCENT_GRAVE’, ‘MINUS’, ‘PLUS’, ‘SLASH’, ‘BACK_SLASH’, ‘EQUAL’, ‘LEFT_BRACKET’, ‘RIGHT_BRACKET’, ‘LEFT_ARROW’, ‘DOWN_ARROW’, ‘RIGHT_ARROW’, ‘UP_ARROW’, ‘NUMPAD_2’, ‘NUMPAD_4’, ‘NUMPAD_6’, ‘NUMPAD_8’, ‘NUMPAD_1’, ‘NUMPAD_3’, ‘NUMPAD_5’, ‘NUMPAD_7’, ‘NUMPAD_9’, ‘NUMPAD_PERIOD’, ‘NUMPAD_SLASH’, ‘NUMPAD_ASTERIX’, ‘NUMPAD_0’, ‘NUMPAD_MINUS’, ‘NUMPAD_ENTER’, ‘NUMPAD_PLUS’, ‘F1’, ‘F2’, ‘F3’, ‘F4’, ‘F5’, ‘F6’, ‘F7’, ‘F8’, ‘F9’, ‘F10’, ‘F11’, ‘F12’, ‘F13’, ‘F14’, ‘F15’, ‘F16’, ‘F17’, ‘F18’, ‘F19’, ‘PAUSE’, ‘INSERT’, ‘HOME’, ‘PAGE_UP’, ‘PAGE_DOWN’, ‘END’, ‘MEDIA_PLAY’, ‘MEDIA_STOP’, ‘MEDIA_FIRST’, ‘MEDIA_LAST’, ‘TEXTINPUT’, ‘WINDOW_DEACTIVATE’, ‘TIMER’, ‘TIMER0’, ‘TIMER1’, ‘TIMER2’, ‘TIMER_JOBS’, ‘TIMER_AUTOSAVE’, ‘TIMER_REPORT’, ‘TIMERREGION’, ‘NDOF_MOTION’, ‘NDOF_BUTTON_MENU’, ‘NDOF_BUTTON_FIT’, ‘NDOF_BUTTON_TOP’, ‘NDOF_BUTTON_BOTTOM’, ‘NDOF_BUTTON_LEFT’, ‘NDOF_BUTTON_RIGHT’, ‘NDOF_BUTTON_FRONT’, ‘NDOF_BUTTON_BACK’, ‘NDOF_BUTTON_ISO1’, ‘NDOF_BUTTON_ISO2’, ‘NDOF_BUTTON_ROLL_CW’, ‘NDOF_BUTTON_ROLL_CCW’, ‘NDOF_BUTTON_SPIN_CW’, ‘NDOF_BUTTON_SPIN_CCW’, ‘NDOF_BUTTON_TILT_CW’, ‘NDOF_BUTTON_TILT_CCW’, ‘NDOF_BUTTON_ROTATE’, ‘NDOF_BUTTON_PANZOOM’, ‘NDOF_BUTTON_DOMINANT’, ‘NDOF_BUTTON_PLUS’, ‘NDOF_BUTTON_MINUS’, ‘NDOF_BUTTON_ESC’, ‘NDOF_BUTTON_ALT’, ‘NDOF_BUTTON_SHIFT’, ‘NDOF_BUTTON_CTRL’, ‘NDOF_BUTTON_1’, ‘NDOF_BUTTON_2’, ‘NDOF_BUTTON_3’, ‘NDOF_BUTTON_4’, ‘NDOF_BUTTON_5’, ‘NDOF_BUTTON_6’, ‘NDOF_BUTTON_7’, ‘NDOF_BUTTON_8’, ‘NDOF_BUTTON_9’, ‘NDOF_BUTTON_10’, ‘NDOF_BUTTON_A’, ‘NDOF_BUTTON_B’, ‘NDOF_BUTTON_C’, ‘ACTIONZONE_AREA’, ‘ACTIONZONE_REGION’, ‘ACTIONZONE_FULLSCREEN’], default ‘NONE’
	**/
	var key_modifier : bpy.types.keymapitem.KeyMapItem.Enum1;
	/**
		Type of event mapping
		
		Type: enum in [‘KEYBOARD’, ‘TWEAK’, ‘MOUSE’, ‘NDOF’, ‘TEXTINPUT’, ‘TIMER’], default ‘KEYBOARD’
	**/
	var map_type : bpy.types.keymapitem.KeyMapItem.Enum2;
	/**
		Name of operator (translated) to call on input event
		
		Type: string, default “”, (readonly, never None)
	**/
	var name(default, never) : String;
	/**
		Operating system key pressed
		
		Type: boolean, default False
	**/
	var oskey : Bool;
	/**
		Properties to set when the operator is called
		
		Type: OperatorProperties, (readonly)
	**/
	var properties(default, never) : bpy.types.operatorproperties.OperatorProperties;
	/**
		The value this event translates to in a modal keymap
		
		Type: enum in [‘NONE’], default ‘NONE’
	**/
	var propvalue : bpy.types.keymapitem.KeyMapItem.Enum3;
	/**
		Shift key pressed
		
		Type: boolean, default False
	**/
	var shift : Bool;
	/**
		Show key map event and property details in the user interface
		
		Type: boolean, default False
	**/
	var show_expanded : Bool;
	/**
		Type of event
		
		Type: enum in [‘NONE’, ‘LEFTMOUSE’, ‘MIDDLEMOUSE’, ‘RIGHTMOUSE’, ‘BUTTON4MOUSE’, ‘BUTTON5MOUSE’, ‘BUTTON6MOUSE’, ‘BUTTON7MOUSE’, ‘PEN’, ‘ERASER’, ‘MOUSEMOVE’, ‘INBETWEEN_MOUSEMOVE’, ‘TRACKPADPAN’, ‘TRACKPADZOOM’, ‘MOUSEROTATE’, ‘WHEELUPMOUSE’, ‘WHEELDOWNMOUSE’, ‘WHEELINMOUSE’, ‘WHEELOUTMOUSE’, ‘EVT_TWEAK_L’, ‘EVT_TWEAK_M’, ‘EVT_TWEAK_R’, ‘A’, ‘B’, ‘C’, ‘D’, ‘E’, ‘F’, ‘G’, ‘H’, ‘I’, ‘J’, ‘K’, ‘L’, ‘M’, ‘N’, ‘O’, ‘P’, ‘Q’, ‘R’, ‘S’, ‘T’, ‘U’, ‘V’, ‘W’, ‘X’, ‘Y’, ‘Z’, ‘ZERO’, ‘ONE’, ‘TWO’, ‘THREE’, ‘FOUR’, ‘FIVE’, ‘SIX’, ‘SEVEN’, ‘EIGHT’, ‘NINE’, ‘LEFT_CTRL’, ‘LEFT_ALT’, ‘LEFT_SHIFT’, ‘RIGHT_ALT’, ‘RIGHT_CTRL’, ‘RIGHT_SHIFT’, ‘OSKEY’, ‘GRLESS’, ‘ESC’, ‘TAB’, ‘RET’, ‘SPACE’, ‘LINE_FEED’, ‘BACK_SPACE’, ‘DEL’, ‘SEMI_COLON’, ‘PERIOD’, ‘COMMA’, ‘QUOTE’, ‘ACCENT_GRAVE’, ‘MINUS’, ‘PLUS’, ‘SLASH’, ‘BACK_SLASH’, ‘EQUAL’, ‘LEFT_BRACKET’, ‘RIGHT_BRACKET’, ‘LEFT_ARROW’, ‘DOWN_ARROW’, ‘RIGHT_ARROW’, ‘UP_ARROW’, ‘NUMPAD_2’, ‘NUMPAD_4’, ‘NUMPAD_6’, ‘NUMPAD_8’, ‘NUMPAD_1’, ‘NUMPAD_3’, ‘NUMPAD_5’, ‘NUMPAD_7’, ‘NUMPAD_9’, ‘NUMPAD_PERIOD’, ‘NUMPAD_SLASH’, ‘NUMPAD_ASTERIX’, ‘NUMPAD_0’, ‘NUMPAD_MINUS’, ‘NUMPAD_ENTER’, ‘NUMPAD_PLUS’, ‘F1’, ‘F2’, ‘F3’, ‘F4’, ‘F5’, ‘F6’, ‘F7’, ‘F8’, ‘F9’, ‘F10’, ‘F11’, ‘F12’, ‘F13’, ‘F14’, ‘F15’, ‘F16’, ‘F17’, ‘F18’, ‘F19’, ‘PAUSE’, ‘INSERT’, ‘HOME’, ‘PAGE_UP’, ‘PAGE_DOWN’, ‘END’, ‘MEDIA_PLAY’, ‘MEDIA_STOP’, ‘MEDIA_FIRST’, ‘MEDIA_LAST’, ‘TEXTINPUT’, ‘WINDOW_DEACTIVATE’, ‘TIMER’, ‘TIMER0’, ‘TIMER1’, ‘TIMER2’, ‘TIMER_JOBS’, ‘TIMER_AUTOSAVE’, ‘TIMER_REPORT’, ‘TIMERREGION’, ‘NDOF_MOTION’, ‘NDOF_BUTTON_MENU’, ‘NDOF_BUTTON_FIT’, ‘NDOF_BUTTON_TOP’, ‘NDOF_BUTTON_BOTTOM’, ‘NDOF_BUTTON_LEFT’, ‘NDOF_BUTTON_RIGHT’, ‘NDOF_BUTTON_FRONT’, ‘NDOF_BUTTON_BACK’, ‘NDOF_BUTTON_ISO1’, ‘NDOF_BUTTON_ISO2’, ‘NDOF_BUTTON_ROLL_CW’, ‘NDOF_BUTTON_ROLL_CCW’, ‘NDOF_BUTTON_SPIN_CW’, ‘NDOF_BUTTON_SPIN_CCW’, ‘NDOF_BUTTON_TILT_CW’, ‘NDOF_BUTTON_TILT_CCW’, ‘NDOF_BUTTON_ROTATE’, ‘NDOF_BUTTON_PANZOOM’, ‘NDOF_BUTTON_DOMINANT’, ‘NDOF_BUTTON_PLUS’, ‘NDOF_BUTTON_MINUS’, ‘NDOF_BUTTON_ESC’, ‘NDOF_BUTTON_ALT’, ‘NDOF_BUTTON_SHIFT’, ‘NDOF_BUTTON_CTRL’, ‘NDOF_BUTTON_1’, ‘NDOF_BUTTON_2’, ‘NDOF_BUTTON_3’, ‘NDOF_BUTTON_4’, ‘NDOF_BUTTON_5’, ‘NDOF_BUTTON_6’, ‘NDOF_BUTTON_7’, ‘NDOF_BUTTON_8’, ‘NDOF_BUTTON_9’, ‘NDOF_BUTTON_10’, ‘NDOF_BUTTON_A’, ‘NDOF_BUTTON_B’, ‘NDOF_BUTTON_C’, ‘ACTIONZONE_AREA’, ‘ACTIONZONE_REGION’, ‘ACTIONZONE_FULLSCREEN’], default ‘NONE’
	**/
	var type : bpy.types.keymapitem.KeyMapItem.Enum4;
	/**
		
		
		Type: enum in [‘ANY’, ‘NOTHING’, ‘PRESS’, ‘RELEASE’, ‘CLICK’, ‘DOUBLE_CLICK’, ‘CLICK_DRAG’, ‘NORTH’, ‘NORTH_EAST’, ‘EAST’, ‘SOUTH_EAST’, ‘SOUTH’, ‘SOUTH_WEST’, ‘WEST’, ‘NORTH_WEST’], default ‘NOTHING’
	**/
	var value : bpy.types.keymapitem.KeyMapItem.Enum5;
	/**
		compare
		@param item Item — KeyMapItem
		
		@returns boolean
	**/
	function compare(item:bpy.types.keymapitem.KeyMapItem):Bool;
	/**
		to_string
		@param compact Compact — boolean, (optional)
		
		@returns string, (never None)
	**/
	function to_string(compact:Bool):String;
	/**
		
		@param id The RNA type identifier. — string
		
		@returns bpy.types.Struct subclass
	**/
	static function bl_rna_get_subclass(id:String):bpy.types.struct.Struct;
	/**
		
		@param id The RNA type identifier. — string
		
		@returns type
	**/
	static function bl_rna_get_subclass_py(id:String):Dynamic;
}