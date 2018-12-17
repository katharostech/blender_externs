package bpy.types.themedopesheet;
/**
	Theme settings for the Dope Sheet
**/
@:native("bpy.types.ThemeDopeSheet") extern class ThemeDopeSheet {
	/**
		
		
		Type: float array of 4 items in [0, 1], default (0.0, 0.0, 0.0, 0.0)
	**/
	var active_channels_group : Array<Float>;
	/**
		
		
		Type: float array of 4 items in [0, 1], default (0.0, 0.0, 0.0, 0.0)
	**/
	var channel_group : Array<Float>;
	/**
		
		
		Type: float array of 4 items in [0, 1], default (0.0, 0.0, 0.0, 0.0)
	**/
	var channels : Array<Float>;
	/**
		
		
		Type: float array of 4 items in [0, 1], default (0.0, 0.0, 0.0, 0.0)
	**/
	var channels_selected : Array<Float>;
	/**
		
		
		Type: float array of 4 items in [0, 1], default (0.0, 0.0, 0.0, 0.0)
	**/
	var dopesheet_channel : Array<Float>;
	/**
		
		
		Type: float array of 4 items in [0, 1], default (0.0, 0.0, 0.0, 0.0)
	**/
	var dopesheet_subchannel : Array<Float>;
	/**
		
		
		Type: float array of 3 items in [0, 1], default (0.0, 0.0, 0.0)
	**/
	var frame_current : Array<Float>;
	/**
		
		
		Type: float array of 3 items in [0, 1], default (0.0, 0.0, 0.0)
	**/
	var grid : Array<Float>;
	/**
		Color of lines showing non-bezier interpolation modes
		
		Type: float array of 4 items in [0, 1], default (0.0, 0.0, 0.0, 0.0)
	**/
	var interpolation_line : Array<Float>;
	/**
		Color of Keyframe
		
		Type: float array of 3 items in [0, 1], default (0.0, 0.0, 0.0)
	**/
	var keyframe : Array<Float>;
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
		Color of breakdown keyframe
		
		Type: float array of 3 items in [0, 1], default (0.0, 0.0, 0.0)
	**/
	var keyframe_breakdown : Array<Float>;
	/**
		Color of selected breakdown keyframe
		
		Type: float array of 3 items in [0, 1], default (0.0, 0.0, 0.0)
	**/
	var keyframe_breakdown_selected : Array<Float>;
	/**
		Color of extreme keyframe
		
		Type: float array of 3 items in [0, 1], default (0.0, 0.0, 0.0)
	**/
	var keyframe_extreme : Array<Float>;
	/**
		Color of selected extreme keyframe
		
		Type: float array of 3 items in [0, 1], default (0.0, 0.0, 0.0)
	**/
	var keyframe_extreme_selected : Array<Float>;
	/**
		Color of jitter keyframe
		
		Type: float array of 3 items in [0, 1], default (0.0, 0.0, 0.0)
	**/
	var keyframe_jitter : Array<Float>;
	/**
		Color of selected jitter keyframe
		
		Type: float array of 3 items in [0, 1], default (0.0, 0.0, 0.0)
	**/
	var keyframe_jitter_selected : Array<Float>;
	/**
		Color of moving hold keyframe
		
		Type: float array of 3 items in [0, 1], default (0.0, 0.0, 0.0)
	**/
	var keyframe_movehold : Array<Float>;
	/**
		Color of selected moving hold keyframe
		
		Type: float array of 3 items in [0, 1], default (0.0, 0.0, 0.0)
	**/
	var keyframe_movehold_selected : Array<Float>;
	/**
		Scale factor for adjusting the height of keyframes
		
		Type: float in [0.8, 5], default 1.0
	**/
	var keyframe_scale_factor : Float;
	/**
		Color of selected keyframe
		
		Type: float array of 3 items in [0, 1], default (0.0, 0.0, 0.0)
	**/
	var keyframe_selected : Array<Float>;
	/**
		
		
		Type: float array of 4 items in [0, 1], default (0.0, 0.0, 0.0, 0.0)
	**/
	var long_key : Array<Float>;
	/**
		
		
		Type: float array of 4 items in [0, 1], default (0.0, 0.0, 0.0, 0.0)
	**/
	var long_key_selected : Array<Float>;
	/**
		Color of preview range overlay
		
		Type: float array of 4 items in [0, 1], default (0.0, 0.0, 0.0, 0.0)
	**/
	var preview_range : Array<Float>;
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
		Color of summary channel
		
		Type: float array of 4 items in [0, 1], default (0.0, 0.0, 0.0, 0.0)
	**/
	var summary : Array<Float>;
	/**
		
		
		Type: float array of 3 items in [0, 1], default (0.0, 0.0, 0.0)
	**/
	var value_sliders : Array<Float>;
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