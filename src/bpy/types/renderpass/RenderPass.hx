package bpy.types.renderpass;
@:pythonImport("bpy.types.RenderPass") extern class RenderPass {
	/**
		
		
		Type: string, default “”, (readonly, never None)
	**/
	var channel_id(default, never) : String;
	/**
		
		
		Type: int in [-inf, inf], default 0, (readonly)
	**/
	var channels(default, never) : Int;
	/**
		
		
		Type: string, default “”, (readonly, never None)
	**/
	var fullname(default, never) : String;
	/**
		
		
		Type: string, default “”, (readonly, never None)
	**/
	var name(default, never) : String;
	/**
		
		
		Type: float in [-inf, inf], default 0.0
	**/
	var rect : Float;
	/**
		
		
		Type: int in [-inf, inf], default 0, (readonly)
	**/
	var view_id(default, never) : Int;
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