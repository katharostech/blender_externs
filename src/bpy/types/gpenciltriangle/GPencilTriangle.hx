package bpy.types.gpenciltriangle;
/**
	Triangulation data for Grease Pencil fills
**/
@:pythonImport("bpy.types.GPencilTriangle") extern class GPencilTriangle {
	/**
		First triangle vertex texture coordinates
		
		Type: float array of 2 items in [-inf, inf], default (0.0, 0.0), (readonly)
	**/
	var uv1(default, never) : Array<Float>;
	/**
		Second triangle vertex texture coordinates
		
		Type: float array of 2 items in [-inf, inf], default (0.0, 0.0), (readonly)
	**/
	var uv2(default, never) : Array<Float>;
	/**
		Third triangle vertex texture coordinates
		
		Type: float array of 2 items in [-inf, inf], default (0.0, 0.0), (readonly)
	**/
	var uv3(default, never) : Array<Float>;
	/**
		First triangle vertex index
		
		Type: int in [-inf, inf], default 0, (readonly)
	**/
	var v1(default, never) : Int;
	/**
		Second triangle vertex index
		
		Type: int in [-inf, inf], default 0, (readonly)
	**/
	var v2(default, never) : Int;
	/**
		Third triangle vertex index
		
		Type: int in [-inf, inf], default 0, (readonly)
	**/
	var v3(default, never) : Int;
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