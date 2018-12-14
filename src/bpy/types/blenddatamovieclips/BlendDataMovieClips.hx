package bpy.types.blenddatamovieclips;
/**
	Collection of movie clips
**/
@:pythonImport("bpy.types.BlendDataMovieClips") extern class BlendDataMovieClips {
	/**
		tag
		@param value Value — boolean
	**/
	function tag(value:Dynamic):Void;
	/**
		Remove a movie clip from the current blendfile.
		@param clip Movie clip to remove — MovieClip, (never None)
		@param do_unlink Unlink all usages of this movie clip before deleting it — boolean, (optional)
		@param do_id_user Decrement user counter of all datablocks used by this movie clip — boolean, (optional)
		@param do_ui_user Make sure interface does not reference this movie clip — boolean, (optional)
	**/
	function remove(clip:bpy.types.movieclip.MovieClip, do_unlink:Bool, do_id_user:Bool, do_ui_user:Bool):Void;
	/**
		Add a new movie clip to the main database from a file (while check_existing is disabled for consistency with other load functions, behavior with multiple movie-clips using the same file may incorrectly generate proxies)
		@param filepath path for the data-block — string, (never None)
		@param check_existing Using existing data-block if this file is already loaded — boolean, (optional)
		
		@returns MovieClip
	**/
	function load(filepath:String, check_existing:Bool):bpy.types.movieclip.MovieClip;
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