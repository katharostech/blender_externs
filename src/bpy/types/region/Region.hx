package bpy.types.region;
@:enum abstract Enum1(String) from String to String {
	var NONE : String = "NONE";
	var TOP : String = "TOP";
	var BOTTOM : String = "BOTTOM";
	var LEFT : String = "LEFT";
	var RIGHT : String = "RIGHT";
	var HORIZONTAL_SPLIT : String = "HORIZONTAL_SPLIT";
	var VERTICAL_SPLIT : String = "VERTICAL_SPLIT";
	var FLOAT : String = "FLOAT";
	var QUAD_SPLIT : String = "QUAD_SPLIT";
}@:enum abstract Enum2(String) from String to String {
	var WINDOW : String = "WINDOW";
	var HEADER : String = "HEADER";
	var CHANNELS : String = "CHANNELS";
	var TEMPORARY : String = "TEMPORARY";
	var UI : String = "UI";
	var TOOLS : String = "TOOLS";
	var TOOL_PROPS : String = "TOOL_PROPS";
	var PREVIEW : String = "PREVIEW";
	var NAVIGATION_BAR : String = "NAVIGATION_BAR";
}/**
	Region in a subdivided screen area
**/
@:pythonImport("bpy.types.Region") extern class Region {
	/**
		Alignment of the region within the area
		
		Type: enum in [‘NONE’, ‘TOP’, ‘BOTTOM’, ‘LEFT’, ‘RIGHT’, ‘HORIZONTAL_SPLIT’, ‘VERTICAL_SPLIT’, ‘FLOAT’, ‘QUAD_SPLIT’], default ‘NONE’, (readonly)
	**/
	var alignment(default, never) : bpy.types.region.Region.Enum1;
	/**
		Region height
		
		Type: int in [0, 32767], default 0, (readonly)
	**/
	var height(default, never) : Int;
	/**
		Type of this region
		
		Type: enum in [‘WINDOW’, ‘HEADER’, ‘CHANNELS’, ‘TEMPORARY’, ‘UI’, ‘TOOLS’, ‘TOOL_PROPS’, ‘PREVIEW’, ‘NAVIGATION_BAR’], default ‘WINDOW’, (readonly)
	**/
	var type(default, never) : bpy.types.region.Region.Enum2;
	/**
		2D view of the region
		
		Type: View2D, (readonly, never None)
	**/
	var view2d(default, never) : bpy.types.view2d.View2D;
	/**
		Region width
		
		Type: int in [0, 32767], default 0, (readonly)
	**/
	var width(default, never) : Int;
	/**
		The window relative vertical location of the region
		
		Type: int in [-inf, inf], default 0, (readonly)
	**/
	var x(default, never) : Int;
	/**
		The window relative horizontal location of the region
		
		Type: int in [-inf, inf], default 0, (readonly)
	**/
	var y(default, never) : Int;
	/**
		tag_redraw
	**/
	function tag_redraw():Void;
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