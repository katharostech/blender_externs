package bpy.ops.scene;
/**
	Scene Operators
**/
@:pythonImport("bpy.ops.scene") extern class Module {
	/**
		Delete active scene
	**/
	static function delete():Void;
	/**
		Add the data paths to the Freestyle Edge Mark property of selected edges to the active keying set
	**/
	static function freestyle_add_edge_marks_to_keying_set():Void;
	/**
		Add the data paths to the Freestyle Face Mark property of selected polygons to the active keying set
	**/
	static function freestyle_add_face_marks_to_keying_set():Void;
	/**
		Add an alpha transparency modifier to the line style associated with the active lineset
		@param type Type — enum in ['ALONG_STROKE', 'CREASE_ANGLE', 'CURVATURE_3D', 'DISTANCE_FROM_CAMERA', 'DISTANCE_FROM_OBJECT', 'MATERIAL', 'NOISE', 'TANGENT'], (optional)
	**/
	static function freestyle_alpha_modifier_add(type:bpy.ops.scene.Scene.Enum1):Void;
	/**
		Add a line color modifier to the line style associated with the active lineset
		@param type Type — enum in ['ALONG_STROKE', 'CREASE_ANGLE', 'CURVATURE_3D', 'DISTANCE_FROM_CAMERA', 'DISTANCE_FROM_OBJECT', 'MATERIAL', 'NOISE', 'TANGENT'], (optional)
	**/
	static function freestyle_color_modifier_add(type:bpy.ops.scene.Scene.Enum2):Void;
	/**
		Fill the Range Min/Max entries by the min/max distance between selected mesh objects and the source object
		@param type Type, Type of the modifier to work onCOLOR Color, Color modifier type.ALPHA Alpha, Alpha modifier type.THICKNESS Thickness, Thickness modifier type. — enum in ['COLOR', 'ALPHA', 'THICKNESS'], (optional)
		@param name Name, Name of the modifier to work on — string, (optional, never None)
	**/
	static function freestyle_fill_range_by_selection(type:bpy.ops.scene.Scene.Enum3, name:String):Void;
	/**
		Add a stroke geometry modifier to the line style associated with the active lineset
		@param type Type — enum in ['2D_OFFSET', '2D_TRANSFORM', 'BACKBONE_STRETCHER', 'BEZIER_CURVE', 'BLUEPRINT', 'GUIDING_LINES', 'PERLIN_NOISE_1D', 'PERLIN_NOISE_2D', 'POLYGONIZATION', 'SAMPLING', 'SIMPLIFICATION', 'SINUS_DISPLACEMENT', 'SPATIAL_NOISE', 'TIP_REMOVER'], (optional)
	**/
	static function freestyle_geometry_modifier_add(type:bpy.ops.scene.Scene.Enum4):Void;
	/**
		Add a line set into the list of line sets
	**/
	static function freestyle_lineset_add():Void;
	/**
		Copy the active line set to a buffer
	**/
	static function freestyle_lineset_copy():Void;
	/**
		Change the position of the active line set within the list of line sets
		@param direction Direction, Direction to move the active line set towards — enum in ['UP', 'DOWN'], (optional)
	**/
	static function freestyle_lineset_move(direction:bpy.ops.scene.Scene.Enum5):Void;
	/**
		Paste the buffer content to the active line set
	**/
	static function freestyle_lineset_paste():Void;
	/**
		Remove the active line set from the list of line sets
	**/
	static function freestyle_lineset_remove():Void;
	/**
		Create a new line style, reusable by multiple line sets
	**/
	static function freestyle_linestyle_new():Void;
	/**
		Duplicate the modifier within the list of modifiers
	**/
	static function freestyle_modifier_copy():Void;
	/**
		Move the modifier within the list of modifiers
		@param direction Direction, Direction to move the chosen modifier towards — enum in ['UP', 'DOWN'], (optional)
	**/
	static function freestyle_modifier_move(direction:bpy.ops.scene.Scene.Enum6):Void;
	/**
		Remove the modifier from the list of modifiers
	**/
	static function freestyle_modifier_remove():Void;
	/**
		Add a style module into the list of modules
	**/
	static function freestyle_module_add():Void;
	/**
		Change the position of the style module within in the list of style modules
		@param direction Direction, Direction to move the chosen style module towards — enum in ['UP', 'DOWN'], (optional)
	**/
	static function freestyle_module_move(direction:bpy.ops.scene.Scene.Enum7):Void;
	/**
		Open a style module file
		@param filepath filepath — string, (optional, never None)
		@param make_internal Make internal, Make module file internal after loading — boolean, (optional)
	**/
	static function freestyle_module_open(filepath:String, make_internal:Bool):Void;
	/**
		Remove the style module from the stack
	**/
	static function freestyle_module_remove():Void;
	/**
		Create Freestyle stroke material for testing
	**/
	static function freestyle_stroke_material_create():Void;
	/**
		Add a line thickness modifier to the line style associated with the active lineset
		@param type Type — enum in ['ALONG_STROKE', 'CALLIGRAPHY', 'CREASE_ANGLE', 'CURVATURE_3D', 'DISTANCE_FROM_CAMERA', 'DISTANCE_FROM_OBJECT', 'MATERIAL', 'NOISE', 'TANGENT'], (optional)
	**/
	static function freestyle_thickness_modifier_add(type:bpy.ops.scene.Scene.Enum8):Void;
	/**
		Save the export settings on export (saved in .blend).
	**/
	static function gltf2_export_settings_set():Void;
	/**
		Add or remove grease pencil brush preset
		@param name Name, Name of the preset, used to make the path name — string, (optional, never None)
		@param remove_name remove_name — boolean, (optional)
		@param remove_active remove_active — boolean, (optional)
	**/
	static function gpencil_brush_preset_add(name:String, remove_name:Bool, remove_active:Bool):Void;
	/**
		Add or remove grease pencil material preset
		@param name Name, Name of the preset, used to make the path name — string, (optional, never None)
		@param remove_name remove_name — boolean, (optional)
		@param remove_active remove_active — boolean, (optional)
	**/
	static function gpencil_material_preset_add(name:String, remove_name:Bool, remove_active:Bool):Void;
	/**
		Bake the active view layer lighting
		@param delay Delay, Delay in millisecond before baking starts — int in [0, 2000], (optional)
		@param subset Subset, Subset of probes to updateALL All LightProbes, Bake both irradiance grids and reflection cubemaps.DIRTY Dirty Only, Only bake lightprobes that are marked as dirty.CUBEMAPS Cubemaps Only, Try to only bake reflection cubemaps if irradiance grids are up to date. — enum in ['ALL', 'DIRTY', 'CUBEMAPS'], (optional)
	**/
	static function light_cache_bake(delay:Int, subset:bpy.ops.scene.Scene.Enum9):Void;
	/**
		Free cached indirect lighting
	**/
	static function light_cache_free():Void;
	/**
		Add new scene by type
		@param type TypeNEW New, Add new scene.EMPTY Copy Settings, Make a copy without any objects.LINK_OBJECTS Link Objects, Link to the objects from the current scene.LINK_OBJECT_DATA Link Object Data, Copy objects linked to data from the current scene.FULL_COPY Full Copy, Make a full copy of the current scene. — enum in ['NEW', 'EMPTY', 'LINK_OBJECTS', 'LINK_OBJECT_DATA', 'FULL_COPY'], (optional)
	**/
	static function new(type:bpy.ops.scene.Scene.Enum10):Void;
	/**
		Add a render view
	**/
	static function render_view_add():Void;
	/**
		Remove the selected render view
	**/
	static function render_view_remove():Void;
	/**
		Add a view layer
	**/
	static function view_layer_add():Void;
	/**
		Remove the selected view layer
	**/
	static function view_layer_remove():Void;
}