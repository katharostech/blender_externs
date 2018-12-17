package bpy.types.facemap;
/**
	Group of faces, each face can only be part of one map
**/
@:native("bpy.types.FaceMap") extern class FaceMap {
	/**
		Index number of the face map
		
		Type: int in [0, inf], default 0, (readonly)
	**/
	var index(default, never) : Int;
	/**
		Face map name
		
		Type: string, default “”, (never None)
	**/
	var name : String;
	/**
		Face-map selection state (for tools to use)
		
		Type: boolean, default False
	**/
	var select : Bool;
	/**
		Add vertices to the group
		@param index Index List — int array of 1 items in [-inf, inf]
	**/
	function add(index:Array<Int>):Void;
	/**
		Remove a vertex from the group
		@param index Index List — int array of 1 items in [-inf, inf]
	**/
	function remove(index:Array<Int>):Void;
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