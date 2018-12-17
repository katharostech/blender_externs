package bpy.types.shaderfxswirl;
/**
	Swirl effect
**/
@:native("bpy.types.ShaderFxSwirl") extern class ShaderFxSwirl {
	/**
		Angle of rotation
		
		Type: float in [-31.4159, 31.4159], default 0.0
	**/
	var angle : Float;
	/**
		Object to determine center location
		
		Type: Object
	**/
	var object : bpy.types.object.Object;
	/**
		Radius to apply
		
		Type: int in [0, inf], default 0
	**/
	var radius : Int;
	/**
		Make image transparent outside of radius
		
		Type: boolean, default False
	**/
	var transparent : Bool;
	/**
		
		@param id The RNA type identifier. — string
		
		@returns bpy.types.Struct subclass
	**/
	static function bl_rna_get_subclass(id:String):bpy.types.struct.Struct;
	/**
		
		@param id The RNA type identifier. — string
		
		@returns type
	**/
	static function bl_rna_get_subclass_py(id:String):Dynamic;
	/**
		Effect name
		
		Type: string, default “”, (never None)
	**/
	var name : String;
	/**
		
		
		Type: enum in [‘FX_BLUR’, ‘FX_COLORIZE’, ‘FX_FLIP’, ‘FX_GLOW’, ‘FX_LIGHT’, ‘FX_PIXEL’, ‘FX_RIM’, ‘FX_SHADOW’, ‘FX_SWIRL’, ‘FX_WAVE’], default ‘FX_BLUR’, (readonly)
	**/
	var type(default, never) : bpy.types.shaderfx.ShaderFx.Enum1;
	/**
		Display effect in viewport
		
		Type: boolean, default False
	**/
	var show_viewport : Bool;
	/**
		Use effect during render
		
		Type: boolean, default False
	**/
	var show_render : Bool;
	/**
		Display effect in Edit mode
		
		Type: boolean, default False
	**/
	var show_in_editmode : Bool;
	/**
		Set effect expanded in the user interface
		
		Type: boolean, default False
	**/
	var show_expanded : Bool;
}