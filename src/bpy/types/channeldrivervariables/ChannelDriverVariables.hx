package bpy.types.channeldrivervariables;
/**
	Collection of channel driver Variables
**/
@:native("bpy.types.ChannelDriverVariables") extern class ChannelDriverVariables {
	/**
		Add a new variable for the driver
		
		@returns DriverVariable
	**/
	function pyNew():bpy.types.drivervariable.DriverVariable;
	/**
		Remove an existing variable from the driver
		@param variable Variable to remove from the driver — DriverVariable, (never None)
	**/
	function remove(variable:bpy.types.drivervariable.DriverVariable):Void;
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