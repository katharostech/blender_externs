package bpy.types.blenddatatexts;
/**
	Collection of texts
**/
@:pythonImport("bpy.types.BlendDataTexts") extern class BlendDataTexts {
	/**
		Add a new text to the main database
		@param name New name for the data-block — string, (never None)
		
		@returns Text
	**/
	function new(name:String):bpy.types.text.Text;
	/**
		Remove a text from the current blendfile
		@param text Text to remove — Text, (never None)
		@param do_unlink Unlink all usages of this text before deleting it — boolean, (optional)
		@param do_id_user Decrement user counter of all datablocks used by this text — boolean, (optional)
		@param do_ui_user Make sure interface does not reference this text — boolean, (optional)
	**/
	function remove(text:Dynamic, do_unlink:Bool, do_id_user:Bool, do_ui_user:Bool):Void;
	/**
		Add a new text to the main database from a file
		@param filepath path for the data-block — string, (never None)
		@param internal Make internal, Make text file internal after loading — boolean, (optional)
		
		@returns Text
	**/
	function load(filepath:String, internal:Bool):bpy.types.text.Text;
	/**
		tag
		@param value Value — boolean
	**/
	function tag(value:Dynamic):Void;
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