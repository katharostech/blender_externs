package bpy.types.cyclesobjectsettings;
@:pythonImport("bpy.types.CyclesObjectSettings") extern class CyclesObjectSettings {
	/**
		Multiplier for scene dicing rate (located in the Geometry Panel)
		
		Type: float in [0.1, 1000], default 1.0
	**/
	var dicing_rate : Float;
	/**
		Render objects as a holdout or matte, creating a hole in the image with zero alpha, to fill out in compositing with real footange or another render
		
		Type: boolean, default False
	**/
	var is_holdout : Bool;
	/**
		Only render shadows on this object, for compositing renders into real footage
		
		Type: boolean, default False
	**/
	var is_shadow_catcher : Bool;
	/**
		Control accuracy of motion blur, more steps gives more memory usage (actual number of steps is 2^(steps - 1))
		
		Type: int in [1, inf], default 1
	**/
	var motion_steps : Int;
	/**
		Use adaptive render time subdivision
		
		Type: boolean, default False
	**/
	var use_adaptive_subdivision : Bool;
	/**
		Allow this object and its duplicators to be culled by camera space culling
		
		Type: boolean, default False
	**/
	var use_camera_cull : Bool;
	/**
		Use deformation motion blur for this object
		
		Type: boolean, default True
	**/
	var use_deform_motion : Bool;
	/**
		Allow this object and its duplicators to be culled by distance from camera
		
		Type: boolean, default False
	**/
	var use_distance_cull : Bool;
	/**
		Use motion blur for this object
		
		Type: boolean, default True
	**/
	var use_motion_blur : Bool;
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