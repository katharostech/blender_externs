package bpy.types.macro;
/**
	Storage of a macro operator being executed, or registered after execution
**/
@:pythonImport("bpy.types.Macro") extern class Macro {
	/**
		
		
		Type: string, default “”
	**/
	var bl_description : String;
	/**
		
		
		Type: string, default “”, (never None)
	**/
	var bl_idname : String;
	/**
		
		
		Type: string, default “”, (never None)
	**/
	var bl_label : String;
	/**
		Options for this operator type
		
		Type: enum set in {‘REGISTER’, ‘UNDO’, ‘UNDO_GROUPED’, ‘BLOCKING’, ‘MACRO’, ‘GRAB_CURSOR’, ‘PRESET’, ‘INTERNAL’, ‘USE_EVAL_DATA’}, default {‘REGISTER’}
	**/
	var bl_options : Dynamic;
	/**
		
		
		Type: string, default “Operator”
	**/
	var bl_translation_context : String;
	/**
		
		
		Type: string, default “”
	**/
	var bl_undo_group : String;
	/**
		
		
		Type: string, default “”, (readonly, never None)
	**/
	var name(default, never) : String;
	/**
		
		
		Type: OperatorProperties, (readonly, never None)
	**/
	var properties(default, never) : bpy.types.operatorproperties.OperatorProperties;
	/**
		report
		@param type Type — enum set in {'DEBUG', 'INFO', 'OPERATOR', 'PROPERTY', 'WARNING', 'ERROR', 'ERROR_INVALID_INPUT', 'ERROR_INVALID_CONTEXT', 'ERROR_OUT_OF_MEMORY'}
		@param message Report Message — string, (never None)
	**/
	function report(type:Dynamic, message:String):Void;
	/**
		Test if the operator can be called or not
		
		@returns boolean
	**/
	static function poll():Dynamic;
	/**
		Draw function for the operator
	**/
	function draw():Void;
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