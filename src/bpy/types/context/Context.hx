package bpy.types.context;
@:enum abstract Enum1(String) from String to String {
	var EDIT_MESH : String = "EDIT_MESH";
	var EDIT_CURVE : String = "EDIT_CURVE";
	var EDIT_SURFACE : String = "EDIT_SURFACE";
	var EDIT_TEXT : String = "EDIT_TEXT";
	var EDIT_ARMATURE : String = "EDIT_ARMATURE";
	var EDIT_METABALL : String = "EDIT_METABALL";
	var EDIT_LATTICE : String = "EDIT_LATTICE";
	var POSE : String = "POSE";
	var SCULPT : String = "SCULPT";
	var PAINT_WEIGHT : String = "PAINT_WEIGHT";
	var PAINT_VERTEX : String = "PAINT_VERTEX";
	var PAINT_TEXTURE : String = "PAINT_TEXTURE";
	var PARTICLE : String = "PARTICLE";
	var OBJECT : String = "OBJECT";
	var GPENCIL_PAINT : String = "GPENCIL_PAINT";
	var GPENCIL_EDIT : String = "GPENCIL_EDIT";
	var GPENCIL_SCULPT : String = "GPENCIL_SCULPT";
	var GPENCIL_WEIGHT : String = "GPENCIL_WEIGHT";
}/**
	Current windowmanager and data context
**/
@:pythonImport("bpy.types.Context") extern class Context {
	/**
		
		
		Type: Area, (readonly)
	**/
	var area(default, never) : bpy.types.area.Area;
	/**
		
		
		Type: BlendData, (readonly)
	**/
	var blend_data(default, never) : bpy.types.blenddata.BlendData;
	/**
		
		
		Type: Collection, (readonly)
	**/
	var collection(default, never) : bpy.types.collection.Collection;
	/**
		
		
		Type: Depsgraph, (readonly)
	**/
	var depsgraph(default, never) : bpy.types.depsgraph.Depsgraph;
	/**
		
		
		Type: string, default “”, (readonly, never None)
	**/
	var engine(default, never) : String;
	/**
		
		
		Type: GizmoGroup, (readonly)
	**/
	var gizmo_group(default, never) : bpy.types.gizmogroup.GizmoGroup;
	/**
		
		
		Type: LayerCollection, (readonly)
	**/
	var layer_collection(default, never) : bpy.types.layercollection.LayerCollection;
	/**
		
		
		Type: enum in [‘EDIT_MESH’, ‘EDIT_CURVE’, ‘EDIT_SURFACE’, ‘EDIT_TEXT’, ‘EDIT_ARMATURE’, ‘EDIT_METABALL’, ‘EDIT_LATTICE’, ‘POSE’, ‘SCULPT’, ‘PAINT_WEIGHT’, ‘PAINT_VERTEX’, ‘PAINT_TEXTURE’, ‘PARTICLE’, ‘OBJECT’, ‘GPENCIL_PAINT’, ‘GPENCIL_EDIT’, ‘GPENCIL_SCULPT’, ‘GPENCIL_WEIGHT’], default ‘EDIT_MESH’, (readonly)
	**/
	var mode(default, never) : bpy.types.context.Context.Enum1;
	/**
		
		
		Type: Region, (readonly)
	**/
	var region(default, never) : bpy.types.region.Region;
	/**
		
		
		Type: RegionView3D, (readonly)
	**/
	var region_data(default, never) : bpy.types.regionview3d.RegionView3D;
	/**
		
		
		Type: Scene, (readonly)
	**/
	var scene(default, never) : bpy.types.scene.Scene;
	/**
		
		
		Type: Screen, (readonly)
	**/
	var screen(default, never) : bpy.types.screen.Screen;
	/**
		
		
		Type: Space, (readonly)
	**/
	var space_data(default, never) : bpy.types.space.Space;
	/**
		
		
		Type: ToolSettings, (readonly)
	**/
	var tool_settings(default, never) : bpy.types.toolsettings.ToolSettings;
	/**
		
		
		Type: UserPreferences, (readonly)
	**/
	var user_preferences(default, never) : bpy.types.userpreferences.UserPreferences;
	/**
		
		
		Type: ViewLayer, (readonly)
	**/
	var view_layer(default, never) : bpy.types.viewlayer.ViewLayer;
	/**
		
		
		Type: Window, (readonly)
	**/
	var window(default, never) : bpy.types.window.Window;
	/**
		
		
		Type: WindowManager, (readonly)
	**/
	var window_manager(default, never) : bpy.types.windowmanager.WindowManager;
	/**
		
		
		Type: WorkSpace, (readonly)
	**/
	var workspace(default, never) : bpy.types.workspace.WorkSpace;
	function copy():Void;
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