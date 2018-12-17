package bpy.types.particletarget;
@:enum abstract Enum1(String) from String to String {
	var FRIEND : String = "FRIEND";
	var NEUTRAL : String = "NEUTRAL";
	var ENEMY : String = "ENEMY";
}/**
	Target particle system
**/
@:native("bpy.types.ParticleTarget") extern class ParticleTarget {
	/**
		
		
		Type: enum in [‘FRIEND’, ‘NEUTRAL’, ‘ENEMY’], default ‘NEUTRAL’
	**/
	var alliance : bpy.types.particletarget.ParticleTarget.Enum1;
	/**
		
		
		Type: float in [0, 30000], default 0.0
	**/
	var duration : Float;
	/**
		Keyed particles target is valid
		
		Type: boolean, default False
	**/
	var is_valid : Bool;
	/**
		Particle target name
		
		Type: string, default “”, (readonly, never None)
	**/
	var name(default, never) : String;
	/**
		The object that has the target particle system (empty if same object)
		
		Type: Object
	**/
	var object : bpy.types.object.Object;
	/**
		The index of particle system on the target object
		
		Type: int in [1, inf], default 0
	**/
	var system : Int;
	/**
		
		
		Type: float in [0, 30000], default 0.0
	**/
	var time : Float;
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