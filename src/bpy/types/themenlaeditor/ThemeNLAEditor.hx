package bpy.types.themenlaeditor;
/**
	Theme settings for the NLA Editor
**/
@:native("bpy.types.ThemeNLAEditor") extern class ThemeNLAEditor {
	/**
		Animation data-block has active action
		
		Type: float array of 4 items in [0, 1], default (0.0, 0.0, 0.0, 0.0)
	**/
	var active_action : Array<Float>;
	/**
		Animation data-block doesn’t have active action
		
		Type: float array of 4 items in [0, 1], default (0.0, 0.0, 0.0, 0.0)
	**/
	var active_action_unset : Array<Float>;
	/**
		
		
		Type: float array of 3 items in [0, 1], default (0.0, 0.0, 0.0)
	**/
	var frame_current : Array<Float>;
	/**
		
		
		Type: float array of 3 items in [0, 1], default (0.0, 0.0, 0.0)
	**/
	var grid : Array<Float>;
	/**
		Color of keyframe border
		
		Type: float array of 4 items in [0, 1], default (0.0, 0.0, 0.0, 0.0)
	**/
	var keyframe_border : Array<Float>;
	/**
		Color of selected keyframe border
		
		Type: float array of 4 items in [0, 1], default (0.0, 0.0, 0.0, 0.0)
	**/
	var keyframe_border_selected : Array<Float>;
	/**
		Meta Strip - Unselected (for grouping related strips)
		
		Type: float array of 3 items in [0, 1], default (0.0, 0.0, 0.0)
	**/
	var meta_strips : Array<Float>;
	/**
		Meta Strip - Selected (for grouping related strips)
		
		Type: float array of 3 items in [0, 1], default (0.0, 0.0, 0.0)
	**/
	var meta_strips_selected : Array<Float>;
	/**
		Color of preview range overlay
		
		Type: float array of 4 items in [0, 1], default (0.0, 0.0, 0.0, 0.0)
	**/
	var preview_range : Array<Float>;
	/**
		Sound Strip - Unselected (for timing speaker sounds)
		
		Type: float array of 3 items in [0, 1], default (0.0, 0.0, 0.0)
	**/
	var sound_strips : Array<Float>;
	/**
		Sound Strip - Selected (for timing speaker sounds)
		
		Type: float array of 3 items in [0, 1], default (0.0, 0.0, 0.0)
	**/
	var sound_strips_selected : Array<Float>;
	/**
		Settings for space
		
		Type: ThemeSpaceGeneric, (readonly, never None)
	**/
	var space(default, never) : bpy.types.themespacegeneric.ThemeSpaceGeneric;
	/**
		Settings for space list
		
		Type: ThemeSpaceListGeneric, (readonly, never None)
	**/
	var space_list(default, never) : bpy.types.themespacelistgeneric.ThemeSpaceListGeneric;
	/**
		Action-Clip Strip - Unselected
		
		Type: float array of 3 items in [0, 1], default (0.0, 0.0, 0.0)
	**/
	var strips : Array<Float>;
	/**
		Action-Clip Strip - Selected
		
		Type: float array of 3 items in [0, 1], default (0.0, 0.0, 0.0)
	**/
	var strips_selected : Array<Float>;
	/**
		Transition Strip - Unselected
		
		Type: float array of 3 items in [0, 1], default (0.0, 0.0, 0.0)
	**/
	var transition_strips : Array<Float>;
	/**
		Transition Strip - Selected
		
		Type: float array of 3 items in [0, 1], default (0.0, 0.0, 0.0)
	**/
	var transition_strips_selected : Array<Float>;
	/**
		Color for strip/action being ‘tweaked’ or edited
		
		Type: float array of 3 items in [0, 1], default (0.0, 0.0, 0.0)
	**/
	var tweak : Array<Float>;
	/**
		Warning/error indicator color for strips referencing the strip being tweaked
		
		Type: float array of 3 items in [0, 1], default (0.0, 0.0, 0.0)
	**/
	var tweak_duplicate : Array<Float>;
	/**
		
		
		Type: float array of 3 items in [0, 1], default (0.0, 0.0, 0.0)
	**/
	var view_sliders : Array<Float>;
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