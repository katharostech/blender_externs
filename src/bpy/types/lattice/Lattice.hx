package bpy.types.lattice;
@:enum abstract Enum1(String) from String to String {
	var KEY_LINEAR : String = "KEY_LINEAR";
	var KEY_CARDINAL : String = "KEY_CARDINAL";
	var KEY_CATMULL_ROM : String = "KEY_CATMULL_ROM";
	var KEY_BSPLINE : String = "KEY_BSPLINE";
}@:enum abstract Enum2(String) from String to String {
	var KEY_LINEAR : String = "KEY_LINEAR";
	var KEY_CARDINAL : String = "KEY_CARDINAL";
	var KEY_CATMULL_ROM : String = "KEY_CATMULL_ROM";
	var KEY_BSPLINE : String = "KEY_BSPLINE";
}@:enum abstract Enum3(String) from String to String {
	var KEY_LINEAR : String = "KEY_LINEAR";
	var KEY_CARDINAL : String = "KEY_CARDINAL";
	var KEY_CATMULL_ROM : String = "KEY_CATMULL_ROM";
	var KEY_BSPLINE : String = "KEY_BSPLINE";
}/**
	Lattice data-block defining a grid for deforming other objects
**/
@:native("bpy.types.Lattice") extern class Lattice {
	/**
		Animation data for this data-block
		
		Type: AnimData, (readonly)
	**/
	var animation_data(default, never) : bpy.types.animdata.AnimData;
	/**
		
		
		Type: enum in [‘KEY_LINEAR’, ‘KEY_CARDINAL’, ‘KEY_CATMULL_ROM’, ‘KEY_BSPLINE’], default ‘KEY_LINEAR’
	**/
	var interpolation_type_u : bpy.types.lattice.Lattice.Enum1;
	/**
		
		
		Type: enum in [‘KEY_LINEAR’, ‘KEY_CARDINAL’, ‘KEY_CATMULL_ROM’, ‘KEY_BSPLINE’], default ‘KEY_LINEAR’
	**/
	var interpolation_type_v : bpy.types.lattice.Lattice.Enum2;
	/**
		
		
		Type: enum in [‘KEY_LINEAR’, ‘KEY_CARDINAL’, ‘KEY_CATMULL_ROM’, ‘KEY_BSPLINE’], default ‘KEY_LINEAR’
	**/
	var interpolation_type_w : bpy.types.lattice.Lattice.Enum3;
	/**
		True when used in editmode
		
		Type: boolean, default False, (readonly)
	**/
	var is_editmode(default, never) : Bool;
	/**
		Points of the lattice
		
		Type: bpy_prop_collection of LatticePoint, (readonly)
	**/
	var points(default, never) : bpy.types.bpy_prop_collection.Bpy_prop_collection;
	/**
		Point in U direction (can’t be changed when there are shape keys)
		
		Type: int in [1, 64], default 0
	**/
	var points_u : Int;
	/**
		Point in V direction (can’t be changed when there are shape keys)
		
		Type: int in [1, 64], default 0
	**/
	var points_v : Int;
	/**
		Point in W direction (can’t be changed when there are shape keys)
		
		Type: int in [1, 64], default 0
	**/
	var points_w : Int;
	/**
		
		
		Type: Key, (readonly)
	**/
	var shape_keys(default, never) : bpy.types.key.Key;
	/**
		Only draw, and take into account, the outer vertices
		
		Type: boolean, default False
	**/
	var use_outside : Bool;
	/**
		Vertex group to apply the influence of the lattice
		
		Type: string, default “”, (never None)
	**/
	var vertex_group : String;
	/**
		Transform lattice by a matrix
		@param matrix Matrix — float multi-dimensional array of 4 * 4 items in [-inf, inf]
		@param shape_keys Transform Shape Keys — boolean, (optional)
	**/
	function transform(matrix:Array<Float>, shape_keys:Bool):Void;
	/**
		update_gpu_tag
	**/
	function update_gpu_tag():Void;
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
	/**
		Unique data-block ID name
		
		Type: string, default “”, (never None)
	**/
	var name : String;
	/**
		Unique data-block ID name, including library one is any
		
		Type: string, default “”, (readonly, never None)
	**/
	var name_full(default, never) : String;
	/**
		Whether this ID is runtime-only, evaluated data-block, or actual data from .blend file
		
		Type: boolean, default False, (readonly)
	**/
	var is_evaluated(default, never) : Bool;
	/**
		Actual data-block from .blend file (Main database) that generated that evaluated one
		
		Type: ID, (readonly)
	**/
	var original(default, never) : bpy.types.id.ID;
	/**
		Number of times this data-block is referenced
		
		Type: int in [0, inf], default 0, (readonly)
	**/
	var users(default, never) : Int;
	/**
		Save this data-block even if it has no users
		
		Type: boolean, default False
	**/
	var use_fake_user : Bool;
	/**
		Tools can use this to tag data for their own purposes (initial state is undefined)
		
		Type: boolean, default False
	**/
	var tag : Bool;
	/**
		Is this ID block linked indirectly
		
		Type: boolean, default False, (readonly)
	**/
	var is_library_indirect(default, never) : Bool;
	/**
		Library file the data-block is linked from
		
		Type: Library, (readonly)
	**/
	var library(default, never) : bpy.types.library.Library;
	/**
		Static override data
		
		Type: IDOverrideStatic, (readonly)
	**/
	var override_static(default, never) : bpy.types.idoverridestatic.IDOverrideStatic;
	/**
		Preview image and icon of this data-block (None if not supported for this type of data)
		
		Type: ImagePreview, (readonly)
	**/
	var preview(default, never) : bpy.types.imagepreview.ImagePreview;
	/**
		Create a copy of this data-block (not supported for all data-blocks)
		
		@returns ID
	**/
	function copy():bpy.types.id.ID;
	/**
		Create an overridden local copy of this linked data-block (not supported for all data-blocks)
		
		@returns ID
	**/
	function override_create():bpy.types.id.ID;
	/**
		Clear the user count of a data-block so its not saved, on reload the data will be removed
		
		This function is for advanced use only, misuse can crash blender since the user
		count is used to prevent data being removed when it is used.
	**/
	function user_clear():Void;
	/**
		Replace all usage in the .blend file of this ID by new given one
		@param new_id New ID to use — ID, (never None)
	**/
	function user_remap(new_id:bpy.types.id.ID):Void;
	/**
		Make this datablock local, return local one (may be a copy of the original, in case it is also indirectly used)
		@param clear_proxy Whether to clear proxies (the default behavior, note that if object has to be duplicated to be made local, proxies are always cleared) — boolean, (optional)
		
		@returns ID
	**/
	function make_local(clear_proxy:Bool):bpy.types.id.ID;
	/**
		Count the number of times that ID uses/references given one
		@param id ID to count usages — ID, (never None)
		
		@returns int in [0, inf]
	**/
	function user_of_id(id:bpy.types.id.ID):Int;
	/**
		Create animation data to this ID, note that not all ID types support this
		
		@returns AnimData
	**/
	function animation_data_create():bpy.types.animdata.AnimData;
	/**
		Clear animation on this this ID
	**/
	function animation_data_clear():Void;
	/**
		Tag the ID to update its display data, e.g. when calling bpy.types.Scene.update
		@param refresh Type of updates to perform — enum set in {'OBJECT', 'DATA', 'TIME'}, (optional)
	**/
	function update_tag(refresh:Dynamic):Void;
}