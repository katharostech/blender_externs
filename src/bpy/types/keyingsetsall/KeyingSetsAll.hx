package bpy.types.keyingsetsall;
/**
	All available keying sets
**/
@:native("bpy.types.KeyingSetsAll") extern class KeyingSetsAll {
	/**
		Active Keying Set used to insert/delete keyframes
		
		Type: KeyingSet
	**/
	var active : bpy.types.keyingset.KeyingSet;
	/**
		Current Keying Set index (negative for ‘builtin’ and positive for ‘absolute’)
		
		Type: int in [-inf, inf], default 0
	**/
	var active_index : Int;
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