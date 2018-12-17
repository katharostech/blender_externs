package bpy.types.nlastrips;
/**
	Collection of Nla Strips
**/
@:native("bpy.types.NlaStrips") extern class NlaStrips {
	/**
		Add a new Action-Clip strip to the track
		@param name Name for the NLA Strips — string, (never None)
		@param start Start Frame, Start frame for this strip — int in [-inf, inf]
		@param action Action to assign to this strip — Action, (never None)
		
		@returns NlaStrip
	**/
	function pyNew(name:String, start:Int, action:Dynamic):bpy.types.nlastrip.NlaStrip;
	/**
		Remove a NLA Strip
		@param strip NLA Strip to remove — NlaStrip, (never None)
	**/
	function remove(strip:bpy.types.nlastrip.NlaStrip):Void;
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