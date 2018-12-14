package bpy.types.themespacegeneric;
@:pythonImport("bpy.types.ThemeSpaceGeneric") extern class ThemeSpaceGeneric {
	/**
		
		
		Type: float array of 3 items in [0, 1], default (0.0, 0.0, 0.0)
	**/
	var back : Array<Float>;
	/**
		
		
		Type: float array of 4 items in [0, 1], default (0.0, 0.0, 0.0, 0.0)
	**/
	var button : Array<Float>;
	/**
		
		
		Type: float array of 3 items in [0, 1], default (0.0, 0.0, 0.0)
	**/
	var button_text : Array<Float>;
	/**
		
		
		Type: float array of 3 items in [0, 1], default (0.0, 0.0, 0.0)
	**/
	var button_text_hi : Array<Float>;
	/**
		
		
		Type: float array of 3 items in [0, 1], default (0.0, 0.0, 0.0)
	**/
	var button_title : Array<Float>;
	/**
		
		
		Type: float array of 4 items in [0, 1], default (0.0, 0.0, 0.0, 0.0)
	**/
	var header : Array<Float>;
	/**
		
		
		Type: float array of 3 items in [0, 1], default (0.0, 0.0, 0.0)
	**/
	var header_text : Array<Float>;
	/**
		
		
		Type: float array of 3 items in [0, 1], default (0.0, 0.0, 0.0)
	**/
	var header_text_hi : Array<Float>;
	/**
		
		
		Type: float array of 4 items in [0, 1], default (0.0, 0.0, 0.0, 0.0)
	**/
	var navigation_bar : Array<Float>;
	/**
		
		
		Type: ThemePanelColors, (readonly, never None)
	**/
	var panelcolors(default, never) : bpy.types.themepanelcolors.ThemePanelColors;
	/**
		
		
		Type: float array of 3 items in [0, 1], default (0.0, 0.0, 0.0)
	**/
	var tab_active : Array<Float>;
	/**
		
		
		Type: float array of 4 items in [0, 1], default (0.0, 0.0, 0.0, 0.0)
	**/
	var tab_back : Array<Float>;
	/**
		
		
		Type: float array of 3 items in [0, 1], default (0.0, 0.0, 0.0)
	**/
	var tab_inactive : Array<Float>;
	/**
		
		
		Type: float array of 3 items in [0, 1], default (0.0, 0.0, 0.0)
	**/
	var tab_outline : Array<Float>;
	/**
		
		
		Type: float array of 3 items in [0, 1], default (0.0, 0.0, 0.0)
	**/
	var text : Array<Float>;
	/**
		
		
		Type: float array of 3 items in [0, 1], default (0.0, 0.0, 0.0)
	**/
	var text_hi : Array<Float>;
	/**
		
		
		Type: float array of 3 items in [0, 1], default (0.0, 0.0, 0.0)
	**/
	var title : Array<Float>;
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