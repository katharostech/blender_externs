package bpy.types.motionpath;
/**
	Cache of the worldspace positions of an element over a frame range
**/
@:pythonImport("bpy.types.MotionPath") extern class MotionPath {
	/**
		Custom color for motion path
		
		Type: float array of 3 items in [0, inf], default (0.0, 0.0, 0.0)
	**/
	var color : Array<Float>;
	/**
		End frame of the stored range
		
		Type: int in [-inf, inf], default 0, (readonly)
	**/
	var frame_end(default, never) : Int;
	/**
		Starting frame of the stored range
		
		Type: int in [-inf, inf], default 0, (readonly)
	**/
	var frame_start(default, never) : Int;
	/**
		Path is being edited
		
		Type: boolean, default False
	**/
	var is_modified : Bool;
	/**
		Number of frames cached
		
		Type: int in [-inf, inf], default 0, (readonly)
	**/
	var length(default, never) : Int;
	/**
		Line thickness for drawing path
		
		Type: int in [1, 6], default 0
	**/
	var line_thickness : Int;
	/**
		Draw straight lines between keyframe points
		
		Type: boolean, default False
	**/
	var lines : Bool;
	/**
		Cached positions per frame
		
		Type: bpy_prop_collection of MotionPathVert, (readonly)
	**/
	var points(default, never) : bpy.types.bpy_prop_collection.Bpy_prop_collection;
	/**
		For PoseBone paths, use the bone head location when calculating this path
		
		Type: boolean, default False, (readonly)
	**/
	var use_bone_head(default, never) : Bool;
	/**
		Use custom color for this motion path
		
		Type: boolean, default False
	**/
	var use_custom_color : Bool;
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