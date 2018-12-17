package bpy.types.blenddataprobes;
/**
	Collection of light probes
**/
@:native("bpy.types.BlendDataProbes") extern class BlendDataProbes {
	/**
		Add a new probe to the main database
		@param name New name for the data-block — string, (never None)
		
		@returns LightProbe
	**/
	function pyNew(name:String):bpy.types.lightprobe.LightProbe;
	/**
		Remove a probe from the current blendfile
		@param lightprobe Probe to remove — LightProbe, (never None)
		@param do_unlink Unlink all usages of this probe before deleting it (WARNING: will also delete objects instancing that light probe data) — boolean, (optional)
		@param do_id_user Decrement user counter of all datablocks used by this light probe — boolean, (optional)
		@param do_ui_user Make sure interface does not reference this light probe — boolean, (optional)
	**/
	function remove(lightprobe:bpy.types.lightprobe.LightProbe, do_unlink:Bool, do_id_user:Bool, do_ui_user:Bool):Void;
	/**
		tag
		@param value Value — boolean
	**/
	function tag(value:Bool):Void;
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