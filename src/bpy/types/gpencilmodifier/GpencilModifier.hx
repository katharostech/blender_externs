package bpy.types.gpencilmodifier;
@:enum abstract Enum1(String) from String to String {
	var GP_ARRAY : String = "GP_ARRAY";
	var GP_BUILD : String = "GP_BUILD";
	var GP_MIRROR : String = "GP_MIRROR";
	var GP_SIMPLIFY : String = "GP_SIMPLIFY";
	var GP_SUBDIV : String = "GP_SUBDIV";
	var GP_ARMATURE : String = "GP_ARMATURE";
	var GP_HOOK : String = "GP_HOOK";
	var GP_LATTICE : String = "GP_LATTICE";
	var GP_NOISE : String = "GP_NOISE";
	var GP_OFFSET : String = "GP_OFFSET";
	var GP_SMOOTH : String = "GP_SMOOTH";
	var GP_THICK : String = "GP_THICK";
	var GP_TIME : String = "GP_TIME";
	var GP_COLOR : String = "GP_COLOR";
	var GP_OPACITY : String = "GP_OPACITY";
	var GP_TINT : String = "GP_TINT";
}/**
	Modifier affecting the grease pencil object
**/
@:pythonImport("bpy.types.GpencilModifier") extern class GpencilModifier {
	/**
		Modifier name
		
		Type: string, default “”, (never None)
	**/
	var name : String;
	/**
		Set modifier expanded in the user interface
		
		Type: boolean, default False
	**/
	var show_expanded : Bool;
	/**
		Display modifier in Edit mode
		
		Type: boolean, default False
	**/
	var show_in_editmode : Bool;
	/**
		Use modifier during render
		
		Type: boolean, default False
	**/
	var show_render : Bool;
	/**
		Display modifier in viewport
		
		Type: boolean, default False
	**/
	var show_viewport : Bool;
	/**
		
		
		Type: enum in [‘GP_ARRAY’, ‘GP_BUILD’, ‘GP_MIRROR’, ‘GP_SIMPLIFY’, ‘GP_SUBDIV’, ‘GP_ARMATURE’, ‘GP_HOOK’, ‘GP_LATTICE’, ‘GP_NOISE’, ‘GP_OFFSET’, ‘GP_SMOOTH’, ‘GP_THICK’, ‘GP_TIME’, ‘GP_COLOR’, ‘GP_OPACITY’, ‘GP_TINT’], default ‘GP_ARRAY’, (readonly)
	**/
	var type(default, never) : bpy.types.gpencilmodifier.GpencilModifier.Enum1;
	/**
		
		@param id The RNA type identifier. — string
		
		@returns bpy.types.Struct subclass
	**/
	static function bl_rna_get_subclass(id:Dynamic):bpy.types.struct.Struct;
	/**
		
		@param id The RNA type identifier. — string
		
		@returns type
	**/
	static function bl_rna_get_subclass_py(id:Dynamic):Dynamic;
}