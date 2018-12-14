package bpy_extras.view3d_utils;
/**
	bpy_extras submodule (bpy_extras.view3d_utils)
**/
@:pythonImport("bpy_extras.view3d_utils") extern class Module {
	/**
		Return a direction vector from the viewport at the specific 2d region
		coordinate.
		@param region region of the 3D viewport, typically bpy.context.region. — bpy.types.Region
		@param rv3d 3D region data, typically bpy.context.space_data.region_3d. — bpy.types.RegionView3D
		@param coord 2d coordinates relative to the region:
		                                        (event.mouse_region_x, event.mouse_region_y) for example. — 2d vector
		
		@returns mathutils.Vector
	**/
	static function region_2d_to_vector_3d(region:Dynamic, rv3d:Dynamic, coord:Dynamic):mathutils.vector.Vector;
	/**
		Return the 3d view origin from the region relative 2d coords.
		@param region region of the 3D viewport, typically bpy.context.region. — bpy.types.Region
		@param rv3d 3D region data, typically bpy.context.space_data.region_3d. — bpy.types.RegionView3D
		@param coord 2d coordinates relative to the region;
		                                        (event.mouse_region_x, event.mouse_region_y) for example. — 2d vector
		@param clamp Clamp the maximum far-clip value used.
		                                        (negative value will move the offset away from the view_location) — float or None
		
		@returns mathutils.Vector
	**/
	static function region_2d_to_origin_3d(region:Dynamic, rv3d:Dynamic, coord:Dynamic, clamp:Float):mathutils.vector.Vector;
	/**
		Return a 3d location from the region relative 2d coords, aligned with
		depth_location.
		@param region region of the 3D viewport, typically bpy.context.region. — bpy.types.Region
		@param rv3d 3D region data, typically bpy.context.space_data.region_3d. — bpy.types.RegionView3D
		@param coord 2d coordinates relative to the region;
		                                        (event.mouse_region_x, event.mouse_region_y) for example. — 2d vector
		@param depth_location the returned vectors depth is aligned with this since
		                                        there is no defined depth with a 2d region input. — 3d vector
		
		@returns mathutils.Vector
	**/
	static function region_2d_to_location_3d(region:Dynamic, rv3d:Dynamic, coord:Dynamic, depth_location:Dynamic):mathutils.vector.Vector;
	/**
		Return the region relative 2d location of a 3d position.
		@param region region of the 3D viewport, typically bpy.context.region. — bpy.types.Region
		@param rv3d 3D region data, typically bpy.context.space_data.region_3d. — bpy.types.RegionView3D
		@param coord 3d worldspace location. — 3d vector
		@param default Return this value if coord
		                                        is behind the origin of a perspective view. — 
		
		@returns mathutils.Vector or default argument.
	**/
	static function location_3d_to_region_2d(region:Dynamic, rv3d:Dynamic, coord:Dynamic, default:Dynamic):mathutils.vector.Vector;
}