package bpy.ops.surface;
/**
	Surface Operators
**/
@:pythonImport("bpy.ops.surface") extern class Module {
	/**
		Construct a Nurbs surface Circle
		@param radius Radius — float in [0, inf], (optional)
		@param view_align Align to View, Align the new object to the view — boolean, (optional)
		@param enter_editmode Enter Editmode, Enter editmode when adding this object — boolean, (optional)
		@param location Location, Location for the newly added object — float array of 3 items in [-inf, inf], (optional)
		@param rotation Rotation, Rotation for the newly added object — float array of 3 items in [-inf, inf], (optional)
	**/
	static function primitive_nurbs_surface_circle_add(radius:Float, view_align:Bool, enter_editmode:Bool, location:Array<Float>, rotation:Array<Float>):Void;
	/**
		Construct a Nurbs surface Curve
		@param radius Radius — float in [0, inf], (optional)
		@param view_align Align to View, Align the new object to the view — boolean, (optional)
		@param enter_editmode Enter Editmode, Enter editmode when adding this object — boolean, (optional)
		@param location Location, Location for the newly added object — float array of 3 items in [-inf, inf], (optional)
		@param rotation Rotation, Rotation for the newly added object — float array of 3 items in [-inf, inf], (optional)
	**/
	static function primitive_nurbs_surface_curve_add(radius:Float, view_align:Bool, enter_editmode:Bool, location:Array<Float>, rotation:Array<Float>):Void;
	/**
		Construct a Nurbs surface Cylinder
		@param radius Radius — float in [0, inf], (optional)
		@param view_align Align to View, Align the new object to the view — boolean, (optional)
		@param enter_editmode Enter Editmode, Enter editmode when adding this object — boolean, (optional)
		@param location Location, Location for the newly added object — float array of 3 items in [-inf, inf], (optional)
		@param rotation Rotation, Rotation for the newly added object — float array of 3 items in [-inf, inf], (optional)
	**/
	static function primitive_nurbs_surface_cylinder_add(radius:Float, view_align:Bool, enter_editmode:Bool, location:Array<Float>, rotation:Array<Float>):Void;
	/**
		Construct a Nurbs surface Sphere
		@param radius Radius — float in [0, inf], (optional)
		@param view_align Align to View, Align the new object to the view — boolean, (optional)
		@param enter_editmode Enter Editmode, Enter editmode when adding this object — boolean, (optional)
		@param location Location, Location for the newly added object — float array of 3 items in [-inf, inf], (optional)
		@param rotation Rotation, Rotation for the newly added object — float array of 3 items in [-inf, inf], (optional)
	**/
	static function primitive_nurbs_surface_sphere_add(radius:Float, view_align:Bool, enter_editmode:Bool, location:Array<Float>, rotation:Array<Float>):Void;
	/**
		Construct a Nurbs surface Patch
		@param radius Radius — float in [0, inf], (optional)
		@param view_align Align to View, Align the new object to the view — boolean, (optional)
		@param enter_editmode Enter Editmode, Enter editmode when adding this object — boolean, (optional)
		@param location Location, Location for the newly added object — float array of 3 items in [-inf, inf], (optional)
		@param rotation Rotation, Rotation for the newly added object — float array of 3 items in [-inf, inf], (optional)
	**/
	static function primitive_nurbs_surface_surface_add(radius:Float, view_align:Bool, enter_editmode:Bool, location:Array<Float>, rotation:Array<Float>):Void;
	/**
		Construct a Nurbs surface Torus
		@param radius Radius — float in [0, inf], (optional)
		@param view_align Align to View, Align the new object to the view — boolean, (optional)
		@param enter_editmode Enter Editmode, Enter editmode when adding this object — boolean, (optional)
		@param location Location, Location for the newly added object — float array of 3 items in [-inf, inf], (optional)
		@param rotation Rotation, Rotation for the newly added object — float array of 3 items in [-inf, inf], (optional)
	**/
	static function primitive_nurbs_surface_torus_add(radius:Float, view_align:Bool, enter_editmode:Bool, location:Array<Float>, rotation:Array<Float>):Void;
}