package bpy.types.particlebrush;
@:enum abstract Enum1(String) from String to String {
	var GROW : String = "GROW";
	var SHRINK : String = "SHRINK";
}@:enum abstract Enum2(String) from String to String {
	var ADD : String = "ADD";
	var SUB : String = "SUB";
}/**
	Particle editing brush
**/
@:native("bpy.types.ParticleBrush") extern class ParticleBrush {
	/**
		Particle count
		
		Type: int in [1, 1000], default 0
	**/
	var count : Int;
	/**
		
		
		Type: CurveMapping, (readonly)
	**/
	var curve(default, never) : bpy.types.curvemapping.CurveMapping;
	/**
		
		
		Type: enum in [‘GROW’, ‘SHRINK’], default ‘GROW’
	**/
	var length_mode : bpy.types.particlebrush.ParticleBrush.Enum1;
	/**
		
		
		Type: enum in [‘ADD’, ‘SUB’], default ‘ADD’
	**/
	var puff_mode : bpy.types.particlebrush.ParticleBrush.Enum2;
	/**
		Radius of the brush in pixels
		
		Type: int in [1, 32767], default 0
	**/
	var size : Int;
	/**
		Brush steps
		
		Type: int in [1, 32767], default 0
	**/
	var steps : Int;
	/**
		Brush strength
		
		Type: float in [0.001, 1], default 0.0
	**/
	var strength : Float;
	/**
		Apply puff to unselected end-points (helps maintain hair volume when puffing root)
		
		Type: boolean, default False
	**/
	var use_puff_volume : Bool;
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