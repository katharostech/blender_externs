package bpy.types.themeclipeditor;
/**
	Theme settings for the Movie Clip Editor
**/
@:pythonImport("bpy.types.ThemeClipEditor") extern class ThemeClipEditor {
	/**
		Color of active marker
		
		Type: float array of 3 items in [0, 1], default (0.0, 0.0, 0.0)
	**/
	var active_marker : Array<Float>;
	/**
		Color of disabled marker
		
		Type: float array of 3 items in [0, 1], default (0.0, 0.0, 0.0)
	**/
	var disabled_marker : Array<Float>;
	/**
		
		
		Type: float array of 3 items in [0, 1], default (0.0, 0.0, 0.0)
	**/
	var frame_current : Array<Float>;
	/**
		
		
		Type: float array of 3 items in [0, 1], default (0.0, 0.0, 0.0)
	**/
	var gp_vertex : Array<Float>;
	/**
		
		
		Type: float array of 3 items in [0, 1], default (0.0, 0.0, 0.0)
	**/
	var gp_vertex_select : Array<Float>;
	/**
		
		
		Type: int in [1, 10], default 0
	**/
	var gp_vertex_size : Int;
	/**
		
		
		Type: float array of 3 items in [0, 1], default (0.0, 0.0, 0.0)
	**/
	var handle_align : Array<Float>;
	/**
		
		
		Type: float array of 3 items in [0, 1], default (0.0, 0.0, 0.0)
	**/
	var handle_auto : Array<Float>;
	/**
		
		
		Type: float array of 3 items in [0, 1], default (0.0, 0.0, 0.0)
	**/
	var handle_auto_clamped : Array<Float>;
	/**
		
		
		Type: float array of 3 items in [0, 1], default (0.0, 0.0, 0.0)
	**/
	var handle_free : Array<Float>;
	/**
		
		
		Type: float array of 3 items in [0, 1], default (0.0, 0.0, 0.0)
	**/
	var handle_sel_align : Array<Float>;
	/**
		
		
		Type: float array of 3 items in [0, 1], default (0.0, 0.0, 0.0)
	**/
	var handle_sel_auto : Array<Float>;
	/**
		
		
		Type: float array of 3 items in [0, 1], default (0.0, 0.0, 0.0)
	**/
	var handle_sel_auto_clamped : Array<Float>;
	/**
		
		
		Type: float array of 3 items in [0, 1], default (0.0, 0.0, 0.0)
	**/
	var handle_sel_free : Array<Float>;
	/**
		
		
		Type: float array of 3 items in [0, 1], default (0.0, 0.0, 0.0)
	**/
	var handle_vertex : Array<Float>;
	/**
		
		
		Type: float array of 3 items in [0, 1], default (0.0, 0.0, 0.0)
	**/
	var handle_vertex_select : Array<Float>;
	/**
		
		
		Type: int in [1, 100], default 0
	**/
	var handle_vertex_size : Int;
	/**
		Color of locked marker
		
		Type: float array of 3 items in [0, 1], default (0.0, 0.0, 0.0)
	**/
	var locked_marker : Array<Float>;
	/**
		Color of marker
		
		Type: float array of 3 items in [0, 1], default (0.0, 0.0, 0.0)
	**/
	var marker : Array<Float>;
	/**
		Color of marker’s outline
		
		Type: float array of 3 items in [0, 1], default (0.0, 0.0, 0.0)
	**/
	var marker_outline : Array<Float>;
	/**
		Color of path after current frame
		
		Type: float array of 3 items in [0, 1], default (0.0, 0.0, 0.0)
	**/
	var path_after : Array<Float>;
	/**
		Color of path before current frame
		
		Type: float array of 3 items in [0, 1], default (0.0, 0.0, 0.0)
	**/
	var path_before : Array<Float>;
	/**
		Color of selected marker
		
		Type: float array of 3 items in [0, 1], default (0.0, 0.0, 0.0)
	**/
	var selected_marker : Array<Float>;
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
		
		
		Type: float array of 3 items in [0, 1], default (0.0, 0.0, 0.0)
	**/
	var strips : Array<Float>;
	/**
		
		
		Type: float array of 3 items in [0, 1], default (0.0, 0.0, 0.0)
	**/
	var strips_selected : Array<Float>;
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