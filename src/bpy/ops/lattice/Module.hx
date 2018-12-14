package bpy.ops.lattice;
/**
	Lattice Operators
**/
@:pythonImport("bpy.ops.lattice") extern class Module {
	/**
		Mirror all control points without inverting the lattice deform
		@param axis Flip Axis, Coordinates along this axis get flipped — enum in ['U', 'V', 'W'], (optional)
	**/
	static function flip(axis:bpy.ops.lattice.Lattice.Enum1):Void;
	/**
		Set UVW control points a uniform distance apart
	**/
	static function make_regular():Void;
	/**
		Change selection of all UVW control points
		@param action Action, Selection action to executeTOGGLE Toggle, Toggle selection for all elements.SELECT Select, Select all elements.DESELECT Deselect, Deselect all elements.INVERT Invert, Invert selection of all elements. — enum in ['TOGGLE', 'SELECT', 'DESELECT', 'INVERT'], (optional)
	**/
	static function select_all(action:bpy.ops.lattice.Lattice.Enum2):Void;
	/**
		Deselect vertices at the boundary of each selection region
	**/
	static function select_less():Void;
	/**
		Select mirrored lattice points
		@param axis Axis — enum set in {'X', 'Y', 'Z'}, (optional)
		@param extend Extend, Extend the selection — boolean, (optional)
	**/
	static function select_mirror(axis:Dynamic, extend:Bool):Void;
	/**
		Select vertex directly linked to already selected ones
	**/
	static function select_more():Void;
	/**
		Randomly select UVW control points
		@param percent Percent, Percentage of objects to select randomly — float in [0, 100], (optional)
		@param seed Random Seed, Seed for the random number generator — int in [0, inf], (optional)
		@param action Action, Selection action to executeSELECT Select, Select all elements.DESELECT Deselect, Deselect all elements. — enum in ['SELECT', 'DESELECT'], (optional)
	**/
	static function select_random(percent:Float, seed:Int, action:bpy.ops.lattice.Lattice.Enum3):Void;
	/**
		Select vertices without a group
		@param extend Extend, Extend the selection — boolean, (optional)
	**/
	static function select_ungrouped(extend:Bool):Void;
}