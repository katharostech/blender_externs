package bpy.types.userpreferencesedit;
@:enum abstract Enum1(String) from String to String {
	var ADD_REPLACE_KEYS : String = "ADD_REPLACE_KEYS";
	var REPLACE_KEYS : String = "REPLACE_KEYS";
}@:enum abstract Enum2(String) from String to String {
	var FREE : String = "FREE";
	var ALIGNED : String = "ALIGNED";
	var VECTOR : String = "VECTOR";
	var AUTO : String = "AUTO";
	var AUTO_CLAMPED : String = "AUTO_CLAMPED";
}@:enum abstract Enum3(String) from String to String {
	var CONSTANT : String = "CONSTANT";
	var LINEAR : String = "LINEAR";
	var BEZIER : String = "BEZIER";
	var SINE : String = "SINE";
	var QUAD : String = "QUAD";
	var CUBIC : String = "CUBIC";
	var QUART : String = "QUART";
	var QUINT : String = "QUINT";
	var EXPO : String = "EXPO";
	var CIRC : String = "CIRC";
	var BACK : String = "BACK";
	var BOUNCE : String = "BOUNCE";
	var ELASTIC : String = "ELASTIC";
}@:enum abstract Enum4(String) from String to String {
	var OBDATA : String = "OBDATA";
	var OBJECT : String = "OBJECT";
}@:enum abstract Enum5(String) from String to String {
	var WORLD : String = "WORLD";
	var VIEW : String = "VIEW";
}/**
	Settings for interacting with Blender data
**/
@:native("bpy.types.UserPreferencesEdit") extern class UserPreferencesEdit {
	/**
		Mode of automatic keyframe insertion for Objects and Bones (default setting used for new Scenes)
		
		Type: enum in [‘ADD_REPLACE_KEYS’, ‘REPLACE_KEYS’], default ‘ADD_REPLACE_KEYS’
	**/
	var auto_keying_mode : bpy.types.userpreferencesedit.UserPreferencesEdit.Enum1;
	/**
		Amount that unselected F-Curves stand out from the background (Graph Editor)
		
		Type: float in [0.001, 1], default 0.0
	**/
	var fcurve_unselected_alpha : Float;
	/**
		Color of new annotation layers
		
		Type: float array of 4 items in [0, inf], default (0.0, 0.0, 0.0, 0.0)
	**/
	var grease_pencil_default_color : Array<Float>;
	/**
		Radius of eraser ‘brush’
		
		Type: int in [1, 500], default 0
	**/
	var grease_pencil_eraser_radius : Int;
	/**
		Distance moved by mouse when drawing stroke to include
		
		Type: int in [0, 100], default 0
	**/
	var grease_pencil_euclidean_distance : Int;
	/**
		Pixels moved by mouse per axis when drawing stroke
		
		Type: int in [0, 100], default 0
	**/
	var grease_pencil_manhattan_distance : Int;
	/**
		Handle type for handles of new keyframes
		
		Type: enum in [‘FREE’, ‘ALIGNED’, ‘VECTOR’, ‘AUTO’, ‘AUTO_CLAMPED’], default ‘FREE’
	**/
	var keyframe_new_handle_type : bpy.types.userpreferencesedit.UserPreferencesEdit.Enum2;
	/**
		Interpolation mode used for first keyframe on newly added F-Curves (subsequent keyframes take interpolation from preceding keyframe)
		
		Type: enum in [‘CONSTANT’, ‘LINEAR’, ‘BEZIER’, ‘SINE’, ‘QUAD’, ‘CUBIC’, ‘QUART’, ‘QUINT’, ‘EXPO’, ‘CIRC’, ‘BACK’, ‘BOUNCE’, ‘ELASTIC’], default ‘CONSTANT’
	**/
	var keyframe_new_interpolation_type : bpy.types.userpreferencesedit.UserPreferencesEdit.Enum3;
	/**
		Toggle whether the material is linked to object data or the object block
		
		Type: enum in [‘OBDATA’, ‘OBJECT’], default ‘OBDATA’
	**/
	var material_link : bpy.types.userpreferencesedit.UserPreferencesEdit.Enum4;
	/**
		Minimum distance between nodes for Auto-offsetting nodes
		
		Type: int in [0, 255], default 0
	**/
	var node_margin : Int;
	/**
		When adding objects from a 3D View menu, either align them with that view or with the world
		
		Type: enum in [‘WORLD’, ‘VIEW’], default ‘WORLD’
	**/
	var object_align : bpy.types.userpreferencesedit.UserPreferencesEdit.Enum5;
	/**
		Color of texture overlay
		
		Type: float array of 3 items in [0, inf], default (0.0, 0.0, 0.0)
	**/
	var sculpt_paint_overlay_color : Array<Float>;
	/**
		Maximum memory usage in megabytes (0 means unlimited)
		
		Type: int in [0, inf], default 0
	**/
	var undo_memory_limit : Int;
	/**
		Number of undo steps available (smaller values conserve memory)
		
		Type: int in [0, 256], default 0
	**/
	var undo_steps : Int;
	/**
		Automatic keyframe insertion for Objects and Bones (default setting used for new Scenes)
		
		Type: boolean, default False
	**/
	var use_auto_keying : Bool;
	/**
		Show warning indicators when transforming objects and bones if auto keying is enabled
		
		Type: boolean, default False
	**/
	var use_auto_keying_warning : Bool;
	/**
		Moving things with a mouse drag confirms when releasing the button
		
		Type: boolean, default False
	**/
	var use_drag_immediately : Bool;
	/**
		Causes actions to be duplicated with the object
		
		Type: boolean, default False
	**/
	var use_duplicate_action : Bool;
	/**
		Causes armature data to be duplicated with the object
		
		Type: boolean, default False
	**/
	var use_duplicate_armature : Bool;
	/**
		Causes curve data to be duplicated with the object
		
		Type: boolean, default False
	**/
	var use_duplicate_curve : Bool;
	/**
		Causes F-curve data to be duplicated with the object
		
		Type: boolean, default False
	**/
	var use_duplicate_fcurve : Bool;
	/**
		Causes light data to be duplicated with the object
		
		Type: boolean, default False
	**/
	var use_duplicate_light : Bool;
	/**
		Causes material data to be duplicated with the object
		
		Type: boolean, default False
	**/
	var use_duplicate_material : Bool;
	/**
		Causes mesh data to be duplicated with the object
		
		Type: boolean, default False
	**/
	var use_duplicate_mesh : Bool;
	/**
		Causes metaball data to be duplicated with the object
		
		Type: boolean, default False
	**/
	var use_duplicate_metaball : Bool;
	/**
		Causes particle systems to be duplicated with the object
		
		Type: boolean, default False
	**/
	var use_duplicate_particle : Bool;
	/**
		Causes surface data to be duplicated with the object
		
		Type: boolean, default False
	**/
	var use_duplicate_surface : Bool;
	/**
		Causes text data to be duplicated with the object
		
		Type: boolean, default False
	**/
	var use_duplicate_text : Bool;
	/**
		Causes texture data to be duplicated with the object
		
		Type: boolean, default False
	**/
	var use_duplicate_texture : Bool;
	/**
		Enter Edit Mode automatically after adding a new object
		
		Type: boolean, default False
	**/
	var use_enter_edit_mode : Bool;
	/**
		Global undo works by keeping a full copy of the file itself in memory, so takes extra memory
		
		Type: boolean, default False
	**/
	var use_global_undo : Bool;
	/**
		Simplify the final stroke
		
		Type: boolean, default False
	**/
	var use_grease_pencil_simplify_stroke : Bool;
	/**
		Color for newly added transformation F-Curves (Location, Rotation, Scale) and also Color is based on the transform axis
		
		Type: boolean, default False
	**/
	var use_insertkey_xyz_to_rgb : Bool;
	/**
		Automatic keyframe insertion in available F-Curves
		
		Type: boolean, default False
	**/
	var use_keyframe_insert_available : Bool;
	/**
		Keyframe insertion only when keyframe needed
		
		Type: boolean, default False
	**/
	var use_keyframe_insert_needed : Bool;
	/**
		Current frame number can be manually set to a negative value
		
		Type: boolean, default False
	**/
	var use_negative_frames : Bool;
	/**
		When entering numbers while transforming, default to advanced mode for full math expression evaluation
		
		Type: boolean, default False
	**/
	var use_numeric_input_advanced : Bool;
	/**
		Use Visual keying automatically for constrained objects
		
		Type: boolean, default False
	**/
	var use_visual_keying : Bool;
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