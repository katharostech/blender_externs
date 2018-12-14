package bpy.types.metaball;
@:enum abstract Enum1(String) from String to String {
	var UPDATE_ALWAYS : String = "UPDATE_ALWAYS";
	var HALFRES : String = "HALFRES";
	var FAST : String = "FAST";
	var NEVER : String = "NEVER";
}/**
	Metaball data-block to defined blobby surfaces
**/
@:pythonImport("bpy.types.MetaBall") extern class MetaBall {
	/**
		Animation data for this data-block
		
		Type: AnimData, (readonly)
	**/
	var animation_data(default, never) : bpy.types.animdata.AnimData;
	/**
		Cycles mesh settings
		
		Type: CyclesMeshSettings, (readonly)
	**/
	var cycles(default, never) : bpy.types.cyclesmeshsettings.CyclesMeshSettings;
	/**
		Meta elements
		
		Type: MetaBallElements bpy_prop_collection of MetaElement, (readonly)
	**/
	var elements(default, never) : bpy.types.metaballelements.MetaBallElements;
	/**
		True when used in editmode
		
		Type: boolean, default False, (readonly)
	**/
	var is_editmode(default, never) : Bool;
	/**
		
		
		Type: IDMaterials bpy_prop_collection of Material, (readonly)
	**/
	var materials(default, never) : bpy.types.idmaterials.IDMaterials;
	/**
		Polygonization resolution in rendering
		
		Type: float in [0.005, 10000], default 0.0
	**/
	var render_resolution : Float;
	/**
		Polygonization resolution in the 3D viewport
		
		Type: float in [0.005, 10000], default 0.0
	**/
	var resolution : Float;
	/**
		Texture space location
		
		Type: float array of 3 items in [-inf, inf], default (0.0, 0.0, 0.0)
	**/
	var texspace_location : Array<Float>;
	/**
		Texture space size
		
		Type: float array of 3 items in [-inf, inf], default (0.0, 0.0, 0.0)
	**/
	var texspace_size : Array<Float>;
	/**
		Influence of meta elements
		
		Type: float in [0, 5], default 0.0
	**/
	var threshold : Float;
	/**
		Metaball edit update behavior
		
		Type: enum in [‘UPDATE_ALWAYS’, ‘HALFRES’, ‘FAST’, ‘NEVER’], default ‘UPDATE_ALWAYS’
	**/
	var update_method : bpy.types.metaball.MetaBall.Enum1;
	/**
		Adjust active object’s texture space automatically when transforming object
		
		Type: boolean, default False
	**/
	var use_auto_texspace : Bool;
	/**
		Transform meta elements by a matrix
		@param matrix Matrix — float multi-dimensional array of 4 * 4 items in [-inf, inf]
	**/
	function transform(matrix:Array<Float>):Void;
	/**
		update_gpu_tag
	**/
	function update_gpu_tag():Void;
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