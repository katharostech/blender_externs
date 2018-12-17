package bpy.ops.particle;
/**
	Particle Operators
**/
@:pythonImport("bpy.ops.particle") extern class Module {
	/**
		Apply a stroke of brush to the particles
		@param stroke Stroke — bpy_prop_collection of OperatorStrokeElement, (optional)
	**/
	static function brush_edit(stroke:Dynamic):Void;
	/**
		Connect hair to the emitter mesh
		@param all All hair, Connect all hair systems to the emitter mesh — boolean, (optional)
	**/
	static function connect_hair(all:Bool):Void;
	/**
		Copy particle systems from the active object to selected objects
		@param space Space, Space transform for copying from one object to anotherOBJECT Object, Copy inside each object’s local space.WORLD World, Copy in world space. — enum in ['OBJECT', 'WORLD'], (optional)
		@param remove_target_particles Remove Target Particles, Remove particle systems on the target objects — boolean, (optional)
		@param use_active Use Active, Use the active particle system from the context — boolean, (optional)
	**/
	static function copy_particle_systems(space:bpy.ops.particle.Particle.Enum1, remove_target_particles:Bool, use_active:Bool):Void;
	/**
		Delete selected particles or keys
		@param type Type, Delete a full particle or only keys — enum in ['PARTICLE', 'KEY'], (optional)
	**/
	static function delete(type:bpy.ops.particle.Particle.Enum2):Void;
	/**
		Disconnect hair from the emitter mesh
		@param all All hair, Disconnect all hair systems from the emitter mesh — boolean, (optional)
	**/
	static function disconnect_hair(all:Bool):Void;
	/**
		Duplicate particle system within the active object
		@param use_duplicate_settings Duplicate Settings, Duplicate settings as well, so the new particle system uses its own settings — boolean, (optional)
	**/
	static function duplicate_particle_system(use_duplicate_settings:Bool):Void;
	/**
		Duplicate the current dupliobject
	**/
	static function dupliob_copy():Void;
	/**
		Move dupli object down in the list
	**/
	static function dupliob_move_down():Void;
	/**
		Move dupli object up in the list
	**/
	static function dupliob_move_up():Void;
	/**
		Refresh list of dupli objects and their weights
	**/
	static function dupliob_refresh():Void;
	/**
		Remove the selected dupliobject
	**/
	static function dupliob_remove():Void;
	/**
		Undo all edition performed on the particle system
	**/
	static function edited_clear():Void;
	/**
		Add or remove a Hair Dynamics Preset
		@param name Name, Name of the preset, used to make the path name — string, (optional, never None)
		@param remove_name remove_name — boolean, (optional)
		@param remove_active remove_active — boolean, (optional)
	**/
	static function hair_dynamics_preset_add(name:String, remove_name:Bool, remove_active:Bool):Void;
	/**
		Hide selected particles
		@param unselected Unselected, Hide unselected rather than selected — boolean, (optional)
	**/
	static function hide(unselected:Bool):Void;
	/**
		Duplicate and mirror the selected particles along the local X axis
	**/
	static function mirror():Void;
	/**
		Add new particle settings
	**/
	static function pyNew():Void;
	/**
		Add a new particle target
	**/
	static function new_target():Void;
	/**
		Toggle particle edit mode
	**/
	static function particle_edit_toggle():Void;
	/**
		Change the number of keys of selected particles (root and tip keys included)
		@param keys_number Number of Keys — int in [2, inf], (optional)
	**/
	static function rekey(keys_number:Int):Void;
	/**
		Remove selected particles close enough of others
		@param threshold Merge Distance, Threshold distance within which particles are removed — float in [0, inf], (optional)
	**/
	static function remove_doubles(threshold:Float):Void;
	/**
		Show hidden particles
		@param select Select — boolean, (optional)
	**/
	static function reveal(select:Bool):Void;
	/**
		(De)select all particles’ keys
		@param action Action, Selection action to executeTOGGLE Toggle, Toggle selection for all elements.SELECT Select, Select all elements.DESELECT Deselect, Deselect all elements.INVERT Invert, Invert selection of all elements. — enum in ['TOGGLE', 'SELECT', 'DESELECT', 'INVERT'], (optional)
	**/
	static function select_all(action:bpy.ops.particle.Particle.Enum3):Void;
	/**
		Deselect boundary selected keys of each particle
	**/
	static function select_less():Void;
	/**
		Select nearest particle from mouse pointer
		@param deselect Deselect, Deselect linked keys rather than selecting them — boolean, (optional)
		@param location Location — int array of 2 items in [0, inf], (optional)
	**/
	static function select_linked(deselect:Bool, location:Array<Int>):Void;
	/**
		Select keys linked to boundary selected keys of each particle
	**/
	static function select_more():Void;
	/**
		Select a randomly distributed set of hair or points
		@param percent Percent, Percentage of objects to select randomly — float in [0, 100], (optional)
		@param seed Random Seed, Seed for the random number generator — int in [0, inf], (optional)
		@param action Action, Selection action to executeSELECT Select, Select all elements.DESELECT Deselect, Deselect all elements. — enum in ['SELECT', 'DESELECT'], (optional)
		@param type Type, Select either hair or points — enum in ['HAIR', 'POINTS'], (optional)
	**/
	static function select_random(percent:Float, seed:Int, action:bpy.ops.particle.Particle.Enum4, type:bpy.ops.particle.Particle.Enum5):Void;
	/**
		Select roots of all visible particles
		@param action Action, Selection action to executeTOGGLE Toggle, Toggle selection for all elements.SELECT Select, Select all elements.DESELECT Deselect, Deselect all elements.INVERT Invert, Invert selection of all elements. — enum in ['TOGGLE', 'SELECT', 'DESELECT', 'INVERT'], (optional)
	**/
	static function select_roots(action:bpy.ops.particle.Particle.Enum6):Void;
	/**
		Select tips of all visible particles
		@param action Action, Selection action to executeTOGGLE Toggle, Toggle selection for all elements.SELECT Select, Select all elements.DESELECT Deselect, Deselect all elements.INVERT Invert, Invert selection of all elements. — enum in ['TOGGLE', 'SELECT', 'DESELECT', 'INVERT'], (optional)
	**/
	static function select_tips(action:bpy.ops.particle.Particle.Enum7):Void;
	/**
		Cut hair to conform to the set shape object
	**/
	static function shape_cut():Void;
	/**
		Subdivide selected particles segments (adds keys)
	**/
	static function subdivide():Void;
	/**
		Move particle target down in the list
	**/
	static function target_move_down():Void;
	/**
		Move particle target up in the list
	**/
	static function target_move_up():Void;
	/**
		Remove the selected particle target
	**/
	static function target_remove():Void;
	/**
		Make selected hair the same length
	**/
	static function unify_length():Void;
	/**
		Set the weight of selected keys
		@param factor Factor, Interpolation factor between current brush weight, and keys’ weights — float in [0, 1], (optional)
	**/
	static function weight_set(factor:Float):Void;
}