package bpy.types.nodeinternalsockettemplate;
@:enum abstract Enum1(String) from String to String {
	var CUSTOM : String = "CUSTOM";
	var VALUE : String = "VALUE";
	var INT : String = "INT";
	var BOOLEAN : String = "BOOLEAN";
	var VECTOR : String = "VECTOR";
	var STRING : String = "STRING";
	var RGBA : String = "RGBA";
	var SHADER : String = "SHADER";
}/**
	Type and default value of a node socket
**/
@:native("bpy.types.NodeInternalSocketTemplate") extern class NodeInternalSocketTemplate {
	/**
		Identifier of the socket
		
		Type: string, default “”, (readonly, never None)
	**/
	var identifier(default, never) : String;
	/**
		Name of the socket
		
		Type: string, default “”, (readonly, never None)
	**/
	var name(default, never) : String;
	/**
		Data type of the socket
		
		Type: enum in [‘CUSTOM’, ‘VALUE’, ‘INT’, ‘BOOLEAN’, ‘VECTOR’, ‘STRING’, ‘RGBA’, ‘SHADER’], default ‘VALUE’, (readonly)
	**/
	var type(default, never) : bpy.types.nodeinternalsockettemplate.NodeInternalSocketTemplate.Enum1;
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