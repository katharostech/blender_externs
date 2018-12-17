package bpy.types.spaceproperties;
@:enum abstract Enum1(String) from String to String {
	var TOOL : String = "TOOL";
	var SCENE : String = "SCENE";
	var RENDER : String = "RENDER";
	var OUTPUT : String = "OUTPUT";
	var VIEW_LAYER : String = "VIEW_LAYER";
	var WORLD : String = "WORLD";
	var OBJECT : String = "OBJECT";
	var CONSTRAINT : String = "CONSTRAINT";
	var MODIFIER : String = "MODIFIER";
	var DATA : String = "DATA";
	var BONE : String = "BONE";
	var BONE_CONSTRAINT : String = "BONE_CONSTRAINT";
	var MATERIAL : String = "MATERIAL";
	var TEXTURE : String = "TEXTURE";
	var PARTICLES : String = "PARTICLES";
	var PHYSICS : String = "PHYSICS";
	var SHADERFX : String = "SHADERFX";
}/**
	Properties space data
**/
@:native("bpy.types.SpaceProperties") extern class SpaceProperties {
	/**
		
		
		Type: enum in [‘TOOL’, ‘SCENE’, ‘RENDER’, ‘OUTPUT’, ‘VIEW_LAYER’, ‘WORLD’, ‘OBJECT’, ‘CONSTRAINT’, ‘MODIFIER’, ‘DATA’, ‘BONE’, ‘BONE_CONSTRAINT’, ‘MATERIAL’, ‘TEXTURE’, ‘PARTICLES’, ‘PHYSICS’, ‘SHADERFX’], default ‘RENDER’
	**/
	var context : bpy.types.spaceproperties.SpaceProperties.Enum1;
	/**
		
		
		Type: ID
	**/
	var pin_id : bpy.types.id.ID;
	/**
		Use the pinned context
		
		Type: boolean, default False
	**/
	var use_pin_id : Bool;
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
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	static function draw_handler_add():Void;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	static function draw_handler_remove():Void;
	/**
		Space data type
		
		Type: enum in [‘EMPTY’, ‘VIEW_3D’, ‘IMAGE_EDITOR’, ‘NODE_EDITOR’, ‘SEQUENCE_EDITOR’, ‘CLIP_EDITOR’, ‘DOPESHEET_EDITOR’, ‘GRAPH_EDITOR’, ‘NLA_EDITOR’, ‘TEXT_EDITOR’, ‘CONSOLE’, ‘INFO’, ‘TOPBAR’, ‘STATUSBAR’, ‘OUTLINER’, ‘PROPERTIES’, ‘FILE_BROWSER’, ‘USER_PREFERENCES’], default ‘EMPTY’, (readonly)
	**/
	var type(default, never) : bpy.types.space.Space.Enum1;
	/**
		
		
		Type: boolean, default False
	**/
	var show_locked_time : Bool;
}