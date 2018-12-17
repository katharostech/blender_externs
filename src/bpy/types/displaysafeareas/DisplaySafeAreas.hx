package bpy.types.displaysafeareas;
/**
	Safe Areas used in 3D view and the VSE
**/
@:native("bpy.types.DisplaySafeAreas") extern class DisplaySafeAreas {
	/**
		Safe area for general elements
		
		Type: float array of 2 items in [0, 1], default (0.1, 0.05)
	**/
	var action : Array<Float>;
	/**
		Safe area for general elements in a different aspect ratio
		
		Type: float array of 2 items in [0, 1], default (0.15, 0.05)
	**/
	var action_center : Array<Float>;
	/**
		Safe area for text and graphics
		
		Type: float array of 2 items in [0, 1], default (0.035, 0.035)
	**/
	var title : Array<Float>;
	/**
		Safe area for text and graphics in a different aspect ratio
		
		Type: float array of 2 items in [0, 1], default (0.175, 0.05)
	**/
	var title_center : Array<Float>;
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
}