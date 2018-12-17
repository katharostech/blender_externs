package bpy.types.worldlighting;
/**
	Lighting for a World data-block
**/
@:native("bpy.types.WorldLighting") extern class WorldLighting {
	/**
		Factor for ambient occlusion blending
		
		Type: float in [0, inf], default 0.0
	**/
	var ao_factor : Float;
	/**
		Length of rays, defines how far away other faces give occlusion effect
		
		Type: float in [-inf, inf], default 0.0
	**/
	var distance : Float;
	/**
		Use Ambient Occlusion to add shadowing based on distance between objects
		
		Type: boolean, default False
	**/
	var use_ambient_occlusion : Bool;
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