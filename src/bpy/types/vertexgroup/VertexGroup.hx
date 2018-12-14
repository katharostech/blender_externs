package bpy.types.vertexgroup;
@:enum abstract Enum1(String) from String to String {
	var REPLACE : String = "REPLACE";
	var ADD : String = "ADD";
	var SUBTRACT : String = "SUBTRACT";
}/**
	Group of vertices, used for armature deform and other purposes
**/
@:pythonImport("bpy.types.VertexGroup") extern class VertexGroup {
	/**
		Index number of the vertex group
		
		Type: int in [0, inf], default 0, (readonly)
	**/
	var index(default, never) : Int;
	/**
		Maintain the relative weights for the group
		
		Type: boolean, default False
	**/
	var lock_weight : Bool;
	/**
		Vertex group name
		
		Type: string, default “”, (never None)
	**/
	var name : String;
	/**
		Add vertices to the group
		@param index Index List — int array of 1 items in [-inf, inf]
		@param weight Vertex weight — float in [0, 1]
		@param type Vertex assign modeREPLACE Replace, Replace.ADD Add, Add.SUBTRACT Subtract, Subtract. — enum in ['REPLACE', 'ADD', 'SUBTRACT']
	**/
	function add(index:Array<Int>, weight:Float, type:bpy.types.vertexgroup.VertexGroup.Enum1):Void;
	/**
		Remove a vertex from the group
		@param index Index List — int array of 1 items in [-inf, inf]
	**/
	function remove(index:Array<Int>):Void;
	/**
		Get a vertex weight from the group
		@param index Index, The index of the vertex — int in [0, inf]
		
		@returns float in [0, 1]
	**/
	function weight(index:Int):Float;
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