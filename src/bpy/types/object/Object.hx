package bpy.types.object;
@:enum abstract Enum1(String) from String to String {
	var BOX : String = "BOX";
	var SPHERE : String = "SPHERE";
	var CYLINDER : String = "CYLINDER";
	var CONE : String = "CONE";
	var CAPSULE : String = "CAPSULE";
}@:enum abstract Enum2(String) from String to String {
	var BOUNDS : String = "BOUNDS";
	var WIRE : String = "WIRE";
	var SOLID : String = "SOLID";
	var TEXTURED : String = "TEXTURED";
}@:enum abstract Enum3(String) from String to String {
	var PLAIN_AXES : String = "PLAIN_AXES";
	var ARROWS : String = "ARROWS";
	var SINGLE_ARROW : String = "SINGLE_ARROW";
	var CIRCLE : String = "CIRCLE";
	var CUBE : String = "CUBE";
	var SPHERE : String = "SPHERE";
	var CONE : String = "CONE";
	var IMAGE : String = "IMAGE";
}@:enum abstract Enum4(String) from String to String {
	var DEFAULT : String = "DEFAULT";
	var FRONT : String = "FRONT";
	var BACK : String = "BACK";
}@:enum abstract Enum5(String) from String to String {
	var NONE : String = "NONE";
	var FRAMES : String = "FRAMES";
	var VERTS : String = "VERTS";
	var FACES : String = "FACES";
	var COLLECTION : String = "COLLECTION";
}@:enum abstract Enum6(String) from String to String {
	var OBJECT : String = "OBJECT";
	var EDIT : String = "EDIT";
	var POSE : String = "POSE";
	var SCULPT : String = "SCULPT";
	var VERTEX_PAINT : String = "VERTEX_PAINT";
	var WEIGHT_PAINT : String = "WEIGHT_PAINT";
	var TEXTURE_PAINT : String = "TEXTURE_PAINT";
	var PARTICLE_EDIT : String = "PARTICLE_EDIT";
	var GPENCIL_EDIT : String = "GPENCIL_EDIT";
	var GPENCIL_SCULPT : String = "GPENCIL_SCULPT";
	var GPENCIL_PAINT : String = "GPENCIL_PAINT";
	var GPENCIL_WEIGHT : String = "GPENCIL_WEIGHT";
}@:enum abstract Enum7(String) from String to String {
	var OBJECT : String = "OBJECT";
	var ARMATURE : String = "ARMATURE";
	var LATTICE : String = "LATTICE";
	var VERTEX : String = "VERTEX";
	var pyVERTEX_3 : String = "VERTEX_3";
	var BONE : String = "BONE";
}@:enum abstract Enum8(String) from String to String {
	var QUATERNION : String = "QUATERNION";
	var XYZ : String = "XYZ";
	var XZY : String = "XZY";
	var YXZ : String = "YXZ";
	var YZX : String = "YZX";
	var ZXY : String = "ZXY";
	var ZYX : String = "ZYX";
	var AXIS_ANGLE : String = "AXIS_ANGLE";
}@:enum abstract Enum9(String) from String to String {
	var POS_X : String = "POS_X";
	var POS_Y : String = "POS_Y";
	var POS_Z : String = "POS_Z";
	var NEG_X : String = "NEG_X";
	var NEG_Y : String = "NEG_Y";
	var NEG_Z : String = "NEG_Z";
}@:enum abstract Enum10(String) from String to String {
	var MESH : String = "MESH";
	var CURVE : String = "CURVE";
	var SURFACE : String = "SURFACE";
	var META : String = "META";
	var FONT : String = "FONT";
	var ARMATURE : String = "ARMATURE";
	var LATTICE : String = "LATTICE";
	var EMPTY : String = "EMPTY";
	var GPENCIL : String = "GPENCIL";
	var CAMERA : String = "CAMERA";
	var LIGHT : String = "LIGHT";
	var SPEAKER : String = "SPEAKER";
	var LIGHT_PROBE : String = "LIGHT_PROBE";
}@:enum abstract Enum11(String) from String to String {
	var X : String = "X";
	var Y : String = "Y";
	var Z : String = "Z";
}@:enum abstract Enum12(String) from String to String {
	var WORLD : String = "WORLD";
	var POSE : String = "POSE";
	var LOCAL_WITH_PARENT : String = "LOCAL_WITH_PARENT";
	var LOCAL : String = "LOCAL";
}@:enum abstract Enum13(String) from String to String {
	var WORLD : String = "WORLD";
	var POSE : String = "POSE";
	var LOCAL_WITH_PARENT : String = "LOCAL_WITH_PARENT";
	var LOCAL : String = "LOCAL";
}@:enum abstract Enum14(String) from String to String {
	var PREVIEW : String = "PREVIEW";
	var RENDER : String = "RENDER";
}@:enum abstract Enum15(String) from String to String {
	var PREVIEW : String = "PREVIEW";
	var RENDER : String = "RENDER";
}/**
	Object data-block defining an object in a scene
**/
@:native("bpy.types.Object") extern class Object {
	/**
		Active material being displayed
		
		Type: Material
	**/
	var active_material : bpy.types.material.Material;
	/**
		Index of active material slot
		
		Type: int in [0, inf], default 0
	**/
	var active_material_index : Int;
	/**
		Current shape key
		
		Type: ShapeKey, (readonly)
	**/
	var active_shape_key(default, never) : bpy.types.shapekey.ShapeKey;
	/**
		Current shape key index
		
		Type: int in [-32768, 32767], default 0
	**/
	var active_shape_key_index : Int;
	/**
		Animation data for this data-block
		
		Type: AnimData, (readonly)
	**/
	var animation_data(default, never) : bpy.types.animdata.AnimData;
	/**
		Animation data for this data-block
		
		Type: AnimViz, (readonly, never None)
	**/
	var animation_visualization(default, never) : bpy.types.animviz.AnimViz;
	/**
		Object’s bounding box in object-space coordinates, all values are -1.0 when not available
		
		Type: float multi-dimensional array of 8 * 3 items in [-inf, inf], default ((0.0, 0.0, 0.0), (0.0, 0.0, 0.0), (0.0, 0.0, 0.0), (0.0, 0.0, 0.0), (0.0, 0.0, 0.0), (0.0, 0.0, 0.0), (0.0, 0.0, 0.0), (0.0, 0.0, 0.0)), (readonly)
	**/
	var bound_box(default, never) : Array<Float>;
	/**
		Settings for using the object as a collider in physics simulation
		
		Type: CollisionSettings, (readonly)
	**/
	var collision(default, never) : bpy.types.collisionsettings.CollisionSettings;
	/**
		Object color and alpha, used when faces have the ObColor mode enabled
		
		Type: float array of 4 items in [0, inf], default (0.0, 0.0, 0.0, 0.0)
	**/
	var color : Array<Float>;
	/**
		Constraints affecting the transformation of the object
		
		Type: ObjectConstraints bpy_prop_collection of Constraint, (readonly)
	**/
	var constraints(default, never) : bpy.types.objectconstraints.ObjectConstraints;
	/**
		Cycles object settings
		
		Type: CyclesObjectSettings, (readonly)
	**/
	var cycles(default, never) : bpy.types.cyclesobjectsettings.CyclesObjectSettings;
	/**
		Cycles visibility settings
		
		Type: CyclesVisibilitySettings, (readonly)
	**/
	var cycles_visibility(default, never) : bpy.types.cyclesvisibilitysettings.CyclesVisibilitySettings;
	/**
		Object data
		
		Type: ID
	**/
	var data : bpy.types.id.ID;
	/**
		Extra translation added to the location of the object
		
		Type: float array of 3 items in [-inf, inf], default (0.0, 0.0, 0.0)
	**/
	var delta_location : Array<Float>;
	/**
		Extra rotation added to the rotation of the object (when using Euler rotations)
		
		Type: float array of 3 items in [-inf, inf], default (0.0, 0.0, 0.0)
	**/
	var delta_rotation_euler : Array<Float>;
	/**
		Extra rotation added to the rotation of the object (when using Quaternion rotations)
		
		Type: float array of 4 items in [-inf, inf], default (1.0, 0.0, 0.0, 0.0)
	**/
	var delta_rotation_quaternion : Array<Float>;
	/**
		Extra scaling added to the scale of the object
		
		Type: float array of 3 items in [-inf, inf], default (1.0, 1.0, 1.0)
	**/
	var delta_scale : Array<Float>;
	/**
		Absolute bounding box dimensions of the object
		
		Type: float array of 3 items in [-inf, inf], default (0.0, 0.0, 0.0)
	**/
	var dimensions : Array<Float>;
	/**
		Object display settings for 3d viewport
		
		Type: ObjectDisplay, (readonly)
	**/
	var display(default, never) : bpy.types.objectdisplay.ObjectDisplay;
	/**
		Object boundary display type
		
		Type: enum in [‘BOX’, ‘SPHERE’, ‘CYLINDER’, ‘CONE’, ‘CAPSULE’], default ‘BOX’
	**/
	var display_bounds_type : bpy.types.object.Object.Enum1;
	/**
		How to display object in viewport
		
		Type: enum in [‘BOUNDS’, ‘WIRE’, ‘SOLID’, ‘TEXTURED’], default ‘BOUNDS’
	**/
	var display_type : bpy.types.object.Object.Enum2;
	/**
		Size of display for empties in the viewport
		
		Type: float in [0.0001, 1000], default 0.0
	**/
	var empty_display_size : Float;
	/**
		Viewport display style for empties
		
		Type: enum in [‘PLAIN_AXES’, ‘ARROWS’, ‘SINGLE_ARROW’, ‘CIRCLE’, ‘CUBE’, ‘SPHERE’, ‘CONE’, ‘IMAGE’], default ‘PLAIN_AXES’
	**/
	var empty_display_type : bpy.types.object.Object.Enum3;
	/**
		Determine which other objects will occlude the image
		
		Type: enum in [‘DEFAULT’, ‘FRONT’, ‘BACK’], default ‘DEFAULT’
	**/
	var empty_image_depth : bpy.types.object.Object.Enum4;
	/**
		Origin offset distance
		
		Type: float array of 2 items in [-inf, inf], default (0.0, 0.0)
	**/
	var empty_image_offset : Array<Float>;
	/**
		Maps of faces of the object
		
		Type: FaceMaps bpy_prop_collection of FaceMap, (readonly)
	**/
	var face_maps(default, never) : bpy.types.facemaps.FaceMaps;
	/**
		Settings for using the object as a field in physics simulation
		
		Type: FieldSettings, (readonly)
	**/
	var field(default, never) : bpy.types.fieldsettings.FieldSettings;
	/**
		Grease Pencil data-block (deprecated)
		
		Type: GreasePencil
	**/
	var grease_pencil : bpy.types.greasepencil.GreasePencil;
	/**
		Modifiers affecting the data of the grease pencil object
		
		Type: ObjectGpencilModifiers bpy_prop_collection of GpencilModifier, (readonly)
	**/
	var grease_pencil_modifiers(default, never) : bpy.types.objectgpencilmodifiers.ObjectGpencilModifiers;
	/**
		Disable object in renders
		
		Type: boolean, default False
	**/
	var hide_render : Bool;
	/**
		Disable object selection in the viewport
		
		Type: boolean, default False
	**/
	var hide_select : Bool;
	/**
		Disable object in the viewport
		
		Type: boolean, default False
	**/
	var hide_viewport : Bool;
	/**
		Parameters defining which layer, pass and frame of the image is displayed
		
		Type: ImageUser, (readonly, never None)
	**/
	var image_user(default, never) : bpy.types.imageuser.ImageUser;
	/**
		Instance an existing collection
		
		Type: Collection
	**/
	var instance_collection : bpy.types.collection.Collection;
	/**
		Scale the face instance objects
		
		Type: float in [0.001, 10000], default 0.0
	**/
	var instance_faces_scale : Float;
	/**
		End frame for frame instances
		
		Type: int in [-1048574, 1048574], default 0
	**/
	var instance_frames_end : Int;
	/**
		Recurring frames to exclude from the frame instances
		
		Type: int in [0, 1048574], default 0
	**/
	var instance_frames_off : Int;
	/**
		Number of frames to use between DupOff frames
		
		Type: int in [1, 1048574], default 0
	**/
	var instance_frames_on : Int;
	/**
		Start frame for frame instances
		
		Type: int in [-1048574, 1048574], default 0
	**/
	var instance_frames_start : Int;
	/**
		If not None, object instancing method to use
		
		Type: enum in [‘NONE’, ‘FRAMES’, ‘VERTS’, ‘FACES’, ‘COLLECTION’], default ‘NONE’
	**/
	var instance_type : bpy.types.object.Object.Enum5;
	/**
		Object comes from a instancer
		
		Type: boolean, default False, (readonly)
	**/
	var is_from_instancer(default, never) : Bool;
	/**
		Object comes from a background set
		
		Type: boolean, default False, (readonly)
	**/
	var is_from_set(default, never) : Bool;
	/**
		
		
		Type: boolean, default False, (readonly)
	**/
	var is_instancer(default, never) : Bool;
	/**
		Location of the object
		
		Type: float array of 3 items in [-inf, inf], default (0.0, 0.0, 0.0)
	**/
	var location : Array<Float>;
	/**
		Lock editing of location in the interface
		
		Type: boolean array of 3 items, default (False, False, False)
	**/
	var lock_location : Array<Bool>;
	/**
		Lock editing of rotation in the interface
		
		Type: boolean array of 3 items, default (False, False, False)
	**/
	var lock_rotation : Array<Bool>;
	/**
		Lock editing of ‘angle’ component of four-component rotations in the interface
		
		Type: boolean, default False
	**/
	var lock_rotation_w : Bool;
	/**
		Lock editing of four component rotations by components (instead of as Eulers)
		
		Type: boolean, default False
	**/
	var pylock_rotations_4d : Bool;
	/**
		Lock editing of scale in the interface
		
		Type: boolean array of 3 items, default (False, False, False)
	**/
	var lock_scale : Array<Bool>;
	/**
		Material slots in the object
		
		Type: bpy_prop_collection of MaterialSlot, (readonly)
	**/
	var material_slots(default, never) : bpy.types.bpy_prop_collection.Bpy_prop_collection;
	/**
		Matrix access to location, rotation and scale (including deltas), before constraints and parenting are applied
		
		Type: float multi-dimensional array of 4 * 4 items in [-inf, inf], default ((0.0, 0.0, 0.0, 0.0), (0.0, 0.0, 0.0, 0.0), (0.0, 0.0, 0.0, 0.0), (0.0, 0.0, 0.0, 0.0))
	**/
	var matrix_basis : Array<Float>;
	/**
		Parent relative transformation matrix - WARNING: Only takes into account ‘Object’ parenting, so e.g. in case of bone parenting you get a matrix relative to the Armature object, not to the actual parent bone
		
		Type: float multi-dimensional array of 4 * 4 items in [-inf, inf], default ((0.0, 0.0, 0.0, 0.0), (0.0, 0.0, 0.0, 0.0), (0.0, 0.0, 0.0, 0.0), (0.0, 0.0, 0.0, 0.0))
	**/
	var matrix_local : Array<Float>;
	/**
		Inverse of object’s parent matrix at time of parenting
		
		Type: float multi-dimensional array of 4 * 4 items in [-inf, inf], default ((0.0, 0.0, 0.0, 0.0), (0.0, 0.0, 0.0, 0.0), (0.0, 0.0, 0.0, 0.0), (0.0, 0.0, 0.0, 0.0))
	**/
	var matrix_parent_inverse : Array<Float>;
	/**
		Worldspace transformation matrix
		
		Type: float multi-dimensional array of 4 * 4 items in [-inf, inf], default ((0.0, 0.0, 0.0, 0.0), (0.0, 0.0, 0.0, 0.0), (0.0, 0.0, 0.0, 0.0), (0.0, 0.0, 0.0, 0.0))
	**/
	var matrix_world : Array<Float>;
	/**
		Object interaction mode
		
		Type: enum in [‘OBJECT’, ‘EDIT’, ‘POSE’, ‘SCULPT’, ‘VERTEX_PAINT’, ‘WEIGHT_PAINT’, ‘TEXTURE_PAINT’, ‘PARTICLE_EDIT’, ‘GPENCIL_EDIT’, ‘GPENCIL_SCULPT’, ‘GPENCIL_PAINT’, ‘GPENCIL_WEIGHT’], default ‘OBJECT’, (readonly)
	**/
	var mode(default, never) : bpy.types.object.Object.Enum6;
	/**
		Modifiers affecting the geometric data of the object
		
		Type: ObjectModifiers bpy_prop_collection of Modifier, (readonly)
	**/
	var modifiers(default, never) : bpy.types.objectmodifiers.ObjectModifiers;
	/**
		Motion Path for this element
		
		Type: MotionPath, (readonly)
	**/
	var motion_path(default, never) : bpy.types.motionpath.MotionPath;
	/**
		Parent Object
		
		Type: Object
	**/
	var parent : bpy.types.object.Object;
	/**
		Name of parent bone in case of a bone parenting relation
		
		Type: string, default “”, (never None)
	**/
	var parent_bone : String;
	/**
		Type of parent relation
		
		Type: enum in [‘OBJECT’, ‘ARMATURE’, ‘LATTICE’, ‘VERTEX’, ‘VERTEX_3’, ‘BONE’], default ‘OBJECT’
	**/
	var parent_type : bpy.types.object.Object.Enum7;
	/**
		Indices of vertices in case of a vertex parenting relation
		
		Type: int array of 3 items in [0, inf], default (0, 0, 0)
	**/
	var parent_vertices : Array<Int>;
	/**
		Particle systems emitted from the object
		
		Type: ParticleSystems bpy_prop_collection of ParticleSystem, (readonly)
	**/
	var particle_systems(default, never) : bpy.types.particlesystems.ParticleSystems;
	/**
		Index number for the “Object Index” render pass
		
		Type: int in [0, 32767], default 0
	**/
	var pass_index : Int;
	/**
		Current pose for armatures
		
		Type: Pose, (readonly)
	**/
	var pose(default, never) : bpy.types.pose.Pose;
	/**
		Action used as a pose library for armatures
		
		Type: Action
	**/
	var pose_library : bpy.types.action.Action;
	/**
		Library object this proxy object controls
		
		Type: Object, (readonly)
	**/
	var proxy(default, never) : bpy.types.object.Object;
	/**
		Library collection duplicator object this proxy object controls
		
		Type: Object, (readonly)
	**/
	var proxy_collection(default, never) : bpy.types.object.Object;
	/**
		Settings for rigid body simulation
		
		Type: RigidBodyObject, (readonly)
	**/
	var rigid_body(default, never) : bpy.types.rigidbodyobject.RigidBodyObject;
	/**
		Constraint constraining rigid bodies
		
		Type: RigidBodyConstraint, (readonly)
	**/
	var rigid_body_constraint(default, never) : bpy.types.rigidbodyconstraint.RigidBodyConstraint;
	/**
		Angle of Rotation for Axis-Angle rotation representation
		
		Type: float array of 4 items in [-inf, inf], default (0.0, 0.0, 1.0, 0.0)
	**/
	var rotation_axis_angle : Array<Float>;
	/**
		Rotation in Eulers
		
		Type: float array of 3 items in [-inf, inf], default (0.0, 0.0, 0.0)
	**/
	var rotation_euler : Array<Float>;
	/**
		
		
		Type: enum in [‘QUATERNION’, ‘XYZ’, ‘XZY’, ‘YXZ’, ‘YZX’, ‘ZXY’, ‘ZYX’, ‘AXIS_ANGLE’], default ‘QUATERNION’
	**/
	var rotation_mode : bpy.types.object.Object.Enum8;
	/**
		Rotation in Quaternions
		
		Type: float array of 4 items in [-inf, inf], default (1.0, 0.0, 0.0, 0.0)
	**/
	var rotation_quaternion : Array<Float>;
	/**
		Scaling of the object
		
		Type: float array of 3 items in [-inf, inf], default (1.0, 1.0, 1.0)
	**/
	var scale : Array<Float>;
	/**
		Effects affecting display of object
		
		Type: ObjectShaderFx bpy_prop_collection of ShaderFx, (readonly)
	**/
	var shader_effects(default, never) : bpy.types.objectshaderfx.ObjectShaderFx;
	/**
		Display all edges for mesh objects
		
		Type: boolean, default False
	**/
	var show_all_edges : Bool;
	/**
		Display the object’s origin and axes
		
		Type: boolean, default False
	**/
	var show_axis : Bool;
	/**
		Display the object’s bounds
		
		Type: boolean, default False
	**/
	var show_bounds : Bool;
	/**
		Display empty image even when viewed from the back
		
		Type: boolean, default False
	**/
	var show_empty_image_backside : Bool;
	/**
		Display image in orthographic mode
		
		Type: boolean, default False
	**/
	var show_empty_image_orthographic : Bool;
	/**
		Display image in perspective mode
		
		Type: boolean, default False
	**/
	var show_empty_image_perspective : Bool;
	/**
		Make the object draw in front of others
		
		Type: boolean, default False
	**/
	var show_in_front : Bool;
	/**
		Make instancer visible when rendering
		
		Type: boolean, default False
	**/
	var show_instancer_for_render : Bool;
	/**
		Make instancer visible in the viewport
		
		Type: boolean, default False
	**/
	var show_instancer_for_viewport : Bool;
	/**
		Display the object’s name
		
		Type: boolean, default False
	**/
	var show_name : Bool;
	/**
		Always show the current Shape for this Object
		
		Type: boolean, default False
	**/
	var show_only_shape_key : Bool;
	/**
		Display the object’s texture space
		
		Type: boolean, default False
	**/
	var show_texture_space : Bool;
	/**
		Display material transparency in the object
		
		Type: boolean, default False
	**/
	var show_transparent : Bool;
	/**
		Add the object’s wireframe over solid drawing
		
		Type: boolean, default False
	**/
	var show_wire : Bool;
	/**
		Delay in the parent relationship
		
		Type: float in [-1.04857e+06, 1.04857e+06], default 0.0
	**/
	var slow_parent_offset : Float;
	/**
		Settings for soft body simulation
		
		Type: SoftBodySettings, (readonly)
	**/
	var soft_body(default, never) : bpy.types.softbodysettings.SoftBodySettings;
	/**
		Axis that points in ‘forward’ direction (applies to InstanceFrame when parent ‘Follow’ is enabled)
		
		Type: enum in [‘POS_X’, ‘POS_Y’, ‘POS_Z’, ‘NEG_X’, ‘NEG_Y’, ‘NEG_Z’], default ‘POS_X’
	**/
	var track_axis : bpy.types.object.Object.Enum9;
	/**
		Type of Object
		
		Type: enum in [‘MESH’, ‘CURVE’, ‘SURFACE’, ‘META’, ‘FONT’, ‘ARMATURE’, ‘LATTICE’, ‘EMPTY’, ‘GPENCIL’, ‘CAMERA’, ‘LIGHT’, ‘SPEAKER’, ‘LIGHT_PROBE’], default ‘EMPTY’, (readonly)
	**/
	var type(default, never) : bpy.types.object.Object.Enum10;
	/**
		Axis that points in the upward direction (applies to InstanceFrame when parent ‘Follow’ is enabled)
		
		Type: enum in [‘X’, ‘Y’, ‘Z’], default ‘X’
	**/
	var up_axis : bpy.types.object.Object.Enum11;
	/**
		
		
		Type: boolean, default False, (readonly)
	**/
	var use_dynamic_topology_sculpting(default, never) : Bool;
	/**
		Scale instance based on face size
		
		Type: boolean, default False
	**/
	var use_instance_faces_scale : Bool;
	/**
		Set frames instancing to use the current frame instead of parent curve’s evaluation time
		
		Type: boolean, default False
	**/
	var use_instance_frames_speed : Bool;
	/**
		Rotate instance according to vertex normal
		
		Type: boolean, default False
	**/
	var use_instance_vertices_rotation : Bool;
	/**
		Apply shape keys in edit mode (for Meshes only)
		
		Type: boolean, default False
	**/
	var use_shape_key_edit_mode : Bool;
	/**
		Create a delay in the parent relationship (beware: this isn’t renderfarm safe and may be invalid after jumping around the timeline)
		
		Type: boolean, default False
	**/
	var use_slow_parent : Bool;
	/**
		Vertex groups of the object
		
		Type: VertexGroups bpy_prop_collection of VertexGroup, (readonly)
	**/
	var vertex_groups(default, never) : bpy.types.vertexgroups.VertexGroups;
	/**
		All the children of this object. Warning: takes O(len(bpy.data.objects)) time.
		(readonly)
	**/
	var children(default, never) : Dynamic;
	/**
		The collections this object is in. Warning: takes O(len(bpy.data.collections)) time.
		(readonly)
	**/
	var users_collection(default, never) : Dynamic;
	/**
		The scenes this object is in. Warning: takes O(len(bpy.data.scenes) * len(bpy.data.objects)) time.
		(readonly)
	**/
	var users_scene(default, never) : Dynamic;
	/**
		Select the object (for the active view layer)
		@param state Selection state to define — boolean
		@param view_layer Operate on this view layer instead of the context — ViewLayer, (optional)
	**/
	function select_set(state:Bool, view_layer:bpy.types.viewlayer.ViewLayer):Void;
	/**
		Get the object selection for the active view layer
		
		@returns boolean
	**/
	function select_get():Bool;
	/**
		Get the object visibility for the active view layer and viewport
		
		@returns boolean
	**/
	function visible_get():Bool;
	/**
		Test if object is masked in the view layer
		@param view_layer View layer to check against — ViewLayer
		
		@returns boolean
	**/
	function holdout_get(view_layer:bpy.types.viewlayer.ViewLayer):Bool;
	/**
		Test if object is set to contribute only indirectly (through shadows and reflections) in the view layer
		@param view_layer View layer to check against — ViewLayer
		
		@returns boolean
	**/
	function indirect_only_get(view_layer:bpy.types.viewlayer.ViewLayer):Bool;
	/**
		Convert (transform) the given matrix from one space to another
		@param pose_bone Bone to use to define spaces (may be None, in which case only the two ‘WORLD’ and ‘LOCAL’ spaces are usable) — PoseBone, (optional)
		@param matrix The matrix to transform — float multi-dimensional array of 4 * 4 items in [-inf, inf], (optional)
		@param from_space The space in which ‘matrix’ is currentlyWORLD World Space, The most global space in Blender.POSE Pose Space, The pose space of a bone (its armature’s object space).LOCAL_WITH_PARENT Local With Parent, The local space of a bone’s parent bone.LOCAL Local Space, The local space of an object/bone. — enum in ['WORLD', 'POSE', 'LOCAL_WITH_PARENT', 'LOCAL'], (optional)
		@param to_space The space to which you want to transform ‘matrix’WORLD World Space, The most global space in Blender.POSE Pose Space, The pose space of a bone (its armature’s object space).LOCAL_WITH_PARENT Local With Parent, The local space of a bone’s parent bone.LOCAL Local Space, The local space of an object/bone. — enum in ['WORLD', 'POSE', 'LOCAL_WITH_PARENT', 'LOCAL'], (optional)
		
		@returns float multi-dimensional array of 4 * 4 items in [-inf, inf]
	**/
	function convert_space(pose_bone:bpy.types.posebone.PoseBone, matrix:Array<Float>, from_space:bpy.types.object.Object.Enum12, to_space:bpy.types.object.Object.Enum13):Array<Float>;
	/**
		Generate the camera projection matrix of this object (mostly useful for Camera and Light types)
		@param depsgraph Depsgraph to get evaluated data from — Depsgraph
		@param x Width of the render area — int in [0, inf], (optional)
		@param y Height of the render area — int in [0, inf], (optional)
		@param scale_x Width scaling factor — float in [1e-06, inf], (optional)
		@param scale_y Height scaling factor — float in [1e-06, inf], (optional)
		
		@returns float multi-dimensional array of 4 * 4 items in [-inf, inf]
	**/
	function calc_matrix_camera(depsgraph:bpy.types.depsgraph.Depsgraph, x:Int, y:Int, scale_x:Float, scale_y:Float):Array<Float>;
	/**
		Compute the coordinate (and scale for ortho cameras) given object should be to ‘see’ all given coordinates
		@param depsgraph Depsgraph to get evaluated data from — Depsgraph
		@param coordinates Coordinates to fit in — float array of 1 items in [-inf, inf], (never None)
	**/
	function camera_fit_coords(depsgraph:bpy.types.depsgraph.Depsgraph, coordinates:Array<Float>):Void;
	/**
		Create a Mesh data-block with modifiers applied
		@param depsgraph Dependency Graph, Evaluated dependency graph within which to evaluate modifiers — Depsgraph, (never None)
		@param apply_modifiers Apply modifiers — boolean
		@param calc_undeformed Calculate Undeformed, Calculate undeformed vertex coordinates — boolean, (optional)
		
		@returns Mesh
	**/
	function to_mesh(depsgraph:bpy.types.depsgraph.Depsgraph, apply_modifiers:Bool, calc_undeformed:Bool):bpy.types.mesh.Mesh;
	/**
		Find armature influencing this object as a parent or via a modifier
		
		@returns Object
	**/
	function find_armature():bpy.types.object.Object;
	/**
		Add shape key to this object
		@param name Unique name for the new keyblock — string, (optional, never None)
		@param from_mix Create new shape from existing mix of shapes — boolean, (optional)
		
		@returns ShapeKey
	**/
	function shape_key_add(name:String, from_mix:Bool):bpy.types.shapekey.ShapeKey;
	/**
		Remove a Shape Key from this object
		@param key Keyblock to be removed — ShapeKey, (never None)
	**/
	function shape_key_remove(key:bpy.types.shapekey.ShapeKey):Void;
	/**
		Cast a ray onto in object space
		@param origin Origin of the ray, in object space — float array of 3 items in [-inf, inf]
		@param direction Direction of the ray, in object space — float array of 3 items in [-inf, inf]
		@param distance Maximum distance — float in [0, inf], (optional)
	**/
	function ray_cast(origin:Array<Float>, direction:Array<Float>, distance:Float):Void;
	/**
		Find the nearest point in object space
		@param origin Point to find closest geometry from (in object space) — float array of 3 items in [-inf, inf]
		@param distance Maximum distance — float in [0, inf], (optional)
	**/
	function closest_point_on_mesh(origin:Array<Float>, distance:Float):Void;
	/**
		Determine if this object is modified from the base mesh data
		@param scene Scene in which to check the object — Scene, (never None)
		@param settings Modifier settings to applyPREVIEW Preview, Apply modifier preview settings.RENDER Render, Apply modifier render settings. — enum in ['PREVIEW', 'RENDER']
		
		@returns boolean
	**/
	function is_modified(scene:Dynamic, settings:bpy.types.object.Object.Enum14):Bool;
	/**
		Determine if this object is modified by a deformation from the base mesh data
		@param scene Scene in which to check the object — Scene, (never None)
		@param settings Modifier settings to applyPREVIEW Preview, Apply modifier preview settings.RENDER Render, Apply modifier render settings. — enum in ['PREVIEW', 'RENDER']
		
		@returns boolean
	**/
	function is_deform_modified(scene:Dynamic, settings:bpy.types.object.Object.Enum15):Bool;
	/**
		Load the objects edit-mode data into the object data
		
		@returns boolean
	**/
	function update_from_editmode():Bool;
	/**
		Release memory used by caches associated with this object. Intended to be used by render engines only
	**/
	function cache_release():Void;
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
	/**
		Unique data-block ID name
		
		Type: string, default “”, (never None)
	**/
	var name : String;
	/**
		Unique data-block ID name, including library one is any
		
		Type: string, default “”, (readonly, never None)
	**/
	var name_full(default, never) : String;
	/**
		Whether this ID is runtime-only, evaluated data-block, or actual data from .blend file
		
		Type: boolean, default False, (readonly)
	**/
	var is_evaluated(default, never) : Bool;
	/**
		Actual data-block from .blend file (Main database) that generated that evaluated one
		
		Type: ID, (readonly)
	**/
	var original(default, never) : bpy.types.id.ID;
	/**
		Number of times this data-block is referenced
		
		Type: int in [0, inf], default 0, (readonly)
	**/
	var users(default, never) : Int;
	/**
		Save this data-block even if it has no users
		
		Type: boolean, default False
	**/
	var use_fake_user : Bool;
	/**
		Tools can use this to tag data for their own purposes (initial state is undefined)
		
		Type: boolean, default False
	**/
	var tag : Bool;
	/**
		Is this ID block linked indirectly
		
		Type: boolean, default False, (readonly)
	**/
	var is_library_indirect(default, never) : Bool;
	/**
		Library file the data-block is linked from
		
		Type: Library, (readonly)
	**/
	var library(default, never) : bpy.types.library.Library;
	/**
		Static override data
		
		Type: IDOverrideStatic, (readonly)
	**/
	var override_static(default, never) : bpy.types.idoverridestatic.IDOverrideStatic;
	/**
		Preview image and icon of this data-block (None if not supported for this type of data)
		
		Type: ImagePreview, (readonly)
	**/
	var preview(default, never) : bpy.types.imagepreview.ImagePreview;
	/**
		Create a copy of this data-block (not supported for all data-blocks)
		
		@returns ID
	**/
	function copy():bpy.types.id.ID;
	/**
		Create an overridden local copy of this linked data-block (not supported for all data-blocks)
		
		@returns ID
	**/
	function override_create():bpy.types.id.ID;
	/**
		Clear the user count of a data-block so its not saved, on reload the data will be removed
		
		This function is for advanced use only, misuse can crash blender since the user
		count is used to prevent data being removed when it is used.
	**/
	function user_clear():Void;
	/**
		Replace all usage in the .blend file of this ID by new given one
		@param new_id New ID to use — ID, (never None)
	**/
	function user_remap(new_id:bpy.types.id.ID):Void;
	/**
		Make this datablock local, return local one (may be a copy of the original, in case it is also indirectly used)
		@param clear_proxy Whether to clear proxies (the default behavior, note that if object has to be duplicated to be made local, proxies are always cleared) — boolean, (optional)
		
		@returns ID
	**/
	function make_local(clear_proxy:Bool):bpy.types.id.ID;
	/**
		Count the number of times that ID uses/references given one
		@param id ID to count usages — ID, (never None)
		
		@returns int in [0, inf]
	**/
	function user_of_id(id:bpy.types.id.ID):Int;
	/**
		Create animation data to this ID, note that not all ID types support this
		
		@returns AnimData
	**/
	function animation_data_create():bpy.types.animdata.AnimData;
	/**
		Clear animation on this this ID
	**/
	function animation_data_clear():Void;
	/**
		Tag the ID to update its display data, e.g. when calling bpy.types.Scene.update
		@param refresh Type of updates to perform — enum set in {'OBJECT', 'DATA', 'TIME'}, (optional)
	**/
	function update_tag(refresh:Dynamic):Void;
}