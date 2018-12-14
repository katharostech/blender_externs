package bpy.ops.rigidbody;
/**
	Rigidbody Operators
**/
@:pythonImport("bpy.ops.rigidbody") extern class Module {
	/**
		Bake rigid body transformations of selected objects to keyframes
		@param frame_start Start Frame, Start frame for baking — int in [0, 300000], (optional)
		@param frame_end End Frame, End frame for baking — int in [1, 300000], (optional)
		@param step Frame Step, Frame Step — int in [1, 120], (optional)
	**/
	static function bake_to_keyframes(frame_start:Int, frame_end:Int, step:Int):Void;
	/**
		Create rigid body constraints between selected rigid bodies
		@param con_type Type, Type of generated constraintFIXED Fixed, Glue rigid bodies together.POINT Point, Constrain rigid bodies to move around common pivot point.HINGE Hinge, Restrict rigid body rotation to one axis.SLIDER Slider, Restrict rigid body translation to one axis.PISTON Piston, Restrict rigid body translation and rotation to one axis.GENERIC Generic, Restrict translation and rotation to specified axes.GENERIC_SPRING Generic Spring, Restrict translation and rotation to specified axes with springs.MOTOR Motor, Drive rigid body around or along an axis. — enum in ['FIXED', 'POINT', 'HINGE', 'SLIDER', 'PISTON', 'GENERIC', 'GENERIC_SPRING', 'MOTOR'], (optional)
		@param pivot_type Location, Constraint pivot locationCENTER Center, Pivot location is between the constrained rigid bodies.ACTIVE Active, Pivot location is at the active object position.SELECTED Selected, Pivot location is at the selected object position. — enum in ['CENTER', 'ACTIVE', 'SELECTED'], (optional)
		@param connection_pattern Connection Pattern, Pattern used to connect objectsSELECTED_TO_ACTIVE Selected to Active, Connect selected objects to the active object.CHAIN_DISTANCE Chain by Distance, Connect objects as a chain based on distance, starting at the active object. — enum in ['SELECTED_TO_ACTIVE', 'CHAIN_DISTANCE'], (optional)
	**/
	static function connect(con_type:bpy.ops.rigidbody.Rigidbody.Enum1, pivot_type:bpy.ops.rigidbody.Rigidbody.Enum2, connection_pattern:bpy.ops.rigidbody.Rigidbody.Enum3):Void;
	/**
		Add Rigid Body Constraint to active object
		@param type Rigid Body Constraint TypeFIXED Fixed, Glue rigid bodies together.POINT Point, Constrain rigid bodies to move around common pivot point.HINGE Hinge, Restrict rigid body rotation to one axis.SLIDER Slider, Restrict rigid body translation to one axis.PISTON Piston, Restrict rigid body translation and rotation to one axis.GENERIC Generic, Restrict translation and rotation to specified axes.GENERIC_SPRING Generic Spring, Restrict translation and rotation to specified axes with springs.MOTOR Motor, Drive rigid body around or along an axis. — enum in ['FIXED', 'POINT', 'HINGE', 'SLIDER', 'PISTON', 'GENERIC', 'GENERIC_SPRING', 'MOTOR'], (optional)
	**/
	static function constraint_add(type:bpy.ops.rigidbody.Rigidbody.Enum4):Void;
	/**
		Remove Rigid Body Constraint from Object
	**/
	static function constraint_remove():Void;
	/**
		Automatically calculate mass values for Rigid Body Objects based on volume
		@param material Material Preset, Type of material that objects are made of (determines material density) — enum in ['DEFAULT'], (optional)
		@param density Density, Custom density value (kg/m^3) to use instead of material preset — float in [1.17549e-38, inf], (optional)
	**/
	static function mass_calculate(material:bpy.ops.rigidbody.Rigidbody.Enum5, density:Float):Void;
	/**
		Add active object as Rigid Body
		@param type Rigid Body TypeACTIVE Active, Object is directly controlled by simulation results.PASSIVE Passive, Object is directly controlled by animation system. — enum in ['ACTIVE', 'PASSIVE'], (optional)
	**/
	static function object_add(type:bpy.ops.rigidbody.Rigidbody.Enum6):Void;
	/**
		Remove Rigid Body settings from Object
	**/
	static function object_remove():Void;
	/**
		Copy Rigid Body settings from active object to selected
	**/
	static function object_settings_copy():Void;
	/**
		Add selected objects as Rigid Bodies
		@param type Rigid Body TypeACTIVE Active, Object is directly controlled by simulation results.PASSIVE Passive, Object is directly controlled by animation system. — enum in ['ACTIVE', 'PASSIVE'], (optional)
	**/
	static function objects_add(type:bpy.ops.rigidbody.Rigidbody.Enum7):Void;
	/**
		Remove selected objects from Rigid Body simulation
	**/
	static function objects_remove():Void;
	/**
		Change collision shapes for selected Rigid Body Objects
		@param type Rigid Body ShapeBOX Box, Box-like shapes (i.e. cubes), including planes (i.e. ground planes).SPHERE Sphere.CAPSULE Capsule.CYLINDER Cylinder.CONE Cone.CONVEX_HULL Convex Hull, A mesh-like surface encompassing (i.e. shrinkwrap over) all vertices (best results with fewer vertices).MESH Mesh, Mesh consisting of triangles only, allowing for more detailed interactions than convex hulls. — enum in ['BOX', 'SPHERE', 'CAPSULE', 'CYLINDER', 'CONE', 'CONVEX_HULL', 'MESH'], (optional)
	**/
	static function shape_change(type:bpy.ops.rigidbody.Rigidbody.Enum8):Void;
	/**
		Add Rigid Body simulation world to the current scene
	**/
	static function world_add():Void;
	/**
		Remove Rigid Body simulation world from the current scene
	**/
	static function world_remove():Void;
}