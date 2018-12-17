package bpy.types.themeuserinterface;
/**
	Theme settings for user interface elements
**/
@:native("bpy.types.ThemeUserInterface") extern class ThemeUserInterface {
	/**
		
		
		Type: float array of 3 items in [0, 1], default (0.0, 0.0, 0.0)
	**/
	var axis_x : Array<Float>;
	/**
		
		
		Type: float array of 3 items in [0, 1], default (0.0, 0.0, 0.0)
	**/
	var axis_y : Array<Float>;
	/**
		
		
		Type: float array of 3 items in [0, 1], default (0.0, 0.0, 0.0)
	**/
	var axis_z : Array<Float>;
	/**
		Color of the outline of the editors and their round corners
		
		Type: float array of 3 items in [0, 1], default (0.0, 0.0, 0.0)
	**/
	var editor_outline : Array<Float>;
	/**
		
		
		Type: float array of 3 items in [0, 1], default (0.0, 0.0, 0.0)
	**/
	var gizmo_a : Array<Float>;
	/**
		
		
		Type: float array of 3 items in [0, 1], default (0.0, 0.0, 0.0)
	**/
	var gizmo_b : Array<Float>;
	/**
		
		
		Type: float array of 3 items in [0, 1], default (0.0, 0.0, 0.0)
	**/
	var gizmo_hi : Array<Float>;
	/**
		
		
		Type: float array of 3 items in [0, 1], default (0.0, 0.0, 0.0)
	**/
	var gizmo_primary : Array<Float>;
	/**
		
		
		Type: float array of 3 items in [0, 1], default (0.0, 0.0, 0.0)
	**/
	var gizmo_secondary : Array<Float>;
	/**
		Transparency of icons in the interface, to reduce contrast
		
		Type: float in [0, 1], default 0.0
	**/
	var icon_alpha : Float;
	/**
		
		
		Type: float array of 4 items in [0, 1], default (0.0, 0.0, 0.0, 0.0)
	**/
	var icon_collection : Array<Float>;
	/**
		
		
		Type: string, default “”, (never None)
	**/
	var icon_file : String;
	/**
		
		
		Type: float array of 4 items in [0, 1], default (0.0, 0.0, 0.0, 0.0)
	**/
	var icon_modifier : Array<Float>;
	/**
		
		
		Type: float array of 4 items in [0, 1], default (0.0, 0.0, 0.0, 0.0)
	**/
	var icon_object : Array<Float>;
	/**
		
		
		Type: float array of 4 items in [0, 1], default (0.0, 0.0, 0.0, 0.0)
	**/
	var icon_object_data : Array<Float>;
	/**
		Saturation of icons in the interface
		
		Type: float in [0, 1], default 0.0
	**/
	var icon_saturation : Float;
	/**
		
		
		Type: float array of 4 items in [0, 1], default (0.0, 0.0, 0.0, 0.0)
	**/
	var icon_shading : Array<Float>;
	/**
		Blending factor for menu shadows
		
		Type: float in [0.01, 1], default 0.0
	**/
	var menu_shadow_fac : Float;
	/**
		Width of menu shadows, set to zero to disable
		
		Type: int in [0, 24], default 0
	**/
	var menu_shadow_width : Int;
	/**
		
		
		Type: ThemeWidgetColors, (readonly, never None)
	**/
	var wcol_box(default, never) : bpy.types.themewidgetcolors.ThemeWidgetColors;
	/**
		
		
		Type: ThemeWidgetColors, (readonly, never None)
	**/
	var wcol_list_item(default, never) : bpy.types.themewidgetcolors.ThemeWidgetColors;
	/**
		
		
		Type: ThemeWidgetColors, (readonly, never None)
	**/
	var wcol_menu(default, never) : bpy.types.themewidgetcolors.ThemeWidgetColors;
	/**
		
		
		Type: ThemeWidgetColors, (readonly, never None)
	**/
	var wcol_menu_back(default, never) : bpy.types.themewidgetcolors.ThemeWidgetColors;
	/**
		
		
		Type: ThemeWidgetColors, (readonly, never None)
	**/
	var wcol_menu_item(default, never) : bpy.types.themewidgetcolors.ThemeWidgetColors;
	/**
		
		
		Type: ThemeWidgetColors, (readonly, never None)
	**/
	var wcol_num(default, never) : bpy.types.themewidgetcolors.ThemeWidgetColors;
	/**
		
		
		Type: ThemeWidgetColors, (readonly, never None)
	**/
	var wcol_numslider(default, never) : bpy.types.themewidgetcolors.ThemeWidgetColors;
	/**
		
		
		Type: ThemeWidgetColors, (readonly, never None)
	**/
	var wcol_option(default, never) : bpy.types.themewidgetcolors.ThemeWidgetColors;
	/**
		
		
		Type: ThemeWidgetColors, (readonly, never None)
	**/
	var wcol_pie_menu(default, never) : bpy.types.themewidgetcolors.ThemeWidgetColors;
	/**
		
		
		Type: ThemeWidgetColors, (readonly, never None)
	**/
	var wcol_progress(default, never) : bpy.types.themewidgetcolors.ThemeWidgetColors;
	/**
		
		
		Type: ThemeWidgetColors, (readonly, never None)
	**/
	var wcol_pulldown(default, never) : bpy.types.themewidgetcolors.ThemeWidgetColors;
	/**
		
		
		Type: ThemeWidgetColors, (readonly, never None)
	**/
	var wcol_radio(default, never) : bpy.types.themewidgetcolors.ThemeWidgetColors;
	/**
		
		
		Type: ThemeWidgetColors, (readonly, never None)
	**/
	var wcol_regular(default, never) : bpy.types.themewidgetcolors.ThemeWidgetColors;
	/**
		
		
		Type: ThemeWidgetColors, (readonly, never None)
	**/
	var wcol_scroll(default, never) : bpy.types.themewidgetcolors.ThemeWidgetColors;
	/**
		
		
		Type: ThemeWidgetStateColors, (readonly, never None)
	**/
	var wcol_state(default, never) : bpy.types.themewidgetstatecolors.ThemeWidgetStateColors;
	/**
		
		
		Type: ThemeWidgetColors, (readonly, never None)
	**/
	var wcol_tab(default, never) : bpy.types.themewidgetcolors.ThemeWidgetColors;
	/**
		
		
		Type: ThemeWidgetColors, (readonly, never None)
	**/
	var wcol_text(default, never) : bpy.types.themewidgetcolors.ThemeWidgetColors;
	/**
		
		
		Type: ThemeWidgetColors, (readonly, never None)
	**/
	var wcol_toggle(default, never) : bpy.types.themewidgetcolors.ThemeWidgetColors;
	/**
		
		
		Type: ThemeWidgetColors, (readonly, never None)
	**/
	var wcol_tool(default, never) : bpy.types.themewidgetcolors.ThemeWidgetColors;
	/**
		
		
		Type: ThemeWidgetColors, (readonly, never None)
	**/
	var wcol_toolbar_item(default, never) : bpy.types.themewidgetcolors.ThemeWidgetColors;
	/**
		
		
		Type: ThemeWidgetColors, (readonly, never None)
	**/
	var wcol_tooltip(default, never) : bpy.types.themewidgetcolors.ThemeWidgetColors;
	/**
		Color of the 1px shadow line underlying widgets
		
		Type: float array of 4 items in [0, 1], default (0.0, 0.0, 0.0, 0.0)
	**/
	var widget_emboss : Array<Float>;
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