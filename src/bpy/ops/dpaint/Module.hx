package bpy.ops.dpaint;
/**
	Dpaint Operators
**/
@:pythonImport("bpy.ops.dpaint") extern class Module {
	/**
		Bake dynamic paint image sequence surface
	**/
	static function bake():Void;
	/**
		Add or remove Dynamic Paint output data layer
		@param output Output Toggle — enum in ['A', 'B'], (optional)
	**/
	static function output_toggle(output:bpy.ops.dpaint.Dpaint.Enum1):Void;
	/**
		Add a new Dynamic Paint surface slot
	**/
	static function surface_slot_add():Void;
	/**
		Remove the selected surface slot
	**/
	static function surface_slot_remove():Void;
	/**
		Toggle whether given type is active or not
		@param type Type — enum in ['CANVAS', 'BRUSH'], (optional)
	**/
	static function type_toggle(type:bpy.ops.dpaint.Dpaint.Enum2):Void;
}