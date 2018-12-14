package bpy.ops.gizmogroup;
/**
	Gizmogroup Operators
**/
@:pythonImport("bpy.ops.gizmogroup") extern class Module {
	/**
		Select the currently highlighted gizmo
		@param extend Extend, Extend selection instead of deselecting everything first — boolean, (optional)
		@param deselect Deselect, Remove from selection — boolean, (optional)
		@param toggle Toggle Selection, Toggle the selection — boolean, (optional)
	**/
	static function gizmo_select(extend:Bool, deselect:Bool, toggle:Bool):Void;
	/**
		Tweak the active gizmo
	**/
	static function gizmo_tweak():Void;
}