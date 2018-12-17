package bpy.types.dynamicpaintbrushsettings;
@:enum abstract Enum1(String) from String to String {
	var PARTICLE_SYSTEM : String = "PARTICLE_SYSTEM";
	var POINT : String = "POINT";
	var DISTANCE : String = "DISTANCE";
	var VOLUME_DISTANCE : String = "VOLUME_DISTANCE";
	var VOLUME : String = "VOLUME";
}@:enum abstract Enum2(String) from String to String {
	var SMOOTH : String = "SMOOTH";
	var CONSTANT : String = "CONSTANT";
	var RAMP : String = "RAMP";
}@:enum abstract Enum3(String) from String to String {
	var CANVAS : String = "CANVAS";
	var BRUSH : String = "BRUSH";
	var Z_AXIS : String = "Z_AXIS";
}@:enum abstract Enum4(String) from String to String {
	var CHANGE : String = "CHANGE";
	var DEPTH : String = "DEPTH";
	var FORCE : String = "FORCE";
	var REFLECT : String = "REFLECT";
}/**
	Brush settings
**/
@:native("bpy.types.DynamicPaintBrushSettings") extern class DynamicPaintBrushSettings {
	/**
		Proximity falloff is applied inside the volume
		
		Type: boolean, default False
	**/
	var invert_proximity : Bool;
	/**
		Paint alpha
		
		Type: float in [0, 1], default 0.0
	**/
	var paint_alpha : Float;
	/**
		Color of the paint
		
		Type: float array of 3 items in [0, inf], default (0.0, 0.0, 0.0)
	**/
	var paint_color : Array<Float>;
	/**
		Maximum distance from brush to mesh surface to affect paint
		
		Type: float in [0, 500], default 0.0
	**/
	var paint_distance : Float;
	/**
		Color ramp used to define proximity falloff
		
		Type: ColorRamp, (readonly)
	**/
	var paint_ramp(default, never) : bpy.types.colorramp.ColorRamp;
	/**
		
		
		Type: enum in [‘PARTICLE_SYSTEM’, ‘POINT’, ‘DISTANCE’, ‘VOLUME_DISTANCE’, ‘VOLUME’], default ‘VOLUME’
	**/
	var paint_source : bpy.types.dynamicpaintbrushsettings.DynamicPaintBrushSettings.Enum1;
	/**
		Paint wetness, visible in wetmap (some effects only affect wet paint)
		
		Type: float in [0, 1], default 0.0
	**/
	var paint_wetness : Float;
	/**
		The particle system to paint with
		
		Type: ParticleSystem
	**/
	var particle_system : bpy.types.particlesystem.ParticleSystem;
	/**
		Proximity falloff type
		
		Type: enum in [‘SMOOTH’, ‘CONSTANT’, ‘RAMP’], default ‘CONSTANT’
	**/
	var proximity_falloff : bpy.types.dynamicpaintbrushsettings.DynamicPaintBrushSettings.Enum2;
	/**
		Ray direction to use for projection (if brush object is located in that direction it’s painted)
		
		Type: enum in [‘CANVAS’, ‘BRUSH’, ‘Z_AXIS’], default ‘CANVAS’
	**/
	var ray_direction : bpy.types.dynamicpaintbrushsettings.DynamicPaintBrushSettings.Enum3;
	/**
		Smooth falloff added after solid radius
		
		Type: float in [0, 10], default 0.0
	**/
	var smooth_radius : Float;
	/**
		Smudge effect strength
		
		Type: float in [0, 1], default 0.0
	**/
	var smudge_strength : Float;
	/**
		Radius that will be painted solid
		
		Type: float in [0.01, 10], default 0.0
	**/
	var solid_radius : Float;
	/**
		Only increase alpha value if paint alpha is higher than existing
		
		Type: boolean, default False
	**/
	var use_absolute_alpha : Bool;
	/**
		Negate influence inside the volume
		
		Type: boolean, default False
	**/
	var use_negative_volume : Bool;
	/**
		Erase / remove paint instead of adding it
		
		Type: boolean, default False
	**/
	var use_paint_erase : Bool;
	/**
		Use radius from particle settings
		
		Type: boolean, default False
	**/
	var use_particle_radius : Bool;
	/**
		Brush is projected to canvas from defined direction within brush proximity
		
		Type: boolean, default False
	**/
	var use_proximity_project : Bool;
	/**
		Only read color ramp alpha
		
		Type: boolean, default False
	**/
	var use_proximity_ramp_alpha : Bool;
	/**
		Make this brush to smudge existing paint as it moves
		
		Type: boolean, default False
	**/
	var use_smudge : Bool;
	/**
		Multiply brush influence by velocity color ramp alpha
		
		Type: boolean, default False
	**/
	var use_velocity_alpha : Bool;
	/**
		Replace brush color by velocity color ramp
		
		Type: boolean, default False
	**/
	var use_velocity_color : Bool;
	/**
		Multiply brush intersection depth (displace, waves) by velocity ramp alpha
		
		Type: boolean, default False
	**/
	var use_velocity_depth : Bool;
	/**
		Velocity considered as maximum influence (Blender units per frame)
		
		Type: float in [0.0001, 10], default 0.0
	**/
	var velocity_max : Float;
	/**
		Color ramp used to define brush velocity effect
		
		Type: ColorRamp, (readonly)
	**/
	var velocity_ramp(default, never) : bpy.types.colorramp.ColorRamp;
	/**
		Maximum level of surface intersection used to influence waves (use 0.0 to disable)
		
		Type: float in [0, 50], default 0.0
	**/
	var wave_clamp : Float;
	/**
		Multiplier for wave influence of this brush
		
		Type: float in [-2, 2], default 0.0
	**/
	var wave_factor : Float;
	/**
		
		
		Type: enum in [‘CHANGE’, ‘DEPTH’, ‘FORCE’, ‘REFLECT’], default ‘DEPTH’
	**/
	var wave_type : bpy.types.dynamicpaintbrushsettings.DynamicPaintBrushSettings.Enum4;
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