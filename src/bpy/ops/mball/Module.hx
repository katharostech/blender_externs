package bpy.ops.mball;
/**
	Mball Operators
**/
@:pythonImport("bpy.ops.mball") extern class Module {
	/**
		Delete selected metaelement(s)
	**/
	static function delete_metaelems():Void;
	/**
		Duplicate selected metaelement(s)
	**/
	static function duplicate_metaelems():Void;
	/**
		Make copies of the selected metaelements and move them
		@param MBALL_OT_duplicate_metaelems Duplicate Metaelements, Duplicate selected metaelement(s) — MBALL_OT_duplicate_metaelems, (optional)
		@param TRANSFORM_OT_translate Move, Move selected items — TRANSFORM_OT_translate, (optional)
	**/
	static function duplicate_move(MBALL_OT_duplicate_metaelems:Dynamic, TRANSFORM_OT_translate:Dynamic):Void;
	/**
		Hide (un)selected metaelement(s)
		@param unselected Unselected, Hide unselected rather than selected — boolean, (optional)
	**/
	static function hide_metaelems(unselected:Bool):Void;
	/**
		Reveal all hidden metaelements
		@param select Select — boolean, (optional)
	**/
	static function reveal_metaelems(select:Bool):Void;
	/**
		Change selection of all meta elements
		@param action Action, Selection action to executeTOGGLE Toggle, Toggle selection for all elements.SELECT Select, Select all elements.DESELECT Deselect, Deselect all elements.INVERT Invert, Invert selection of all elements. — enum in ['TOGGLE', 'SELECT', 'DESELECT', 'INVERT'], (optional)
	**/
	static function select_all(action:bpy.ops.mball.Mball.Enum1):Void;
	/**
		Randomly select metaelements
		@param percent Percent, Percentage of objects to select randomly — float in [0, 100], (optional)
		@param seed Random Seed, Seed for the random number generator — int in [0, inf], (optional)
		@param action Action, Selection action to executeSELECT Select, Select all elements.DESELECT Deselect, Deselect all elements. — enum in ['SELECT', 'DESELECT'], (optional)
	**/
	static function select_random_metaelems(percent:Float, seed:Int, action:bpy.ops.mball.Mball.Enum2):Void;
	/**
		Select similar metaballs by property types
		@param type Type — enum in ['TYPE', 'RADIUS', 'STIFFNESS', 'ROTATION'], (optional)
		@param threshold Threshold — float in [0, inf], (optional)
	**/
	static function select_similar(type:bpy.ops.mball.Mball.Enum3, threshold:Float):Void;
}