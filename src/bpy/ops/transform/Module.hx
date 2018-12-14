package bpy.ops.transform;
/**
	Transform Operators
**/
@:pythonImport("bpy.ops.transform") extern class Module {
	/**
		Bend selected items between the 3D cursor and the mouse
		@param value Angle — float array of 1 items in [-inf, inf], (optional)
		@param mirror Mirror Editing — boolean, (optional)
		@param proportional Proportional EditingDISABLED Disable, Proportional Editing disabled.ENABLED Enable, Proportional Editing enabled.PROJECTED Projected (2D), Proportional Editing using screen space locations.CONNECTED Connected, Proportional Editing using connected geometry only. — enum in ['DISABLED', 'ENABLED', 'PROJECTED', 'CONNECTED'], (optional)
		@param proportional_edit_falloff Proportional Falloff, Falloff type for proportional editing modeSMOOTH Smooth, Smooth falloff.SPHERE Sphere, Spherical falloff.ROOT Root, Root falloff.INVERSE_SQUARE Inverse Square, Inverse Square falloff.SHARP Sharp, Sharp falloff.LINEAR Linear, Linear falloff.CONSTANT Constant, Constant falloff.RANDOM Random, Random falloff. — enum in ['SMOOTH', 'SPHERE', 'ROOT', 'INVERSE_SQUARE', 'SHARP', 'LINEAR', 'CONSTANT', 'RANDOM'], (optional)
		@param proportional_size Proportional Size — float in [1e-06, inf], (optional)
		@param snap Use Snapping Options — boolean, (optional)
		@param snap_target TargetCLOSEST Closest, Snap closest point onto target.CENTER Center, Snap transormation center onto target.MEDIAN Median, Snap median onto target.ACTIVE Active, Snap active onto target. — enum in ['CLOSEST', 'CENTER', 'MEDIAN', 'ACTIVE'], (optional)
		@param snap_point Point — float array of 3 items in [-inf, inf], (optional)
		@param snap_align Align with Point Normal — boolean, (optional)
		@param snap_normal Normal — float array of 3 items in [-inf, inf], (optional)
		@param gpencil_strokes Edit Grease Pencil, Edit selected Grease Pencil strokes — boolean, (optional)
		@param center_override Center Override, Force using this center value (when set) — float array of 3 items in [-inf, inf], (optional)
		@param release_confirm Confirm on Release, Always confirm operation when releasing button — boolean, (optional)
		@param use_accurate Accurate, Use accurate transformation — boolean, (optional)
	**/
	static function bend(value:Array<Float>, mirror:Bool, proportional:bpy.ops.transform.Transform.Enum1, proportional_edit_falloff:bpy.ops.transform.Transform.Enum2, proportional_size:Float, snap:Bool, snap_target:bpy.ops.transform.Transform.Enum3, snap_point:Array<Float>, snap_align:Bool, snap_normal:Array<Float>, gpencil_strokes:Bool, center_override:Array<Float>, release_confirm:Bool, use_accurate:Bool):Void;
	/**
		Create transformation orientation from selection
		@param name Name, Name of the new custom orientation — string, (optional, never None)
		@param use_view Use View, Use the current view instead of the active object to create the new orientation — boolean, (optional)
		@param use Use after creation, Select orientation after its creation — boolean, (optional)
		@param overwrite Overwrite previous, Overwrite previously created orientation with same name — boolean, (optional)
	**/
	static function create_orientation(name:String, use_view:Bool, use:Bool, overwrite:Bool):Void;
	/**
		Delete transformation orientation
	**/
	static function delete_orientation():Void;
	/**
		Change the bevel weight of edges
		@param value Factor — float in [-1, 1], (optional)
		@param snap Use Snapping Options — boolean, (optional)
		@param snap_target TargetCLOSEST Closest, Snap closest point onto target.CENTER Center, Snap transormation center onto target.MEDIAN Median, Snap median onto target.ACTIVE Active, Snap active onto target. — enum in ['CLOSEST', 'CENTER', 'MEDIAN', 'ACTIVE'], (optional)
		@param snap_point Point — float array of 3 items in [-inf, inf], (optional)
		@param snap_align Align with Point Normal — boolean, (optional)
		@param snap_normal Normal — float array of 3 items in [-inf, inf], (optional)
		@param release_confirm Confirm on Release, Always confirm operation when releasing button — boolean, (optional)
		@param use_accurate Accurate, Use accurate transformation — boolean, (optional)
	**/
	static function edge_bevelweight(value:Float, snap:Bool, snap_target:bpy.ops.transform.Transform.Enum4, snap_point:Array<Float>, snap_align:Bool, snap_normal:Array<Float>, release_confirm:Bool, use_accurate:Bool):Void;
	/**
		Change the crease of edges
		@param value Factor — float in [-1, 1], (optional)
		@param snap Use Snapping Options — boolean, (optional)
		@param snap_target TargetCLOSEST Closest, Snap closest point onto target.CENTER Center, Snap transormation center onto target.MEDIAN Median, Snap median onto target.ACTIVE Active, Snap active onto target. — enum in ['CLOSEST', 'CENTER', 'MEDIAN', 'ACTIVE'], (optional)
		@param snap_point Point — float array of 3 items in [-inf, inf], (optional)
		@param snap_align Align with Point Normal — boolean, (optional)
		@param snap_normal Normal — float array of 3 items in [-inf, inf], (optional)
		@param release_confirm Confirm on Release, Always confirm operation when releasing button — boolean, (optional)
		@param use_accurate Accurate, Use accurate transformation — boolean, (optional)
	**/
	static function edge_crease(value:Float, snap:Bool, snap_target:bpy.ops.transform.Transform.Enum5, snap_point:Array<Float>, snap_align:Bool, snap_normal:Array<Float>, release_confirm:Bool, use_accurate:Bool):Void;
	/**
		Slide an edge loop along a mesh
		@param value Factor — float in [-10, 10], (optional)
		@param single_side Single Side — boolean, (optional)
		@param use_even Even, Make the edge loop match the shape of the adjacent edge loop — boolean, (optional)
		@param flipped Flipped, When Even mode is active, flips between the two adjacent edge loops — boolean, (optional)
		@param use_clamp Clamp, Clamp within the edge extents — boolean, (optional)
		@param mirror Mirror Editing — boolean, (optional)
		@param snap Use Snapping Options — boolean, (optional)
		@param snap_target TargetCLOSEST Closest, Snap closest point onto target.CENTER Center, Snap transormation center onto target.MEDIAN Median, Snap median onto target.ACTIVE Active, Snap active onto target. — enum in ['CLOSEST', 'CENTER', 'MEDIAN', 'ACTIVE'], (optional)
		@param snap_point Point — float array of 3 items in [-inf, inf], (optional)
		@param snap_align Align with Point Normal — boolean, (optional)
		@param snap_normal Normal — float array of 3 items in [-inf, inf], (optional)
		@param correct_uv Correct UVs, Correct UV coordinates when transforming — boolean, (optional)
		@param release_confirm Confirm on Release, Always confirm operation when releasing button — boolean, (optional)
		@param use_accurate Accurate, Use accurate transformation — boolean, (optional)
	**/
	static function edge_slide(value:Float, single_side:Bool, use_even:Bool, flipped:Bool, use_clamp:Bool, mirror:Bool, snap:Bool, snap_target:bpy.ops.transform.Transform.Enum6, snap_point:Array<Float>, snap_align:Bool, snap_normal:Array<Float>, correct_uv:Bool, release_confirm:Bool, use_accurate:Bool):Void;
	/**
		Transform selected items by mode type
	**/
	static function from_gizmo():Void;
	/**
		Mirror selected items around one or more axes
		@param constraint_axis Constraint Axis — boolean array of 3 items, (optional)
		@param constraint_matrix Matrix — float multi-dimensional array of 3 * 3 items in [-inf, inf], (optional)
		@param constraint_orientation Orientation, Transformation orientation — enum in [], (optional)
		@param proportional Proportional EditingDISABLED Disable, Proportional Editing disabled.ENABLED Enable, Proportional Editing enabled.PROJECTED Projected (2D), Proportional Editing using screen space locations.CONNECTED Connected, Proportional Editing using connected geometry only. — enum in ['DISABLED', 'ENABLED', 'PROJECTED', 'CONNECTED'], (optional)
		@param proportional_edit_falloff Proportional Falloff, Falloff type for proportional editing modeSMOOTH Smooth, Smooth falloff.SPHERE Sphere, Spherical falloff.ROOT Root, Root falloff.INVERSE_SQUARE Inverse Square, Inverse Square falloff.SHARP Sharp, Sharp falloff.LINEAR Linear, Linear falloff.CONSTANT Constant, Constant falloff.RANDOM Random, Random falloff. — enum in ['SMOOTH', 'SPHERE', 'ROOT', 'INVERSE_SQUARE', 'SHARP', 'LINEAR', 'CONSTANT', 'RANDOM'], (optional)
		@param proportional_size Proportional Size — float in [1e-06, inf], (optional)
		@param gpencil_strokes Edit Grease Pencil, Edit selected Grease Pencil strokes — boolean, (optional)
		@param center_override Center Override, Force using this center value (when set) — float array of 3 items in [-inf, inf], (optional)
		@param release_confirm Confirm on Release, Always confirm operation when releasing button — boolean, (optional)
		@param use_accurate Accurate, Use accurate transformation — boolean, (optional)
	**/
	static function mirror(constraint_axis:Array<Bool>, constraint_matrix:Array<Float>, constraint_orientation:bpy.ops.transform.Transform.Enum7, proportional:bpy.ops.transform.Transform.Enum8, proportional_edit_falloff:bpy.ops.transform.Transform.Enum9, proportional_size:Float, gpencil_strokes:Bool, center_override:Array<Float>, release_confirm:Bool, use_accurate:Bool):Void;
	/**
		Push/Pull selected items
		@param value Distance — float in [-inf, inf], (optional)
		@param mirror Mirror Editing — boolean, (optional)
		@param proportional Proportional EditingDISABLED Disable, Proportional Editing disabled.ENABLED Enable, Proportional Editing enabled.PROJECTED Projected (2D), Proportional Editing using screen space locations.CONNECTED Connected, Proportional Editing using connected geometry only. — enum in ['DISABLED', 'ENABLED', 'PROJECTED', 'CONNECTED'], (optional)
		@param proportional_edit_falloff Proportional Falloff, Falloff type for proportional editing modeSMOOTH Smooth, Smooth falloff.SPHERE Sphere, Spherical falloff.ROOT Root, Root falloff.INVERSE_SQUARE Inverse Square, Inverse Square falloff.SHARP Sharp, Sharp falloff.LINEAR Linear, Linear falloff.CONSTANT Constant, Constant falloff.RANDOM Random, Random falloff. — enum in ['SMOOTH', 'SPHERE', 'ROOT', 'INVERSE_SQUARE', 'SHARP', 'LINEAR', 'CONSTANT', 'RANDOM'], (optional)
		@param proportional_size Proportional Size — float in [1e-06, inf], (optional)
		@param snap Use Snapping Options — boolean, (optional)
		@param snap_target TargetCLOSEST Closest, Snap closest point onto target.CENTER Center, Snap transormation center onto target.MEDIAN Median, Snap median onto target.ACTIVE Active, Snap active onto target. — enum in ['CLOSEST', 'CENTER', 'MEDIAN', 'ACTIVE'], (optional)
		@param snap_point Point — float array of 3 items in [-inf, inf], (optional)
		@param snap_align Align with Point Normal — boolean, (optional)
		@param snap_normal Normal — float array of 3 items in [-inf, inf], (optional)
		@param center_override Center Override, Force using this center value (when set) — float array of 3 items in [-inf, inf], (optional)
		@param release_confirm Confirm on Release, Always confirm operation when releasing button — boolean, (optional)
		@param use_accurate Accurate, Use accurate transformation — boolean, (optional)
	**/
	static function push_pull(value:Float, mirror:Bool, proportional:bpy.ops.transform.Transform.Enum10, proportional_edit_falloff:bpy.ops.transform.Transform.Enum11, proportional_size:Float, snap:Bool, snap_target:bpy.ops.transform.Transform.Enum12, snap_point:Array<Float>, snap_align:Bool, snap_normal:Array<Float>, center_override:Array<Float>, release_confirm:Bool, use_accurate:Bool):Void;
	/**
		Scale (resize) selected items
		@param value Scale — float array of 3 items in [-inf, inf], (optional)
		@param constraint_axis Constraint Axis — boolean array of 3 items, (optional)
		@param constraint_matrix Matrix — float multi-dimensional array of 3 * 3 items in [-inf, inf], (optional)
		@param constraint_orientation Orientation, Transformation orientation — enum in [], (optional)
		@param mirror Mirror Editing — boolean, (optional)
		@param proportional Proportional EditingDISABLED Disable, Proportional Editing disabled.ENABLED Enable, Proportional Editing enabled.PROJECTED Projected (2D), Proportional Editing using screen space locations.CONNECTED Connected, Proportional Editing using connected geometry only. — enum in ['DISABLED', 'ENABLED', 'PROJECTED', 'CONNECTED'], (optional)
		@param proportional_edit_falloff Proportional Falloff, Falloff type for proportional editing modeSMOOTH Smooth, Smooth falloff.SPHERE Sphere, Spherical falloff.ROOT Root, Root falloff.INVERSE_SQUARE Inverse Square, Inverse Square falloff.SHARP Sharp, Sharp falloff.LINEAR Linear, Linear falloff.CONSTANT Constant, Constant falloff.RANDOM Random, Random falloff. — enum in ['SMOOTH', 'SPHERE', 'ROOT', 'INVERSE_SQUARE', 'SHARP', 'LINEAR', 'CONSTANT', 'RANDOM'], (optional)
		@param proportional_size Proportional Size — float in [1e-06, inf], (optional)
		@param snap Use Snapping Options — boolean, (optional)
		@param snap_target TargetCLOSEST Closest, Snap closest point onto target.CENTER Center, Snap transormation center onto target.MEDIAN Median, Snap median onto target.ACTIVE Active, Snap active onto target. — enum in ['CLOSEST', 'CENTER', 'MEDIAN', 'ACTIVE'], (optional)
		@param snap_point Point — float array of 3 items in [-inf, inf], (optional)
		@param snap_align Align with Point Normal — boolean, (optional)
		@param snap_normal Normal — float array of 3 items in [-inf, inf], (optional)
		@param gpencil_strokes Edit Grease Pencil, Edit selected Grease Pencil strokes — boolean, (optional)
		@param texture_space Edit Texture Space, Edit Object data texture space — boolean, (optional)
		@param remove_on_cancel Remove on Cancel, Remove elements on cancel — boolean, (optional)
		@param center_override Center Override, Force using this center value (when set) — float array of 3 items in [-inf, inf], (optional)
		@param release_confirm Confirm on Release, Always confirm operation when releasing button — boolean, (optional)
		@param use_accurate Accurate, Use accurate transformation — boolean, (optional)
	**/
	static function resize(value:Array<Float>, constraint_axis:Array<Bool>, constraint_matrix:Array<Float>, constraint_orientation:bpy.ops.transform.Transform.Enum13, mirror:Bool, proportional:bpy.ops.transform.Transform.Enum14, proportional_edit_falloff:bpy.ops.transform.Transform.Enum15, proportional_size:Float, snap:Bool, snap_target:bpy.ops.transform.Transform.Enum16, snap_point:Array<Float>, snap_align:Bool, snap_normal:Array<Float>, gpencil_strokes:Bool, texture_space:Bool, remove_on_cancel:Bool, center_override:Array<Float>, release_confirm:Bool, use_accurate:Bool):Void;
	/**
		Rotate selected items
		@param value Angle — float in [-inf, inf], (optional)
		@param axis Axis, The axis around which the transformation occurs — float array of 3 items in [-inf, inf], (optional)
		@param constraint_axis Constraint Axis — boolean array of 3 items, (optional)
		@param constraint_matrix Matrix — float multi-dimensional array of 3 * 3 items in [-inf, inf], (optional)
		@param constraint_orientation Orientation, Transformation orientation — enum in [], (optional)
		@param mirror Mirror Editing — boolean, (optional)
		@param proportional Proportional EditingDISABLED Disable, Proportional Editing disabled.ENABLED Enable, Proportional Editing enabled.PROJECTED Projected (2D), Proportional Editing using screen space locations.CONNECTED Connected, Proportional Editing using connected geometry only. — enum in ['DISABLED', 'ENABLED', 'PROJECTED', 'CONNECTED'], (optional)
		@param proportional_edit_falloff Proportional Falloff, Falloff type for proportional editing modeSMOOTH Smooth, Smooth falloff.SPHERE Sphere, Spherical falloff.ROOT Root, Root falloff.INVERSE_SQUARE Inverse Square, Inverse Square falloff.SHARP Sharp, Sharp falloff.LINEAR Linear, Linear falloff.CONSTANT Constant, Constant falloff.RANDOM Random, Random falloff. — enum in ['SMOOTH', 'SPHERE', 'ROOT', 'INVERSE_SQUARE', 'SHARP', 'LINEAR', 'CONSTANT', 'RANDOM'], (optional)
		@param proportional_size Proportional Size — float in [1e-06, inf], (optional)
		@param snap Use Snapping Options — boolean, (optional)
		@param snap_target TargetCLOSEST Closest, Snap closest point onto target.CENTER Center, Snap transormation center onto target.MEDIAN Median, Snap median onto target.ACTIVE Active, Snap active onto target. — enum in ['CLOSEST', 'CENTER', 'MEDIAN', 'ACTIVE'], (optional)
		@param snap_point Point — float array of 3 items in [-inf, inf], (optional)
		@param snap_align Align with Point Normal — boolean, (optional)
		@param snap_normal Normal — float array of 3 items in [-inf, inf], (optional)
		@param gpencil_strokes Edit Grease Pencil, Edit selected Grease Pencil strokes — boolean, (optional)
		@param center_override Center Override, Force using this center value (when set) — float array of 3 items in [-inf, inf], (optional)
		@param release_confirm Confirm on Release, Always confirm operation when releasing button — boolean, (optional)
		@param use_accurate Accurate, Use accurate transformation — boolean, (optional)
	**/
	static function rotate(value:Float, axis:Array<Float>, constraint_axis:Array<Bool>, constraint_matrix:Array<Float>, constraint_orientation:bpy.ops.transform.Transform.Enum17, mirror:Bool, proportional:bpy.ops.transform.Transform.Enum18, proportional_edit_falloff:bpy.ops.transform.Transform.Enum19, proportional_size:Float, snap:Bool, snap_target:bpy.ops.transform.Transform.Enum20, snap_point:Array<Float>, snap_align:Bool, snap_normal:Array<Float>, gpencil_strokes:Bool, center_override:Array<Float>, release_confirm:Bool, use_accurate:Bool):Void;
	/**
		Rotate split normal of selected items
		@param value Angle — float in [-inf, inf], (optional)
		@param axis Axis, The axis around which the transformation occurs — float array of 3 items in [-inf, inf], (optional)
		@param constraint_axis Constraint Axis — boolean array of 3 items, (optional)
		@param constraint_matrix Matrix — float multi-dimensional array of 3 * 3 items in [-inf, inf], (optional)
		@param constraint_orientation Orientation, Transformation orientation — enum in [], (optional)
		@param mirror Mirror Editing — boolean, (optional)
		@param release_confirm Confirm on Release, Always confirm operation when releasing button — boolean, (optional)
		@param use_accurate Accurate, Use accurate transformation — boolean, (optional)
	**/
	static function rotate_normal(value:Float, axis:Array<Float>, constraint_axis:Array<Bool>, constraint_matrix:Array<Float>, constraint_orientation:bpy.ops.transform.Transform.Enum21, mirror:Bool, release_confirm:Bool, use_accurate:Bool):Void;
	/**
		Select transformation orientation
		@param orientation Orientation, Transformation orientation — enum in [], (optional)
	**/
	static function select_orientation(orientation:bpy.ops.transform.Transform.Enum22):Void;
	/**
		Slide a sequence strip in time
		@param value Offset — float array of 2 items in [-inf, inf], (optional)
		@param snap Use Snapping Options — boolean, (optional)
		@param snap_target TargetCLOSEST Closest, Snap closest point onto target.CENTER Center, Snap transormation center onto target.MEDIAN Median, Snap median onto target.ACTIVE Active, Snap active onto target. — enum in ['CLOSEST', 'CENTER', 'MEDIAN', 'ACTIVE'], (optional)
		@param snap_point Point — float array of 3 items in [-inf, inf], (optional)
		@param snap_align Align with Point Normal — boolean, (optional)
		@param snap_normal Normal — float array of 3 items in [-inf, inf], (optional)
		@param release_confirm Confirm on Release, Always confirm operation when releasing button — boolean, (optional)
		@param use_accurate Accurate, Use accurate transformation — boolean, (optional)
	**/
	static function seq_slide(value:Array<Float>, snap:Bool, snap_target:bpy.ops.transform.Transform.Enum23, snap_point:Array<Float>, snap_align:Bool, snap_normal:Array<Float>, release_confirm:Bool, use_accurate:Bool):Void;
	/**
		Shear selected items along the horizontal screen axis
		@param value Offset — float in [-inf, inf], (optional)
		@param shear_axis Shear Axis — enum in ['X', 'Y'], (optional)
		@param axis Axis, The axis around which the transformation occurs — float array of 3 items in [-inf, inf], (optional)
		@param axis_ortho Axis, The orthogonal axis around which the transformation occurs — float array of 3 items in [-inf, inf], (optional)
		@param mirror Mirror Editing — boolean, (optional)
		@param proportional Proportional EditingDISABLED Disable, Proportional Editing disabled.ENABLED Enable, Proportional Editing enabled.PROJECTED Projected (2D), Proportional Editing using screen space locations.CONNECTED Connected, Proportional Editing using connected geometry only. — enum in ['DISABLED', 'ENABLED', 'PROJECTED', 'CONNECTED'], (optional)
		@param proportional_edit_falloff Proportional Falloff, Falloff type for proportional editing modeSMOOTH Smooth, Smooth falloff.SPHERE Sphere, Spherical falloff.ROOT Root, Root falloff.INVERSE_SQUARE Inverse Square, Inverse Square falloff.SHARP Sharp, Sharp falloff.LINEAR Linear, Linear falloff.CONSTANT Constant, Constant falloff.RANDOM Random, Random falloff. — enum in ['SMOOTH', 'SPHERE', 'ROOT', 'INVERSE_SQUARE', 'SHARP', 'LINEAR', 'CONSTANT', 'RANDOM'], (optional)
		@param proportional_size Proportional Size — float in [1e-06, inf], (optional)
		@param snap Use Snapping Options — boolean, (optional)
		@param snap_target TargetCLOSEST Closest, Snap closest point onto target.CENTER Center, Snap transormation center onto target.MEDIAN Median, Snap median onto target.ACTIVE Active, Snap active onto target. — enum in ['CLOSEST', 'CENTER', 'MEDIAN', 'ACTIVE'], (optional)
		@param snap_point Point — float array of 3 items in [-inf, inf], (optional)
		@param snap_align Align with Point Normal — boolean, (optional)
		@param snap_normal Normal — float array of 3 items in [-inf, inf], (optional)
		@param gpencil_strokes Edit Grease Pencil, Edit selected Grease Pencil strokes — boolean, (optional)
		@param release_confirm Confirm on Release, Always confirm operation when releasing button — boolean, (optional)
		@param use_accurate Accurate, Use accurate transformation — boolean, (optional)
	**/
	static function shear(value:Float, shear_axis:bpy.ops.transform.Transform.Enum24, axis:Array<Float>, axis_ortho:Array<Float>, mirror:Bool, proportional:bpy.ops.transform.Transform.Enum25, proportional_edit_falloff:bpy.ops.transform.Transform.Enum26, proportional_size:Float, snap:Bool, snap_target:bpy.ops.transform.Transform.Enum27, snap_point:Array<Float>, snap_align:Bool, snap_normal:Array<Float>, gpencil_strokes:Bool, release_confirm:Bool, use_accurate:Bool):Void;
	/**
		Shrink/fatten selected vertices along normals
		@param value Offset — float in [-inf, inf], (optional)
		@param use_even_offset Offset Even, Scale the offset to give more even thickness — boolean, (optional)
		@param mirror Mirror Editing — boolean, (optional)
		@param proportional Proportional EditingDISABLED Disable, Proportional Editing disabled.ENABLED Enable, Proportional Editing enabled.PROJECTED Projected (2D), Proportional Editing using screen space locations.CONNECTED Connected, Proportional Editing using connected geometry only. — enum in ['DISABLED', 'ENABLED', 'PROJECTED', 'CONNECTED'], (optional)
		@param proportional_edit_falloff Proportional Falloff, Falloff type for proportional editing modeSMOOTH Smooth, Smooth falloff.SPHERE Sphere, Spherical falloff.ROOT Root, Root falloff.INVERSE_SQUARE Inverse Square, Inverse Square falloff.SHARP Sharp, Sharp falloff.LINEAR Linear, Linear falloff.CONSTANT Constant, Constant falloff.RANDOM Random, Random falloff. — enum in ['SMOOTH', 'SPHERE', 'ROOT', 'INVERSE_SQUARE', 'SHARP', 'LINEAR', 'CONSTANT', 'RANDOM'], (optional)
		@param proportional_size Proportional Size — float in [1e-06, inf], (optional)
		@param snap Use Snapping Options — boolean, (optional)
		@param snap_target TargetCLOSEST Closest, Snap closest point onto target.CENTER Center, Snap transormation center onto target.MEDIAN Median, Snap median onto target.ACTIVE Active, Snap active onto target. — enum in ['CLOSEST', 'CENTER', 'MEDIAN', 'ACTIVE'], (optional)
		@param snap_point Point — float array of 3 items in [-inf, inf], (optional)
		@param snap_align Align with Point Normal — boolean, (optional)
		@param snap_normal Normal — float array of 3 items in [-inf, inf], (optional)
		@param release_confirm Confirm on Release, Always confirm operation when releasing button — boolean, (optional)
		@param use_accurate Accurate, Use accurate transformation — boolean, (optional)
	**/
	static function shrink_fatten(value:Float, use_even_offset:Bool, mirror:Bool, proportional:bpy.ops.transform.Transform.Enum28, proportional_edit_falloff:bpy.ops.transform.Transform.Enum29, proportional_size:Float, snap:Bool, snap_target:bpy.ops.transform.Transform.Enum30, snap_point:Array<Float>, snap_align:Bool, snap_normal:Array<Float>, release_confirm:Bool, use_accurate:Bool):Void;
	/**
		Scale selected vertices’ skin radii
		@param value Scale — float array of 3 items in [-inf, inf], (optional)
		@param constraint_axis Constraint Axis — boolean array of 3 items, (optional)
		@param constraint_matrix Matrix — float multi-dimensional array of 3 * 3 items in [-inf, inf], (optional)
		@param constraint_orientation Orientation, Transformation orientation — enum in [], (optional)
		@param mirror Mirror Editing — boolean, (optional)
		@param proportional Proportional EditingDISABLED Disable, Proportional Editing disabled.ENABLED Enable, Proportional Editing enabled.PROJECTED Projected (2D), Proportional Editing using screen space locations.CONNECTED Connected, Proportional Editing using connected geometry only. — enum in ['DISABLED', 'ENABLED', 'PROJECTED', 'CONNECTED'], (optional)
		@param proportional_edit_falloff Proportional Falloff, Falloff type for proportional editing modeSMOOTH Smooth, Smooth falloff.SPHERE Sphere, Spherical falloff.ROOT Root, Root falloff.INVERSE_SQUARE Inverse Square, Inverse Square falloff.SHARP Sharp, Sharp falloff.LINEAR Linear, Linear falloff.CONSTANT Constant, Constant falloff.RANDOM Random, Random falloff. — enum in ['SMOOTH', 'SPHERE', 'ROOT', 'INVERSE_SQUARE', 'SHARP', 'LINEAR', 'CONSTANT', 'RANDOM'], (optional)
		@param proportional_size Proportional Size — float in [1e-06, inf], (optional)
		@param snap Use Snapping Options — boolean, (optional)
		@param snap_target TargetCLOSEST Closest, Snap closest point onto target.CENTER Center, Snap transormation center onto target.MEDIAN Median, Snap median onto target.ACTIVE Active, Snap active onto target. — enum in ['CLOSEST', 'CENTER', 'MEDIAN', 'ACTIVE'], (optional)
		@param snap_point Point — float array of 3 items in [-inf, inf], (optional)
		@param snap_align Align with Point Normal — boolean, (optional)
		@param snap_normal Normal — float array of 3 items in [-inf, inf], (optional)
		@param release_confirm Confirm on Release, Always confirm operation when releasing button — boolean, (optional)
		@param use_accurate Accurate, Use accurate transformation — boolean, (optional)
	**/
	static function skin_resize(value:Array<Float>, constraint_axis:Array<Bool>, constraint_matrix:Array<Float>, constraint_orientation:bpy.ops.transform.Transform.Enum31, mirror:Bool, proportional:bpy.ops.transform.Transform.Enum32, proportional_edit_falloff:bpy.ops.transform.Transform.Enum33, proportional_size:Float, snap:Bool, snap_target:bpy.ops.transform.Transform.Enum34, snap_point:Array<Float>, snap_align:Bool, snap_normal:Array<Float>, release_confirm:Bool, use_accurate:Bool):Void;
	/**
		Tilt selected control vertices of 3D curve
		@param value Angle — float in [-inf, inf], (optional)
		@param mirror Mirror Editing — boolean, (optional)
		@param proportional Proportional EditingDISABLED Disable, Proportional Editing disabled.ENABLED Enable, Proportional Editing enabled.PROJECTED Projected (2D), Proportional Editing using screen space locations.CONNECTED Connected, Proportional Editing using connected geometry only. — enum in ['DISABLED', 'ENABLED', 'PROJECTED', 'CONNECTED'], (optional)
		@param proportional_edit_falloff Proportional Falloff, Falloff type for proportional editing modeSMOOTH Smooth, Smooth falloff.SPHERE Sphere, Spherical falloff.ROOT Root, Root falloff.INVERSE_SQUARE Inverse Square, Inverse Square falloff.SHARP Sharp, Sharp falloff.LINEAR Linear, Linear falloff.CONSTANT Constant, Constant falloff.RANDOM Random, Random falloff. — enum in ['SMOOTH', 'SPHERE', 'ROOT', 'INVERSE_SQUARE', 'SHARP', 'LINEAR', 'CONSTANT', 'RANDOM'], (optional)
		@param proportional_size Proportional Size — float in [1e-06, inf], (optional)
		@param snap Use Snapping Options — boolean, (optional)
		@param snap_target TargetCLOSEST Closest, Snap closest point onto target.CENTER Center, Snap transormation center onto target.MEDIAN Median, Snap median onto target.ACTIVE Active, Snap active onto target. — enum in ['CLOSEST', 'CENTER', 'MEDIAN', 'ACTIVE'], (optional)
		@param snap_point Point — float array of 3 items in [-inf, inf], (optional)
		@param snap_align Align with Point Normal — boolean, (optional)
		@param snap_normal Normal — float array of 3 items in [-inf, inf], (optional)
		@param release_confirm Confirm on Release, Always confirm operation when releasing button — boolean, (optional)
		@param use_accurate Accurate, Use accurate transformation — boolean, (optional)
	**/
	static function tilt(value:Float, mirror:Bool, proportional:bpy.ops.transform.Transform.Enum35, proportional_edit_falloff:bpy.ops.transform.Transform.Enum36, proportional_size:Float, snap:Bool, snap_target:bpy.ops.transform.Transform.Enum37, snap_point:Array<Float>, snap_align:Bool, snap_normal:Array<Float>, release_confirm:Bool, use_accurate:Bool):Void;
	/**
		Move selected vertices outward in a spherical shape around mesh center
		@param value Factor — float in [0, 1], (optional)
		@param mirror Mirror Editing — boolean, (optional)
		@param proportional Proportional EditingDISABLED Disable, Proportional Editing disabled.ENABLED Enable, Proportional Editing enabled.PROJECTED Projected (2D), Proportional Editing using screen space locations.CONNECTED Connected, Proportional Editing using connected geometry only. — enum in ['DISABLED', 'ENABLED', 'PROJECTED', 'CONNECTED'], (optional)
		@param proportional_edit_falloff Proportional Falloff, Falloff type for proportional editing modeSMOOTH Smooth, Smooth falloff.SPHERE Sphere, Spherical falloff.ROOT Root, Root falloff.INVERSE_SQUARE Inverse Square, Inverse Square falloff.SHARP Sharp, Sharp falloff.LINEAR Linear, Linear falloff.CONSTANT Constant, Constant falloff.RANDOM Random, Random falloff. — enum in ['SMOOTH', 'SPHERE', 'ROOT', 'INVERSE_SQUARE', 'SHARP', 'LINEAR', 'CONSTANT', 'RANDOM'], (optional)
		@param proportional_size Proportional Size — float in [1e-06, inf], (optional)
		@param snap Use Snapping Options — boolean, (optional)
		@param snap_target TargetCLOSEST Closest, Snap closest point onto target.CENTER Center, Snap transormation center onto target.MEDIAN Median, Snap median onto target.ACTIVE Active, Snap active onto target. — enum in ['CLOSEST', 'CENTER', 'MEDIAN', 'ACTIVE'], (optional)
		@param snap_point Point — float array of 3 items in [-inf, inf], (optional)
		@param snap_align Align with Point Normal — boolean, (optional)
		@param snap_normal Normal — float array of 3 items in [-inf, inf], (optional)
		@param gpencil_strokes Edit Grease Pencil, Edit selected Grease Pencil strokes — boolean, (optional)
		@param center_override Center Override, Force using this center value (when set) — float array of 3 items in [-inf, inf], (optional)
		@param release_confirm Confirm on Release, Always confirm operation when releasing button — boolean, (optional)
		@param use_accurate Accurate, Use accurate transformation — boolean, (optional)
	**/
	static function tosphere(value:Float, mirror:Bool, proportional:bpy.ops.transform.Transform.Enum38, proportional_edit_falloff:bpy.ops.transform.Transform.Enum39, proportional_size:Float, snap:Bool, snap_target:bpy.ops.transform.Transform.Enum40, snap_point:Array<Float>, snap_align:Bool, snap_normal:Array<Float>, gpencil_strokes:Bool, center_override:Array<Float>, release_confirm:Bool, use_accurate:Bool):Void;
	/**
		Trackball style rotation of selected items
		@param value Angle — float array of 2 items in [-inf, inf], (optional)
		@param mirror Mirror Editing — boolean, (optional)
		@param proportional Proportional EditingDISABLED Disable, Proportional Editing disabled.ENABLED Enable, Proportional Editing enabled.PROJECTED Projected (2D), Proportional Editing using screen space locations.CONNECTED Connected, Proportional Editing using connected geometry only. — enum in ['DISABLED', 'ENABLED', 'PROJECTED', 'CONNECTED'], (optional)
		@param proportional_edit_falloff Proportional Falloff, Falloff type for proportional editing modeSMOOTH Smooth, Smooth falloff.SPHERE Sphere, Spherical falloff.ROOT Root, Root falloff.INVERSE_SQUARE Inverse Square, Inverse Square falloff.SHARP Sharp, Sharp falloff.LINEAR Linear, Linear falloff.CONSTANT Constant, Constant falloff.RANDOM Random, Random falloff. — enum in ['SMOOTH', 'SPHERE', 'ROOT', 'INVERSE_SQUARE', 'SHARP', 'LINEAR', 'CONSTANT', 'RANDOM'], (optional)
		@param proportional_size Proportional Size — float in [1e-06, inf], (optional)
		@param snap Use Snapping Options — boolean, (optional)
		@param snap_target TargetCLOSEST Closest, Snap closest point onto target.CENTER Center, Snap transormation center onto target.MEDIAN Median, Snap median onto target.ACTIVE Active, Snap active onto target. — enum in ['CLOSEST', 'CENTER', 'MEDIAN', 'ACTIVE'], (optional)
		@param snap_point Point — float array of 3 items in [-inf, inf], (optional)
		@param snap_align Align with Point Normal — boolean, (optional)
		@param snap_normal Normal — float array of 3 items in [-inf, inf], (optional)
		@param gpencil_strokes Edit Grease Pencil, Edit selected Grease Pencil strokes — boolean, (optional)
		@param center_override Center Override, Force using this center value (when set) — float array of 3 items in [-inf, inf], (optional)
		@param release_confirm Confirm on Release, Always confirm operation when releasing button — boolean, (optional)
		@param use_accurate Accurate, Use accurate transformation — boolean, (optional)
	**/
	static function trackball(value:Array<Float>, mirror:Bool, proportional:bpy.ops.transform.Transform.Enum41, proportional_edit_falloff:bpy.ops.transform.Transform.Enum42, proportional_size:Float, snap:Bool, snap_target:bpy.ops.transform.Transform.Enum43, snap_point:Array<Float>, snap_align:Bool, snap_normal:Array<Float>, gpencil_strokes:Bool, center_override:Array<Float>, release_confirm:Bool, use_accurate:Bool):Void;
	/**
		Transform selected items by mode type
		@param mode Mode — enum in ['INIT', 'DUMMY', 'TRANSLATION', 'ROTATION', 'RESIZE', 'SKIN_RESIZE', 'TOSPHERE', 'SHEAR', 'BEND', 'SHRINKFATTEN', 'TILT', 'TRACKBALL', 'PUSHPULL', 'CREASE', 'MIRROR', 'BONE_SIZE', 'BONE_ENVELOPE', 'BONE_ENVELOPE_DIST', 'CURVE_SHRINKFATTEN', 'MASK_SHRINKFATTEN', 'GPENCIL_SHRINKFATTEN', 'BONE_ROLL', 'TIME_TRANSLATE', 'TIME_SLIDE', 'TIME_SCALE', 'TIME_EXTEND', 'BAKE_TIME', 'BWEIGHT', 'ALIGN', 'EDGESLIDE', 'SEQSLIDE'], (optional)
		@param value Values — float array of 4 items in [-inf, inf], (optional)
		@param axis Axis, The axis around which the transformation occurs — float array of 3 items in [-inf, inf], (optional)
		@param constraint_axis Constraint Axis — boolean array of 3 items, (optional)
		@param constraint_matrix Matrix — float multi-dimensional array of 3 * 3 items in [-inf, inf], (optional)
		@param constraint_orientation Orientation, Transformation orientationGLOBAL Global, Align the transformation axes to world space.LOCAL Local, Align the transformation axes to the selected objects’ local space.NORMAL Normal, Align the transformation axes to average normal of selected elements (bone Y axis for pose mode).GIMBAL Gimbal, Align each axis to the Euler rotation axis as used for input.VIEW View, Align the transformation axes to the window.CURSOR Cursor, Align the transformation axes to the 3D cursor. — enum in ['GLOBAL', 'LOCAL', 'NORMAL', 'GIMBAL', 'VIEW', 'CURSOR'], (optional)
		@param mirror Mirror Editing — boolean, (optional)
		@param proportional Proportional EditingDISABLED Disable, Proportional Editing disabled.ENABLED Enable, Proportional Editing enabled.PROJECTED Projected (2D), Proportional Editing using screen space locations.CONNECTED Connected, Proportional Editing using connected geometry only. — enum in ['DISABLED', 'ENABLED', 'PROJECTED', 'CONNECTED'], (optional)
		@param proportional_edit_falloff Proportional Falloff, Falloff type for proportional editing modeSMOOTH Smooth, Smooth falloff.SPHERE Sphere, Spherical falloff.ROOT Root, Root falloff.INVERSE_SQUARE Inverse Square, Inverse Square falloff.SHARP Sharp, Sharp falloff.LINEAR Linear, Linear falloff.CONSTANT Constant, Constant falloff.RANDOM Random, Random falloff. — enum in ['SMOOTH', 'SPHERE', 'ROOT', 'INVERSE_SQUARE', 'SHARP', 'LINEAR', 'CONSTANT', 'RANDOM'], (optional)
		@param proportional_size Proportional Size — float in [1e-06, inf], (optional)
		@param snap Use Snapping Options — boolean, (optional)
		@param snap_target TargetCLOSEST Closest, Snap closest point onto target.CENTER Center, Snap transormation center onto target.MEDIAN Median, Snap median onto target.ACTIVE Active, Snap active onto target. — enum in ['CLOSEST', 'CENTER', 'MEDIAN', 'ACTIVE'], (optional)
		@param snap_point Point — float array of 3 items in [-inf, inf], (optional)
		@param snap_align Align with Point Normal — boolean, (optional)
		@param snap_normal Normal — float array of 3 items in [-inf, inf], (optional)
		@param gpencil_strokes Edit Grease Pencil, Edit selected Grease Pencil strokes — boolean, (optional)
		@param center_override Center Override, Force using this center value (when set) — float array of 3 items in [-inf, inf], (optional)
		@param release_confirm Confirm on Release, Always confirm operation when releasing button — boolean, (optional)
		@param use_accurate Accurate, Use accurate transformation — boolean, (optional)
	**/
	static function transform(mode:bpy.ops.transform.Transform.Enum44, value:Array<Float>, axis:Array<Float>, constraint_axis:Array<Bool>, constraint_matrix:Array<Float>, constraint_orientation:bpy.ops.transform.Transform.Enum45, mirror:Bool, proportional:bpy.ops.transform.Transform.Enum46, proportional_edit_falloff:bpy.ops.transform.Transform.Enum47, proportional_size:Float, snap:Bool, snap_target:bpy.ops.transform.Transform.Enum48, snap_point:Array<Float>, snap_align:Bool, snap_normal:Array<Float>, gpencil_strokes:Bool, center_override:Array<Float>, release_confirm:Bool, use_accurate:Bool):Void;
	/**
		Move selected items
		@param value Move — float array of 3 items in [-inf, inf], (optional)
		@param constraint_axis Constraint Axis — boolean array of 3 items, (optional)
		@param constraint_matrix Matrix — float multi-dimensional array of 3 * 3 items in [-inf, inf], (optional)
		@param constraint_orientation Orientation, Transformation orientationGLOBAL Global, Align the transformation axes to world space.LOCAL Local, Align the transformation axes to the selected objects’ local space.NORMAL Normal, Align the transformation axes to average normal of selected elements (bone Y axis for pose mode).GIMBAL Gimbal, Align each axis to the Euler rotation axis as used for input.VIEW View, Align the transformation axes to the window.CURSOR Cursor, Align the transformation axes to the 3D cursor. — enum in ['GLOBAL', 'LOCAL', 'NORMAL', 'GIMBAL', 'VIEW', 'CURSOR'], (optional)
		@param mirror Mirror Editing — boolean, (optional)
		@param proportional Proportional EditingDISABLED Disable, Proportional Editing disabled.ENABLED Enable, Proportional Editing enabled.PROJECTED Projected (2D), Proportional Editing using screen space locations.CONNECTED Connected, Proportional Editing using connected geometry only. — enum in ['DISABLED', 'ENABLED', 'PROJECTED', 'CONNECTED'], (optional)
		@param proportional_edit_falloff Proportional Falloff, Falloff type for proportional editing modeSMOOTH Smooth, Smooth falloff.SPHERE Sphere, Spherical falloff.ROOT Root, Root falloff.INVERSE_SQUARE Inverse Square, Inverse Square falloff.SHARP Sharp, Sharp falloff.LINEAR Linear, Linear falloff.CONSTANT Constant, Constant falloff.RANDOM Random, Random falloff. — enum in ['SMOOTH', 'SPHERE', 'ROOT', 'INVERSE_SQUARE', 'SHARP', 'LINEAR', 'CONSTANT', 'RANDOM'], (optional)
		@param proportional_size Proportional Size — float in [1e-06, inf], (optional)
		@param snap Use Snapping Options — boolean, (optional)
		@param snap_target TargetCLOSEST Closest, Snap closest point onto target.CENTER Center, Snap transormation center onto target.MEDIAN Median, Snap median onto target.ACTIVE Active, Snap active onto target. — enum in ['CLOSEST', 'CENTER', 'MEDIAN', 'ACTIVE'], (optional)
		@param snap_point Point — float array of 3 items in [-inf, inf], (optional)
		@param snap_align Align with Point Normal — boolean, (optional)
		@param snap_normal Normal — float array of 3 items in [-inf, inf], (optional)
		@param gpencil_strokes Edit Grease Pencil, Edit selected Grease Pencil strokes — boolean, (optional)
		@param cursor_transform Transform Cursor — boolean, (optional)
		@param texture_space Edit Texture Space, Edit Object data texture space — boolean, (optional)
		@param remove_on_cancel Remove on Cancel, Remove elements on cancel — boolean, (optional)
		@param release_confirm Confirm on Release, Always confirm operation when releasing button — boolean, (optional)
		@param use_accurate Accurate, Use accurate transformation — boolean, (optional)
	**/
	static function translate(value:Array<Float>, constraint_axis:Array<Bool>, constraint_matrix:Array<Float>, constraint_orientation:bpy.ops.transform.Transform.Enum49, mirror:Bool, proportional:bpy.ops.transform.Transform.Enum50, proportional_edit_falloff:bpy.ops.transform.Transform.Enum51, proportional_size:Float, snap:Bool, snap_target:bpy.ops.transform.Transform.Enum52, snap_point:Array<Float>, snap_align:Bool, snap_normal:Array<Float>, gpencil_strokes:Bool, cursor_transform:Bool, texture_space:Bool, remove_on_cancel:Bool, release_confirm:Bool, use_accurate:Bool):Void;
	/**
		Slide a vertex along a mesh
		@param value Factor — float in [-10, 10], (optional)
		@param use_even Even, Make the edge loop match the shape of the adjacent edge loop — boolean, (optional)
		@param flipped Flipped, When Even mode is active, flips between the two adjacent edge loops — boolean, (optional)
		@param use_clamp Clamp, Clamp within the edge extents — boolean, (optional)
		@param mirror Mirror Editing — boolean, (optional)
		@param snap Use Snapping Options — boolean, (optional)
		@param snap_target TargetCLOSEST Closest, Snap closest point onto target.CENTER Center, Snap transormation center onto target.MEDIAN Median, Snap median onto target.ACTIVE Active, Snap active onto target. — enum in ['CLOSEST', 'CENTER', 'MEDIAN', 'ACTIVE'], (optional)
		@param snap_point Point — float array of 3 items in [-inf, inf], (optional)
		@param snap_align Align with Point Normal — boolean, (optional)
		@param snap_normal Normal — float array of 3 items in [-inf, inf], (optional)
		@param correct_uv Correct UVs, Correct UV coordinates when transforming — boolean, (optional)
		@param release_confirm Confirm on Release, Always confirm operation when releasing button — boolean, (optional)
		@param use_accurate Accurate, Use accurate transformation — boolean, (optional)
	**/
	static function vert_slide(value:Float, use_even:Bool, flipped:Bool, use_clamp:Bool, mirror:Bool, snap:Bool, snap_target:bpy.ops.transform.Transform.Enum53, snap_point:Array<Float>, snap_align:Bool, snap_normal:Array<Float>, correct_uv:Bool, release_confirm:Bool, use_accurate:Bool):Void;
	/**
		Randomize vertices
		@param offset Amount, Distance to offset — float in [-inf, inf], (optional)
		@param uniform Uniform, Increase for uniform offset distance — float in [0, 1], (optional)
		@param normal Normal, Align offset direction to normals — float in [0, 1], (optional)
		@param seed Random Seed, Seed for the random number generator — int in [0, 10000], (optional)
	**/
	static function vertex_random(offset:Float, uniform:Float, normal:Float, seed:Int):Void;
	/**
		Warp vertices around the cursor
		@param warp_angle Warp Angle, Amount to warp about the cursor — float in [-inf, inf], (optional)
		@param offset_angle Offset Angle, Angle to use as the basis for warping — float in [-inf, inf], (optional)
		@param min Min — float in [-inf, inf], (optional)
		@param max Max — float in [-inf, inf], (optional)
		@param viewmat Matrix — float multi-dimensional array of 4 * 4 items in [-inf, inf], (optional)
		@param center Center — float array of 3 items in [-inf, inf], (optional)
	**/
	static function vertex_warp(warp_angle:Float, offset_angle:Float, min:Float, max:Float, viewmat:Array<Float>, center:Array<Float>):Void;
}