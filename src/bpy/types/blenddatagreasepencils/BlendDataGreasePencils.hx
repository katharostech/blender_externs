package bpy.types.blenddatagreasepencils;
/**
	Collection of grease pencils
**/
@:pythonImport("bpy.types.BlendDataGreasePencils") extern class BlendDataGreasePencils {
	/**
		tag
		@param value Value — boolean
	**/
	function tag(value:Dynamic):Void;
	/**
		new
		@param name New name for the data-block — string, (never None)
		
		@returns GreasePencil
	**/
	static function new(name:String):bpy.types.greasepencil.GreasePencil;
	/**
		Remove a grease pencil instance from the current blendfile
		@param grease_pencil Grease Pencil to remove — GreasePencil, (never None)
		@param do_unlink Unlink all usages of this grease pencil before deleting it — boolean, (optional)
		@param do_id_user Decrement user counter of all datablocks used by this grease pencil — boolean, (optional)
		@param do_ui_user Make sure interface does not reference this grease pencil — boolean, (optional)
	**/
	function remove(grease_pencil:bpy.types.greasepencil.GreasePencil, do_unlink:Bool, do_id_user:Bool, do_ui_user:Bool):Void;
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