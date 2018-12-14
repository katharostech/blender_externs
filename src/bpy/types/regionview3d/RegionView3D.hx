package bpy.types.regionview3d;
@:enum abstract Enum1(String) from String to String {
	var PERSP : String = "PERSP";
	var ORTHO : String = "ORTHO";
	var CAMERA : String = "CAMERA";
}/**
	3D View region data
**/
@:pythonImport("bpy.types.RegionView3D") extern class RegionView3D {
	/**
		
		
		Type: float multi-dimensional array of 6 * 4 items in [-inf, inf], default ((0.0, 0.0, 0.0, 0.0), (0.0, 0.0, 0.0, 0.0), (0.0, 0.0, 0.0, 0.0), (0.0, 0.0, 0.0, 0.0), (0.0, 0.0, 0.0, 0.0), (0.0, 0.0, 0.0, 0.0))
	**/
	var clip_planes : Array<Float>;
	/**
		
		
		Type: boolean, default False
	**/
	var is_perspective : Bool;
	/**
		Lock view rotation in side views
		
		Type: boolean, default False
	**/
	var lock_rotation : Bool;
	/**
		Current perspective matrix (window_matrix * view_matrix)
		
		Type: float multi-dimensional array of 4 * 4 items in [-inf, inf], default ((0.0, 0.0, 0.0, 0.0), (0.0, 0.0, 0.0, 0.0), (0.0, 0.0, 0.0, 0.0), (0.0, 0.0, 0.0, 0.0)), (readonly)
	**/
	var perspective_matrix(default, never) : Array<Float>;
	/**
		Sync view position between side views
		
		Type: boolean, default False
	**/
	var show_sync_view : Bool;
	/**
		Clip objects based on what’s visible in other side views
		
		Type: boolean, default False
	**/
	var use_box_clip : Bool;
	/**
		
		
		Type: boolean, default False
	**/
	var use_clip_planes : Bool;
	/**
		View shift in camera view
		
		Type: float array of 2 items in [-inf, inf], default (0.0, 0.0)
	**/
	var view_camera_offset : Array<Float>;
	/**
		Zoom factor in camera view
		
		Type: float in [-30, 600], default 0.0
	**/
	var view_camera_zoom : Float;
	/**
		Distance to the view location
		
		Type: float in [0, inf], default 0.0
	**/
	var view_distance : Float;
	/**
		View pivot location
		
		Type: float array of 3 items in [-inf, inf], default (0.0, 0.0, 0.0)
	**/
	var view_location : Array<Float>;
	/**
		Current view matrix
		
		Type: float multi-dimensional array of 4 * 4 items in [-inf, inf], default ((0.0, 0.0, 0.0, 0.0), (0.0, 0.0, 0.0, 0.0), (0.0, 0.0, 0.0, 0.0), (0.0, 0.0, 0.0, 0.0))
	**/
	var view_matrix : Array<Float>;
	/**
		View Perspective
		
		Type: enum in [‘PERSP’, ‘ORTHO’, ‘CAMERA’], default ‘ORTHO’
	**/
	var view_perspective : bpy.types.regionview3d.RegionView3D.Enum1;
	/**
		Rotation in quaternions (keep normalized)
		
		Type: float array of 4 items in [-inf, inf], default (0.0, 0.0, 0.0, 0.0)
	**/
	var view_rotation : Array<Float>;
	/**
		Current window matrix
		
		Type: float multi-dimensional array of 4 * 4 items in [-inf, inf], default ((0.0, 0.0, 0.0, 0.0), (0.0, 0.0, 0.0, 0.0), (0.0, 0.0, 0.0, 0.0), (0.0, 0.0, 0.0, 0.0)), (readonly)
	**/
	var window_matrix(default, never) : Array<Float>;
	/**
		Recalculate the view matrices
	**/
	function update():Void;
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