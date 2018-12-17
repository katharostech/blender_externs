package bpy.types.greasepencil;
@:enum abstract Enum1(String) from String to String {
	var ABSOLUTE : String = "ABSOLUTE";
	var RELATIVE : String = "RELATIVE";
	var SELECTED : String = "SELECTED";
}@:enum abstract Enum2(String) from String to String {
	var FRONT : String = "FRONT";
	var py3DSPACE : String = "3DSPACE";
	var BACK : String = "BACK";
}/**
	Freehand annotation sketchbook
**/
@:native("bpy.types.GreasePencil") extern class GreasePencil {
	/**
		Base color for ghosts after the active frame
		
		Type: float array of 3 items in [0, 1], default (0.12549, 0.082353, 0.529412)
	**/
	var after_color : Array<Float>;
	/**
		Animation data for this data-block
		
		Type: AnimData, (readonly)
	**/
	var animation_data(default, never) : bpy.types.animdata.AnimData;
	/**
		Base color for ghosts before the active frame
		
		Type: float array of 3 items in [0, 1], default (0.145098, 0.419608, 0.137255)
	**/
	var before_color : Array<Float>;
	/**
		Color for editing line
		
		Type: float array of 4 items in [0, 1], default (0.6, 0.6, 0.6, 0.5)
	**/
	var edit_line_color : Array<Float>;
	/**
		Maximum number of frames to show after current frame (0 = don’t show any frames after current)
		
		Type: int in [0, 120], default 1
	**/
	var ghost_after_range : Int;
	/**
		Maximum number of frames to show before current frame (0 = don’t show any frames before current)
		
		Type: int in [0, 120], default 1
	**/
	var ghost_before_range : Int;
	/**
		Settings for grid and canvas in the 3D viewport
		
		Type: GreasePencilGrid, (readonly, never None)
	**/
	var grid(default, never) : bpy.types.greasepencilgrid.GreasePencilGrid;
	/**
		Draw Grease Pencil strokes on click/drag
		
		Type: boolean, default False, (readonly)
	**/
	var is_stroke_paint_mode(default, never) : Bool;
	/**
		Sculpt Grease Pencil strokes instead of viewport data
		
		Type: boolean, default False, (readonly)
	**/
	var is_stroke_sculpt_mode(default, never) : Bool;
	/**
		Grease Pencil weight paint
		
		Type: boolean, default False, (readonly)
	**/
	var is_stroke_weight_mode(default, never) : Bool;
	/**
		
		
		Type: GreasePencilLayers bpy_prop_collection of GPencilLayer, (readonly)
	**/
	var layers(default, never) : bpy.types.greasepencillayers.GreasePencilLayers;
	/**
		
		
		Type: IDMaterials bpy_prop_collection of Material, (readonly)
	**/
	var materials(default, never) : bpy.types.idmaterials.IDMaterials;
	/**
		Change fade opacity of displayed onion frames
		
		Type: float in [0, 1], default 0.5
	**/
	var onion_factor : Float;
	/**
		Mode to display frames
		
		Type: enum in [‘ABSOLUTE’, ‘RELATIVE’, ‘SELECTED’], default ‘ABSOLUTE’
	**/
	var onion_mode : bpy.types.greasepencil.GreasePencil.Enum1;
	/**
		Scale conversion factor for pixel size (use larger values for thicker lines)
		
		Type: float in [0.1, 30], default 0.0
	**/
	var pixel_factor : Float;
	/**
		Maintain the thickness of the stroke when the viewport zoom changes
		
		Type: boolean, default False
	**/
	var show_constant_thickness : Bool;
	/**
		Show stroke drawing direction with a bigger green dot (start) and smaller red dot (end) points
		
		Type: boolean, default False
	**/
	var show_stroke_direction : Bool;
	/**
		Automatic UVs are calculated depending of the stroke size
		
		Type: boolean, default False
	**/
	var use_adaptative_uv : Bool;
	/**
		Lock automatically all layers except active one to avoid accidental changes
		
		Type: boolean, default False
	**/
	var use_autolock_layers : Bool;
	/**
		Force recalc of fill data after use deformation modifiers (reduce FPS)
		
		Type: boolean, default False
	**/
	var use_force_fill_recalc : Bool;
	/**
		Use custom colors for ghost frames
		
		Type: boolean, default False
	**/
	var use_ghost_custom_colors : Bool;
	/**
		Ghosts are shown in renders and animation playback. Useful for special effects (e.g. motion blur)
		
		Type: boolean, default False
	**/
	var use_ghosts_always : Bool;
	/**
		Edit strokes from multiple grease pencil keyframes at the same time (keyframes must be selected to be included)
		
		Type: boolean, default False
	**/
	var use_multiedit : Bool;
	/**
		Display onion keyframes with a fade in color transparency
		
		Type: boolean, default False
	**/
	var use_onion_fade : Bool;
	/**
		Display first onion keyframes using next frame color to show indication of loop start frame
		
		Type: boolean, default False
	**/
	var use_onion_loop : Bool;
	/**
		Show ghosts of the keyframes before and after the current frame
		
		Type: boolean, default False
	**/
	var use_onion_skinning : Bool;
	/**
		Edit Grease Pencil strokes instead of viewport data
		
		Type: boolean, default False
	**/
	var use_stroke_edit_mode : Bool;
	/**
		
		
		Type: enum in [‘FRONT’, ‘3DSPACE’, ‘BACK’], default ‘FRONT’
	**/
	var xray_mode : bpy.types.greasepencil.GreasePencil.Enum2;
	/**
		Offset amount when drawing in surface mode
		
		Type: float in [0, 1], default 0.0
	**/
	var zdepth_offset : Float;
	/**
		Remove all the Grease Pencil data
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