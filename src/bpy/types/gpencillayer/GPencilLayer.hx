package bpy.types.gpencillayer;
@:enum abstract Enum1(String) from String to String {
	var NORMAL : String = "NORMAL";
	var OVERLAY : String = "OVERLAY";
	var ADD : String = "ADD";
	var SUBTRACT : String = "SUBTRACT";
	var MULTIPLY : String = "MULTIPLY";
	var DIVIDE : String = "DIVIDE";
}@:enum abstract Enum2(String) from String to String {
	var OBJECT : String = "OBJECT";
	var ARMATURE : String = "ARMATURE";
	var BONE : String = "BONE";
}/**
	Collection of related sketches
**/
@:native("bpy.types.GPencilLayer") extern class GPencilLayer {
	/**
		Frame currently being displayed for this layer
		
		Type: GPencilFrame, (readonly)
	**/
	var active_frame(default, never) : bpy.types.gpencilframe.GPencilFrame;
	/**
		Base color for ghosts after the active frame
		
		Type: float array of 3 items in [0, 1], default (0.25, 0.1, 1.0)
	**/
	var annotation_onion_after_color : Array<Float>;
	/**
		Maximum number of frames to show after current frame
		
		Type: int in [-1, 120], default 0
	**/
	var annotation_onion_after_range : Int;
	/**
		Base color for ghosts before the active frame
		
		Type: float array of 3 items in [0, 1], default (0.302, 0.851, 0.302)
	**/
	var annotation_onion_before_color : Array<Float>;
	/**
		Maximum number of frames to show before current frame
		
		Type: int in [-1, 120], default 0
	**/
	var annotation_onion_before_range : Int;
	/**
		Blend mode
		
		Type: enum in [‘NORMAL’, ‘OVERLAY’, ‘ADD’, ‘SUBTRACT’, ‘MULTIPLY’, ‘DIVIDE’], default ‘NORMAL’
	**/
	var blend_mode : bpy.types.gpencillayer.GPencilLayer.Enum1;
	/**
		Clamp any pixel outside underlying layers drawing
		
		Type: boolean, default False
	**/
	var clamp_layer : Bool;
	/**
		Color for all strokes in this layer
		
		Type: float array of 3 items in [0, 1], default (0.0, 0.0, 0.0)
	**/
	var color : Array<Float>;
	/**
		Sketches for this layer on different frames
		
		Type: GPencilFrames bpy_prop_collection of GPencilFrame, (readonly)
	**/
	var frames(default, never) : bpy.types.gpencilframes.GPencilFrames;
	/**
		Set layer Visibility
		
		Type: boolean, default False
	**/
	var hide : Bool;
	/**
		Layer name
		
		Type: string, default “”, (never None)
	**/
	var info : String;
	/**
		True when the layer parent object is set
		
		Type: boolean, default False, (readonly)
	**/
	var is_parented(default, never) : Bool;
	/**
		Thickness change to apply to current strokes (in pixels)
		
		Type: int in [-300, 300], default 0
	**/
	var line_change : Int;
	/**
		Protect layer from further editing and/or frame changes
		
		Type: boolean, default False
	**/
	var lock : Bool;
	/**
		Lock current frame displayed by layer
		
		Type: boolean, default False
	**/
	var lock_frame : Bool;
	/**
		Disable Material editing
		
		Type: boolean, default False
	**/
	var lock_material : Bool;
	/**
		Parent inverse transformation matrix
		
		Type: float multi-dimensional array of 4 * 4 items in [-inf, inf], default ((0.0, 0.0, 0.0, 0.0), (0.0, 0.0, 0.0, 0.0), (0.0, 0.0, 0.0, 0.0), (0.0, 0.0, 0.0, 0.0))
	**/
	var matrix_inverse : Array<Float>;
	/**
		Layer Opacity
		
		Type: float in [0, 1], default 0.0
	**/
	var opacity : Float;
	/**
		Parent Object
		
		Type: Object
	**/
	var parent : bpy.types.object.Object;
	/**
		Name of parent bone in case of a bone parenting relation
		
		Type: string, default “”, (never None)
	**/
	var parent_bone : String;
	/**
		Type of parent relation
		
		Type: enum in [‘OBJECT’, ‘ARMATURE’, ‘BONE’], default ‘OBJECT’
	**/
	var parent_type : bpy.types.gpencillayer.GPencilLayer.Enum2;
	/**
		Index number for the “Layer Index” pass
		
		Type: int in [0, 32767], default 0
	**/
	var pass_index : Int;
	/**
		Layer is selected for editing in the Dope Sheet
		
		Type: boolean, default False
	**/
	var select : Bool;
	/**
		Make the layer draw in front of objects
		
		Type: boolean, default False
	**/
	var show_in_front : Bool;
	/**
		Draw the points which make up the strokes (for debugging purposes)
		
		Type: boolean, default False
	**/
	var show_points : Bool;
	/**
		Thickness of annotation strokes
		
		Type: int in [1, 10], default 0
	**/
	var thickness : Int;
	/**
		Color for tinting stroke colors
		
		Type: float array of 3 items in [0, 1], default (0.0, 0.0, 0.0)
	**/
	var tint_color : Array<Float>;
	/**
		Factor of tinting color
		
		Type: float in [0, 1], default 0.0
	**/
	var tint_factor : Float;
	/**
		Display annotation onion skins before and after the current frame
		
		Type: boolean, default False
	**/
	var use_annotation_onion_skinning : Bool;
	/**
		Display onion skins before and after the current frame
		
		Type: boolean, default False
	**/
	var use_onion_skinning : Bool;
	/**
		Only include Layer in this View Layer render output (leave blank to include always)
		
		Type: string, default “”, (never None)
	**/
	var viewlayer_render : String;
	/**
		Remove all the grease pencil layer data
	**/
	function clear():Void;
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