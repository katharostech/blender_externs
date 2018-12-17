package bpy.types.operator;
/**
	Storage of an operator being executed, or registered after execution
**/
@:native("bpy.types.Operator") extern class Operator {
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
		Operator has a set of reports (warnings and errors) from last execution
		
		Type: boolean, default False, (readonly)
	**/
	var has_reports(default, never) : Bool;
	/**
		
		
		Type: UILayout, (readonly)
	**/
	var layout(default, never) : bpy.types.uilayout.UILayout;
	/**
		
		
		Type: bpy_prop_collection of Macro, (readonly)
	**/
	var macros(default, never) : bpy.types.bpy_prop_collection.Bpy_prop_collection;
	/**
		
		
		Type: string, default “”, (readonly, never None)
	**/
	var name(default, never) : String;
	/**
		Runtime options
		
		Type: OperatorOptions, (readonly, never None)
	**/
	var options(default, never) : bpy.types.operatoroptions.OperatorOptions;
	/**
		
		
		Type: OperatorProperties, (readonly, never None)
	**/
	var properties(default, never) : bpy.types.operatorproperties.OperatorProperties;
	/**
		The name of a property to use as this operators primary property.
		Currently this is only used to select the default property when
		expanding an operator into a menu.
		:type: string
	**/
	var bl_property : Dynamic;
	/**
		report
		@param type Type — enum set in {'DEBUG', 'INFO', 'OPERATOR', 'PROPERTY', 'WARNING', 'ERROR', 'ERROR_INVALID_INPUT', 'ERROR_INVALID_CONTEXT', 'ERROR_OUT_OF_MEMORY'}
		@param message Report Message — string, (never None)
	**/
	function report(type:Dynamic, message:String):Void;
	/**
		is_repeat
		
		@returns boolean
	**/
	function is_repeat():Bool;
	/**
		Test if the operator can be called or not
		
		@returns boolean
	**/
	static function poll(context:Dynamic):Bool;
	/**
		Execute the operator
		
		@returns enum set in {‘RUNNING_MODAL’, ‘CANCELLED’, ‘FINISHED’, ‘PASS_THROUGH’, ‘INTERFACE’}
	**/
	function execute(context:Dynamic):Dynamic;
	/**
		Check the operator settings, return True to signal a change to redraw
		
		@returns boolean
	**/
	function check(context:Dynamic):Bool;
	/**
		Invoke the operator
		
		@returns enum set in {‘RUNNING_MODAL’, ‘CANCELLED’, ‘FINISHED’, ‘PASS_THROUGH’, ‘INTERFACE’}
	**/
	function invoke(context:Dynamic, event:Dynamic):Dynamic;
	/**
		Modal operator function
		
		@returns enum set in {‘RUNNING_MODAL’, ‘CANCELLED’, ‘FINISHED’, ‘PASS_THROUGH’, ‘INTERFACE’}
	**/
	function modal(context:Dynamic, event:Dynamic):Dynamic;
	/**
		Draw function for the operator
	**/
	function draw(context:Dynamic):Void;
	/**
		Called when the operator is canceled
	**/
	function cancel(context:Dynamic):Void;
	/**
		Return a copy of the properties as a dictionary
	**/
	function as_keywords(ignore:Dynamic):Void;
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