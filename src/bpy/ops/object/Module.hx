package bpy.ops.object;
/**
	Object Operators
**/
@:pythonImport("bpy.ops.object") extern class Module {
	/**
		Add an object to the scene
		@param radius Radius — float in [0, inf], (optional)
		@param type Type — enum in ['MESH', 'CURVE', 'SURFACE', 'META', 'FONT', 'ARMATURE', 'LATTICE', 'EMPTY', 'GPENCIL', 'CAMERA', 'LIGHT', 'SPEAKER', 'LIGHT_PROBE'], (optional)
		@param view_align Align to View, Align the new object to the view — boolean, (optional)
		@param enter_editmode Enter Editmode, Enter editmode when adding this object — boolean, (optional)
		@param location Location, Location for the newly added object — float array of 3 items in [-inf, inf], (optional)
		@param rotation Rotation, Rotation for the newly added object — float array of 3 items in [-inf, inf], (optional)
	**/
	static function add(radius:Float, type:bpy.ops.object.Object.Enum1, view_align:Bool, enter_editmode:Bool, location:Array<Float>, rotation:Array<Float>):Void;
	/**
		Add named object
		@param linked Linked, Duplicate object but not object data, linking to the original data — boolean, (optional)
		@param name Name, Object name to add — string, (optional, never None)
	**/
	static function add_named(linked:Bool, name:String):Void;
	/**
		Align Objects
		@param bb_quality High Quality, Enables high quality calculation of the bounding box for perfect results on complex shape meshes with rotation/scale (Slow) — boolean, (optional)
		@param align_mode Align Mode:, Side of object to use for alignment — enum in ['OPT_1', 'OPT_2', 'OPT_3'], (optional)
		@param relative_to Relative To:, Reference location to align toOPT_1 Scene Origin, Use the Scene Origin as the position for the selected objects to align to.OPT_2 3D Cursor, Use the 3D cursor as the position for the selected objects to align to.OPT_3 Selection, Use the selected objects as the position for the selected objects to align to.OPT_4 Active, Use the active object as the position for the selected objects to align to. — enum in ['OPT_1', 'OPT_2', 'OPT_3', 'OPT_4'], (optional)
		@param align_axis Align, Align to axis — enum set in {'X', 'Y', 'Z'}, (optional)
	**/
	static function align(bb_quality:Bool, align_mode:bpy.ops.object.Object.Enum2, relative_to:bpy.ops.object.Object.Enum3, align_axis:Dynamic):Void;
	/**
		Convert object animation for normal transforms to delta transforms
	**/
	static function anim_transforms_to_deltas():Void;
	/**
		Add an armature object to the scene
		@param radius Radius — float in [0, inf], (optional)
		@param view_align Align to View, Align the new object to the view — boolean, (optional)
		@param enter_editmode Enter Editmode, Enter editmode when adding this object — boolean, (optional)
		@param location Location, Location for the newly added object — float array of 3 items in [-inf, inf], (optional)
		@param rotation Rotation, Rotation for the newly added object — float array of 3 items in [-inf, inf], (optional)
	**/
	static function armature_add(radius:Float, view_align:Bool, enter_editmode:Bool, location:Array<Float>, rotation:Array<Float>):Void;
	/**
		Bake image textures of selected objects
		@param type Type, Type of pass to bake, some of them may not be supported by the current render engine — enum in ['COMBINED', 'AO', 'SHADOW', 'NORMAL', 'UV', 'ROUGHNESS', 'EMIT', 'ENVIRONMENT', 'DIFFUSE', 'GLOSSY', 'TRANSMISSION', 'SUBSURFACE'], (optional)
		@param pass_filter Pass Filter, Filter to combined, diffuse, glossy, transmission and subsurface passes — enum set in {'NONE', 'AO', 'EMIT', 'DIRECT', 'INDIRECT', 'COLOR', 'DIFFUSE', 'GLOSSY', 'TRANSMISSION', 'SUBSURFACE'}, (optional)
		@param filepath File Path, Image filepath to use when saving externally — string, (optional, never None)
		@param width Width, Horizontal dimension of the baking map (external only) — int in [1, inf], (optional)
		@param height Height, Vertical dimension of the baking map (external only) — int in [1, inf], (optional)
		@param margin Margin, Extends the baked result as a post process filter — int in [0, inf], (optional)
		@param use_selected_to_active Selected to Active, Bake shading on the surface of selected objects to the active object — boolean, (optional)
		@param cage_extrusion Cage Extrusion, Distance to use for the inward ray cast when using selected to active — float in [0, inf], (optional)
		@param cage_object Cage Object, Object to use as cage, instead of calculating the cage from the active object with cage extrusion — string, (optional, never None)
		@param normal_space Normal Space, Choose normal space for bakingOBJECT Object, Bake the normals in object space.TANGENT Tangent, Bake the normals in tangent space. — enum in ['OBJECT', 'TANGENT'], (optional)
		@param normal_r R, Axis to bake in red channel — enum in ['POS_X', 'POS_Y', 'POS_Z', 'NEG_X', 'NEG_Y', 'NEG_Z'], (optional)
		@param normal_g G, Axis to bake in green channel — enum in ['POS_X', 'POS_Y', 'POS_Z', 'NEG_X', 'NEG_Y', 'NEG_Z'], (optional)
		@param normal_b B, Axis to bake in blue channel — enum in ['POS_X', 'POS_Y', 'POS_Z', 'NEG_X', 'NEG_Y', 'NEG_Z'], (optional)
		@param save_mode Save Mode, Choose how to save the baking mapINTERNAL Internal, Save the baking map in an internal image data-block.EXTERNAL External, Save the baking map in an external file. — enum in ['INTERNAL', 'EXTERNAL'], (optional)
		@param use_clear Clear, Clear Images before baking (only for internal saving) — boolean, (optional)
		@param use_cage Cage, Cast rays to active object from a cage — boolean, (optional)
		@param use_split_materials Split Materials, Split baked maps per material, using material name in output file (external only) — boolean, (optional)
		@param use_automatic_name Automatic Name, Automatically name the output file with the pass type — boolean, (optional)
		@param uv_layer UV Layer, UV layer to override active — string, (optional, never None)
	**/
	static function bake(type:bpy.ops.object.Object.Enum4, pass_filter:Dynamic, filepath:String, width:Int, height:Int, margin:Int, use_selected_to_active:Bool, cage_extrusion:Float, cage_object:String, normal_space:bpy.ops.object.Object.Enum5, normal_r:bpy.ops.object.Object.Enum6, normal_g:bpy.ops.object.Object.Enum7, normal_b:bpy.ops.object.Object.Enum8, save_mode:bpy.ops.object.Object.Enum9, use_clear:Bool, use_cage:Bool, use_split_materials:Bool, use_automatic_name:Bool, uv_layer:String):Void;
	/**
		Bake image textures of selected objects
	**/
	static function bake_image():Void;
	/**
		Add a camera object to the scene
		@param view_align Align to View, Align the new object to the view — boolean, (optional)
		@param enter_editmode Enter Editmode, Enter editmode when adding this object — boolean, (optional)
		@param location Location, Location for the newly added object — float array of 3 items in [-inf, inf], (optional)
		@param rotation Rotation, Rotation for the newly added object — float array of 3 items in [-inf, inf], (optional)
	**/
	static function camera_add(view_align:Bool, enter_editmode:Bool, location:Array<Float>, rotation:Array<Float>):Void;
	/**
		Add an object to a new collection
	**/
	static function collection_add():Void;
	/**
		Add a collection instance
		@param name Name, Collection name to add — string, (optional, never None)
		@param collection Collection — enum in [], (optional)
		@param view_align Align to View, Align the new object to the view — boolean, (optional)
		@param location Location, Location for the newly added object — float array of 3 items in [-inf, inf], (optional)
		@param rotation Rotation, Rotation for the newly added object — float array of 3 items in [-inf, inf], (optional)
	**/
	static function collection_instance_add(name:String, collection:bpy.ops.object.Object.Enum10, view_align:Bool, location:Array<Float>, rotation:Array<Float>):Void;
	/**
		Add an object to an existing collection
		@param collection Collection — enum in [], (optional)
	**/
	static function collection_link(collection:bpy.ops.object.Object.Enum11):Void;
	/**
		Select all objects in collection
	**/
	static function collection_objects_select():Void;
	/**
		Remove the active object from this collection
	**/
	static function collection_remove():Void;
	/**
		Unlink the collection from all objects
	**/
	static function collection_unlink():Void;
	/**
		Add a constraint to the active object
		@param type TypeCAMERA_SOLVER Camera Solver.FOLLOW_TRACK Follow Track.OBJECT_SOLVER Object Solver.COPY_LOCATION Copy Location, Copy the location of a target (with an optional offset), so that they move together.COPY_ROTATION Copy Rotation, Copy the rotation of a target (with an optional offset), so that they rotate together.COPY_SCALE Copy Scale, Copy the scale factors of a target (with an optional offset), so that they are scaled by the same amount.COPY_TRANSFORMS Copy Transforms, Copy all the transformations of a target, so that they move together.LIMIT_DISTANCE Limit Distance, Restrict movements to within a certain distance of a target (at the time of constraint evaluation only).LIMIT_LOCATION Limit Location, Restrict movement along each axis within given ranges.LIMIT_ROTATION Limit Rotation, Restrict rotation along each axis within given ranges.LIMIT_SCALE Limit Scale, Restrict scaling along each axis with given ranges.MAINTAIN_VOLUME Maintain Volume, Compensate for scaling one axis by applying suitable scaling to the other two axes.TRANSFORM Transformation, Use one transform property from target to control another (or same) property on owner.TRANSFORM_CACHE Transform Cache, Look up the transformation matrix from an external file.CLAMP_TO Clamp To, Restrict movements to lie along a curve by remapping location along curve’s longest axis.DAMPED_TRACK Damped Track, Point towards a target by performing the smallest rotation necessary.IK Inverse Kinematics, Control a chain of bones by specifying the endpoint target (Bones only).LOCKED_TRACK Locked Track, Rotate around the specified (‘locked’) axis to point towards a target.SPLINE_IK Spline IK, Align chain of bones along a curve (Bones only).STRETCH_TO Stretch To, Stretch along Y-Axis to point towards a target.TRACK_TO Track To, Legacy tracking constraint prone to twisting artifacts.ACTION Action, Use transform property of target to look up pose for owner from an Action.CHILD_OF Child Of, Make target the ‘detachable’ parent of owner.FLOOR Floor, Use position (and optionally rotation) of target to define a ‘wall’ or ‘floor’ that the owner can not cross.FOLLOW_PATH Follow Path, Use to animate an object/bone following a path.PIVOT Pivot, Change pivot point for transforms (buggy).SHRINKWRAP Shrinkwrap, Restrict movements to surface of target mesh.ARMATURE Armature, Apply weight-blended transformation from multiple bones like the Armature modifier. — enum in ['CAMERA_SOLVER', 'FOLLOW_TRACK', 'OBJECT_SOLVER', 'COPY_LOCATION', 'COPY_ROTATION', 'COPY_SCALE', 'COPY_TRANSFORMS', 'LIMIT_DISTANCE', 'LIMIT_LOCATION', 'LIMIT_ROTATION', 'LIMIT_SCALE', 'MAINTAIN_VOLUME', 'TRANSFORM', 'TRANSFORM_CACHE', 'CLAMP_TO', 'DAMPED_TRACK', 'IK', 'LOCKED_TRACK', 'SPLINE_IK', 'STRETCH_TO', 'TRACK_TO', 'ACTION', 'CHILD_OF', 'FLOOR', 'FOLLOW_PATH', 'PIVOT', 'SHRINKWRAP', 'ARMATURE'], (optional)
	**/
	static function constraint_add(type:bpy.ops.object.Object.Enum12):Void;
	/**
		Add a constraint to the active object, with target (where applicable) set to the selected Objects/Bones
		@param type TypeCAMERA_SOLVER Camera Solver.FOLLOW_TRACK Follow Track.OBJECT_SOLVER Object Solver.COPY_LOCATION Copy Location, Copy the location of a target (with an optional offset), so that they move together.COPY_ROTATION Copy Rotation, Copy the rotation of a target (with an optional offset), so that they rotate together.COPY_SCALE Copy Scale, Copy the scale factors of a target (with an optional offset), so that they are scaled by the same amount.COPY_TRANSFORMS Copy Transforms, Copy all the transformations of a target, so that they move together.LIMIT_DISTANCE Limit Distance, Restrict movements to within a certain distance of a target (at the time of constraint evaluation only).LIMIT_LOCATION Limit Location, Restrict movement along each axis within given ranges.LIMIT_ROTATION Limit Rotation, Restrict rotation along each axis within given ranges.LIMIT_SCALE Limit Scale, Restrict scaling along each axis with given ranges.MAINTAIN_VOLUME Maintain Volume, Compensate for scaling one axis by applying suitable scaling to the other two axes.TRANSFORM Transformation, Use one transform property from target to control another (or same) property on owner.TRANSFORM_CACHE Transform Cache, Look up the transformation matrix from an external file.CLAMP_TO Clamp To, Restrict movements to lie along a curve by remapping location along curve’s longest axis.DAMPED_TRACK Damped Track, Point towards a target by performing the smallest rotation necessary.IK Inverse Kinematics, Control a chain of bones by specifying the endpoint target (Bones only).LOCKED_TRACK Locked Track, Rotate around the specified (‘locked’) axis to point towards a target.SPLINE_IK Spline IK, Align chain of bones along a curve (Bones only).STRETCH_TO Stretch To, Stretch along Y-Axis to point towards a target.TRACK_TO Track To, Legacy tracking constraint prone to twisting artifacts.ACTION Action, Use transform property of target to look up pose for owner from an Action.CHILD_OF Child Of, Make target the ‘detachable’ parent of owner.FLOOR Floor, Use position (and optionally rotation) of target to define a ‘wall’ or ‘floor’ that the owner can not cross.FOLLOW_PATH Follow Path, Use to animate an object/bone following a path.PIVOT Pivot, Change pivot point for transforms (buggy).SHRINKWRAP Shrinkwrap, Restrict movements to surface of target mesh.ARMATURE Armature, Apply weight-blended transformation from multiple bones like the Armature modifier. — enum in ['CAMERA_SOLVER', 'FOLLOW_TRACK', 'OBJECT_SOLVER', 'COPY_LOCATION', 'COPY_ROTATION', 'COPY_SCALE', 'COPY_TRANSFORMS', 'LIMIT_DISTANCE', 'LIMIT_LOCATION', 'LIMIT_ROTATION', 'LIMIT_SCALE', 'MAINTAIN_VOLUME', 'TRANSFORM', 'TRANSFORM_CACHE', 'CLAMP_TO', 'DAMPED_TRACK', 'IK', 'LOCKED_TRACK', 'SPLINE_IK', 'STRETCH_TO', 'TRACK_TO', 'ACTION', 'CHILD_OF', 'FLOOR', 'FOLLOW_PATH', 'PIVOT', 'SHRINKWRAP', 'ARMATURE'], (optional)
	**/
	static function constraint_add_with_targets(type:bpy.ops.object.Object.Enum13):Void;
	/**
		Clear all the constraints for the active Object only
	**/
	static function constraints_clear():Void;
	/**
		Copy constraints to other selected objects
	**/
	static function constraints_copy():Void;
	/**
		Convert selected objects to another type
		@param target Target, Type of object to convert to — enum in ['CURVE', 'MESH'], (optional)
		@param keep_original Keep Original, Keep original objects instead of replacing them — boolean, (optional)
	**/
	static function convert(target:bpy.ops.object.Object.Enum14, keep_original:Bool):Void;
	/**
		Bind base pose in Corrective Smooth modifier
		@param modifier Modifier, Name of the modifier to edit — string, (optional, never None)
	**/
	static function correctivesmooth_bind(modifier:String):Void;
	/**
		Transfer data layer(s) (weights, edge sharp, …) from active to selected meshes
		@param use_reverse_transfer Reverse Transfer, Transfer from selected objects to active one — boolean, (optional)
		@param use_freeze Freeze Operator, Prevent changes to settings to re-run the operator, handy to change several things at once with heavy geometry — boolean, (optional)
		@param data_type Data Type, Which data to transferVGROUP_WEIGHTS Vertex Group(s), Transfer active or all vertex groups.BEVEL_WEIGHT_VERT Bevel Weight, Transfer bevel weights.SHARP_EDGE Sharp, Transfer sharp mark.SEAM UV Seam, Transfer UV seam mark.CREASE Subsurf Crease, Transfer crease values.BEVEL_WEIGHT_EDGE Bevel Weight, Transfer bevel weights.FREESTYLE_EDGE Freestyle Mark, Transfer Freestyle edge mark.CUSTOM_NORMAL Custom Normals, Transfer custom normals.VCOL VCol, Vertex (face corners) colors.UV UVs, Transfer UV layers.SMOOTH Smooth, Transfer flat/smooth mark.FREESTYLE_FACE Freestyle Mark, Transfer Freestyle face mark. — enum in ['VGROUP_WEIGHTS', 'BEVEL_WEIGHT_VERT', 'SHARP_EDGE', 'SEAM', 'CREASE', 'BEVEL_WEIGHT_EDGE', 'FREESTYLE_EDGE', 'CUSTOM_NORMAL', 'VCOL', 'UV', 'SMOOTH', 'FREESTYLE_FACE'], (optional)
		@param use_create Create Data, Add data layers on destination meshes if needed — boolean, (optional)
		@param vert_mapping Vertex Mapping, Method used to map source vertices to destination onesTOPOLOGY Topology, Copy from identical topology meshes.NEAREST Nearest vertex, Copy from closest vertex.EDGE_NEAREST Nearest Edge Vertex, Copy from closest vertex of closest edge.EDGEINTERP_NEAREST Nearest Edge Interpolated, Copy from interpolated values of vertices from closest point on closest edge.POLY_NEAREST Nearest Face Vertex, Copy from closest vertex of closest face.POLYINTERP_NEAREST Nearest Face Interpolated, Copy from interpolated values of vertices from closest point on closest face.POLYINTERP_VNORPROJ Projected Face Interpolated, Copy from interpolated values of vertices from point on closest face hit by normal-projection. — enum in ['TOPOLOGY', 'NEAREST', 'EDGE_NEAREST', 'EDGEINTERP_NEAREST', 'POLY_NEAREST', 'POLYINTERP_NEAREST', 'POLYINTERP_VNORPROJ'], (optional)
		@param edge_mapping Edge Mapping, Method used to map source edges to destination onesTOPOLOGY Topology, Copy from identical topology meshes.VERT_NEAREST Nearest Vertices, Copy from most similar edge (edge which vertices are the closest of destination edge’s ones).NEAREST Nearest Edge, Copy from closest edge (using midpoints).POLY_NEAREST Nearest Face Edge, Copy from closest edge of closest face (using midpoints).EDGEINTERP_VNORPROJ Projected Edge Interpolated, Interpolate all source edges hit by the projection of destination one along its own normal (from vertices). — enum in ['TOPOLOGY', 'VERT_NEAREST', 'NEAREST', 'POLY_NEAREST', 'EDGEINTERP_VNORPROJ'], (optional)
		@param loop_mapping Face Corner Mapping, Method used to map source faces’ corners to destination onesTOPOLOGY Topology, Copy from identical topology meshes.NEAREST_NORMAL Nearest Corner And Best Matching Normal, Copy from nearest corner which has the best matching normal.NEAREST_POLYNOR Nearest Corner And Best Matching Face Normal, Copy from nearest corner which has the face with the best matching normal to destination corner’s face one.NEAREST_POLY Nearest Corner Of Nearest Face, Copy from nearest corner of nearest polygon.POLYINTERP_NEAREST Nearest Face Interpolated, Copy from interpolated corners of the nearest source polygon.POLYINTERP_LNORPROJ Projected Face Interpolated, Copy from interpolated corners of the source polygon hit by corner normal projection. — enum in ['TOPOLOGY', 'NEAREST_NORMAL', 'NEAREST_POLYNOR', 'NEAREST_POLY', 'POLYINTERP_NEAREST', 'POLYINTERP_LNORPROJ'], (optional)
		@param poly_mapping Face Mapping, Method used to map source faces to destination onesTOPOLOGY Topology, Copy from identical topology meshes.NEAREST Nearest Face, Copy from nearest polygon (using center points).NORMAL Best Normal-Matching, Copy from source polygon which normal is the closest to destination one.POLYINTERP_PNORPROJ Projected Face Interpolated, Interpolate all source polygons intersected by the projection of destination one along its own normal. — enum in ['TOPOLOGY', 'NEAREST', 'NORMAL', 'POLYINTERP_PNORPROJ'], (optional)
		@param use_auto_transform Auto Transform, Automatically compute transformation to get the best possible match between source and destination meshes (WARNING: results will never be as good as manual matching of objects) — boolean, (optional)
		@param use_object_transform Object Transform, Evaluate source and destination meshes in global space — boolean, (optional)
		@param use_max_distance Only Neighbor Geometry, Source elements must be closer than given distance from destination one — boolean, (optional)
		@param max_distance Max Distance, Maximum allowed distance between source and destination element, for non-topology mappings — float in [0, inf], (optional)
		@param ray_radius Ray Radius, ‘Width’ of rays (especially useful when raycasting against vertices or edges) — float in [0, inf], (optional)
		@param islands_precision Islands Precision, Factor controlling precision of islands handling (the higher, the better the results) — float in [0, 10], (optional)
		@param layers_select_src Source Layers Selection, Which layers to transfer, in case of multi-layers typesACTIVE Active Layer, Only transfer active data layer.ALL All Layers, Transfer all data layers.BONE_SELECT Selected Pose Bones, Transfer all vertex groups used by selected pose bones.BONE_DEFORM Deform Pose Bones, Transfer all vertex groups used by deform bones. — enum in ['ACTIVE', 'ALL', 'BONE_SELECT', 'BONE_DEFORM'], (optional)
		@param layers_select_dst Destination Layers Matching, How to match source and destination layersACTIVE Active Layer, Affect active data layer of all targets.NAME By Name, Match target data layers to affect by name.INDEX By Order, Match target data layers to affect by order (indices). — enum in ['ACTIVE', 'NAME', 'INDEX'], (optional)
		@param mix_mode Mix Mode, How to affect destination elements with source valuesREPLACE Replace, Overwrite all elements’ data.ABOVE_THRESHOLD Above Threshold, Only replace destination elements where data is above given threshold (exact behavior depends on data type).BELOW_THRESHOLD Below Threshold, Only replace destination elements where data is below given threshold (exact behavior depends on data type).MIX Mix, Mix source value into destination one, using given threshold as factor.ADD Add, Add source value to destination one, using given threshold as factor.SUB Subtract, Subtract source value to destination one, using given threshold as factor.MUL Multiply, Multiply source value to destination one, using given threshold as factor. — enum in ['REPLACE', 'ABOVE_THRESHOLD', 'BELOW_THRESHOLD', 'MIX', 'ADD', 'SUB', 'MUL'], (optional)
		@param mix_factor Mix Factor, Factor to use when applying data to destination (exact behavior depends on mix mode) — float in [0, 1], (optional)
	**/
	static function data_transfer(use_reverse_transfer:Bool, use_freeze:Bool, data_type:bpy.ops.object.Object.Enum15, use_create:Bool, vert_mapping:bpy.ops.object.Object.Enum16, edge_mapping:bpy.ops.object.Object.Enum17, loop_mapping:bpy.ops.object.Object.Enum18, poly_mapping:bpy.ops.object.Object.Enum19, use_auto_transform:Bool, use_object_transform:Bool, use_max_distance:Bool, max_distance:Float, ray_radius:Float, islands_precision:Float, layers_select_src:bpy.ops.object.Object.Enum20, layers_select_dst:bpy.ops.object.Object.Enum21, mix_mode:bpy.ops.object.Object.Enum22, mix_factor:Float):Void;
	/**
		Transfer layout of data layer(s) from active to selected meshes
		@param modifier Modifier, Name of the modifier to edit — string, (optional, never None)
		@param data_type Data Type, Which data to transferVGROUP_WEIGHTS Vertex Group(s), Transfer active or all vertex groups.BEVEL_WEIGHT_VERT Bevel Weight, Transfer bevel weights.SHARP_EDGE Sharp, Transfer sharp mark.SEAM UV Seam, Transfer UV seam mark.CREASE Subsurf Crease, Transfer crease values.BEVEL_WEIGHT_EDGE Bevel Weight, Transfer bevel weights.FREESTYLE_EDGE Freestyle Mark, Transfer Freestyle edge mark.CUSTOM_NORMAL Custom Normals, Transfer custom normals.VCOL VCol, Vertex (face corners) colors.UV UVs, Transfer UV layers.SMOOTH Smooth, Transfer flat/smooth mark.FREESTYLE_FACE Freestyle Mark, Transfer Freestyle face mark. — enum in ['VGROUP_WEIGHTS', 'BEVEL_WEIGHT_VERT', 'SHARP_EDGE', 'SEAM', 'CREASE', 'BEVEL_WEIGHT_EDGE', 'FREESTYLE_EDGE', 'CUSTOM_NORMAL', 'VCOL', 'UV', 'SMOOTH', 'FREESTYLE_FACE'], (optional)
		@param use_delete Exact Match, Also delete some data layers from destination if necessary, so that it matches exactly source — boolean, (optional)
		@param layers_select_src Source Layers Selection, Which layers to transfer, in case of multi-layers typesACTIVE Active Layer, Only transfer active data layer.ALL All Layers, Transfer all data layers.BONE_SELECT Selected Pose Bones, Transfer all vertex groups used by selected pose bones.BONE_DEFORM Deform Pose Bones, Transfer all vertex groups used by deform bones. — enum in ['ACTIVE', 'ALL', 'BONE_SELECT', 'BONE_DEFORM'], (optional)
		@param layers_select_dst Destination Layers Matching, How to match source and destination layersACTIVE Active Layer, Affect active data layer of all targets.NAME By Name, Match target data layers to affect by name.INDEX By Order, Match target data layers to affect by order (indices). — enum in ['ACTIVE', 'NAME', 'INDEX'], (optional)
	**/
	static function datalayout_transfer(modifier:String, data_type:bpy.ops.object.Object.Enum23, use_delete:Bool, layers_select_src:bpy.ops.object.Object.Enum24, layers_select_dst:bpy.ops.object.Object.Enum25):Void;
	/**
		Delete selected objects
		@param use_global Delete Globally, Remove object from all scenes — boolean, (optional)
		@param confirm Confirm, Prompt for confirmation — boolean, (optional)
	**/
	static function delete(use_global:Bool, confirm:Bool):Void;
	/**
		Add an empty image type to scene with data
		@param filepath Filepath, Path to image file — string, (optional, never None)
		@param relative_path Relative Path, Select the file relative to the blend file — boolean, (optional)
		@param name Name, Image name to assign — string, (optional, never None)
		@param view_align Align to View, Align the new object to the view — boolean, (optional)
		@param location Location, Location for the newly added object — float array of 3 items in [-inf, inf], (optional)
		@param rotation Rotation, Rotation for the newly added object — float array of 3 items in [-inf, inf], (optional)
	**/
	static function drop_named_image(filepath:String, relative_path:Bool, name:String, view_align:Bool, location:Array<Float>, rotation:Array<Float>):Void;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
		@param name Name, Material name to assign — string, (optional, never None)
	**/
	static function drop_named_material(name:String):Void;
	/**
		Duplicate selected objects
		@param linked Linked, Duplicate object but not object data, linking to the original data — boolean, (optional)
		@param mode Mode — enum in ['INIT', 'DUMMY', 'TRANSLATION', 'ROTATION', 'RESIZE', 'SKIN_RESIZE', 'TOSPHERE', 'SHEAR', 'BEND', 'SHRINKFATTEN', 'TILT', 'TRACKBALL', 'PUSHPULL', 'CREASE', 'MIRROR', 'BONE_SIZE', 'BONE_ENVELOPE', 'BONE_ENVELOPE_DIST', 'CURVE_SHRINKFATTEN', 'MASK_SHRINKFATTEN', 'GPENCIL_SHRINKFATTEN', 'BONE_ROLL', 'TIME_TRANSLATE', 'TIME_SLIDE', 'TIME_SCALE', 'TIME_EXTEND', 'BAKE_TIME', 'BWEIGHT', 'ALIGN', 'EDGESLIDE', 'SEQSLIDE'], (optional)
	**/
	static function duplicate(linked:Bool, mode:bpy.ops.object.Object.Enum26):Void;
	/**
		Duplicate selected objects and move them
		@param OBJECT_OT_duplicate Duplicate Objects, Duplicate selected objects — OBJECT_OT_duplicate, (optional)
		@param TRANSFORM_OT_translate Move, Move selected items — TRANSFORM_OT_translate, (optional)
	**/
	static function duplicate_move(OBJECT_OT_duplicate:Dynamic, TRANSFORM_OT_translate:Dynamic):Void;
	/**
		Duplicate selected objects and move them
		@param OBJECT_OT_duplicate Duplicate Objects, Duplicate selected objects — OBJECT_OT_duplicate, (optional)
		@param TRANSFORM_OT_translate Move, Move selected items — TRANSFORM_OT_translate, (optional)
	**/
	static function duplicate_move_linked(OBJECT_OT_duplicate:Dynamic, TRANSFORM_OT_translate:Dynamic):Void;
	/**
		Make dupli objects attached to this object real
		@param use_base_parent Parent, Parent newly created objects to the original duplicator — boolean, (optional)
		@param use_hierarchy Keep Hierarchy, Maintain parent child relationships — boolean, (optional)
	**/
	static function duplicates_make_real(use_base_parent:Bool, use_hierarchy:Bool):Void;
	/**
		Toggle object’s editmode
	**/
	static function editmode_toggle():Void;
	/**
		Add an empty object with a physics effector to the scene
		@param type Type — enum in ['FORCE', 'WIND', 'VORTEX', 'MAGNET', 'HARMONIC', 'CHARGE', 'LENNARDJ', 'TEXTURE', 'GUIDE', 'BOID', 'TURBULENCE', 'DRAG', 'SMOKE'], (optional)
		@param radius Radius — float in [0, inf], (optional)
		@param view_align Align to View, Align the new object to the view — boolean, (optional)
		@param enter_editmode Enter Editmode, Enter editmode when adding this object — boolean, (optional)
		@param location Location, Location for the newly added object — float array of 3 items in [-inf, inf], (optional)
		@param rotation Rotation, Rotation for the newly added object — float array of 3 items in [-inf, inf], (optional)
	**/
	static function effector_add(type:bpy.ops.object.Object.Enum27, radius:Float, view_align:Bool, enter_editmode:Bool, location:Array<Float>, rotation:Array<Float>):Void;
	/**
		Add an empty object to the scene
		@param type Type — enum in ['PLAIN_AXES', 'ARROWS', 'SINGLE_ARROW', 'CIRCLE', 'CUBE', 'SPHERE', 'CONE', 'IMAGE'], (optional)
		@param radius Radius — float in [0, inf], (optional)
		@param view_align Align to View, Align the new object to the view — boolean, (optional)
		@param location Location, Location for the newly added object — float array of 3 items in [-inf, inf], (optional)
		@param rotation Rotation, Rotation for the newly added object — float array of 3 items in [-inf, inf], (optional)
	**/
	static function empty_add(type:bpy.ops.object.Object.Enum28, radius:Float, view_align:Bool, location:Array<Float>, rotation:Array<Float>):Void;
	/**
		Refresh data in the Explode modifier
		@param modifier Modifier, Name of the modifier to edit — string, (optional, never None)
	**/
	static function explode_refresh(modifier:String):Void;
	/**
		Add a new face map to the active object
	**/
	static function face_map_add():Void;
	/**
		Assign faces to a face map
	**/
	static function face_map_assign():Void;
	/**
		Deselect faces belonging to a face map
	**/
	static function face_map_deselect():Void;
	/**
		Move the active face map up/down in the list
		@param direction Direction, Direction to move, UP or DOWN — enum in ['UP', 'DOWN'], (optional)
	**/
	static function face_map_move(direction:bpy.ops.object.Object.Enum29):Void;
	/**
		Remove a face map from the active object
	**/
	static function face_map_remove():Void;
	/**
		Remove faces from a face map
	**/
	static function face_map_remove_from():Void;
	/**
		Select faces belonging to a face map
	**/
	static function face_map_select():Void;
	/**
		Toggle object’s force field
	**/
	static function forcefield_toggle():Void;
	/**
		Add a Grease Pencil object to the scene
		@param radius Radius — float in [0, inf], (optional)
		@param view_align Align to View, Align the new object to the view — boolean, (optional)
		@param location Location, Location for the newly added object — float array of 3 items in [-inf, inf], (optional)
		@param rotation Rotation, Rotation for the newly added object — float array of 3 items in [-inf, inf], (optional)
		@param type TypeEMPTY Blank, Create an empty grease pencil object.STROKE Stroke, Create a simple stroke with basic colors.MONKEY Monkey, Construct a Suzanne grease pencil object. — enum in ['EMPTY', 'STROKE', 'MONKEY'], (optional)
	**/
	static function gpencil_add(radius:Float, view_align:Bool, location:Array<Float>, rotation:Array<Float>, type:bpy.ops.object.Object.Enum30):Void;
	/**
		Add a procedural operation/effect to the active grease pencil object
		@param type TypeDATA_TRANSFER Data Transfer.MESH_CACHE Mesh Cache.MESH_SEQUENCE_CACHE Mesh Sequence Cache.NORMAL_EDIT Normal Edit.WEIGHTED_NORMAL Weighted Normal.UV_PROJECT UV Project.UV_WARP UV Warp.VERTEX_WEIGHT_EDIT Vertex Weight Edit.VERTEX_WEIGHT_MIX Vertex Weight Mix.VERTEX_WEIGHT_PROXIMITY Vertex Weight Proximity.ARRAY Array.BEVEL Bevel.BOOLEAN Boolean.BUILD Build.DECIMATE Decimate.EDGE_SPLIT Edge Split.MASK Mask.MIRROR Mirror.MULTIRES Multiresolution.REMESH Remesh.SCREW Screw.SKIN Skin.SOLIDIFY Solidify.SUBSURF Subdivision Surface.TRIANGULATE Triangulate.WIREFRAME Wireframe, Generate a wireframe on the edges of a mesh.ARMATURE Armature.CAST Cast.CURVE Curve.DISPLACE Displace.HOOK Hook.LAPLACIANDEFORM Laplacian Deform.LATTICE Lattice.MESH_DEFORM Mesh Deform.SHRINKWRAP Shrinkwrap.SIMPLE_DEFORM Simple Deform.SMOOTH Smooth.CORRECTIVE_SMOOTH Smooth Corrective.LAPLACIANSMOOTH Smooth Laplacian.SURFACE_DEFORM Surface Deform.WARP Warp.WAVE Wave.CLOTH Cloth.COLLISION Collision.DYNAMIC_PAINT Dynamic Paint.EXPLODE Explode.FLUID_SIMULATION Fluid Simulation.OCEAN Ocean.PARTICLE_INSTANCE Particle Instance.PARTICLE_SYSTEM Particle System.SMOKE Smoke.SOFT_BODY Soft Body.SURFACE Surface. — enum in ['DATA_TRANSFER', 'MESH_CACHE', 'MESH_SEQUENCE_CACHE', 'NORMAL_EDIT', 'WEIGHTED_NORMAL', 'UV_PROJECT', 'UV_WARP', 'VERTEX_WEIGHT_EDIT', 'VERTEX_WEIGHT_MIX', 'VERTEX_WEIGHT_PROXIMITY', 'ARRAY', 'BEVEL', 'BOOLEAN', 'BUILD', 'DECIMATE', 'EDGE_SPLIT', 'MASK', 'MIRROR', 'MULTIRES', 'REMESH', 'SCREW', 'SKIN', 'SOLIDIFY', 'SUBSURF', 'TRIANGULATE', 'WIREFRAME', 'ARMATURE', 'CAST', 'CURVE', 'DISPLACE', 'HOOK', 'LAPLACIANDEFORM', 'LATTICE', 'MESH_DEFORM', 'SHRINKWRAP', 'SIMPLE_DEFORM', 'SMOOTH', 'CORRECTIVE_SMOOTH', 'LAPLACIANSMOOTH', 'SURFACE_DEFORM', 'WARP', 'WAVE', 'CLOTH', 'COLLISION', 'DYNAMIC_PAINT', 'EXPLODE', 'FLUID_SIMULATION', 'OCEAN', 'PARTICLE_INSTANCE', 'PARTICLE_SYSTEM', 'SMOKE', 'SOFT_BODY', 'SURFACE'], (optional)
	**/
	static function gpencil_modifier_add(type:bpy.ops.object.Object.Enum31):Void;
	/**
		Apply modifier and remove from the stack
		@param apply_as Apply as, How to apply the modifier to the geometryDATA Object Data, Apply modifier to the object’s data.SHAPE New Shape, Apply deform-only modifier to a new shape on this object. — enum in ['DATA', 'SHAPE'], (optional)
		@param modifier Modifier, Name of the modifier to edit — string, (optional, never None)
	**/
	static function gpencil_modifier_apply(apply_as:bpy.ops.object.Object.Enum32, modifier:String):Void;
	/**
		Duplicate modifier at the same position in the stack
		@param modifier Modifier, Name of the modifier to edit — string, (optional, never None)
	**/
	static function gpencil_modifier_copy(modifier:String):Void;
	/**
		Move modifier down in the stack
		@param modifier Modifier, Name of the modifier to edit — string, (optional, never None)
	**/
	static function gpencil_modifier_move_down(modifier:String):Void;
	/**
		Move modifier up in the stack
		@param modifier Modifier, Name of the modifier to edit — string, (optional, never None)
	**/
	static function gpencil_modifier_move_up(modifier:String):Void;
	/**
		Remove a modifier from the active grease pencil object
		@param modifier Modifier, Name of the modifier to edit — string, (optional, never None)
	**/
	static function gpencil_modifier_remove(modifier:String):Void;
	/**
		Show only objects in collection (Shift to extend)
		@param collection_index Collection Index, Index of the collection to change visibility — int in [-1, inf], (optional)
		@param toggle Toggle, Toggle visibility — boolean, (optional)
	**/
	static function hide_collection(collection_index:Int, toggle:Bool):Void;
	/**
		Reveal all render objects by setting the hide render flag
	**/
	static function hide_render_clear_all():Void;
	/**
		Reveal temporarily hidden objects
		@param select Select — boolean, (optional)
	**/
	static function hide_view_clear(select:Bool):Void;
	/**
		Temporarily hide objects from the viewport
		@param unselected Unselected, Hide unselected rather than selected objects — boolean, (optional)
	**/
	static function hide_view_set(unselected:Bool):Void;
	/**
		Hook selected vertices to a newly created object
	**/
	static function hook_add_newob():Void;
	/**
		Hook selected vertices to the first selected object
		@param use_bone Active Bone, Assign the hook to the hook objects active bone — boolean, (optional)
	**/
	static function hook_add_selob(use_bone:Bool):Void;
	/**
		Assign the selected vertices to a hook
		@param modifier Modifier, Modifier number to assign to — enum in [], (optional)
	**/
	static function hook_assign(modifier:bpy.ops.object.Object.Enum33):Void;
	/**
		Set hook center to cursor position
		@param modifier Modifier, Modifier number to assign to — enum in [], (optional)
	**/
	static function hook_recenter(modifier:bpy.ops.object.Object.Enum34):Void;
	/**
		Remove a hook from the active object
		@param modifier Modifier, Modifier number to remove — enum in [], (optional)
	**/
	static function hook_remove(modifier:bpy.ops.object.Object.Enum35):Void;
	/**
		Recalculate and clear offset transformation
		@param modifier Modifier, Modifier number to assign to — enum in [], (optional)
	**/
	static function hook_reset(modifier:bpy.ops.object.Object.Enum36):Void;
	/**
		Select affected vertices on mesh
		@param modifier Modifier, Modifier number to remove — enum in [], (optional)
	**/
	static function hook_select(modifier:bpy.ops.object.Object.Enum37):Void;
	/**
		Set offset used for collection instances based on cursor position
	**/
	static function instance_offset_from_cursor():Void;
	/**
		Hide unselected render objects of same type as active by setting the hide render flag
	**/
	static function isolate_type_render():Void;
	/**
		Join selected objects into active object
	**/
	static function join():Void;
	/**
		Merge selected objects to shapes of active object
	**/
	static function join_shapes():Void;
	/**
		Transfer UV Maps from active to selected objects (needs matching geometry)
	**/
	static function join_uvs():Void;
	/**
		Bind mesh to system in laplacian deform modifier
		@param modifier Modifier, Name of the modifier to edit — string, (optional, never None)
	**/
	static function laplaciandeform_bind(modifier:String):Void;
	/**
		Add a light object to the scene
		@param type TypePOINT Point, Omnidirectional point light source.SUN Sun, Constant direction parallel ray light source.SPOT Spot, Directional cone light source.AREA Area, Directional area light source. — enum in ['POINT', 'SUN', 'SPOT', 'AREA'], (optional)
		@param radius Radius — float in [0, inf], (optional)
		@param view_align Align to View, Align the new object to the view — boolean, (optional)
		@param location Location, Location for the newly added object — float array of 3 items in [-inf, inf], (optional)
		@param rotation Rotation, Rotation for the newly added object — float array of 3 items in [-inf, inf], (optional)
	**/
	static function light_add(type:bpy.ops.object.Object.Enum38, radius:Float, view_align:Bool, location:Array<Float>, rotation:Array<Float>):Void;
	/**
		Add a light probe object
		@param type TypeCUBEMAP Reflection Cubemap, Reflection probe with spherical or cubic attenuation.PLANAR Reflection Plane, Planar reflection probe.GRID Irradiance Volume, Irradiance probe to capture diffuse indirect lighting. — enum in ['CUBEMAP', 'PLANAR', 'GRID'], (optional)
		@param radius Radius — float in [0, inf], (optional)
		@param view_align Align to View, Align the new object to the view — boolean, (optional)
		@param enter_editmode Enter Editmode, Enter editmode when adding this object — boolean, (optional)
		@param location Location, Location for the newly added object — float array of 3 items in [-inf, inf], (optional)
		@param rotation Rotation, Rotation for the newly added object — float array of 3 items in [-inf, inf], (optional)
	**/
	static function lightprobe_add(type:bpy.ops.object.Object.Enum39, radius:Float, view_align:Bool, enter_editmode:Bool, location:Array<Float>, rotation:Array<Float>):Void;
	/**
		Link objects to a collection
		@param collection_index Collection Index, Index of the collection to move to — int in [-1, inf], (optional)
		@param is_new New, Move objects to a new collection — boolean, (optional)
		@param new_collection_name Name, Name of the newly added collection — string, (optional, never None)
	**/
	static function link_to_collection(collection_index:Int, is_new:Bool, new_collection_name:String):Void;
	/**
		Add a reference image into the background behind objects
		@param filepath filepath — string, (optional, never None)
		@param filter_image filter_image — boolean, (optional)
		@param filter_folder filter_folder — boolean, (optional)
		@param view_align Align to view — boolean, (optional)
	**/
	static function load_background_image(filepath:String, filter_image:Bool, filter_folder:Bool, view_align:Bool):Void;
	/**
		Add a reference image into the scene between objects
		@param filepath filepath — string, (optional, never None)
		@param filter_image filter_image — boolean, (optional)
		@param filter_folder filter_folder — boolean, (optional)
		@param view_align Align to view — boolean, (optional)
	**/
	static function load_reference_image(filepath:String, filter_image:Bool, filter_folder:Bool, view_align:Bool):Void;
	/**
		Clear the object’s location
		@param clear_delta Clear Delta, Clear delta location in addition to clearing the normal location transform — boolean, (optional)
	**/
	static function location_clear(clear_delta:Bool):Void;
	/**
		Convert objects into dupli-face instanced
	**/
	static function make_dupli_face():Void;
	/**
		Apply active object links to other selected objects
		@param type Type — enum in ['OBDATA', 'MATERIAL', 'ANIMATION', 'GROUPS', 'DUPLICOLLECTION', 'MODIFIERS', 'FONTS'], (optional)
	**/
	static function make_links_data(type:bpy.ops.object.Object.Enum40):Void;
	/**
		Link selection to another scene
		@param scene Scene — enum in [], (optional)
	**/
	static function make_links_scene(scene:bpy.ops.object.Object.Enum41):Void;
	/**
		Make library linked data-blocks local to this file
		@param type Type — enum in ['SELECT_OBJECT', 'SELECT_OBDATA', 'SELECT_OBDATA_MATERIAL', 'ALL'], (optional)
	**/
	static function make_local(type:bpy.ops.object.Object.Enum42):Void;
	/**
		Make local override of this library linked data-block
		@param object Override Object, Name of lib-linked/collection object to make an override from — enum in ['DEFAULT'], (optional)
	**/
	static function make_override_static(object:bpy.ops.object.Object.Enum43):Void;
	/**
		Make linked data local to each object
		@param type Type — enum in ['SELECTED_OBJECTS', 'ALL'], (optional)
		@param object Object, Make single user objects — boolean, (optional)
		@param obdata Object Data, Make single user object data — boolean, (optional)
		@param material Materials, Make materials local to each data-block — boolean, (optional)
		@param animation Object Animation, Make animation data local to each object — boolean, (optional)
	**/
	static function make_single_user(type:bpy.ops.object.Object.Enum44, object:Bool, obdata:Bool, material:Bool, animation:Bool):Void;
	/**
		Add a new material slot
	**/
	static function material_slot_add():Void;
	/**
		Assign active material slot to selection
	**/
	static function material_slot_assign():Void;
	/**
		Copy material to selected objects
	**/
	static function material_slot_copy():Void;
	/**
		Deselect by active material slot
	**/
	static function material_slot_deselect():Void;
	/**
		Move the active material up/down in the list
		@param direction Direction, Direction to move the active material towards — enum in ['UP', 'DOWN'], (optional)
	**/
	static function material_slot_move(direction:bpy.ops.object.Object.Enum45):Void;
	/**
		Remove the selected material slot
	**/
	static function material_slot_remove():Void;
	/**
		Select by active material slot
	**/
	static function material_slot_select():Void;
	/**
		Bind mesh to cage in mesh deform modifier
		@param modifier Modifier, Name of the modifier to edit — string, (optional, never None)
	**/
	static function meshdeform_bind(modifier:String):Void;
	/**
		Add an metaball object to the scene
		@param type Primitive — enum in ['BALL', 'CAPSULE', 'PLANE', 'ELLIPSOID', 'CUBE'], (optional)
		@param radius Radius — float in [0, inf], (optional)
		@param view_align Align to View, Align the new object to the view — boolean, (optional)
		@param enter_editmode Enter Editmode, Enter editmode when adding this object — boolean, (optional)
		@param location Location, Location for the newly added object — float array of 3 items in [-inf, inf], (optional)
		@param rotation Rotation, Rotation for the newly added object — float array of 3 items in [-inf, inf], (optional)
	**/
	static function metaball_add(type:bpy.ops.object.Object.Enum46, radius:Float, view_align:Bool, enter_editmode:Bool, location:Array<Float>, rotation:Array<Float>):Void;
	/**
		Sets the object interaction mode
		@param mode ModeOBJECT Object Mode.EDIT Edit Mode.POSE Pose Mode.SCULPT Sculpt Mode.VERTEX_PAINT Vertex Paint.WEIGHT_PAINT Weight Paint.TEXTURE_PAINT Texture Paint.PARTICLE_EDIT Particle Edit.GPENCIL_EDIT Edit Mode, Edit Grease Pencil Strokes.GPENCIL_SCULPT Sculpt Mode, Sculpt Grease Pencil Strokes.GPENCIL_PAINT Draw, Paint Grease Pencil Strokes.GPENCIL_WEIGHT Weight Paint, Grease Pencil Weight Paint Strokes. — enum in ['OBJECT', 'EDIT', 'POSE', 'SCULPT', 'VERTEX_PAINT', 'WEIGHT_PAINT', 'TEXTURE_PAINT', 'PARTICLE_EDIT', 'GPENCIL_EDIT', 'GPENCIL_SCULPT', 'GPENCIL_PAINT', 'GPENCIL_WEIGHT'], (optional)
		@param toggle Toggle — boolean, (optional)
	**/
	static function mode_set(mode:bpy.ops.object.Object.Enum47, toggle:Bool):Void;
	/**
		Sets the object interaction mode
		@param mode ModeOBJECT Object Mode.EDIT Edit Mode.POSE Pose Mode.SCULPT Sculpt Mode.VERTEX_PAINT Vertex Paint.WEIGHT_PAINT Weight Paint.TEXTURE_PAINT Texture Paint.PARTICLE_EDIT Particle Edit.GPENCIL_EDIT Edit Mode, Edit Grease Pencil Strokes.GPENCIL_SCULPT Sculpt Mode, Sculpt Grease Pencil Strokes.GPENCIL_PAINT Draw, Paint Grease Pencil Strokes.GPENCIL_WEIGHT Weight Paint, Grease Pencil Weight Paint Strokes. — enum in ['OBJECT', 'EDIT', 'POSE', 'SCULPT', 'VERTEX_PAINT', 'WEIGHT_PAINT', 'TEXTURE_PAINT', 'PARTICLE_EDIT', 'GPENCIL_EDIT', 'GPENCIL_SCULPT', 'GPENCIL_PAINT', 'GPENCIL_WEIGHT'], (optional)
		@param toggle Toggle — boolean, (optional)
	**/
	static function mode_set_or_submode(mode:bpy.ops.object.Object.Enum48, toggle:Bool):Void;
	/**
		Add a procedural operation/effect to the active object
		@param type TypeDATA_TRANSFER Data Transfer.MESH_CACHE Mesh Cache.MESH_SEQUENCE_CACHE Mesh Sequence Cache.NORMAL_EDIT Normal Edit.WEIGHTED_NORMAL Weighted Normal.UV_PROJECT UV Project.UV_WARP UV Warp.VERTEX_WEIGHT_EDIT Vertex Weight Edit.VERTEX_WEIGHT_MIX Vertex Weight Mix.VERTEX_WEIGHT_PROXIMITY Vertex Weight Proximity.ARRAY Array.BEVEL Bevel.BOOLEAN Boolean.BUILD Build.DECIMATE Decimate.EDGE_SPLIT Edge Split.MASK Mask.MIRROR Mirror.MULTIRES Multiresolution.REMESH Remesh.SCREW Screw.SKIN Skin.SOLIDIFY Solidify.SUBSURF Subdivision Surface.TRIANGULATE Triangulate.WIREFRAME Wireframe, Generate a wireframe on the edges of a mesh.ARMATURE Armature.CAST Cast.CURVE Curve.DISPLACE Displace.HOOK Hook.LAPLACIANDEFORM Laplacian Deform.LATTICE Lattice.MESH_DEFORM Mesh Deform.SHRINKWRAP Shrinkwrap.SIMPLE_DEFORM Simple Deform.SMOOTH Smooth.CORRECTIVE_SMOOTH Smooth Corrective.LAPLACIANSMOOTH Smooth Laplacian.SURFACE_DEFORM Surface Deform.WARP Warp.WAVE Wave.CLOTH Cloth.COLLISION Collision.DYNAMIC_PAINT Dynamic Paint.EXPLODE Explode.FLUID_SIMULATION Fluid Simulation.OCEAN Ocean.PARTICLE_INSTANCE Particle Instance.PARTICLE_SYSTEM Particle System.SMOKE Smoke.SOFT_BODY Soft Body.SURFACE Surface. — enum in ['DATA_TRANSFER', 'MESH_CACHE', 'MESH_SEQUENCE_CACHE', 'NORMAL_EDIT', 'WEIGHTED_NORMAL', 'UV_PROJECT', 'UV_WARP', 'VERTEX_WEIGHT_EDIT', 'VERTEX_WEIGHT_MIX', 'VERTEX_WEIGHT_PROXIMITY', 'ARRAY', 'BEVEL', 'BOOLEAN', 'BUILD', 'DECIMATE', 'EDGE_SPLIT', 'MASK', 'MIRROR', 'MULTIRES', 'REMESH', 'SCREW', 'SKIN', 'SOLIDIFY', 'SUBSURF', 'TRIANGULATE', 'WIREFRAME', 'ARMATURE', 'CAST', 'CURVE', 'DISPLACE', 'HOOK', 'LAPLACIANDEFORM', 'LATTICE', 'MESH_DEFORM', 'SHRINKWRAP', 'SIMPLE_DEFORM', 'SMOOTH', 'CORRECTIVE_SMOOTH', 'LAPLACIANSMOOTH', 'SURFACE_DEFORM', 'WARP', 'WAVE', 'CLOTH', 'COLLISION', 'DYNAMIC_PAINT', 'EXPLODE', 'FLUID_SIMULATION', 'OCEAN', 'PARTICLE_INSTANCE', 'PARTICLE_SYSTEM', 'SMOKE', 'SOFT_BODY', 'SURFACE'], (optional)
	**/
	static function modifier_add(type:bpy.ops.object.Object.Enum49):Void;
	/**
		Apply modifier and remove from the stack
		@param apply_as Apply as, How to apply the modifier to the geometryDATA Object Data, Apply modifier to the object’s data.SHAPE New Shape, Apply deform-only modifier to a new shape on this object. — enum in ['DATA', 'SHAPE'], (optional)
		@param modifier Modifier, Name of the modifier to edit — string, (optional, never None)
	**/
	static function modifier_apply(apply_as:bpy.ops.object.Object.Enum50, modifier:String):Void;
	/**
		Convert particles to a mesh object
		@param modifier Modifier, Name of the modifier to edit — string, (optional, never None)
	**/
	static function modifier_convert(modifier:String):Void;
	/**
		Duplicate modifier at the same position in the stack
		@param modifier Modifier, Name of the modifier to edit — string, (optional, never None)
	**/
	static function modifier_copy(modifier:String):Void;
	/**
		Move modifier down in the stack
		@param modifier Modifier, Name of the modifier to edit — string, (optional, never None)
	**/
	static function modifier_move_down(modifier:String):Void;
	/**
		Move modifier up in the stack
		@param modifier Modifier, Name of the modifier to edit — string, (optional, never None)
	**/
	static function modifier_move_up(modifier:String):Void;
	/**
		Remove a modifier from the active object
		@param modifier Modifier, Name of the modifier to edit — string, (optional, never None)
	**/
	static function modifier_remove(modifier:String):Void;
	/**
		Move objects to a scene collection
		@param collection_index Collection Index, Index of the collection to move to — int in [-1, inf], (optional)
		@param is_new New, Move objects to a new collection — boolean, (optional)
		@param new_collection_name Name, Name of the newly added collection — string, (optional, never None)
	**/
	static function move_to_collection(collection_index:Int, is_new:Bool, new_collection_name:String):Void;
	/**
		Modify the base mesh to conform to the displaced mesh
		@param modifier Modifier, Name of the modifier to edit — string, (optional, never None)
	**/
	static function multires_base_apply(modifier:String):Void;
	/**
		Pack displacements from an external file
	**/
	static function multires_external_pack():Void;
	/**
		Save displacements to an external file
		@param filepath File Path, Path to file — string, (optional, never None)
		@param check_existing Check Existing, Check and warn on overwriting existing files — boolean, (optional)
		@param filter_blender Filter .blend files — boolean, (optional)
		@param filter_backup Filter .blend files — boolean, (optional)
		@param filter_image Filter image files — boolean, (optional)
		@param filter_movie Filter movie files — boolean, (optional)
		@param filter_python Filter python files — boolean, (optional)
		@param filter_font Filter font files — boolean, (optional)
		@param filter_sound Filter sound files — boolean, (optional)
		@param filter_text Filter text files — boolean, (optional)
		@param filter_btx Filter btx files — boolean, (optional)
		@param filter_collada Filter COLLADA files — boolean, (optional)
		@param filter_alembic Filter Alembic files — boolean, (optional)
		@param filter_folder Filter folders — boolean, (optional)
		@param filter_blenlib Filter Blender IDs — boolean, (optional)
		@param filemode File Browser Mode, The setting for the file browser mode to load a .blend file, a library or a special file — int in [1, 9], (optional)
		@param relative_path Relative Path, Select the file relative to the blend file — boolean, (optional)
		@param display_type Display TypeDEFAULT Default, Automatically determine display type for files.LIST_SHORT Short List, Display files as short list.LIST_LONG Long List, Display files as a detailed list.THUMBNAIL Thumbnails, Display files as thumbnails. — enum in ['DEFAULT', 'LIST_SHORT', 'LIST_LONG', 'THUMBNAIL'], (optional)
		@param sort_method File sorting modeFILE_SORT_ALPHA Sort alphabetically, Sort the file list alphabetically.FILE_SORT_EXTENSION Sort by extension, Sort the file list by extension/type.FILE_SORT_TIME Sort by time, Sort files by modification time.FILE_SORT_SIZE Sort by size, Sort files by size. — enum in ['FILE_SORT_ALPHA', 'FILE_SORT_EXTENSION', 'FILE_SORT_TIME', 'FILE_SORT_SIZE'], (optional)
		@param modifier Modifier, Name of the modifier to edit — string, (optional, never None)
	**/
	static function multires_external_save(filepath:String, check_existing:Bool, filter_blender:Bool, filter_backup:Bool, filter_image:Bool, filter_movie:Bool, filter_python:Bool, filter_font:Bool, filter_sound:Bool, filter_text:Bool, filter_btx:Bool, filter_collada:Bool, filter_alembic:Bool, filter_folder:Bool, filter_blenlib:Bool, filemode:Int, relative_path:Bool, display_type:bpy.ops.object.Object.Enum51, sort_method:bpy.ops.object.Object.Enum52, modifier:String):Void;
	/**
		Deletes the higher resolution mesh, potential loss of detail
		@param modifier Modifier, Name of the modifier to edit — string, (optional, never None)
	**/
	static function multires_higher_levels_delete(modifier:String):Void;
	/**
		Copy vertex coordinates from other object
		@param modifier Modifier, Name of the modifier to edit — string, (optional, never None)
	**/
	static function multires_reshape(modifier:String):Void;
	/**
		Add a new level of subdivision
		@param modifier Modifier, Name of the modifier to edit — string, (optional, never None)
	**/
	static function multires_subdivide(modifier:String):Void;
	/**
		Bake an image sequence of ocean data
		@param modifier Modifier, Name of the modifier to edit — string, (optional, never None)
		@param free Free, Free the bake, rather than generating it — boolean, (optional)
	**/
	static function ocean_bake(modifier:String, free:Bool):Void;
	/**
		Clear the object’s origin
	**/
	static function origin_clear():Void;
	/**
		Set the object’s origin, by either moving the data, or set to center of data, or use 3D cursor
		@param type TypeGEOMETRY_ORIGIN Geometry to Origin, Move object geometry to object origin.ORIGIN_GEOMETRY Origin to Geometry, Calculate the center of geometry based on the current pivot point (median, otherwise bounding-box).ORIGIN_CURSOR Origin to 3D Cursor, Move object origin to position of the 3D cursor.ORIGIN_CENTER_OF_MASS Origin to Center of Mass (Surface), Calculate the center of mass from the surface area.ORIGIN_CENTER_OF_VOLUME Origin to Center of Mass (Volume), Calculate the center of mass from the volume (must be manifold geometry with consistent normals). — enum in ['GEOMETRY_ORIGIN', 'ORIGIN_GEOMETRY', 'ORIGIN_CURSOR', 'ORIGIN_CENTER_OF_MASS', 'ORIGIN_CENTER_OF_VOLUME'], (optional)
		@param center Center — enum in ['MEDIAN', 'BOUNDS'], (optional)
	**/
	static function origin_set(type:bpy.ops.object.Object.Enum53, center:bpy.ops.object.Object.Enum54):Void;
	/**
		Clear the object’s parenting
		@param type TypeCLEAR Clear Parent, Completely clear the parenting relationship, including involved modifiers if any.CLEAR_KEEP_TRANSFORM Clear and Keep Transformation, As ‘Clear Parent’, but keep the current visual transformations of the object.CLEAR_INVERSE Clear Parent Inverse, Reset the transform corrections applied to the parenting relationship, does not remove parenting itself. — enum in ['CLEAR', 'CLEAR_KEEP_TRANSFORM', 'CLEAR_INVERSE'], (optional)
	**/
	static function parent_clear(type:bpy.ops.object.Object.Enum55):Void;
	/**
		Set the object’s parenting without setting the inverse parent correction
	**/
	static function parent_no_inverse_set():Void;
	/**
		Set the object’s parenting
		@param type Type — enum in ['OBJECT', 'ARMATURE', 'ARMATURE_NAME', 'ARMATURE_AUTO', 'ARMATURE_ENVELOPE', 'BONE', 'BONE_RELATIVE', 'CURVE', 'FOLLOW', 'PATH_CONST', 'LATTICE', 'VERTEX', 'VERTEX_TRI'], (optional)
		@param xmirror X Mirror, Apply weights symmetrically along X axis, for Envelope/Automatic vertex groups creation — boolean, (optional)
		@param keep_transform Keep Transform, Apply transformation before parenting — boolean, (optional)
	**/
	static function parent_set(type:bpy.ops.object.Object.Enum56, xmirror:Bool, keep_transform:Bool):Void;
	/**
		Add a particle system
	**/
	static function particle_system_add():Void;
	/**
		Remove the selected particle system
	**/
	static function particle_system_remove():Void;
	/**
		Calculate motion paths for the selected objects
		@param start_frame Start, First frame to calculate object paths on — int in [-1048574, 1048574], (optional)
		@param end_frame End, Last frame to calculate object paths on — int in [-1048574, 1048574], (optional)
	**/
	static function paths_calculate(start_frame:Int, end_frame:Int):Void;
	/**
		Clear path caches for all objects, hold Shift key for selected objects only
		@param only_selected Only Selected, Only clear paths from selected objects — boolean, (optional)
	**/
	static function paths_clear(only_selected:Bool):Void;
	/**
		Update frame range for motion paths from the Scene’s current frame range
	**/
	static function paths_range_update():Void;
	/**
		Recalculate paths for selected objects
	**/
	static function paths_update():Void;
	/**
		Enable or disable posing/selecting bones
	**/
	static function posemode_toggle():Void;
	/**
		Add empty object to become local replacement data of a library-linked object
		@param object Proxy Object, Name of lib-linked/collection object to make a proxy for — enum in ['DEFAULT'], (optional)
	**/
	static function proxy_make(object:bpy.ops.object.Object.Enum57):Void;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
		@param style Explode Style — enum in ['EXPLODE', 'BLEND'], (optional)
		@param amount Amount of pieces — int in [2, 10000], (optional)
		@param frame_duration Duration — int in [1, 300000], (optional)
		@param frame_start Start Frame — int in [1, 300000], (optional)
		@param frame_end End Frame — int in [1, 300000], (optional)
		@param velocity Outwards Velocity — float in [0, 300000], (optional)
		@param fade Fade, Fade the pieces over time — boolean, (optional)
	**/
	static function quick_explode(style:bpy.ops.object.Object.Enum58, amount:Int, frame_duration:Int, frame_start:Int, frame_end:Int, velocity:Float, fade:Bool):Void;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
		@param style Fluid Style — enum in ['INFLOW', 'BASIC'], (optional)
		@param initial_velocity Initial Velocity, Initial velocity of the fluid — float array of 3 items in [-100, 100], (optional)
		@param show_flows Render Fluid Objects, Keep the fluid objects visible during rendering — boolean, (optional)
		@param start_baking Start Fluid Bake, Start baking the fluid immediately after creating the domain object — boolean, (optional)
	**/
	static function quick_fluid(style:bpy.ops.object.Object.Enum59, initial_velocity:Array<Float>, show_flows:Bool, start_baking:Bool):Void;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
		@param density Fur Density — enum in ['LIGHT', 'MEDIUM', 'HEAVY'], (optional)
		@param view_percentage View % — int in [1, 100], (optional)
		@param length Length — float in [0.001, 100], (optional)
	**/
	static function quick_fur(density:bpy.ops.object.Object.Enum60, view_percentage:Int, length:Float):Void;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
		@param style Smoke Style — enum in ['SMOKE', 'FIRE', 'BOTH'], (optional)
		@param show_flows Render Smoke Objects, Keep the smoke objects visible during rendering — boolean, (optional)
	**/
	static function quick_smoke(style:bpy.ops.object.Object.Enum61, show_flows:Bool):Void;
	/**
		Randomize objects loc/rot/scale
		@param random_seed Random Seed, Seed value for the random generator — int in [0, 10000], (optional)
		@param use_delta Transform Delta, Randomize delta transform values instead of regular transform — boolean, (optional)
		@param use_loc Randomize Location, Randomize the location values — boolean, (optional)
		@param loc Location, Maximum distance the objects can spread over each axis — float array of 3 items in [-100, 100], (optional)
		@param use_rot Randomize Rotation, Randomize the rotation values — boolean, (optional)
		@param rot Rotation, Maximum rotation over each axis — float array of 3 items in [-3.14159, 3.14159], (optional)
		@param use_scale Randomize Scale, Randomize the scale values — boolean, (optional)
		@param scale_even Scale Even, Use the same scale value for all axis — boolean, (optional)
		@param scale Scale, Maximum scale randomization over each axis — float array of 3 items in [-100, 100], (optional)
	**/
	static function randomize_transform(random_seed:Int, use_delta:Bool, use_loc:Bool, loc:Array<Float>, use_rot:Bool, rot:Array<Float>, use_scale:Bool, scale_even:Bool, scale:Array<Float>):Void;
	/**
		Clear the object’s rotation
		@param clear_delta Clear Delta, Clear delta rotation in addition to clearing the normal rotation transform — boolean, (optional)
	**/
	static function rotation_clear(clear_delta:Bool):Void;
	/**
		Clear the object’s scale
		@param clear_delta Clear Delta, Clear delta scale in addition to clearing the normal scale transform — boolean, (optional)
	**/
	static function scale_clear(clear_delta:Bool):Void;
	/**
		Change selection of all visible objects in scene
		@param action Action, Selection action to executeTOGGLE Toggle, Toggle selection for all elements.SELECT Select, Select all elements.DESELECT Deselect, Deselect all elements.INVERT Invert, Invert selection of all elements. — enum in ['TOGGLE', 'SELECT', 'DESELECT', 'INVERT'], (optional)
	**/
	static function select_all(action:bpy.ops.object.Object.Enum62):Void;
	/**
		Select all visible objects that are of a type
		@param extend Extend, Extend selection instead of deselecting everything first — boolean, (optional)
		@param type Type — enum in ['MESH', 'CURVE', 'SURFACE', 'META', 'FONT', 'ARMATURE', 'LATTICE', 'EMPTY', 'GPENCIL', 'CAMERA', 'LIGHT', 'SPEAKER', 'LIGHT_PROBE'], (optional)
	**/
	static function select_by_type(extend:Bool, type:bpy.ops.object.Object.Enum63):Void;
	/**
		Select the active camera
		@param extend Extend, Extend the selection — boolean, (optional)
	**/
	static function select_camera(extend:Bool):Void;
	/**
		Select all visible objects grouped by various properties
		@param extend Extend, Extend selection instead of deselecting everything first — boolean, (optional)
		@param type TypeCHILDREN_RECURSIVE Children.CHILDREN Immediate Children.PARENT Parent.SIBLINGS Siblings, Shared Parent.TYPE Type, Shared object type.COLLECTION Collection, Shared collection.HOOK Hook.PASS Pass, Render pass Index.COLOR Color, Object Color.KEYINGSET Keying Set, Objects included in active Keying Set.LIGHT_TYPE Light Type, Matching light types. — enum in ['CHILDREN_RECURSIVE', 'CHILDREN', 'PARENT', 'SIBLINGS', 'TYPE', 'COLLECTION', 'HOOK', 'PASS', 'COLOR', 'KEYINGSET', 'LIGHT_TYPE'], (optional)
	**/
	static function select_grouped(extend:Bool, type:bpy.ops.object.Object.Enum64):Void;
	/**
		Select object relative to the active object’s position in the hierarchy
		@param direction Direction, Direction to select in the hierarchy — enum in ['PARENT', 'CHILD'], (optional)
		@param extend Extend, Extend the existing selection — boolean, (optional)
	**/
	static function select_hierarchy(direction:bpy.ops.object.Object.Enum65, extend:Bool):Void;
	/**
		Deselect objects at the boundaries of parent/child relationships
	**/
	static function select_less():Void;
	/**
		Select all visible objects that are linked
		@param extend Extend, Extend selection instead of deselecting everything first — boolean, (optional)
		@param type Type — enum in ['OBDATA', 'MATERIAL', 'DUPGROUP', 'PARTICLE', 'LIBRARY', 'LIBRARY_OBDATA'], (optional)
	**/
	static function select_linked(extend:Bool, type:bpy.ops.object.Object.Enum66):Void;
	/**
		Select the Mirror objects of the selected object eg. L.sword -&gt; R.sword
		@param extend Extend, Extend selection instead of deselecting everything first — boolean, (optional)
	**/
	static function select_mirror(extend:Bool):Void;
	/**
		Select connected parent/child objects
	**/
	static function select_more():Void;
	/**
		Select objects matching a naming pattern
		@param pattern Pattern, Name filter using ‘*’, ‘?’ and ‘[abc]’ unix style wildcards — string, (optional, never None)
		@param case_sensitive Case Sensitive, Do a case sensitive compare — boolean, (optional)
		@param extend Extend, Extend the existing selection — boolean, (optional)
	**/
	static function select_pattern(pattern:String, case_sensitive:Bool, extend:Bool):Void;
	/**
		Set select on random visible objects
		@param percent Percent, Percentage of objects to select randomly — float in [0, 100], (optional)
		@param seed Random Seed, Seed for the random number generator — int in [0, inf], (optional)
		@param action Action, Selection action to executeSELECT Select, Select all elements.DESELECT Deselect, Deselect all elements. — enum in ['SELECT', 'DESELECT'], (optional)
	**/
	static function select_random(percent:Float, seed:Int, action:bpy.ops.object.Object.Enum67):Void;
	/**
		Select object in the same collection
		@param collection Collection, Name of the collection to select — string, (optional, never None)
	**/
	static function select_same_collection(collection:String):Void;
	/**
		Render and display faces uniform, using Face Normals
	**/
	static function shade_flat():Void;
	/**
		Render and display faces smooth, using interpolated Vertex Normals
	**/
	static function shade_smooth():Void;
	/**
		Add a visual effect to the active object
		@param type TypeFX_BLUR Blur, Apply Gaussian Blur to object.FX_COLORIZE Colorize, Apply different tint effects.FX_FLIP Flip, Flip image.FX_GLOW Glow, Create a glow effect.FX_LIGHT Light, Simulate ilumination.FX_PIXEL Pixelate, Pixelate image.FX_RIM Rim, Add a rim to the image.FX_SHADOW Shadow, Create a shadow effect.FX_SWIRL Swirl, Create a rotation distortion.FX_WAVE Wave Distortion, Apply sinusoidal deformation. — enum in ['FX_BLUR', 'FX_COLORIZE', 'FX_FLIP', 'FX_GLOW', 'FX_LIGHT', 'FX_PIXEL', 'FX_RIM', 'FX_SHADOW', 'FX_SWIRL', 'FX_WAVE'], (optional)
	**/
	static function shaderfx_add(type:bpy.ops.object.Object.Enum68):Void;
	/**
		Move shaderfx down in the stack
		@param shaderfx Shader, Name of the shaderfx to edit — string, (optional, never None)
	**/
	static function shaderfx_move_down(shaderfx:String):Void;
	/**
		Move shaderfx up in the stack
		@param shaderfx Shader, Name of the shaderfx to edit — string, (optional, never None)
	**/
	static function shaderfx_move_up(shaderfx:String):Void;
	/**
		Remove a shaderfx from the active grease pencil object
		@param shaderfx Shader, Name of the shaderfx to edit — string, (optional, never None)
	**/
	static function shaderfx_remove(shaderfx:String):Void;
	/**
		Add shape key to the object
		@param from_mix From Mix, Create the new shape key from the existing mix of keys — boolean, (optional)
	**/
	static function shape_key_add(from_mix:Bool):Void;
	/**
		Clear weights for all shape keys
	**/
	static function shape_key_clear():Void;
	/**
		Mirror the current shape key along the local X axis
		@param use_topology Topology Mirror, Use topology based mirroring (for when both sides of mesh have matching, unique topology) — boolean, (optional)
	**/
	static function shape_key_mirror(use_topology:Bool):Void;
	/**
		Move the active shape key up/down in the list
		@param type TypeTOP Top, Top of the list.UP Up.DOWN Down.BOTTOM Bottom, Bottom of the list. — enum in ['TOP', 'UP', 'DOWN', 'BOTTOM'], (optional)
	**/
	static function shape_key_move(type:bpy.ops.object.Object.Enum69):Void;
	/**
		Remove shape key from the object
		@param all All, Remove all shape keys — boolean, (optional)
	**/
	static function shape_key_remove(all:Bool):Void;
	/**
		Resets the timing for absolute shape keys
	**/
	static function shape_key_retime():Void;
	/**
		Copy another selected objects active shape to this one by applying the relative offsets
		@param mode Transformation Mode, Relative shape positions to the new shape methodOFFSET Offset, Apply the relative positional offset.RELATIVE_FACE Relative Face, Calculate relative position (using faces).RELATIVE_EDGE Relative Edge, Calculate relative position (using edges). — enum in ['OFFSET', 'RELATIVE_FACE', 'RELATIVE_EDGE'], (optional)
		@param use_clamp Clamp Offset, Clamp the transformation to the distance each vertex moves in the original shape — boolean, (optional)
	**/
	static function shape_key_transfer(mode:bpy.ops.object.Object.Enum70, use_clamp:Bool):Void;
	/**
		Create an armature that parallels the skin layout
		@param modifier Modifier, Name of the modifier to edit — string, (optional, never None)
	**/
	static function skin_armature_create(modifier:String):Void;
	/**
		Mark/clear selected vertices as loose
		@param action ActionMARK Mark, Mark selected vertices as loose.CLEAR Clear, Set selected vertices as not loose. — enum in ['MARK', 'CLEAR'], (optional)
	**/
	static function skin_loose_mark_clear(action:bpy.ops.object.Object.Enum71):Void;
	/**
		Make skin radii of selected vertices equal on each axis
	**/
	static function skin_radii_equalize():Void;
	/**
		Mark selected vertices as roots
	**/
	static function skin_root_mark():Void;
	/**
		Clear the object’s slow parent
	**/
	static function slow_parent_clear():Void;
	/**
		Set the object’s slow parent
	**/
	static function slow_parent_set():Void;
	/**
		Add a speaker object to the scene
		@param view_align Align to View, Align the new object to the view — boolean, (optional)
		@param enter_editmode Enter Editmode, Enter editmode when adding this object — boolean, (optional)
		@param location Location, Location for the newly added object — float array of 3 items in [-inf, inf], (optional)
		@param rotation Rotation, Rotation for the newly added object — float array of 3 items in [-inf, inf], (optional)
	**/
	static function speaker_add(view_align:Bool, enter_editmode:Bool, location:Array<Float>, rotation:Array<Float>):Void;
	/**
		Sets a Subdivision Surface Level (1-5)
		@param level Level — int in [-100, 100], (optional)
		@param relative Relative, Apply the subsurf level as an offset relative to the current level — boolean, (optional)
	**/
	static function subdivision_set(level:Int, relative:Bool):Void;
	/**
		Bind mesh to target in surface deform modifier
		@param modifier Modifier, Name of the modifier to edit — string, (optional, never None)
	**/
	static function surfacedeform_bind(modifier:String):Void;
	/**
		Add a text object to the scene
		@param radius Radius — float in [0, inf], (optional)
		@param view_align Align to View, Align the new object to the view — boolean, (optional)
		@param enter_editmode Enter Editmode, Enter editmode when adding this object — boolean, (optional)
		@param location Location, Location for the newly added object — float array of 3 items in [-inf, inf], (optional)
		@param rotation Rotation, Rotation for the newly added object — float array of 3 items in [-inf, inf], (optional)
	**/
	static function text_add(radius:Float, view_align:Bool, enter_editmode:Bool, location:Array<Float>, rotation:Array<Float>):Void;
	/**
		Clear tracking constraint or flag from object
		@param type Type — enum in ['CLEAR', 'CLEAR_KEEP_TRANSFORM'], (optional)
	**/
	static function track_clear(type:bpy.ops.object.Object.Enum72):Void;
	/**
		Make the object track another object, using various methods/constraints
		@param type Type — enum in ['DAMPTRACK', 'TRACKTO', 'LOCKTRACK'], (optional)
	**/
	static function track_set(type:bpy.ops.object.Object.Enum73):Void;
	/**
		Apply the object’s transformation to its data
		@param location Location — boolean, (optional)
		@param rotation Rotation — boolean, (optional)
		@param scale Scale — boolean, (optional)
		@param properties Apply Properties, Modify properties such as curve vertex radius, font size and bone envelope — boolean, (optional)
	**/
	static function transform_apply(location:Bool, rotation:Bool, scale:Bool, properties:Bool):Void;
	/**
		Interactively point cameras and lights to a location (Ctrl translates)
	**/
	static function transform_axis_target():Void;
	/**
		Convert normal object transforms to delta transforms, any existing delta transforms will be included as well
		@param mode Mode, Which transforms to transferALL All Transforms, Transfer location, rotation, and scale transforms.LOC Location, Transfer location transforms only.ROT Rotation, Transfer rotation transforms only.SCALE Scale, Transfer scale transforms only. — enum in ['ALL', 'LOC', 'ROT', 'SCALE'], (optional)
		@param reset_values Reset Values, Clear transform values after transferring to deltas — boolean, (optional)
	**/
	static function transforms_to_deltas(mode:bpy.ops.object.Object.Enum74, reset_values:Bool):Void;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	static function unlink_data():Void;
	/**
		Add a new vertex group to the active object
	**/
	static function vertex_group_add():Void;
	/**
		Assign the selected vertices to the active vertex group
	**/
	static function vertex_group_assign():Void;
	/**
		Assign the selected vertices to a new vertex group
	**/
	static function vertex_group_assign_new():Void;
	/**
		Remove vertex group assignments which are not required
		@param group_select_mode Subset, Define which subset of Groups shall be used — enum in [], (optional)
		@param limit Limit, Remove vertices which weight is below or equal to this limit — float in [0, 1], (optional)
		@param keep_single Keep Single, Keep verts assigned to at least one group when cleaning — boolean, (optional)
	**/
	static function vertex_group_clean(group_select_mode:bpy.ops.object.Object.Enum75, limit:Float, keep_single:Bool):Void;
	/**
		Make a copy of the active vertex group
	**/
	static function vertex_group_copy():Void;
	/**
		Replace vertex groups of all users of the same geometry data by vertex groups of active object
	**/
	static function vertex_group_copy_to_linked():Void;
	/**
		Replace vertex groups of selected objects by vertex groups of active object
	**/
	static function vertex_group_copy_to_selected():Void;
	/**
		Deselect all selected vertices assigned to the active vertex group
	**/
	static function vertex_group_deselect():Void;
	/**
		Modify the position of selected vertices by changing only their respective groups’ weights (this tool may be slow for many vertices)
		@param dist Distance, The distance to move to — float in [-inf, inf], (optional)
		@param strength Strength, The distance moved can be changed by this multiplier — float in [-2, inf], (optional)
		@param accuracy Change Sensitivity, Change the amount weights are altered with each iteration: lower values are slower — float in [0.05, inf], (optional)
	**/
	static function vertex_group_fix(dist:Float, strength:Float, accuracy:Float):Void;
	/**
		Invert active vertex group’s weights
		@param group_select_mode Subset, Define which subset of Groups shall be used — enum in [], (optional)
		@param auto_assign Add Weights, Add verts from groups that have zero weight before inverting — boolean, (optional)
		@param auto_remove Remove Weights, Remove verts from groups that have zero weight after inverting — boolean, (optional)
	**/
	static function vertex_group_invert(group_select_mode:bpy.ops.object.Object.Enum76, auto_assign:Bool, auto_remove:Bool):Void;
	/**
		Add some offset and multiply with some gain the weights of the active vertex group
		@param group_select_mode Subset, Define which subset of Groups shall be used — enum in [], (optional)
		@param offset Offset, Value to add to weights — float in [-1, 1], (optional)
		@param gain Gain, Value to multiply weights by — float in [0, inf], (optional)
	**/
	static function vertex_group_levels(group_select_mode:bpy.ops.object.Object.Enum77, offset:Float, gain:Float):Void;
	/**
		Limit deform weights associated with a vertex to a specified number by removing lowest weights
		@param group_select_mode Subset, Define which subset of Groups shall be used — enum in [], (optional)
		@param limit Limit, Maximum number of deform weights — int in [1, 32], (optional)
	**/
	static function vertex_group_limit_total(group_select_mode:bpy.ops.object.Object.Enum78, limit:Int):Void;
	/**
		Change the lock state of all vertex groups of active object
		@param action Action, Lock action to execute on vertex groupsTOGGLE Toggle, Unlock all vertex groups if there is at least one locked group, lock all in other case.LOCK Lock, Lock all vertex groups.UNLOCK Unlock, Unlock all vertex groups.INVERT Invert, Invert the lock state of all vertex groups. — enum in ['TOGGLE', 'LOCK', 'UNLOCK', 'INVERT'], (optional)
	**/
	static function vertex_group_lock(action:bpy.ops.object.Object.Enum79):Void;
	/**
		Mirror vertex group, flip weights and/or names, editing only selected vertices, flipping when both sides are selected otherwise copy from unselected
		@param mirror_weights Mirror Weights, Mirror weights — boolean, (optional)
		@param flip_group_names Flip Group Names, Flip vertex group names — boolean, (optional)
		@param all_groups All Groups, Mirror all vertex groups weights — boolean, (optional)
		@param use_topology Topology Mirror, Use topology based mirroring (for when both sides of mesh have matching, unique topology) — boolean, (optional)
	**/
	static function vertex_group_mirror(mirror_weights:Bool, flip_group_names:Bool, all_groups:Bool, use_topology:Bool):Void;
	/**
		Move the active vertex group up/down in the list
		@param direction Direction, Direction to move the active vertex group towards — enum in ['UP', 'DOWN'], (optional)
	**/
	static function vertex_group_move(direction:bpy.ops.object.Object.Enum80):Void;
	/**
		Normalize weights of the active vertex group, so that the highest ones are now 1.0
	**/
	static function vertex_group_normalize():Void;
	/**
		Normalize all weights of all vertex groups, so that for each vertex, the sum of all weights is 1.0
		@param group_select_mode Subset, Define which subset of Groups shall be used — enum in [], (optional)
		@param lock_active Lock Active, Keep the values of the active group while normalizing others — boolean, (optional)
	**/
	static function vertex_group_normalize_all(group_select_mode:bpy.ops.object.Object.Enum81, lock_active:Bool):Void;
	/**
		Set weights to a fixed number of steps
		@param group_select_mode Subset, Define which subset of Groups shall be used — enum in [], (optional)
		@param steps Steps, Number of steps between 0 and 1 — int in [1, 1000], (optional)
	**/
	static function vertex_group_quantize(group_select_mode:bpy.ops.object.Object.Enum82, steps:Int):Void;
	/**
		Delete the active or all vertex groups from the active object
		@param all All, Remove all vertex groups — boolean, (optional)
		@param all_unlocked All Unlocked, Remove all unlocked vertex groups — boolean, (optional)
	**/
	static function vertex_group_remove(all:Bool, all_unlocked:Bool):Void;
	/**
		Remove the selected vertices from active or all vertex group(s)
		@param use_all_groups All Groups, Remove from all groups — boolean, (optional)
		@param use_all_verts All Verts, Clear the active group — boolean, (optional)
	**/
	static function vertex_group_remove_from(use_all_groups:Bool, use_all_verts:Bool):Void;
	/**
		Select all the vertices assigned to the active vertex group
	**/
	static function vertex_group_select():Void;
	/**
		Set the active vertex group
		@param group Group, Vertex group to set as active — enum in [], (optional)
	**/
	static function vertex_group_set_active(group:bpy.ops.object.Object.Enum83):Void;
	/**
		Smooth weights for selected vertices
		@param group_select_mode Subset, Define which subset of Groups shall be used — enum in [], (optional)
		@param factor Factor — float in [0, 1], (optional)
		@param repeat Iterations — int in [1, 10000], (optional)
		@param expand Expand/Contract, Expand/contract weights — float in [-1, 1], (optional)
	**/
	static function vertex_group_smooth(group_select_mode:bpy.ops.object.Object.Enum84, factor:Float, repeat:Int, expand:Float):Void;
	/**
		Sort vertex groups
		@param sort_type Sort type, Sort type — enum in ['NAME', 'BONE_HIERARCHY'], (optional)
	**/
	static function vertex_group_sort(sort_type:bpy.ops.object.Object.Enum85):Void;
	/**
		Parent selected objects to the selected vertices
	**/
	static function vertex_parent_set():Void;
	/**
		Copy weights from active to selected
	**/
	static function vertex_weight_copy():Void;
	/**
		Delete this weight from the vertex (disabled if vertex group is locked)
		@param weight_group Weight Index, Index of source weight in active vertex group — int in [-1, inf], (optional)
	**/
	static function vertex_weight_delete(weight_group:Int):Void;
	/**
		Normalize active vertex’s weights
	**/
	static function vertex_weight_normalize_active_vertex():Void;
	/**
		Copy this group’s weight to other selected verts (disabled if vertex group is locked)
		@param weight_group Weight Index, Index of source weight in active vertex group — int in [-1, inf], (optional)
	**/
	static function vertex_weight_paste(weight_group:Int):Void;
	/**
		Set as active vertex group
		@param weight_group Weight Index, Index of source weight in active vertex group — int in [-1, inf], (optional)
	**/
	static function vertex_weight_set_active(weight_group:Int):Void;
	/**
		Apply the object’s visual transformation to its data
	**/
	static function visual_transform_apply():Void;
}