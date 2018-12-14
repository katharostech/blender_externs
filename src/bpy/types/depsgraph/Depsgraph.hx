package bpy.types.depsgraph;
@:enum abstract Enum1(String) from String to String {
	var VIEWPORT : String = "VIEWPORT";
	var RENDER : String = "RENDER";
}@:enum abstract Enum2(String) from String to String {
	var ACTION : String = "ACTION";
	var ARMATURE : String = "ARMATURE";
	var BRUSH : String = "BRUSH";
	var CAMERA : String = "CAMERA";
	var CACHEFILE : String = "CACHEFILE";
	var CURVE : String = "CURVE";
	var FONT : String = "FONT";
	var GREASEPENCIL : String = "GREASEPENCIL";
	var COLLECTION : String = "COLLECTION";
	var IMAGE : String = "IMAGE";
	var KEY : String = "KEY";
	var LIGHT : String = "LIGHT";
	var LIBRARY : String = "LIBRARY";
	var LINESTYLE : String = "LINESTYLE";
	var LATTICE : String = "LATTICE";
	var MASK : String = "MASK";
	var MATERIAL : String = "MATERIAL";
	var META : String = "META";
	var MESH : String = "MESH";
	var MOVIECLIP : String = "MOVIECLIP";
	var NODETREE : String = "NODETREE";
	var OBJECT : String = "OBJECT";
	var PAINTCURVE : String = "PAINTCURVE";
	var PALETTE : String = "PALETTE";
	var PARTICLE : String = "PARTICLE";
	var LIGHT_PROBE : String = "LIGHT_PROBE";
	var SCENE : String = "SCENE";
	var SOUND : String = "SOUND";
	var SPEAKER : String = "SPEAKER";
	var TEXT : String = "TEXT";
	var TEXTURE : String = "TEXTURE";
	var WINDOWMANAGER : String = "WINDOWMANAGER";
	var WORLD : String = "WORLD";
	var WORKSPACE : String = "WORKSPACE";
}@:pythonImport("bpy.types.Depsgraph") extern class Depsgraph {
	/**
		All evaluated datablocks
		
		Type: bpy_prop_collection of ID, (readonly)
	**/
	var ids(default, never) : bpy.types.bpy_prop_collection.Bpy_prop_collection;
	/**
		Evaluation mode
		
		Type: enum in [‘VIEWPORT’, ‘RENDER’], default ‘VIEWPORT’, (readonly)
	**/
	var mode(default, never) : bpy.types.depsgraph.Depsgraph.Enum1;
	/**
		All object instances to display or render
		
		Type: bpy_prop_collection of DepsgraphObjectInstance, (readonly)
	**/
	var object_instances(default, never) : bpy.types.bpy_prop_collection.Bpy_prop_collection;
	/**
		Evaluated objects in the dependency graph
		
		Type: bpy_prop_collection of Object, (readonly)
	**/
	var objects(default, never) : bpy.types.bpy_prop_collection.Bpy_prop_collection;
	/**
		Original scene dependency graph is built for
		
		Type: Scene, (readonly)
	**/
	var scene(default, never) : bpy.types.scene.Scene;
	/**
		Original scene dependency graph is built for
		
		Type: Scene, (readonly)
	**/
	var scene_eval(default, never) : bpy.types.scene.Scene;
	/**
		Updates to datablocks
		
		Type: bpy_prop_collection of DepsgraphUpdate, (readonly)
	**/
	var updates(default, never) : bpy.types.bpy_prop_collection.Bpy_prop_collection;
	/**
		Original view layer dependency graph is built for
		
		Type: ViewLayer, (readonly)
	**/
	var view_layer(default, never) : bpy.types.viewlayer.ViewLayer;
	/**
		Original view layer dependency graph is built for
		
		Type: ViewLayer, (readonly)
	**/
	var view_layer_eval(default, never) : bpy.types.viewlayer.ViewLayer;
	/**
		debug_relations_graphviz
		@param filename File Name, File in which to store graphviz debug output — string, (never None)
	**/
	function debug_relations_graphviz(filename:String):Void;
	/**
		debug_stats_gnuplot
		@param filename File Name, File in which to store graphviz debug output — string, (never None)
		@param output_filename Output File Name, File name where gnuplot script will save the result — string, (never None)
	**/
	function debug_stats_gnuplot(filename:String, output_filename:String):Void;
	/**
		debug_tag_update
	**/
	function debug_tag_update():Void;
	/**
		Report the number of elements in the Dependency Graph
		
		@returns string, (never None)
	**/
	function debug_stats():String;
	/**
		id_eval_get
		@param id Original ID to get evaluated complementary part for — ID
		
		@returns ID
	**/
	function id_eval_get(id:Dynamic):bpy.types.id.ID;
	/**
		id_type_updated
		@param id_type ID Type — enum in ['ACTION', 'ARMATURE', 'BRUSH', 'CAMERA', 'CACHEFILE', 'CURVE', 'FONT', 'GREASEPENCIL', 'COLLECTION', 'IMAGE', 'KEY', 'LIGHT', 'LIBRARY', 'LINESTYLE', 'LATTICE', 'MASK', 'MATERIAL', 'META', 'MESH', 'MOVIECLIP', 'NODETREE', 'OBJECT', 'PAINTCURVE', 'PALETTE', 'PARTICLE', 'LIGHT_PROBE', 'SCENE', 'SOUND', 'SPEAKER', 'TEXT', 'TEXTURE', 'WINDOWMANAGER', 'WORLD', 'WORKSPACE']
		
		@returns boolean
	**/
	function id_type_updated(id_type:bpy.types.depsgraph.Depsgraph.Enum2):Dynamic;
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