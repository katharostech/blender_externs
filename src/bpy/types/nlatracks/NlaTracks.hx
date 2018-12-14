package bpy.types.nlatracks;
/**
	Collection of NLA Tracks
**/
@:pythonImport("bpy.types.NlaTracks") extern class NlaTracks {
	/**
		Active Object constraint
		
		Type: NlaTrack
	**/
	var active : bpy.types.nlatrack.NlaTrack;
	/**
		Add a new NLA Track
		@param prev NLA Track to add the new one after — NlaTrack, (optional)
		
		@returns NlaTrack
	**/
	function new(prev:bpy.types.nlatrack.NlaTrack):bpy.types.nlatrack.NlaTrack;
	/**
		Remove a NLA Track
		@param track NLA Track to remove — NlaTrack, (never None)
	**/
	function remove(track:bpy.types.nlatrack.NlaTrack):Void;
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