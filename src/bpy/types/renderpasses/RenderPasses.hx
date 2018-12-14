package bpy.types.renderpasses;
@:enum abstract Enum1(String) from String to String {
	var COMBINED : String = "COMBINED";
	var Z : String = "Z";
	var COLOR : String = "COLOR";
	var DIFFUSE : String = "DIFFUSE";
	var SPECULAR : String = "SPECULAR";
	var SHADOW : String = "SHADOW";
	var AO : String = "AO";
	var REFLECTION : String = "REFLECTION";
	var NORMAL : String = "NORMAL";
	var VECTOR : String = "VECTOR";
	var REFRACTION : String = "REFRACTION";
	var OBJECT_INDEX : String = "OBJECT_INDEX";
	var UV : String = "UV";
	var MIST : String = "MIST";
	var EMIT : String = "EMIT";
	var ENVIRONMENT : String = "ENVIRONMENT";
	var MATERIAL_INDEX : String = "MATERIAL_INDEX";
	var DIFFUSE_DIRECT : String = "DIFFUSE_DIRECT";
	var DIFFUSE_INDIRECT : String = "DIFFUSE_INDIRECT";
	var DIFFUSE_COLOR : String = "DIFFUSE_COLOR";
	var GLOSSY_DIRECT : String = "GLOSSY_DIRECT";
	var GLOSSY_INDIRECT : String = "GLOSSY_INDIRECT";
	var GLOSSY_COLOR : String = "GLOSSY_COLOR";
	var TRANSMISSION_DIRECT : String = "TRANSMISSION_DIRECT";
	var TRANSMISSION_INDIRECT : String = "TRANSMISSION_INDIRECT";
	var TRANSMISSION_COLOR : String = "TRANSMISSION_COLOR";
	var SUBSURFACE_DIRECT : String = "SUBSURFACE_DIRECT";
	var SUBSURFACE_INDIRECT : String = "SUBSURFACE_INDIRECT";
	var SUBSURFACE_COLOR : String = "SUBSURFACE_COLOR";
}/**
	Collection of render passes
**/
@:pythonImport("bpy.types.RenderPasses") extern class RenderPasses {
	/**
		Get the render pass for a given type and view
		@param pass_type Pass — enum in ['COMBINED', 'Z', 'COLOR', 'DIFFUSE', 'SPECULAR', 'SHADOW', 'AO', 'REFLECTION', 'NORMAL', 'VECTOR', 'REFRACTION', 'OBJECT_INDEX', 'UV', 'MIST', 'EMIT', 'ENVIRONMENT', 'MATERIAL_INDEX', 'DIFFUSE_DIRECT', 'DIFFUSE_INDIRECT', 'DIFFUSE_COLOR', 'GLOSSY_DIRECT', 'GLOSSY_INDIRECT', 'GLOSSY_COLOR', 'TRANSMISSION_DIRECT', 'TRANSMISSION_INDIRECT', 'TRANSMISSION_COLOR', 'SUBSURFACE_DIRECT', 'SUBSURFACE_INDIRECT', 'SUBSURFACE_COLOR']
		@param view View, Render view to get pass from — string, (never None)
		
		@returns RenderPass
	**/
	function find_by_type(pass_type:bpy.types.renderpasses.RenderPasses.Enum1, view:String):bpy.types.renderpass.RenderPass;
	/**
		Get the render pass for a given name and view
		@param name Pass — string, (never None)
		@param view View, Render view to get pass from — string, (never None)
		
		@returns RenderPass
	**/
	function find_by_name(name:String, view:String):bpy.types.renderpass.RenderPass;
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