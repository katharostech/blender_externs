package bpy.ops.export_mesh;
/**
	Export Mesh Operators
**/
@:pythonImport("bpy.ops.export_mesh") extern class Module {
	/**
		Export a single object as a Stanford PLY with normals, colors and texture coordinates
		@param filepath File Path, Filepath used for exporting the file — string, (optional, never None)
		@param check_existing Check Existing, Check and warn on overwriting existing files — boolean, (optional)
		@param filter_glob filter_glob — string, (optional, never None)
		@param use_mesh_modifiers Apply Modifiers, Apply Modifiers to the exported mesh — boolean, (optional)
		@param use_normals Normals, Export Normals for smooth and hard shaded faces (hard shaded faces will be exported as individual faces) — boolean, (optional)
		@param use_uv_coords UVs, Export the active UV layer — boolean, (optional)
		@param use_colors Vertex Colors, Export the active vertex color layer — boolean, (optional)
		@param global_scale Scale — float in [0.01, 1000], (optional)
		@param axis_forward Forward — enum in ['X', 'Y', 'Z', '-X', '-Y', '-Z'], (optional)
		@param axis_up Up — enum in ['X', 'Y', 'Z', '-X', '-Y', '-Z'], (optional)
	**/
	static function ply(filepath:String, check_existing:Bool, filter_glob:String, use_mesh_modifiers:Bool, use_normals:Bool, use_uv_coords:Bool, use_colors:Bool, global_scale:Float, axis_forward:bpy.ops.export_mesh.Export_mesh.Enum1, axis_up:bpy.ops.export_mesh.Export_mesh.Enum2):Void;
	/**
		Save STL triangle mesh data from the active object
		@param filepath File Path, Filepath used for exporting the file — string, (optional, never None)
		@param check_existing Check Existing, Check and warn on overwriting existing files — boolean, (optional)
		@param filter_glob filter_glob — string, (optional, never None)
		@param use_selection Selection Only, Export selected objects only — boolean, (optional)
		@param global_scale Scale — float in [0.01, 1000], (optional)
		@param use_scene_unit Scene Unit, Apply current scene’s unit (as defined by unit scale) to exported data — boolean, (optional)
		@param ascii Ascii, Save the file in ASCII file format — boolean, (optional)
		@param use_mesh_modifiers Apply Modifiers, Apply the modifiers before saving — boolean, (optional)
		@param batch_mode Batch ModeOFF Off, All data in one file.OBJECT Object, Each object as a file. — enum in ['OFF', 'OBJECT'], (optional)
		@param axis_forward Forward — enum in ['X', 'Y', 'Z', '-X', '-Y', '-Z'], (optional)
		@param axis_up Up — enum in ['X', 'Y', 'Z', '-X', '-Y', '-Z'], (optional)
	**/
	static function stl(filepath:String, check_existing:Bool, filter_glob:String, use_selection:Bool, global_scale:Float, use_scene_unit:Bool, ascii:Bool, use_mesh_modifiers:Bool, batch_mode:bpy.ops.export_mesh.Export_mesh.Enum3, axis_forward:bpy.ops.export_mesh.Export_mesh.Enum4, axis_up:bpy.ops.export_mesh.Export_mesh.Enum5):Void;
}