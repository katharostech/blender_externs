package bpy.types.consoleline;
@:enum abstract Enum1(String) from String to String {
	var OUTPUT : String = "OUTPUT";
	var INPUT : String = "INPUT";
	var INFO : String = "INFO";
	var ERROR : String = "ERROR";
}/**
	Input line for the interactive console
**/
@:native("bpy.types.ConsoleLine") extern class ConsoleLine {
	/**
		Text in the line
		
		Type: string, default “”, (never None)
	**/
	var body : String;
	/**
		
		
		Type: int in [-inf, inf], default 0
	**/
	var current_character : Int;
	/**
		Console line type when used in scrollback
		
		Type: enum in [‘OUTPUT’, ‘INPUT’, ‘INFO’, ‘ERROR’], default ‘OUTPUT’
	**/
	var type : bpy.types.consoleline.ConsoleLine.Enum1;
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