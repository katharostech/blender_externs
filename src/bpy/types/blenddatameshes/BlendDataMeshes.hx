package bpy.types.blenddatameshes;
/**
	Collection of meshes
**/
@:pythonImport("bpy.types.BlendDataMeshes") extern class BlendDataMeshes {
	/**
		Add a new mesh to the main database
		@param name New name for the data-block — string, (never None)
		
		@returns Mesh
	**/
	function new(name:String):bpy.types.mesh.Mesh;
	/**
		Add a new mesh created from object with modifiers applied
		@param depsgraph Dependency Graph, Evaluated dependency graph within which to evaluate modifiers — Depsgraph, (never None)
		@param object Object to create mesh from — Object, (never None)
		@param apply_modifiers Apply modifiers — boolean
		@param calc_undeformed Calculate Undeformed, Calculate undeformed vertex coordinates — boolean, (optional)
		
		@returns Mesh
	**/
	function new_from_object(depsgraph:bpy.types.depsgraph.Depsgraph, object:Dynamic, apply_modifiers:Dynamic, calc_undeformed:Bool):bpy.types.mesh.Mesh;
	/**
		Remove a mesh from the current blendfile
		@param mesh Mesh to remove — Mesh, (never None)
		@param do_unlink Unlink all usages of this mesh before deleting it (WARNING: will also delete objects instancing that mesh data) — boolean, (optional)
		@param do_id_user Decrement user counter of all datablocks used by this mesh data — boolean, (optional)
		@param do_ui_user Make sure interface does not reference this mesh data — boolean, (optional)
	**/
	function remove(mesh:Dynamic, do_unlink:Bool, do_id_user:Bool, do_ui_user:Bool):Void;
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