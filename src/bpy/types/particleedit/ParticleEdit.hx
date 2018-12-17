package bpy.types.particleedit;
@:enum abstract Enum1(String) from String to String {
	var PATH : String = "PATH";
	var POINT : String = "POINT";
	var TIP : String = "TIP";
}@:enum abstract Enum2(String) from String to String {
	var NONE : String = "NONE";
	var COMB : String = "COMB";
	var SMOOTH : String = "SMOOTH";
	var ADD : String = "ADD";
	var LENGTH : String = "LENGTH";
	var PUFF : String = "PUFF";
	var CUT : String = "CUT";
	var WEIGHT : String = "WEIGHT";
}@:enum abstract Enum3(String) from String to String {
	var PARTICLES : String = "PARTICLES";
	var SOFT_BODY : String = "SOFT_BODY";
	var CLOTH : String = "CLOTH";
}/**
	Properties of particle editing mode
**/
@:native("bpy.types.ParticleEdit") extern class ParticleEdit {
	/**
		
		
		Type: ParticleBrush, (readonly)
	**/
	var brush(default, never) : bpy.types.particlebrush.ParticleBrush;
	/**
		How many keys to make new particles with
		
		Type: int in [2, 32767], default 0
	**/
	var default_key_count : Int;
	/**
		How many steps to display the path with
		
		Type: int in [1, 10], default 0
	**/
	var display_step : Int;
	/**
		Distance to keep particles away from the emitter
		
		Type: float in [0, inf], default 0.0
	**/
	var emitter_distance : Float;
	/**
		How many frames to fade
		
		Type: int in [1, 100], default 0
	**/
	var fade_frames : Int;
	/**
		A valid edit mode exists
		
		Type: boolean, default False, (readonly)
	**/
	var is_editable(default, never) : Bool;
	/**
		Editing hair
		
		Type: boolean, default False, (readonly)
	**/
	var is_hair(default, never) : Bool;
	/**
		The edited object
		
		Type: Object, (readonly)
	**/
	var object(default, never) : bpy.types.object.Object;
	/**
		Particle select and display mode
		
		Type: enum in [‘PATH’, ‘POINT’, ‘TIP’], default ‘PATH’
	**/
	var select_mode : bpy.types.particleedit.ParticleEdit.Enum1;
	/**
		Outer shape to use for tools
		
		Type: Object
	**/
	var shape_object : bpy.types.object.Object;
	/**
		Draw actual particles
		
		Type: boolean, default False
	**/
	var show_particles : Bool;
	/**
		
		
		Type: enum in [‘NONE’, ‘COMB’, ‘SMOOTH’, ‘ADD’, ‘LENGTH’, ‘PUFF’, ‘CUT’, ‘WEIGHT’], default ‘COMB’
	**/
	var tool : bpy.types.particleedit.ParticleEdit.Enum2;
	/**
		
		
		Type: enum in [‘PARTICLES’, ‘SOFT_BODY’, ‘CLOTH’], default ‘PARTICLES’
	**/
	var type : bpy.types.particleedit.ParticleEdit.Enum3;
	/**
		Calculate point velocities automatically
		
		Type: boolean, default False
	**/
	var use_auto_velocity : Bool;
	/**
		Interpolate new particles from the existing ones
		
		Type: boolean, default False
	**/
	var use_default_interpolate : Bool;
	/**
		Keep paths from intersecting the emitter
		
		Type: boolean, default False
	**/
	var use_emitter_deflect : Bool;
	/**
		Fade paths and keys further away from current frame
		
		Type: boolean, default False
	**/
	var use_fade_time : Bool;
	/**
		Keep path lengths constant
		
		Type: boolean, default False
	**/
	var use_preserve_length : Bool;
	/**
		Keep root keys unmodified
		
		Type: boolean, default False
	**/
	var use_preserve_root : Bool;
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