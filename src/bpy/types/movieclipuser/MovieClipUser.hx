package bpy.types.movieclipuser;
@:enum abstract Enum1(String) from String to String {
	var PROXY_25 : String = "PROXY_25";
	var PROXY_50 : String = "PROXY_50";
	var PROXY_75 : String = "PROXY_75";
	var PROXY_100 : String = "PROXY_100";
	var FULL : String = "FULL";
}/**
	Parameters defining how a MovieClip data-block is used by another data-block
**/
@:pythonImport("bpy.types.MovieClipUser") extern class MovieClipUser {
	/**
		Current frame number in movie or image sequence
		
		Type: int in [-1048574, 1048574], default 0
	**/
	var frame_current : Int;
	/**
		Draw preview using full resolution or different proxy resolutions
		
		Type: enum in [‘PROXY_25’, ‘PROXY_50’, ‘PROXY_75’, ‘PROXY_100’, ‘FULL’], default ‘FULL’
	**/
	var proxy_render_size : bpy.types.movieclipuser.MovieClipUser.Enum1;
	/**
		Render preview using undistorted proxy
		
		Type: boolean, default False
	**/
	var use_render_undistorted : Bool;
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