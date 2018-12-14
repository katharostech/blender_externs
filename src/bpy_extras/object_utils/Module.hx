package bpy_extras.object_utils;
/**
	bpy_extras submodule (bpy_extras.object_utils)
**/
@:pythonImport("bpy_extras.object_utils") extern class Module {
	/**
		Return a matrix using the operator settings and view context.
		@param context The context to use. — bpy.types.Context
		@param operator The operator, checked for location and rotation properties. — bpy.types.Operator
		
		@returns mathutils.Matrix
	**/
	static function add_object_align_init(context:Dynamic, operator:Dynamic):mathutils.matrix.Matrix;
	/**
		Add an object using the view context and preference to initialize the
		location, rotation and layer.
		@param context The context to use. — bpy.types.Context
		@param obdata the data used for the new object. — valid object data type or None.
		@param operator The operator, checked for location and rotation properties. — bpy.types.Operator
		@param name Optional name — string
		
		@returns bpy.types.Object
	**/
	static function object_data_add(context:Dynamic, obdata:Dynamic, operator:Dynamic, name:Dynamic):bpy.types.object.Object;
	/**
		Return scale which should be applied on object
		data to align it to grid scale
	**/
	static function object_add_grid_scale():Void;
	/**
		Scale an operators distance values by the grid size.
	**/
	static function object_add_grid_scale_apply_operator():Void;
	/**
		Return a single image used by the object,
		first checking the texture-faces, then the material.
	**/
	static function object_image_guess():Void;
	/**
		Returns the camera space coords for a 3d point.
		(also known as: normalized device coordinates - NDC).
		
		Where (0, 0) is the bottom left and (1, 1)
		is the top right of the camera frame.
		values outside 0-1 are also supported.
		A negative ‘z’ value means the point is behind the camera.
		
		Takes shift-x/y, lens angle and sensor size into account
		as well as perspective/ortho projections.
		@param scene Scene to use for frame size. — bpy.types.Scene
		@param obj Camera object. — bpy.types.Object
		@param coord World space location. — mathutils.Vector
		
		@returns mathutils.Vector
	**/
	static function world_to_camera_view(scene:Dynamic, obj:Dynamic, coord:Dynamic):mathutils.vector.Vector;
}