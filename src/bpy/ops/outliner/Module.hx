package bpy.ops.outliner;
/**
	Outliner Operators
**/
@:pythonImport("bpy.ops.outliner") extern class Module {
	/**
		Change the active action used
		@param action Action — enum in [], (optional)
	**/
	static function action_set(action:bpy.ops.outliner.Outliner.Enum1):Void;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
		@param type Animation OperationCLEAR_ANIMDATA Clear Animation Data, Remove this animation data container.SET_ACT Set Action.CLEAR_ACT Unlink Action.REFRESH_DRIVERS Refresh Drivers.CLEAR_DRIVERS Clear Drivers. — enum in ['CLEAR_ANIMDATA', 'SET_ACT', 'CLEAR_ACT', 'REFRESH_DRIVERS', 'CLEAR_DRIVERS'], (optional)
	**/
	static function animdata_operation(type:bpy.ops.outliner.Outliner.Enum2):Void;
	/**
		Delete selected collections
		@param hierarchy Hierarchy, Delete child objects and collections — boolean, (optional)
	**/
	static function collection_delete(hierarchy:Bool):Void;
	/**
		Drag to move to collection in Outliner
	**/
	static function collection_drop():Void;
	/**
		Duplicate selected collections
	**/
	static function collection_duplicate():Void;
	/**
		Include collection in the active view layer
	**/
	static function collection_exclude_clear():Void;
	/**
		Exclude collection from the active view layer
	**/
	static function collection_exclude_set():Void;
	/**
		Clear masking of collection in the active view layer
	**/
	static function collection_holdout_clear():Void;
	/**
		Mask collection in the active view layer
	**/
	static function collection_holdout_set():Void;
	/**
		Clear collection contributing only indirectly in the view layer
	**/
	static function collection_indirect_only_clear():Void;
	/**
		Set collection to only contribute indirectly (through shadows and reflections) in the view layer
	**/
	static function collection_indirect_only_set():Void;
	/**
		Instance selected collections to active scene
	**/
	static function collection_instance():Void;
	/**
		Link selected collections to active scene
	**/
	static function collection_link():Void;
	/**
		Add a new collection inside selected collection
		@param nested Nested, Add as child of selected collection — boolean, (optional)
	**/
	static function collection_new(nested:Bool):Void;
	/**
		Deselect objects in collection
	**/
	static function collection_objects_deselect():Void;
	/**
		Select objects in collection
	**/
	static function collection_objects_select():Void;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
		@param type Constraint Operation — enum in ['ENABLE', 'DISABLE', 'DELETE'], (optional)
	**/
	static function constraint_operation(type:bpy.ops.outliner.Outliner.Enum3):Void;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
		@param type Data Operation — enum in ['SELECT', 'DESELECT', 'HIDE', 'UNHIDE', 'SELECT_LINKED'], (optional)
	**/
	static function data_operation(type:bpy.ops.outliner.Outliner.Enum4):Void;
	/**
		Add drivers to selected items
	**/
	static function drivers_add_selected():Void;
	/**
		Delete drivers assigned to selected items
	**/
	static function drivers_delete_selected():Void;
	/**
		Expand/Collapse all items
	**/
	static function expanded_toggle():Void;
	/**
		Update the item highlight based on the current mouse position
	**/
	static function highlight_update():Void;
	/**
		Delete the ID under cursor
	**/
	static function id_delete():Void;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
		@param type ID data OperationUNLINK Unlink.LOCAL Make Local.STATIC_OVERRIDE Add Static Override, Add a local static override of this data-block.SINGLE Make Single User.DELETE Delete, WARNING: no undo.REMAP Remap Users, Make all users of selected data-blocks to use instead current (clicked) one.ADD_FAKE Add Fake User, Ensure data-block gets saved even if it isn’t in use (e.g. for motion and material libraries).CLEAR_FAKE Clear Fake User.RENAME Rename.SELECT_LINKED Select Linked. — enum in ['UNLINK', 'LOCAL', 'STATIC_OVERRIDE', 'SINGLE', 'DELETE', 'REMAP', 'ADD_FAKE', 'CLEAR_FAKE', 'RENAME', 'SELECT_LINKED'], (optional)
	**/
	static function id_operation(type:bpy.ops.outliner.Outliner.Enum5):Void;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
		@param id_type ID Type — enum in ['ACTION', 'ARMATURE', 'BRUSH', 'CAMERA', 'CACHEFILE', 'CURVE', 'FONT', 'GREASEPENCIL', 'COLLECTION', 'IMAGE', 'KEY', 'LIGHT', 'LIBRARY', 'LINESTYLE', 'LATTICE', 'MASK', 'MATERIAL', 'META', 'MESH', 'MOVIECLIP', 'NODETREE', 'OBJECT', 'PAINTCURVE', 'PALETTE', 'PARTICLE', 'LIGHT_PROBE', 'SCENE', 'SOUND', 'SPEAKER', 'TEXT', 'TEXTURE', 'WINDOWMANAGER', 'WORLD', 'WORKSPACE'], (optional)
		@param old_id Old ID, Old ID to replace — enum in [], (optional)
		@param new_id New ID, New ID to remap all selected IDs’ users to — enum in [], (optional)
	**/
	static function id_remap(id_type:bpy.ops.outliner.Outliner.Enum6, old_id:bpy.ops.outliner.Outliner.Enum7, new_id:bpy.ops.outliner.Outliner.Enum8):Void;
	/**
		Handle mouse clicks to select and activate items
		@param extend Extend, Extend selection for activation — boolean, (optional)
		@param recursive Recursive, Select Objects and their children — boolean, (optional)
	**/
	static function item_activate(extend:Bool, recursive:Bool):Void;
	/**
		Drag and drop element to another place
	**/
	static function item_drag_drop():Void;
	/**
		Toggle whether item under cursor is enabled or closed
		@param all All, Close or open all items — boolean, (optional)
	**/
	static function item_openclose(all:Bool):Void;
	/**
		Rename item under cursor
	**/
	static function item_rename():Void;
	/**
		Add selected items (blue-gray rows) to active Keying Set
	**/
	static function keyingset_add_selected():Void;
	/**
		Remove selected items (blue-gray rows) from active Keying Set
	**/
	static function keyingset_remove_selected():Void;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
		@param type Library OperationRENAME Rename.DELETE Delete, Delete this library and all its item from Blender - WARNING: no undo.RELOCATE Relocate, Select a new path for this library, and reload all its data.RELOAD Reload, Reload all data from this library. — enum in ['RENAME', 'DELETE', 'RELOCATE', 'RELOAD'], (optional)
	**/
	static function lib_operation(type:bpy.ops.outliner.Outliner.Enum9):Void;
	/**
		Relocate the library under cursor
	**/
	static function lib_relocate():Void;
	/**
		Drag material to object in Outliner
	**/
	static function material_drop():Void;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
		@param type Modifier Operation — enum in ['TOGVIS', 'TOGREN', 'DELETE'], (optional)
	**/
	static function modifier_operation(type:bpy.ops.outliner.Outliner.Enum10):Void;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
		@param type Object OperationSELECT Select.DESELECT Deselect.SELECT_HIERARCHY Select Hierarchy.DELETE Delete.DELETE_HIERARCHY Delete Hierarchy.REMAP Remap Users, Make all users of selected data-blocks to use instead a new chosen one.RENAME Rename.OBJECT_MODE_ENTER Enter Mode.OBJECT_MODE_EXIT Exit Mode. — enum in ['SELECT', 'DESELECT', 'SELECT_HIERARCHY', 'DELETE', 'DELETE_HIERARCHY', 'REMAP', 'RENAME', 'OBJECT_MODE_ENTER', 'OBJECT_MODE_EXIT'], (optional)
	**/
	static function object_operation(type:bpy.ops.outliner.Outliner.Enum11):Void;
	/**
		Context menu for item operations
	**/
	static function operation():Void;
	/**
		Clear all orphaned data-blocks without any users from the file (cannot be undone, saves to current .blend file)
	**/
	static function orphans_purge():Void;
	/**
		Drag to clear parent in Outliner
	**/
	static function parent_clear():Void;
	/**
		Drag to parent in Outliner
		@param child Child, Child Object — string, (optional, never None)
		@param parent Parent, Parent Object — string, (optional, never None)
		@param type Type — enum in ['OBJECT', 'ARMATURE', 'ARMATURE_NAME', 'ARMATURE_AUTO', 'ARMATURE_ENVELOPE', 'BONE', 'BONE_RELATIVE', 'CURVE', 'FOLLOW', 'PATH_CONST', 'LATTICE', 'VERTEX', 'VERTEX_TRI'], (optional)
	**/
	static function parent_drop(child:String, parent:String, type:bpy.ops.outliner.Outliner.Enum12):Void;
	/**
		Drag object to scene in Outliner
	**/
	static function scene_drop():Void;
	/**
		Context menu for scene operations
		@param type Scene Operation — enum in ['DELETE'], (optional)
	**/
	static function scene_operation(type:bpy.ops.outliner.Outliner.Enum13):Void;
	/**
		Scroll page up or down
		@param up Up, Scroll up one page — boolean, (optional)
	**/
	static function scroll_page(up:Bool):Void;
	/**
		Toggle the Outliner selection of items
		@param action Action, Selection action to executeTOGGLE Toggle, Toggle selection for all elements.SELECT Select, Select all elements.DESELECT Deselect, Deselect all elements.INVERT Invert, Invert selection of all elements. — enum in ['TOGGLE', 'SELECT', 'DESELECT', 'INVERT'], (optional)
	**/
	static function select_all(action:bpy.ops.outliner.Outliner.Enum14):Void;
	/**
		Use box selection to select tree elements
		@param xmin X Min — int in [-inf, inf], (optional)
		@param xmax X Max — int in [-inf, inf], (optional)
		@param ymin Y Min — int in [-inf, inf], (optional)
		@param ymax Y Max — int in [-inf, inf], (optional)
		@param deselect Deselect, Deselect rather than select items — boolean, (optional)
	**/
	static function select_box(xmin:Int, xmax:Int, ymin:Int, ymax:Int, deselect:Bool):Void;
	/**
		Open up the tree and adjust the view so that the active Object is shown centered
	**/
	static function show_active():Void;
	/**
		Open all object entries and close all others
	**/
	static function show_hierarchy():Void;
	/**
		Expand/collapse all entries by one level
		@param open Open, Expand all entries one level deep — boolean, (optional)
	**/
	static function show_one_level(open:Bool):Void;
}