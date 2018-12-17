package bmesh;
/**
	BMesh Module (bmesh)
	
	This module provides access to blenders bmesh data structures.
	
	Submodules:
**/
@:pythonImport("bmesh") extern class Module {
	/**
		Return a BMesh from this mesh, currently the mesh must already be in editmode.
		@param mesh The editmode mesh. — bpy.types.Mesh
		
		@returns bmesh.types.BMesh
	**/
	static function from_edit_mesh(mesh:Dynamic):bmesh.types.bmesh.BMesh;
	/**
		
		@param use_operators Support calling operators in bmesh.ops (uses some extra memory per vert/edge/face). — bool
		
		@returns bmesh.types.BMesh
	**/
	static function pyNew(use_operators:Dynamic):bmesh.types.bmesh.BMesh;
	/**
		Update the mesh after changes to the BMesh in editmode,
		optionally recalculating n-gon tessellation.
		@param mesh The editmode mesh. — bpy.types.Mesh
		@param loop_triangles Option to recalculate n-gon tessellation. — boolean
		@param destructive Use when geometry has been added or removed. — boolean
	**/
	static function update_edit_mesh(mesh:Dynamic, loop_triangles:Bool, destructive:Bool):Void;
}