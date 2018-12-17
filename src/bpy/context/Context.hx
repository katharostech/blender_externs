package bpy.context;
@:enum abstract Enum1(String) from String to String {
	var EDIT_MESH : String = "EDIT_MESH";
	var EDIT_CURVE : String = "EDIT_CURVE";
	var EDIT_SURFACE : String = "EDIT_SURFACE";
	var EDIT_TEXT : String = "EDIT_TEXT";
	var EDIT_ARMATURE : String = "EDIT_ARMATURE";
	var EDIT_METABALL : String = "EDIT_METABALL";
	var EDIT_LATTICE : String = "EDIT_LATTICE";
	var POSE : String = "POSE";
	var SCULPT : String = "SCULPT";
	var PAINT_WEIGHT : String = "PAINT_WEIGHT";
	var PAINT_VERTEX : String = "PAINT_VERTEX";
	var PAINT_TEXTURE : String = "PAINT_TEXTURE";
	var PARTICLE : String = "PARTICLE";
	var OBJECT : String = "OBJECT";
	var GPENCIL_PAINT : String = "GPENCIL_PAINT";
	var GPENCIL_EDIT : String = "GPENCIL_EDIT";
	var GPENCIL_SCULPT : String = "GPENCIL_SCULPT";
	var GPENCIL_WEIGHT : String = "GPENCIL_WEIGHT";
}