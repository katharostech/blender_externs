package bpy.types.metaelement;
@:enum abstract Enum1(String) from String to String {
	var BALL : String = "BALL";
	var CAPSULE : String = "CAPSULE";
	var PLANE : String = "PLANE";
	var ELLIPSOID : String = "ELLIPSOID";
	var CUBE : String = "CUBE";
}/**
	Blobby element in a Metaball data-block
**/
@:pythonImport("bpy.types.MetaElement") extern class MetaElement {
	/**
		
		
		Type: float array of 3 items in [-inf, inf], default (0.0, 0.0, 0.0)
	**/
	var co : Array<Float>;
	/**
		Hide element
		
		Type: boolean, default False
	**/
	var hide : Bool;
	/**
		
		
		Type: float in [0, inf], default 0.0
	**/
	var radius : Float;
	/**
		Normalized quaternion rotation
		
		Type: float array of 4 items in [-inf, inf], default (0.0, 0.0, 0.0, 0.0)
	**/
	var rotation : Array<Float>;
	/**
		Size of element, use of components depends on element type
		
		Type: float in [0, 20], default 0.0
	**/
	var size_x : Float;
	/**
		Size of element, use of components depends on element type
		
		Type: float in [0, 20], default 0.0
	**/
	var size_y : Float;
	/**
		Size of element, use of components depends on element type
		
		Type: float in [0, 20], default 0.0
	**/
	var size_z : Float;
	/**
		Stiffness defines how much of the element to fill
		
		Type: float in [0, 10], default 0.0
	**/
	var stiffness : Float;
	/**
		Metaball types
		
		Type: enum in [‘BALL’, ‘CAPSULE’, ‘PLANE’, ‘ELLIPSOID’, ‘CUBE’], default ‘BALL’
	**/
	var type : bpy.types.metaelement.MetaElement.Enum1;
	/**
		Set metaball as negative one
		
		Type: boolean, default False
	**/
	var use_negative : Bool;
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