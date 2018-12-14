package bpy.ops.uv;
/**
	Uv Operators
**/
@:pythonImport("bpy.ops.uv") extern class Module {
	/**
		Align selected UV vertices to an axis
		@param axis Axis, Axis to align UV locations onALIGN_S Straighten, Align UVs along the line defined by the endpoints.ALIGN_T Straighten X, Align UVs along the line defined by the endpoints along the X axis.ALIGN_U Straighten Y, Align UVs along the line defined by the endpoints along the Y axis.ALIGN_AUTO Align Auto, Automatically choose the axis on which there is most alignment already.ALIGN_X Align X, Align UVs on X axis.ALIGN_Y Align Y, Align UVs on Y axis. — enum in ['ALIGN_S', 'ALIGN_T', 'ALIGN_U', 'ALIGN_AUTO', 'ALIGN_X', 'ALIGN_Y'], (optional)
	**/
	static function align(axis:bpy.ops.uv.Uv.Enum1):Void;
	/**
		Average the size of separate UV islands, based on their area in 3D space
	**/
	static function average_islands_scale():Void;
	/**
		Project the UV vertices of the mesh over the six faces of a cube
		@param cube_size Cube Size, Size of the cube to project on — float in [0, inf], (optional)
		@param correct_aspect Correct Aspect, Map UVs taking image aspect ratio into account — boolean, (optional)
		@param clip_to_bounds Clip to Bounds, Clip UV coordinates to bounds after unwrapping — boolean, (optional)
		@param scale_to_bounds Scale to Bounds, Scale UV coordinates to bounds after unwrapping — boolean, (optional)
	**/
	static function cube_project(cube_size:Float, correct_aspect:Bool, clip_to_bounds:Bool, scale_to_bounds:Bool):Void;
	/**
		Set 2D cursor location
		@param location Location, Cursor location in normalized (0.0-1.0) coordinates — float array of 2 items in [-inf, inf], (optional)
	**/
	static function cursor_set(location:Array<Float>):Void;
	/**
		Project the UV vertices of the mesh over the curved wall of a cylinder
		@param direction Direction, Direction of the sphere or cylinderVIEW_ON_EQUATOR View on Equator, 3D view is on the equator.VIEW_ON_POLES View on Poles, 3D view is on the poles.ALIGN_TO_OBJECT Align to Object, Align according to object transform. — enum in ['VIEW_ON_EQUATOR', 'VIEW_ON_POLES', 'ALIGN_TO_OBJECT'], (optional)
		@param align Align, How to determine rotation around the polePOLAR_ZX Polar ZX, Polar 0 is X.POLAR_ZY Polar ZY, Polar 0 is Y. — enum in ['POLAR_ZX', 'POLAR_ZY'], (optional)
		@param radius Radius, Radius of the sphere or cylinder — float in [0, inf], (optional)
		@param correct_aspect Correct Aspect, Map UVs taking image aspect ratio into account — boolean, (optional)
		@param clip_to_bounds Clip to Bounds, Clip UV coordinates to bounds after unwrapping — boolean, (optional)
		@param scale_to_bounds Scale to Bounds, Scale UV coordinates to bounds after unwrapping — boolean, (optional)
	**/
	static function cylinder_project(direction:bpy.ops.uv.Uv.Enum2, align:bpy.ops.uv.Uv.Enum3, radius:Float, correct_aspect:Bool, clip_to_bounds:Bool, scale_to_bounds:Bool):Void;
	/**
		Export UV layout to file
		@param filepath filepath — string, (optional, never None)
		@param export_all All UVs, Export all UVs in this mesh (not just visible ones) — boolean, (optional)
		@param modified Modified, Exports UVs from the modified mesh — boolean, (optional)
		@param mode Format, File format to export the UV layout toSVG Scalable Vector Graphic (.svg), Export the UV layout to a vector SVG file.EPS Encapsulate PostScript (.eps), Export the UV layout to a vector EPS file.PNG PNG Image (.png), Export the UV layout to a bitmap image. — enum in ['SVG', 'EPS', 'PNG'], (optional)
		@param size size, Dimensions of the exported file — int array of 2 items in [8, 32768], (optional)
		@param opacity Fill Opacity, Set amount of opacity for exported UV layout — float in [0, 1], (optional)
	**/
	static function export_layout(filepath:String, export_all:Bool, modified:Bool, mode:bpy.ops.uv.Uv.Enum4, size:Array<Int>, opacity:Float):Void;
	/**
		Follow UVs from active quads along continuous face loops
		@param mode Edge Length Mode, Method to space UV edge loopsEVEN Even, Space all UVs evenly.LENGTH Length, Average space UVs edge length of each loop.LENGTH_AVERAGE Length Average, Average space UVs edge length of each loop. — enum in ['EVEN', 'LENGTH', 'LENGTH_AVERAGE'], (optional)
	**/
	static function follow_active_quads(mode:bpy.ops.uv.Uv.Enum5):Void;
	/**
		Hide (un)selected UV vertices
		@param unselected Unselected, Hide unselected rather than selected — boolean, (optional)
	**/
	static function hide(unselected:Bool):Void;
	/**
		Pack each faces UV’s into the UV bounds
		@param PREF_CONTEXT SelectionSEL_FACES Selected Faces, Space all UVs evenly.ALL_FACES All Faces, Average space UVs edge length of each loop. — enum in ['SEL_FACES', 'ALL_FACES'], (optional)
		@param PREF_PACK_IN_ONE Share Tex Space, Objects Share texture space, map all objects into 1 uvmap — boolean, (optional)
		@param PREF_NEW_UVLAYER New UV Map, Create a new UV map for every mesh packed — boolean, (optional)
		@param PREF_APPLY_IMAGE New Image, Assign new images for every mesh (only one if shared tex space enabled) — boolean, (optional)
		@param PREF_IMG_PX_SIZE Image Size, Width and Height for the new image — int in [64, 5000], (optional)
		@param PREF_BOX_DIV Pack Quality, Pre Packing before the complex boxpack — int in [1, 48], (optional)
		@param PREF_MARGIN_DIV Margin, Size of the margin as a division of the UV — float in [0.001, 1], (optional)
	**/
	static function lightmap_pack(PREF_CONTEXT:bpy.ops.uv.Uv.Enum6, PREF_PACK_IN_ONE:Bool, PREF_NEW_UVLAYER:Bool, PREF_APPLY_IMAGE:Bool, PREF_IMG_PX_SIZE:Int, PREF_BOX_DIV:Int, PREF_MARGIN_DIV:Float):Void;
	/**
		Mark selected UV edges as seams
		@param clear Clear Seams, Clear instead of marking seams — boolean, (optional)
	**/
	static function mark_seam(clear:Bool):Void;
	/**
		Reduce UV stretching by relaxing angles
		@param fill_holes Fill Holes, Virtual fill holes in mesh before unwrapping, to better avoid overlaps and preserve symmetry — boolean, (optional)
		@param blend Blend, Blend factor between stretch minimized and original — float in [0, 1], (optional)
		@param iterations Iterations, Number of iterations to run, 0 is unlimited when run interactively — int in [0, inf], (optional)
	**/
	static function minimize_stretch(fill_holes:Bool, blend:Float, iterations:Int):Void;
	/**
		Transform all islands so that they fill up the UV space as much as possible
		@param rotate Rotate, Rotate islands for best fit — boolean, (optional)
		@param margin Margin, Space between islands — float in [0, 1], (optional)
	**/
	static function pack_islands(rotate:Bool, margin:Float):Void;
	/**
		Set/clear selected UV vertices as anchored between multiple unwrap operations
		@param clear Clear, Clear pinning for the selection instead of setting it — boolean, (optional)
	**/
	static function pin(clear:Bool):Void;
	/**
		Project the UV vertices of the mesh as seen in current 3D view
		@param orthographic Orthographic, Use orthographic projection — boolean, (optional)
		@param camera_bounds Camera Bounds, Map UVs to the camera region taking resolution and aspect into account — boolean, (optional)
		@param correct_aspect Correct Aspect, Map UVs taking image aspect ratio into account — boolean, (optional)
		@param clip_to_bounds Clip to Bounds, Clip UV coordinates to bounds after unwrapping — boolean, (optional)
		@param scale_to_bounds Scale to Bounds, Scale UV coordinates to bounds after unwrapping — boolean, (optional)
	**/
	static function project_from_view(orthographic:Bool, camera_bounds:Bool, correct_aspect:Bool, clip_to_bounds:Bool, scale_to_bounds:Bool):Void;
	/**
		Selected UV vertices that are within a radius of each other are welded together
		@param threshold Merge Distance, Maximum distance between welded vertices — float in [0, 10], (optional)
		@param use_unselected Unselected, Merge selected to other unselected vertices — boolean, (optional)
	**/
	static function remove_doubles(threshold:Float, use_unselected:Bool):Void;
	/**
		Reset UV projection
	**/
	static function reset():Void;
	/**
		Reveal all hidden UV vertices
		@param select Select — boolean, (optional)
	**/
	static function reveal(select:Bool):Void;
	/**
		Set mesh seams according to island setup in the UV editor
		@param mark_seams Mark Seams, Mark boundary edges as seams — boolean, (optional)
		@param mark_sharp Mark Sharp, Mark boundary edges as sharp — boolean, (optional)
	**/
	static function seams_from_islands(mark_seams:Bool, mark_sharp:Bool):Void;
	/**
		Select UV vertices
		@param extend Extend, Extend selection rather than clearing the existing selection — boolean, (optional)
		@param location Location, Mouse location in normalized coordinates, 0.0 to 1.0 is within the image bounds — float array of 2 items in [-inf, inf], (optional)
	**/
	static function select(extend:Bool, location:Array<Float>):Void;
	/**
		Change selection of all UV vertices
		@param action Action, Selection action to executeTOGGLE Toggle, Toggle selection for all elements.SELECT Select, Select all elements.DESELECT Deselect, Deselect all elements.INVERT Invert, Invert selection of all elements. — enum in ['TOGGLE', 'SELECT', 'DESELECT', 'INVERT'], (optional)
	**/
	static function select_all(action:bpy.ops.uv.Uv.Enum7):Void;
	/**
		Select UV vertices using box selection
		@param pinned Pinned, Border select pinned UVs only — boolean, (optional)
		@param xmin X Min — int in [-inf, inf], (optional)
		@param xmax X Max — int in [-inf, inf], (optional)
		@param ymin Y Min — int in [-inf, inf], (optional)
		@param ymax Y Max — int in [-inf, inf], (optional)
		@param mode Mode — enum in ['SET', 'ADD', 'SUB'], (optional)
	**/
	static function select_box(pinned:Bool, xmin:Int, xmax:Int, ymin:Int, ymax:Int, mode:bpy.ops.uv.Uv.Enum8):Void;
	/**
		Select UV vertices using circle selection
		@param x X — int in [-inf, inf], (optional)
		@param y Y — int in [-inf, inf], (optional)
		@param radius Radius — int in [1, inf], (optional)
		@param deselect Deselect, Deselect rather than select items — boolean, (optional)
	**/
	static function select_circle(x:Int, y:Int, radius:Int, deselect:Bool):Void;
	/**
		Select UVs using lasso selection
		@param path Path — bpy_prop_collection of OperatorMousePath, (optional)
		@param mode Mode — enum in ['SET', 'ADD', 'SUB'], (optional)
	**/
	static function select_lasso(path:Dynamic, mode:bpy.ops.uv.Uv.Enum9):Void;
	/**
		Deselect UV vertices at the boundary of each selection region
	**/
	static function select_less():Void;
	/**
		Select all UV vertices linked to the active UV map
		@param extend Extend, Extend selection rather than clearing the existing selection — boolean, (optional)
		@param deselect Deselect, Deselect linked UV vertices rather than selecting them — boolean, (optional)
	**/
	static function select_linked(extend:Bool, deselect:Bool):Void;
	/**
		Select all UV vertices linked under the mouse
		@param extend Extend, Extend selection rather than clearing the existing selection — boolean, (optional)
		@param deselect Deselect, Deselect linked UV vertices rather than selecting them — boolean, (optional)
		@param location Location, Mouse location in normalized coordinates, 0.0 to 1.0 is within the image bounds — float array of 2 items in [-inf, inf], (optional)
	**/
	static function select_linked_pick(extend:Bool, deselect:Bool, location:Array<Float>):Void;
	/**
		Select a loop of connected UV vertices
		@param extend Extend, Extend selection rather than clearing the existing selection — boolean, (optional)
		@param location Location, Mouse location in normalized coordinates, 0.0 to 1.0 is within the image bounds — float array of 2 items in [-inf, inf], (optional)
	**/
	static function select_loop(extend:Bool, location:Array<Float>):Void;
	/**
		Select more UV vertices connected to initial selection
	**/
	static function select_more():Void;
	/**
		Select all pinned UV vertices
	**/
	static function select_pinned():Void;
	/**
		Select only entirely selected faces
	**/
	static function select_split():Void;
	/**
		This script projection unwraps the selected faces of a mesh (it operates on all selected mesh objects, and can be used to unwrap selected faces, or all faces)
		@param angle_limit Angle Limit, Lower for more projection groups, higher for less distortion — float in [1, 89], (optional)
		@param island_margin Island Margin, Margin to reduce bleed from adjacent islands — float in [0, 1], (optional)
		@param user_area_weight Area Weight, Weight projections vector by faces with larger areas — float in [0, 1], (optional)
		@param use_aspect Correct Aspect, Map UVs taking image aspect ratio into account — boolean, (optional)
		@param stretch_to_bounds Stretch to UV Bounds, Stretch the final output to texture bounds — boolean, (optional)
	**/
	static function smart_project(angle_limit:Float, island_margin:Float, user_area_weight:Float, use_aspect:Bool, stretch_to_bounds:Bool):Void;
	/**
		Snap cursor to target type
		@param target Target, Target to snap the selected UVs to — enum in ['PIXELS', 'SELECTED'], (optional)
	**/
	static function snap_cursor(target:bpy.ops.uv.Uv.Enum10):Void;
	/**
		Snap selected UV vertices to target type
		@param target Target, Target to snap the selected UVs to — enum in ['PIXELS', 'CURSOR', 'CURSOR_OFFSET', 'ADJACENT_UNSELECTED'], (optional)
	**/
	static function snap_selected(target:bpy.ops.uv.Uv.Enum11):Void;
	/**
		Project the UV vertices of the mesh over the curved surface of a sphere
		@param direction Direction, Direction of the sphere or cylinderVIEW_ON_EQUATOR View on Equator, 3D view is on the equator.VIEW_ON_POLES View on Poles, 3D view is on the poles.ALIGN_TO_OBJECT Align to Object, Align according to object transform. — enum in ['VIEW_ON_EQUATOR', 'VIEW_ON_POLES', 'ALIGN_TO_OBJECT'], (optional)
		@param align Align, How to determine rotation around the polePOLAR_ZX Polar ZX, Polar 0 is X.POLAR_ZY Polar ZY, Polar 0 is Y. — enum in ['POLAR_ZX', 'POLAR_ZY'], (optional)
		@param correct_aspect Correct Aspect, Map UVs taking image aspect ratio into account — boolean, (optional)
		@param clip_to_bounds Clip to Bounds, Clip UV coordinates to bounds after unwrapping — boolean, (optional)
		@param scale_to_bounds Scale to Bounds, Scale UV coordinates to bounds after unwrapping — boolean, (optional)
	**/
	static function sphere_project(direction:bpy.ops.uv.Uv.Enum12, align:bpy.ops.uv.Uv.Enum13, correct_aspect:Bool, clip_to_bounds:Bool, scale_to_bounds:Bool):Void;
	/**
		Stitch selected UV vertices by proximity
		@param use_limit Use Limit, Stitch UVs within a specified limit distance — boolean, (optional)
		@param snap_islands Snap Islands, Snap islands together (on edge stitch mode, rotates the islands too) — boolean, (optional)
		@param limit Limit, Limit distance in normalized coordinates — float in [0, inf], (optional)
		@param static_island Static Island, Island that stays in place when stitching islands — int in [0, inf], (optional)
		@param active_object_index Active Object, Index of the active object — int in [0, inf], (optional)
		@param midpoint_snap Snap At Midpoint, UVs are stitched at midpoint instead of at static island — boolean, (optional)
		@param clear_seams Clear Seams, Clear seams of stitched edges — boolean, (optional)
		@param mode Operation Mode, Use vertex or edge stitching — enum in ['VERTEX', 'EDGE'], (optional)
		@param stored_mode Stored Operation Mode, Use vertex or edge stitching — enum in ['VERTEX', 'EDGE'], (optional)
		@param selection Selection — bpy_prop_collection of SelectedUvElement, (optional)
		@param objects_selection_count objects_selection_count, objects_selection_count — int array of 6 items in [0, inf], (optional)
	**/
	static function stitch(use_limit:Bool, snap_islands:Bool, limit:Float, static_island:Int, active_object_index:Int, midpoint_snap:Bool, clear_seams:Bool, mode:bpy.ops.uv.Uv.Enum14, stored_mode:bpy.ops.uv.Uv.Enum15, selection:Dynamic, objects_selection_count:Array<Int>):Void;
	/**
		Unwrap the mesh of the object being edited
		@param method Method, Unwrapping method (Angle Based usually gives better results than Conformal, while being somewhat slower) — enum in ['ANGLE_BASED', 'CONFORMAL'], (optional)
		@param fill_holes Fill Holes, Virtual fill holes in mesh before unwrapping, to better avoid overlaps and preserve symmetry — boolean, (optional)
		@param correct_aspect Correct Aspect, Map UVs taking image aspect ratio into account — boolean, (optional)
		@param use_subsurf_data Use Subsurf Modifier, Map UVs taking vertex position after Subdivision Surface modifier has been applied — boolean, (optional)
		@param margin Margin, Space between islands — float in [0, 1], (optional)
	**/
	static function unwrap(method:bpy.ops.uv.Uv.Enum16, fill_holes:Bool, correct_aspect:Bool, use_subsurf_data:Bool, margin:Float):Void;
	/**
		Weld selected UV vertices together
	**/
	static function weld():Void;
}