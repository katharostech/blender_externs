package bpy.ops.import_mesh;
/**
	Import Mesh Operators
**/
@:pythonImport("bpy.ops.import_mesh") extern class Module {
	/**
		Load a PLY geometry file
		@param filepath File Path, Filepath used for importing the file — string, (optional, never None)
		@param axis_forward Forward — enum in ['X', 'Y', 'Z', '-X', '-Y', '-Z'], (optional)
		@param axis_up Up — enum in ['X', 'Y', 'Z', '-X', '-Y', '-Z'], (optional)
		@param files File Path, File path used for importing the PLY file — bpy_prop_collection of OperatorFileListElement, (optional)
		@param directory directory — string, (optional, never None)
		@param filter_glob filter_glob — string, (optional, never None)
	**/
	static function ply(filepath:String, axis_forward:bpy.ops.import_mesh.Import_mesh.Enum1, axis_up:bpy.ops.import_mesh.Import_mesh.Enum2, files:Dynamic, directory:String, filter_glob:String):Void;
	/**
		Load STL triangle mesh data
		@param filepath File Path, Filepath used for importing the file — string, (optional, never None)
		@param filter_glob filter_glob — string, (optional, never None)
		@param files File Path — bpy_prop_collection of OperatorFileListElement, (optional)
		@param directory directory — string, (optional, never None)
		@param global_scale Scale — float in [1e-06, 1e+06], (optional)
		@param use_scene_unit Scene Unit, Apply current scene’s unit (as defined by unit scale) to imported data — boolean, (optional)
		@param use_facet_normal Facet Normals, Use (import) facet normals (note that this will still give flat shading) — boolean, (optional)
		@param axis_forward Forward — enum in ['X', 'Y', 'Z', '-X', '-Y', '-Z'], (optional)
		@param axis_up Up — enum in ['X', 'Y', 'Z', '-X', '-Y', '-Z'], (optional)
	**/
	static function stl(filepath:String, filter_glob:String, files:Dynamic, directory:String, global_scale:Float, use_scene_unit:Bool, use_facet_normal:Bool, axis_forward:bpy.ops.import_mesh.Import_mesh.Enum3, axis_up:bpy.ops.import_mesh.Import_mesh.Enum4):Void;
}