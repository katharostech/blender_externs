package bpy.types.nlatrack;
/**
	A animation layer containing Actions referenced as NLA strips
**/
@:pythonImport("bpy.types.NlaTrack") extern class NlaTrack {
	/**
		NLA Track is active
		
		Type: boolean, default False, (readonly)
	**/
	var active(default, never) : Bool;
	/**
		NLA Track is evaluated itself (i.e. active Action and all other NLA Tracks in the same AnimData block are disabled)
		
		Type: boolean, default False
	**/
	var is_solo : Bool;
	/**
		NLA Track is locked
		
		Type: boolean, default False
	**/
	var lock : Bool;
	/**
		NLA Track is not evaluated
		
		Type: boolean, default False
	**/
	var mute : Bool;
	/**
		
		
		Type: string, default “”, (never None)
	**/
	var name : String;
	/**
		NLA Track is selected
		
		Type: boolean, default False
	**/
	var select : Bool;
	/**
		NLA Strips on this NLA-track
		
		Type: NlaStrips bpy_prop_collection of NlaStrip, (readonly)
	**/
	var strips(default, never) : bpy.types.nlastrips.NlaStrips;
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