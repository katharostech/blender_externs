package bpy.types.event;
@:enum abstract Enum1(String) from String to String {
	var NONE : String = "NONE";
	var LEFTMOUSE : String = "LEFTMOUSE";
	var MIDDLEMOUSE : String = "MIDDLEMOUSE";
	var RIGHTMOUSE : String = "RIGHTMOUSE";
	var BUTTON4MOUSE : String = "BUTTON4MOUSE";
	var BUTTON5MOUSE : String = "BUTTON5MOUSE";
	var BUTTON6MOUSE : String = "BUTTON6MOUSE";
	var BUTTON7MOUSE : String = "BUTTON7MOUSE";
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
	var NUMPAD_2 : String = "NUMPAD_2";
	var NUMPAD_4 : String = "NUMPAD_4";
	var NUMPAD_6 : String = "NUMPAD_6";
	var NUMPAD_8 : String = "NUMPAD_8";
	var NUMPAD_1 : String = "NUMPAD_1";
	var NUMPAD_3 : String = "NUMPAD_3";
	var NUMPAD_5 : String = "NUMPAD_5";
	var NUMPAD_7 : String = "NUMPAD_7";
	var NUMPAD_9 : String = "NUMPAD_9";
	var NUMPAD_PERIOD : String = "NUMPAD_PERIOD";
	var NUMPAD_SLASH : String = "NUMPAD_SLASH";
	var NUMPAD_ASTERIX : String = "NUMPAD_ASTERIX";
	var NUMPAD_0 : String = "NUMPAD_0";
	var NUMPAD_MINUS : String = "NUMPAD_MINUS";
	var NUMPAD_ENTER : String = "NUMPAD_ENTER";
	var NUMPAD_PLUS : String = "NUMPAD_PLUS";
	var F1 : String = "F1";
	var F2 : String = "F2";
	var F3 : String = "F3";
	var F4 : String = "F4";
	var F5 : String = "F5";
	var F6 : String = "F6";
	var F7 : String = "F7";
	var F8 : String = "F8";
	var F9 : String = "F9";
	var F10 : String = "F10";
	var F11 : String = "F11";
	var F12 : String = "F12";
	var F13 : String = "F13";
	var F14 : String = "F14";
	var F15 : String = "F15";
	var F16 : String = "F16";
	var F17 : String = "F17";
	var F18 : String = "F18";
	var F19 : String = "F19";
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
	var TIMER0 : String = "TIMER0";
	var TIMER1 : String = "TIMER1";
	var TIMER2 : String = "TIMER2";
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
	var NDOF_BUTTON_ISO1 : String = "NDOF_BUTTON_ISO1";
	var NDOF_BUTTON_ISO2 : String = "NDOF_BUTTON_ISO2";
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
	var NDOF_BUTTON_1 : String = "NDOF_BUTTON_1";
	var NDOF_BUTTON_2 : String = "NDOF_BUTTON_2";
	var NDOF_BUTTON_3 : String = "NDOF_BUTTON_3";
	var NDOF_BUTTON_4 : String = "NDOF_BUTTON_4";
	var NDOF_BUTTON_5 : String = "NDOF_BUTTON_5";
	var NDOF_BUTTON_6 : String = "NDOF_BUTTON_6";
	var NDOF_BUTTON_7 : String = "NDOF_BUTTON_7";
	var NDOF_BUTTON_8 : String = "NDOF_BUTTON_8";
	var NDOF_BUTTON_9 : String = "NDOF_BUTTON_9";
	var NDOF_BUTTON_10 : String = "NDOF_BUTTON_10";
	var NDOF_BUTTON_A : String = "NDOF_BUTTON_A";
	var NDOF_BUTTON_B : String = "NDOF_BUTTON_B";
	var NDOF_BUTTON_C : String = "NDOF_BUTTON_C";
	var ACTIONZONE_AREA : String = "ACTIONZONE_AREA";
	var ACTIONZONE_REGION : String = "ACTIONZONE_REGION";
	var ACTIONZONE_FULLSCREEN : String = "ACTIONZONE_FULLSCREEN";
}@:enum abstract Enum2(String) from String to String {
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
	Window Manager Event
**/
@:pythonImport("bpy.types.Event") extern class Event {
	/**
		True when the Alt/Option key is held
		
		Type: boolean, default False, (readonly)
	**/
	var alt(default, never) : Bool;
	/**
		Single ASCII character for this event
		
		Type: string, default “”, (readonly, never None)
	**/
	var ascii(default, never) : String;
	/**
		True when the Ctrl key is held
		
		Type: boolean, default False, (readonly)
	**/
	var ctrl(default, never) : Bool;
	/**
		The last motion event was an absolute input
		
		Type: boolean, default False, (readonly)
	**/
	var is_mouse_absolute(default, never) : Bool;
	/**
		The event has tablet data
		
		Type: boolean, default False, (readonly)
	**/
	var is_tablet(default, never) : Bool;
	/**
		The window relative horizontal location of the mouse
		
		Type: int in [-inf, inf], default 0, (readonly)
	**/
	var mouse_prev_x(default, never) : Int;
	/**
		The window relative vertical location of the mouse
		
		Type: int in [-inf, inf], default 0, (readonly)
	**/
	var mouse_prev_y(default, never) : Int;
	/**
		The region relative horizontal location of the mouse
		
		Type: int in [-inf, inf], default 0, (readonly)
	**/
	var mouse_region_x(default, never) : Int;
	/**
		The region relative vertical location of the mouse
		
		Type: int in [-inf, inf], default 0, (readonly)
	**/
	var mouse_region_y(default, never) : Int;
	/**
		The window relative horizontal location of the mouse
		
		Type: int in [-inf, inf], default 0, (readonly)
	**/
	var mouse_x(default, never) : Int;
	/**
		The window relative vertical location of the mouse
		
		Type: int in [-inf, inf], default 0, (readonly)
	**/
	var mouse_y(default, never) : Int;
	/**
		True when the Cmd key is held
		
		Type: boolean, default False, (readonly)
	**/
	var oskey(default, never) : Bool;
	/**
		The pressure of the tablet or 1.0 if no tablet present
		
		Type: float in [-inf, inf], default 0.0, (readonly)
	**/
	var pressure(default, never) : Float;
	/**
		True when the Shift key is held
		
		Type: boolean, default False, (readonly)
	**/
	var shift(default, never) : Bool;
	/**
		The pressure of the tablet or zeroes if no tablet present
		
		Type: float array of 2 items in [-inf, inf], default (0.0, 0.0), (readonly)
	**/
	var tilt(default, never) : Array<Float>;
	/**
		
		
		Type: enum in [‘NONE’, ‘LEFTMOUSE’, ‘MIDDLEMOUSE’, ‘RIGHTMOUSE’, ‘BUTTON4MOUSE’, ‘BUTTON5MOUSE’, ‘BUTTON6MOUSE’, ‘BUTTON7MOUSE’, ‘PEN’, ‘ERASER’, ‘MOUSEMOVE’, ‘INBETWEEN_MOUSEMOVE’, ‘TRACKPADPAN’, ‘TRACKPADZOOM’, ‘MOUSEROTATE’, ‘WHEELUPMOUSE’, ‘WHEELDOWNMOUSE’, ‘WHEELINMOUSE’, ‘WHEELOUTMOUSE’, ‘EVT_TWEAK_L’, ‘EVT_TWEAK_M’, ‘EVT_TWEAK_R’, ‘A’, ‘B’, ‘C’, ‘D’, ‘E’, ‘F’, ‘G’, ‘H’, ‘I’, ‘J’, ‘K’, ‘L’, ‘M’, ‘N’, ‘O’, ‘P’, ‘Q’, ‘R’, ‘S’, ‘T’, ‘U’, ‘V’, ‘W’, ‘X’, ‘Y’, ‘Z’, ‘ZERO’, ‘ONE’, ‘TWO’, ‘THREE’, ‘FOUR’, ‘FIVE’, ‘SIX’, ‘SEVEN’, ‘EIGHT’, ‘NINE’, ‘LEFT_CTRL’, ‘LEFT_ALT’, ‘LEFT_SHIFT’, ‘RIGHT_ALT’, ‘RIGHT_CTRL’, ‘RIGHT_SHIFT’, ‘OSKEY’, ‘GRLESS’, ‘ESC’, ‘TAB’, ‘RET’, ‘SPACE’, ‘LINE_FEED’, ‘BACK_SPACE’, ‘DEL’, ‘SEMI_COLON’, ‘PERIOD’, ‘COMMA’, ‘QUOTE’, ‘ACCENT_GRAVE’, ‘MINUS’, ‘PLUS’, ‘SLASH’, ‘BACK_SLASH’, ‘EQUAL’, ‘LEFT_BRACKET’, ‘RIGHT_BRACKET’, ‘LEFT_ARROW’, ‘DOWN_ARROW’, ‘RIGHT_ARROW’, ‘UP_ARROW’, ‘NUMPAD_2’, ‘NUMPAD_4’, ‘NUMPAD_6’, ‘NUMPAD_8’, ‘NUMPAD_1’, ‘NUMPAD_3’, ‘NUMPAD_5’, ‘NUMPAD_7’, ‘NUMPAD_9’, ‘NUMPAD_PERIOD’, ‘NUMPAD_SLASH’, ‘NUMPAD_ASTERIX’, ‘NUMPAD_0’, ‘NUMPAD_MINUS’, ‘NUMPAD_ENTER’, ‘NUMPAD_PLUS’, ‘F1’, ‘F2’, ‘F3’, ‘F4’, ‘F5’, ‘F6’, ‘F7’, ‘F8’, ‘F9’, ‘F10’, ‘F11’, ‘F12’, ‘F13’, ‘F14’, ‘F15’, ‘F16’, ‘F17’, ‘F18’, ‘F19’, ‘PAUSE’, ‘INSERT’, ‘HOME’, ‘PAGE_UP’, ‘PAGE_DOWN’, ‘END’, ‘MEDIA_PLAY’, ‘MEDIA_STOP’, ‘MEDIA_FIRST’, ‘MEDIA_LAST’, ‘TEXTINPUT’, ‘WINDOW_DEACTIVATE’, ‘TIMER’, ‘TIMER0’, ‘TIMER1’, ‘TIMER2’, ‘TIMER_JOBS’, ‘TIMER_AUTOSAVE’, ‘TIMER_REPORT’, ‘TIMERREGION’, ‘NDOF_MOTION’, ‘NDOF_BUTTON_MENU’, ‘NDOF_BUTTON_FIT’, ‘NDOF_BUTTON_TOP’, ‘NDOF_BUTTON_BOTTOM’, ‘NDOF_BUTTON_LEFT’, ‘NDOF_BUTTON_RIGHT’, ‘NDOF_BUTTON_FRONT’, ‘NDOF_BUTTON_BACK’, ‘NDOF_BUTTON_ISO1’, ‘NDOF_BUTTON_ISO2’, ‘NDOF_BUTTON_ROLL_CW’, ‘NDOF_BUTTON_ROLL_CCW’, ‘NDOF_BUTTON_SPIN_CW’, ‘NDOF_BUTTON_SPIN_CCW’, ‘NDOF_BUTTON_TILT_CW’, ‘NDOF_BUTTON_TILT_CCW’, ‘NDOF_BUTTON_ROTATE’, ‘NDOF_BUTTON_PANZOOM’, ‘NDOF_BUTTON_DOMINANT’, ‘NDOF_BUTTON_PLUS’, ‘NDOF_BUTTON_MINUS’, ‘NDOF_BUTTON_ESC’, ‘NDOF_BUTTON_ALT’, ‘NDOF_BUTTON_SHIFT’, ‘NDOF_BUTTON_CTRL’, ‘NDOF_BUTTON_1’, ‘NDOF_BUTTON_2’, ‘NDOF_BUTTON_3’, ‘NDOF_BUTTON_4’, ‘NDOF_BUTTON_5’, ‘NDOF_BUTTON_6’, ‘NDOF_BUTTON_7’, ‘NDOF_BUTTON_8’, ‘NDOF_BUTTON_9’, ‘NDOF_BUTTON_10’, ‘NDOF_BUTTON_A’, ‘NDOF_BUTTON_B’, ‘NDOF_BUTTON_C’, ‘ACTIONZONE_AREA’, ‘ACTIONZONE_REGION’, ‘ACTIONZONE_FULLSCREEN’], default ‘NONE’, (readonly)
	**/
	var type(default, never) : bpy.types.event.Event.Enum1;
	/**
		Single unicode character for this event
		
		Type: string, default “”, (readonly, never None)
	**/
	var unicode(default, never) : String;
	/**
		The type of event, only applies to some
		
		Type: enum in [‘ANY’, ‘NOTHING’, ‘PRESS’, ‘RELEASE’, ‘CLICK’, ‘DOUBLE_CLICK’, ‘CLICK_DRAG’, ‘NORTH’, ‘NORTH_EAST’, ‘EAST’, ‘SOUTH_EAST’, ‘SOUTH’, ‘SOUTH_WEST’, ‘WEST’, ‘NORTH_WEST’], default ‘NOTHING’, (readonly)
	**/
	var value(default, never) : bpy.types.event.Event.Enum2;
	/**
		
		@param id The RNA type identifier. — string
		
		@returns bpy.types.Struct subclass
	**/
	static function bl_rna_get_subclass(id:Dynamic):bpy.types.struct.Struct;
	/**
		
		@param id The RNA type identifier. — string
		
		@returns type
	**/
	static function bl_rna_get_subclass_py(id:Dynamic):Dynamic;
}