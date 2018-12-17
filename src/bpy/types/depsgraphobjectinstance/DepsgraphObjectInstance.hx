package bpy.types.depsgraphobjectinstance;
/**
	Extended information about dependency graph object iterator (WARNING: all data here is evaluated one, not original .blend IDs…)
**/
@:native("bpy.types.DepsgraphObjectInstance") extern class DepsgraphObjectInstance {
	/**
		Evaluated object which is being instanced by this iterator
		
		Type: Object, (readonly)
	**/
	var instance_object(default, never) : bpy.types.object.Object;
	/**
		Denotes whether the object is coming from dupli-list
		
		Type: boolean, default False, (readonly)
	**/
	var is_instance(default, never) : Bool;
	/**
		Generated transform matrix in world space
		
		Type: float multi-dimensional array of 4 * 4 items in [-inf, inf], default ((0.0, 0.0, 0.0, 0.0), (0.0, 0.0, 0.0, 0.0), (0.0, 0.0, 0.0, 0.0), (0.0, 0.0, 0.0, 0.0)), (readonly)
	**/
	var matrix_world(default, never) : Array<Float>;
	/**
		Evaluated object the iterator points to
		
		Type: Object, (readonly)
	**/
	var object(default, never) : bpy.types.object.Object;
	/**
		Generated coordinates in parent object space
		
		Type: float array of 3 items in [-inf, inf], default (0.0, 0.0, 0.0), (readonly)
	**/
	var orco(default, never) : Array<Float>;
	/**
		Evaluated parent object of the duplication list
		
		Type: Object, (readonly)
	**/
	var parent(default, never) : bpy.types.object.Object;
	/**
		Evaluated particle system that this object was instanced from
		
		Type: ParticleSystem, (readonly)
	**/
	var particle_system(default, never) : bpy.types.particlesystem.ParticleSystem;
	/**
		Persistent identifier for inter-frame matching of objects with motion blur
		
		Type: int array of 16 items in [-inf, inf], default (0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0), (readonly)
	**/
	var persistent_id(default, never) : Array<Int>;
	/**
		Random id for this dupli object
		
		Type: int in [0, inf], default 0, (readonly)
	**/
	var random_id(default, never) : Int;
	/**
		UV coordinates in parent object space
		
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