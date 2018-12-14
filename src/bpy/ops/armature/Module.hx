package bpy.ops.armature;
/**
	Armature Operators
**/
@:pythonImport("bpy.ops.armature") extern class Module {
	/**
		Align selected bones to the active bone (or to their parent)
	**/
	static function align():Void;
	/**
		Change the visible armature layers
		@param layers Layer, Armature layers to make visible — boolean array of 32 items, (optional)
	**/
	static function armature_layers(layers:Array<Bool>):Void;
	/**
		Automatically renames the selected bones according to which side of the target axis they fall on
		@param type Axis, Axis tag names withXAXIS X-Axis, Left/Right.YAXIS Y-Axis, Front/Back.ZAXIS Z-Axis, Top/Bottom. — enum in ['XAXIS', 'YAXIS', 'ZAXIS'], (optional)
	**/
	static function autoside_names(type:bpy.ops.armature.Armature.Enum1):Void;
	/**
		Change the layers that the selected bones belong to
		@param layers Layer, Armature layers that bone belongs to — boolean array of 32 items, (optional)
	**/
	static function bone_layers(layers:Array<Bool>):Void;
	/**
		Add a new bone located at the 3D-Cursor
		@param name Name, Name of the newly created bone — string, (optional, never None)
	**/
	static function bone_primitive_add(name:String):Void;
	/**
		Automatically fix alignment of select bones’ axes
		@param type Type — enum in ['POS_X', 'POS_Z', 'GLOBAL_POS_X', 'GLOBAL_POS_Y', 'GLOBAL_POS_Z', 'NEG_X', 'NEG_Z', 'GLOBAL_NEG_X', 'GLOBAL_NEG_Y', 'GLOBAL_NEG_Z', 'ACTIVE', 'VIEW', 'CURSOR'], (optional)
		@param axis_flip Flip Axis, Negate the alignment axis — boolean, (optional)
		@param axis_only Shortest Rotation, Ignore the axis direction, use the shortest rotation to align — boolean, (optional)
	**/
	static function calculate_roll(type:bpy.ops.armature.Armature.Enum2, axis_flip:Bool, axis_only:Bool):Void;
	/**
		Create a new bone going from the last selected joint to the mouse position
	**/
	static function click_extrude():Void;
	/**
		Remove selected bones from the armature
	**/
	static function delete():Void;
	/**
		Dissolve selected bones from the armature
	**/
	static function dissolve():Void;
	/**
		Make copies of the selected bones within the same armature
		@param do_flip_names Flip Names, Try to flip names of the bones, if possible, instead of adding a number extension — boolean, (optional)
	**/
	static function duplicate(do_flip_names:Bool):Void;
	/**
		Make copies of the selected bones within the same armature and move them
		@param ARMATURE_OT_duplicate Duplicate Selected Bone(s), Make copies of the selected bones within the same armature — ARMATURE_OT_duplicate, (optional)
		@param TRANSFORM_OT_translate Move, Move selected items — TRANSFORM_OT_translate, (optional)
	**/
	static function duplicate_move(ARMATURE_OT_duplicate:Dynamic, TRANSFORM_OT_translate:Dynamic):Void;
	/**
		Create new bones from the selected joints
		@param forked Forked — boolean, (optional)
	**/
	static function extrude(forked:Bool):Void;
	/**
		Create new bones from the selected joints and move them
		@param ARMATURE_OT_extrude Extrude, Create new bones from the selected joints — ARMATURE_OT_extrude, (optional)
		@param TRANSFORM_OT_translate Move, Move selected items — TRANSFORM_OT_translate, (optional)
	**/
	static function extrude_forked(ARMATURE_OT_extrude:Dynamic, TRANSFORM_OT_translate:Dynamic):Void;
	/**
		Create new bones from the selected joints and move them
		@param ARMATURE_OT_extrude Extrude, Create new bones from the selected joints — ARMATURE_OT_extrude, (optional)
		@param TRANSFORM_OT_translate Move, Move selected items — TRANSFORM_OT_translate, (optional)
	**/
	static function extrude_move(ARMATURE_OT_extrude:Dynamic, TRANSFORM_OT_translate:Dynamic):Void;
	/**
		Add bone between selected joint(s) and/or 3D-Cursor
	**/
	static function fill():Void;
	/**
		Flips (and corrects) the axis suffixes of the names of selected bones
		@param do_strip_numbers Strip Numbers, Try to remove right-most dot-number from flipped names (WARNING: may result in incoherent naming in some cases) — boolean, (optional)
	**/
	static function flip_names(do_strip_numbers:Bool):Void;
	/**
		Tag selected bones to not be visible in Edit Mode
		@param unselected Unselected, Hide unselected rather than selected — boolean, (optional)
	**/
	static function hide(unselected:Bool):Void;
	/**
		Make all armature layers visible
		@param all All Layers, Enable all layers or just the first 16 (top row) — boolean, (optional)
	**/
	static function layers_show_all(all:Bool):Void;
	/**
		Merge continuous chains of selected bones
		@param type Type — enum in ['WITHIN_CHAIN'], (optional)
	**/
	static function merge(type:bpy.ops.armature.Armature.Enum3):Void;
	/**
		Remove the parent-child relationship between selected bones and their parents
		@param type ClearType, What way to clear parenting — enum in ['CLEAR', 'DISCONNECT'], (optional)
	**/
	static function parent_clear(type:bpy.ops.armature.Armature.Enum4):Void;
	/**
		Set the active bone as the parent of the selected bones
		@param type ParentType, Type of parenting — enum in ['CONNECTED', 'OFFSET'], (optional)
	**/
	static function parent_set(type:bpy.ops.armature.Armature.Enum5):Void;
	/**
		Reveal all bones hidden in Edit Mode
		@param select Select — boolean, (optional)
	**/
	static function reveal(select:Bool):Void;
	/**
		Clear roll for selected bones
		@param roll Roll — float in [-6.28319, 6.28319], (optional)
	**/
	static function roll_clear(roll:Float):Void;
	/**
		Toggle selection status of all bones
		@param action Action, Selection action to executeTOGGLE Toggle, Toggle selection for all elements.SELECT Select, Select all elements.DESELECT Deselect, Deselect all elements.INVERT Invert, Invert selection of all elements. — enum in ['TOGGLE', 'SELECT', 'DESELECT', 'INVERT'], (optional)
	**/
	static function select_all(action:bpy.ops.armature.Armature.Enum6):Void;
	/**
		Select immediate parent/children of selected bones
		@param direction Direction — enum in ['PARENT', 'CHILD'], (optional)
		@param extend Extend, Extend the selection — boolean, (optional)
	**/
	static function select_hierarchy(direction:bpy.ops.armature.Armature.Enum7, extend:Bool):Void;
	/**
		Deselect those bones at the boundary of each selection region
	**/
	static function select_less():Void;
	/**
		Select bones related to selected ones by parent/child relationships
	**/
	static function select_linked():Void;
	/**
		Mirror the bone selection
		@param only_active Active Only, Only operate on the active bone — boolean, (optional)
		@param extend Extend, Extend the selection — boolean, (optional)
	**/
	static function select_mirror(only_active:Bool, extend:Bool):Void;
	/**
		Select those bones connected to the initial selection
	**/
	static function select_more():Void;
	/**
		Select similar bones by property types
		@param type Type — enum in ['CHILDREN', 'CHILDREN_IMMEDIATE', 'SIBLINGS', 'LENGTH', 'DIRECTION', 'PREFIX', 'SUFFIX', 'LAYER', 'GROUP', 'SHAPE'], (optional)
		@param threshold Threshold — float in [0, 1], (optional)
	**/
	static function select_similar(type:bpy.ops.armature.Armature.Enum8, threshold:Float):Void;
	/**
		Isolate selected bones into a separate armature
	**/
	static function separate():Void;
	/**
		Select shortest path between two bones
	**/
	static function shortest_path_pick():Void;
	/**
		Split off selected bones from connected unselected bones
	**/
	static function split():Void;
	/**
		Break selected bones into chains of smaller bones
		@param number_cuts Number of Cuts — int in [1, 1000], (optional)
	**/
	static function subdivide(number_cuts:Int):Void;
	/**
		Change the direction that a chain of bones points in (head &lt;-&gt; tail swap)
	**/
	static function switch_direction():Void;
	/**
		Enforce symmetry, make copies of the selection or use existing
		@param direction Direction, Which sides to copy from and to (when both are selected) — enum in ['NEGATIVE_X', 'POSITIVE_X'], (optional)
	**/
	static function symmetrize(direction:bpy.ops.armature.Armature.Enum9):Void;
}