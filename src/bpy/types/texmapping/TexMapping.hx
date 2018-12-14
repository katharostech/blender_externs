package bpy.types.texmapping;
@:enum abstract Enum1(String) from String to String {
	var FLAT : String = "FLAT";
	var CUBE : String = "CUBE";
	var TUBE : String = "TUBE";
	var SPHERE : String = "SPHERE";
}@:enum abstract Enum2(String) from String to String {
	var NONE : String = "NONE";
	var X : String = "X";
	var Y : String = "Y";
	var Z : String = "Z";
}@:enum abstract Enum3(String) from String to String {
	var NONE : String = "NONE";
	var X : String = "X";
	var Y : String = "Y";
	var Z : String = "Z";
}@:enum abstract Enum4(String) from String to String {
	var NONE : String = "NONE";
	var X : String = "X";
	var Y : String = "Y";
	var Z : String = "Z";
}@:enum abstract Enum5(String) from String to String {
	var TEXTURE : String = "TEXTURE";
	var POINT : String = "POINT";
	var VECTOR : String = "VECTOR";
	var NORMAL : String = "NORMAL";
}/**
	Texture coordinate mapping settings
**/
@:pythonImport("bpy.types.TexMapping") extern class TexMapping {
	/**
		
		
		Type: enum in [‘FLAT’, ‘CUBE’, ‘TUBE’, ‘SPHERE’], default ‘FLAT’
	**/
	var mapping : bpy.types.texmapping.TexMapping.Enum1;
	/**
		
		
		Type: enum in [‘NONE’, ‘X’, ‘Y’, ‘Z’], default ‘NONE’
	**/
	var mapping_x : bpy.types.texmapping.TexMapping.Enum2;
	/**
		
		
		Type: enum in [‘NONE’, ‘X’, ‘Y’, ‘Z’], default ‘NONE’
	**/
	var mapping_y : bpy.types.texmapping.TexMapping.Enum3;
	/**
		
		
		Type: enum in [‘NONE’, ‘X’, ‘Y’, ‘Z’], default ‘NONE’
	**/
	var mapping_z : bpy.types.texmapping.TexMapping.Enum4;
	/**
		Maximum value for clipping
		
		Type: float array of 3 items in [-inf, inf], default (0.0, 0.0, 0.0)
	**/
	var max : Array<Float>;
	/**
		Minimum value for clipping
		
		Type: float array of 3 items in [-inf, inf], default (0.0, 0.0, 0.0)
	**/
	var min : Array<Float>;
	/**
		
		
		Type: float array of 3 items in [-inf, inf], default (0.0, 0.0, 0.0)
	**/
	var rotation : Array<Float>;
	/**
		
		
		Type: float array of 3 items in [-inf, inf], default (0.0, 0.0, 0.0)
	**/
	var scale : Array<Float>;
	/**
		
		
		Type: float array of 3 items in [-inf, inf], default (0.0, 0.0, 0.0)
	**/
	var translation : Array<Float>;
	/**
		Whether to use maximum clipping value
		
		Type: boolean, default False
	**/
	var use_max : Bool;
	/**
		Whether to use minimum clipping value
		
		Type: boolean, default False
	**/
	var use_min : Bool;
	/**
		Type of vector that the mapping transforms
		
		Type: enum in [‘TEXTURE’, ‘POINT’, ‘VECTOR’, ‘NORMAL’], default ‘POINT’
	**/
	var vector_type : bpy.types.texmapping.TexMapping.Enum5;
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