package bpy.types.bakepixel;
@:native("bpy.types.BakePixel") extern class BakePixel {
	/**
		
		
		Type: float in [-inf, inf], default 0.0, (readonly)
	**/
	var du_dx(default, never) : Float;
	/**
		
		
		Type: float in [-inf, inf], default 0.0, (readonly)
	**/
	var du_dy(default, never) : Float;
	/**
		
		
		Type: float in [-inf, inf], default 0.0, (readonly)
	**/
	var dv_dx(default, never) : Float;
	/**
		
		
		Type: float in [-inf, inf], default 0.0, (readonly)
	**/
	var dv_dy(default, never) : Float;
	/**
		
		
		Type: BakePixel, (readonly)
	**/
	var next(default, never) : bpy.types.bakepixel.BakePixel;
	/**
		
		
		Type: int in [-inf, inf], default 0, (readonly)
	**/
	var object_id(default, never) : Int;
	/**
		
		
		Type: int in [-inf, inf], default 0, (readonly)
	**/
	var primitive_id(default, never) : Int;
	/**
		
		
		Type: float array of 2 items in [-inf, inf], default (0.0, 0.0), (readonly)
	**/
	var uv(default, never) : Array<Float>;
	/**
		
		@param id The RNA type identifier. — string
		
		@returns bpy.types.Struct subclass
	**/
	static function bl_rna_get_subclass(id:String):bpy.types.struct.Struct;
	/**
		
		@param id The RNA type identifier. — string
		
		@returns type
	**/
	static function bl_rna_get_subclass_py(id:String):Dynamic;
}