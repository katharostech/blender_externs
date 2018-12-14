package bpy.types.ikparam;
@:enum abstract Enum1(String) from String to String {
	var LEGACY : String = "LEGACY";
	var ITASC : String = "ITASC";
}/**
	Base type for IK solver parameters
**/
@:pythonImport("bpy.types.IKParam") extern class IKParam {
	/**
		IK solver for which these parameters are defined
		
		Type: enum in [‘LEGACY’, ‘ITASC’], default ‘LEGACY’, (readonly)
	**/
	var ik_solver(default, never) : bpy.types.ikparam.IKParam.Enum1;
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