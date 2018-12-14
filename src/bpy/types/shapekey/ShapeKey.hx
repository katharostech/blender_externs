package bpy.types.shapekey;
@:enum abstract Enum1(String) from String to String {
	var KEY_LINEAR : String = "KEY_LINEAR";
	var KEY_CARDINAL : String = "KEY_CARDINAL";
	var KEY_CATMULL_ROM : String = "KEY_CATMULL_ROM";
	var KEY_BSPLINE : String = "KEY_BSPLINE";
}/**
	Shape key in a shape keys data-block
**/
@:pythonImport("bpy.types.ShapeKey") extern class ShapeKey {
	/**
		
		
		Type: bpy_prop_collection of UnknownType, (readonly)
	**/
	var data(default, never) : bpy.types.bpy_prop_collection.Bpy_prop_collection;
	/**
		Frame for absolute keys
		
		Type: float in [-inf, inf], default 0.0, (readonly)
	**/
	var frame(default, never) : Float;
	/**
		Interpolation type for absolute shape keys
		
		Type: enum in [‘KEY_LINEAR’, ‘KEY_CARDINAL’, ‘KEY_CATMULL_ROM’, ‘KEY_BSPLINE’], default ‘KEY_LINEAR’
	**/
	var interpolation : bpy.types.shapekey.ShapeKey.Enum1;
	/**
		Mute this shape key
		
		Type: boolean, default False
	**/
	var mute : Bool;
	/**
		Name of Shape Key
		
		Type: string, default “”, (never None)
	**/
	var name : String;
	/**
		Shape used as a relative key
		
		Type: ShapeKey, (never None)
	**/
	var relative_key : bpy.types.shapekey.ShapeKey;
	/**
		Maximum for slider
		
		Type: float in [-10, 10], default 1.0
	**/
	var slider_max : Float;
	/**
		Minimum for slider
		
		Type: float in [-10, 10], default 0.0
	**/
	var slider_min : Float;
	/**
		Value of shape key at the current frame
		
		Type: float in [0, 1], default 0.0
	**/
	var value : Float;
	/**
		Vertex weight group, to blend with basis shape
		
		Type: string, default “”, (never None)
	**/
	var vertex_group : String;
	/**
		Compute local space vertices’ normals for this shape key
		
		@returns float in [-1, 1]
	**/
	function normals_vertex_get():Float;
	/**
		Compute local space faces’ normals for this shape key
		
		@returns float in [-1, 1]
	**/
	function normals_polygon_get():Float;
	/**
		Compute local space face corners’ normals for this shape key
		
		@returns float in [-1, 1]
	**/
	function normals_split_get():Float;
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