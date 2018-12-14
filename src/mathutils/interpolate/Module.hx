package mathutils.interpolate;
/**
	Interpolation Utilities (mathutils.interpolate)
	
	The Blender interpolate module
**/
@:pythonImport("mathutils.interpolate") extern class Module {
	/**
		Calculate barycentric weights for a point on a polygon.
		@param veclist list of vectors — 
		@param pt point   :rtype: list of per-vector weights — 
	**/
	static function poly_3d_calc(veclist:Dynamic, pt:Dynamic):Void;
}