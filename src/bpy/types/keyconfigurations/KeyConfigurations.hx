package bpy.types.keyconfigurations;
@:enum abstract Enum1(String) from String to String {
	var INVOKE_DEFAULT : String = "INVOKE_DEFAULT";
	var INVOKE_REGION_WIN : String = "INVOKE_REGION_WIN";
	var INVOKE_REGION_CHANNELS : String = "INVOKE_REGION_CHANNELS";
	var INVOKE_REGION_PREVIEW : String = "INVOKE_REGION_PREVIEW";
	var INVOKE_AREA : String = "INVOKE_AREA";
	var INVOKE_SCREEN : String = "INVOKE_SCREEN";
	var EXEC_DEFAULT : String = "EXEC_DEFAULT";
	var EXEC_REGION_WIN : String = "EXEC_REGION_WIN";
	var EXEC_REGION_CHANNELS : String = "EXEC_REGION_CHANNELS";
	var EXEC_REGION_PREVIEW : String = "EXEC_REGION_PREVIEW";
	var EXEC_AREA : String = "EXEC_AREA";
	var EXEC_SCREEN : String = "EXEC_SCREEN";
}/**
	Collection of KeyConfigs
**/
@:native("bpy.types.KeyConfigurations") extern class KeyConfigurations {
	/**
		Active key configuration (preset)
		
		Type: KeyConfig
	**/
	var active : bpy.types.keyconfig.KeyConfig;
	/**
		Key configuration that can be extended by add-ons, and is added to the active configuration when handling events
		
		Type: KeyConfig, (readonly)
	**/
	var addon(default, never) : bpy.types.keyconfig.KeyConfig;
	/**
		Default builtin key configuration
		
		Type: KeyConfig, (readonly)
	**/
	var pyDefault(default, never) : bpy.types.keyconfig.KeyConfig;
	/**
		Final key configuration that combines keymaps from the active and add-on configurations, and can be edited by the user
		
		Type: KeyConfig, (readonly)
	**/
	var user(default, never) : bpy.types.keyconfig.KeyConfig;
	/**
		new
		@param name Name — string, (never None)
		
		@returns KeyConfig
	**/
	function pyNew(name:String):bpy.types.keyconfig.KeyConfig;
	/**
		remove
		@param keyconfig Key Configuration, Removed key configuration — KeyConfig, (never None)
	**/
	function remove(keyconfig:bpy.types.keyconfig.KeyConfig):Void;
	/**
		find_item_from_operator
		@param idname Operator Identifier — string, (never None)
		@param context context — enum in ['INVOKE_DEFAULT', 'INVOKE_REGION_WIN', 'INVOKE_REGION_CHANNELS', 'INVOKE_REGION_PREVIEW', 'INVOKE_AREA', 'INVOKE_SCREEN', 'EXEC_DEFAULT', 'EXEC_REGION_WIN', 'EXEC_REGION_CHANNELS', 'EXEC_REGION_PREVIEW', 'EXEC_AREA', 'EXEC_SCREEN'], (optional)
		@param is_hotkey Hotkey, Event is not a modifier — boolean, (optional)
	**/
	function find_item_from_operator(idname:String, context:bpy.types.keyconfigurations.KeyConfigurations.Enum1, is_hotkey:Bool):Void;
	/**
		update
	**/
	function update():Void;
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