package bpy.types.blenddatalinestyles;
/**
	Collection of line styles
**/
@:pythonImport("bpy.types.BlendDataLineStyles") extern class BlendDataLineStyles {
	/**
		tag
		@param value Value — boolean
	**/
	function tag(value:Dynamic):Void;
	/**
		Add a new line style instance to the main database
		@param name New name for the data-block — string, (never None)
		
		@returns FreestyleLineStyle
	**/
	function new(name:String):bpy.types.freestylelinestyle.FreestyleLineStyle;
	/**
		Remove a line style instance from the current blendfile
		@param linestyle Line style to remove — FreestyleLineStyle, (never None)
		@param do_unlink Unlink all usages of this line style before deleting it — boolean, (optional)
		@param do_id_user Decrement user counter of all datablocks used by this line style — boolean, (optional)
		@param do_ui_user Make sure interface does not reference this line style — boolean, (optional)
	**/
	function remove(linestyle:bpy.types.freestylelinestyle.FreestyleLineStyle, do_unlink:Bool, do_id_user:Bool, do_ui_user:Bool):Void;
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