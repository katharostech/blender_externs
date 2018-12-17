package bpy.types.wmownerids;
@:native("bpy.types.wmOwnerIDs") extern class WmOwnerIDs {
	/**
		Add ui tag
		@param name New name for the tag — string, (never None)
		
		@returns wmOwnerID
	**/
	function pyNew(name:String):bpy.types.wmownerid.WmOwnerID;
	/**
		Remove ui tag
		@param owner_id Tag to remove — wmOwnerID, (never None)
	**/
	function remove(owner_id:Dynamic):Void;
	/**
		Remove all tags
	**/
	function clear():Void;
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