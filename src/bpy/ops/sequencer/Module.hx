package bpy.ops.sequencer;
/**
	Sequencer Operators
**/
@:pythonImport("bpy.ops.sequencer") extern class Module {
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
		@param swap Swap, The effect inputs to swap — enum in ['A_B', 'B_C', 'A_C'], (optional)
	**/
	static function change_effect_input(swap:bpy.ops.sequencer.Sequencer.Enum1):Void;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
		@param type Type, Sequencer effect typeCROSS Crossfade, Crossfade effect strip type.ADD Add, Add effect strip type.SUBTRACT Subtract, Subtract effect strip type.ALPHA_OVER Alpha Over, Alpha Over effect strip type.ALPHA_UNDER Alpha Under, Alpha Under effect strip type.GAMMA_CROSS Gamma Cross, Gamma Cross effect strip type.MULTIPLY Multiply, Multiply effect strip type.OVER_DROP Alpha Over Drop, Alpha Over Drop effect strip type.WIPE Wipe, Wipe effect strip type.GLOW Glow, Glow effect strip type.TRANSFORM Transform, Transform effect strip type.COLOR Color, Color effect strip type.SPEED Speed, Color effect strip type.MULTICAM Multicam Selector.ADJUSTMENT Adjustment Layer.GAUSSIAN_BLUR Gaussian Blur.TEXT Text.COLORMIX Color Mix. — enum in ['CROSS', 'ADD', 'SUBTRACT', 'ALPHA_OVER', 'ALPHA_UNDER', 'GAMMA_CROSS', 'MULTIPLY', 'OVER_DROP', 'WIPE', 'GLOW', 'TRANSFORM', 'COLOR', 'SPEED', 'MULTICAM', 'ADJUSTMENT', 'GAUSSIAN_BLUR', 'TEXT', 'COLORMIX'], (optional)
	**/
	static function change_effect_type(type:bpy.ops.sequencer.Sequencer.Enum2):Void;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
		@param filepath File Path, Path to file — string, (optional, never None)
		@param directory Directory, Directory of the file — string, (optional, never None)
		@param files Files — bpy_prop_collection of OperatorFileListElement, (optional)
		@param filter_blender Filter .blend files — boolean, (optional)
		@param filter_backup Filter .blend files — boolean, (optional)
		@param filter_image Filter image files — boolean, (optional)
		@param filter_movie Filter movie files — boolean, (optional)
		@param filter_python Filter python files — boolean, (optional)
		@param filter_font Filter font files — boolean, (optional)
		@param filter_sound Filter sound files — boolean, (optional)
		@param filter_text Filter text files — boolean, (optional)
		@param filter_btx Filter btx files — boolean, (optional)
		@param filter_collada Filter COLLADA files — boolean, (optional)
		@param filter_alembic Filter Alembic files — boolean, (optional)
		@param filter_folder Filter folders — boolean, (optional)
		@param filter_blenlib Filter Blender IDs — boolean, (optional)
		@param filemode File Browser Mode, The setting for the file browser mode to load a .blend file, a library or a special file — int in [1, 9], (optional)
		@param relative_path Relative Path, Select the file relative to the blend file — boolean, (optional)
		@param display_type Display TypeDEFAULT Default, Automatically determine display type for files.LIST_SHORT Short List, Display files as short list.LIST_LONG Long List, Display files as a detailed list.THUMBNAIL Thumbnails, Display files as thumbnails. — enum in ['DEFAULT', 'LIST_SHORT', 'LIST_LONG', 'THUMBNAIL'], (optional)
		@param sort_method File sorting modeFILE_SORT_ALPHA Sort alphabetically, Sort the file list alphabetically.FILE_SORT_EXTENSION Sort by extension, Sort the file list by extension/type.FILE_SORT_TIME Sort by time, Sort files by modification time.FILE_SORT_SIZE Sort by size, Sort files by size. — enum in ['FILE_SORT_ALPHA', 'FILE_SORT_EXTENSION', 'FILE_SORT_TIME', 'FILE_SORT_SIZE'], (optional)
		@param use_placeholders Use Placeholders, Use placeholders for missing frames of the strip — boolean, (optional)
	**/
	static function change_path(filepath:String, directory:String, files:Dynamic, filter_blender:Bool, filter_backup:Bool, filter_image:Bool, filter_movie:Bool, filter_python:Bool, filter_font:Bool, filter_sound:Bool, filter_text:Bool, filter_btx:Bool, filter_collada:Bool, filter_alembic:Bool, filter_folder:Bool, filter_blenlib:Bool, filemode:Int, relative_path:Bool, display_type:bpy.ops.sequencer.Sequencer.Enum3, sort_method:bpy.ops.sequencer.Sequencer.Enum4, use_placeholders:Bool):Void;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	static function copy():Void;
	/**
		Do cross-fading volume animation of two selected sound strips
	**/
	static function crossfade_sounds():Void;
	/**
		Cut the selected strips
		@param frame Frame, Frame where selected strips will be cut — int in [-inf, inf], (optional)
		@param type Type, The type of cut operation to perform on strips — enum in ['SOFT', 'HARD'], (optional)
		@param side Side, The side that remains selected after cutting — enum in ['MOUSE', 'LEFT', 'RIGHT', 'BOTH'], (optional)
	**/
	static function cut(frame:Int, type:bpy.ops.sequencer.Sequencer.Enum5, side:bpy.ops.sequencer.Sequencer.Enum6):Void;
	/**
		Cut multi-cam strip and select camera
		@param camera Camera — int in [1, 32], (optional)
	**/
	static function cut_multicam(camera:Int):Void;
	/**
		Deinterlace all selected movie sources
	**/
	static function deinterlace_selected_movies():Void;
	/**
		Erase selected strips from the sequencer
	**/
	static function delete():Void;
	/**
		Duplicate the selected strips
		@param mode Mode — enum in ['INIT', 'DUMMY', 'TRANSLATION', 'ROTATION', 'RESIZE', 'SKIN_RESIZE', 'TOSPHERE', 'SHEAR', 'BEND', 'SHRINKFATTEN', 'TILT', 'TRACKBALL', 'PUSHPULL', 'CREASE', 'MIRROR', 'BONE_SIZE', 'BONE_ENVELOPE', 'BONE_ENVELOPE_DIST', 'CURVE_SHRINKFATTEN', 'MASK_SHRINKFATTEN', 'GPENCIL_SHRINKFATTEN', 'BONE_ROLL', 'TIME_TRANSLATE', 'TIME_SLIDE', 'TIME_SCALE', 'TIME_EXTEND', 'BAKE_TIME', 'BWEIGHT', 'ALIGN', 'EDGESLIDE', 'SEQSLIDE'], (optional)
	**/
	static function duplicate(mode:bpy.ops.sequencer.Sequencer.Enum7):Void;
	/**
		Duplicate selected strips and move them
		@param SEQUENCER_OT_duplicate Duplicate Strips, Duplicate the selected strips — SEQUENCER_OT_duplicate, (optional)
		@param TRANSFORM_OT_seq_slide Sequence Slide, Slide a sequence strip in time — TRANSFORM_OT_seq_slide, (optional)
	**/
	static function duplicate_move(SEQUENCER_OT_duplicate:Dynamic, TRANSFORM_OT_seq_slide:Dynamic):Void;
	/**
		Add an effect to the sequencer, most are applied on top of existing strips
		@param frame_start Start Frame, Start frame of the sequence strip — int in [-inf, inf], (optional)
		@param frame_end End Frame, End frame for the color strip — int in [-inf, inf], (optional)
		@param channel Channel, Channel to place this strip into — int in [1, 32], (optional)
		@param replace_sel Replace Selection, Replace the current selection — boolean, (optional)
		@param overlap Allow Overlap, Don’t correct overlap on new sequence strips — boolean, (optional)
		@param type Type, Sequencer effect typeCROSS Crossfade, Crossfade effect strip type.ADD Add, Add effect strip type.SUBTRACT Subtract, Subtract effect strip type.ALPHA_OVER Alpha Over, Alpha Over effect strip type.ALPHA_UNDER Alpha Under, Alpha Under effect strip type.GAMMA_CROSS Gamma Cross, Gamma Cross effect strip type.MULTIPLY Multiply, Multiply effect strip type.OVER_DROP Alpha Over Drop, Alpha Over Drop effect strip type.WIPE Wipe, Wipe effect strip type.GLOW Glow, Glow effect strip type.TRANSFORM Transform, Transform effect strip type.COLOR Color, Color effect strip type.SPEED Speed, Color effect strip type.MULTICAM Multicam Selector.ADJUSTMENT Adjustment Layer.GAUSSIAN_BLUR Gaussian Blur.TEXT Text.COLORMIX Color Mix. — enum in ['CROSS', 'ADD', 'SUBTRACT', 'ALPHA_OVER', 'ALPHA_UNDER', 'GAMMA_CROSS', 'MULTIPLY', 'OVER_DROP', 'WIPE', 'GLOW', 'TRANSFORM', 'COLOR', 'SPEED', 'MULTICAM', 'ADJUSTMENT', 'GAUSSIAN_BLUR', 'TEXT', 'COLORMIX'], (optional)
		@param color Color, Initialize the strip with this color (only used when type=’COLOR’) — float array of 3 items in [0, 1], (optional)
	**/
	static function effect_strip_add(frame_start:Int, frame_end:Int, channel:Int, replace_sel:Bool, overlap:Bool, type:bpy.ops.sequencer.Sequencer.Enum8, color:Array<Float>):Void;
	/**
		Enable selected proxies on all selected Movie strips
		@param proxy_25 25% — boolean, (optional)
		@param proxy_50 50% — boolean, (optional)
		@param proxy_75 75% — boolean, (optional)
		@param proxy_100 100% — boolean, (optional)
		@param overwrite Overwrite — boolean, (optional)
	**/
	static function enable_proxies(proxy_25:Bool, proxy_50:Bool, proxy_75:Bool, proxy_100:Bool, overwrite:Bool):Void;
	/**
		Export .srt file containing text strips
		@param filepath File Path, Path to file — string, (optional, never None)
		@param check_existing Check Existing, Check and warn on overwriting existing files — boolean, (optional)
		@param filter_blender Filter .blend files — boolean, (optional)
		@param filter_backup Filter .blend files — boolean, (optional)
		@param filter_image Filter image files — boolean, (optional)
		@param filter_movie Filter movie files — boolean, (optional)
		@param filter_python Filter python files — boolean, (optional)
		@param filter_font Filter font files — boolean, (optional)
		@param filter_sound Filter sound files — boolean, (optional)
		@param filter_text Filter text files — boolean, (optional)
		@param filter_btx Filter btx files — boolean, (optional)
		@param filter_collada Filter COLLADA files — boolean, (optional)
		@param filter_alembic Filter Alembic files — boolean, (optional)
		@param filter_folder Filter folders — boolean, (optional)
		@param filter_blenlib Filter Blender IDs — boolean, (optional)
		@param filemode File Browser Mode, The setting for the file browser mode to load a .blend file, a library or a special file — int in [1, 9], (optional)
		@param display_type Display TypeDEFAULT Default, Automatically determine display type for files.LIST_SHORT Short List, Display files as short list.LIST_LONG Long List, Display files as a detailed list.THUMBNAIL Thumbnails, Display files as thumbnails. — enum in ['DEFAULT', 'LIST_SHORT', 'LIST_LONG', 'THUMBNAIL'], (optional)
		@param sort_method File sorting modeFILE_SORT_ALPHA Sort alphabetically, Sort the file list alphabetically.FILE_SORT_EXTENSION Sort by extension, Sort the file list by extension/type.FILE_SORT_TIME Sort by time, Sort files by modification time.FILE_SORT_SIZE Sort by size, Sort files by size. — enum in ['FILE_SORT_ALPHA', 'FILE_SORT_EXTENSION', 'FILE_SORT_TIME', 'FILE_SORT_SIZE'], (optional)
	**/
	static function export_subtitles(filepath:String, check_existing:Bool, filter_blender:Bool, filter_backup:Bool, filter_image:Bool, filter_movie:Bool, filter_python:Bool, filter_font:Bool, filter_sound:Bool, filter_text:Bool, filter_btx:Bool, filter_collada:Bool, filter_alembic:Bool, filter_folder:Bool, filter_blenlib:Bool, filemode:Int, display_type:bpy.ops.sequencer.Sequencer.Enum9, sort_method:bpy.ops.sequencer.Sequencer.Enum10):Void;
	/**
		Insert gap at current frame to first strips at the right, independent of selection or locked state of strips
		@param frames Frames, Frames to insert after current strip — int in [0, inf], (optional)
	**/
	static function gap_insert(frames:Int):Void;
	/**
		Remove gap at current frame to first strip at the right, independent of selection or locked state of strips
		@param all All Gaps, Do all gaps to right of current frame — boolean, (optional)
	**/
	static function gap_remove(all:Bool):Void;
	/**
		Add an image or image sequence to the sequencer
		@param directory Directory, Directory of the file — string, (optional, never None)
		@param files Files — bpy_prop_collection of OperatorFileListElement, (optional)
		@param filter_blender Filter .blend files — boolean, (optional)
		@param filter_backup Filter .blend files — boolean, (optional)
		@param filter_image Filter image files — boolean, (optional)
		@param filter_movie Filter movie files — boolean, (optional)
		@param filter_python Filter python files — boolean, (optional)
		@param filter_font Filter font files — boolean, (optional)
		@param filter_sound Filter sound files — boolean, (optional)
		@param filter_text Filter text files — boolean, (optional)
		@param filter_btx Filter btx files — boolean, (optional)
		@param filter_collada Filter COLLADA files — boolean, (optional)
		@param filter_alembic Filter Alembic files — boolean, (optional)
		@param filter_folder Filter folders — boolean, (optional)
		@param filter_blenlib Filter Blender IDs — boolean, (optional)
		@param filemode File Browser Mode, The setting for the file browser mode to load a .blend file, a library or a special file — int in [1, 9], (optional)
		@param relative_path Relative Path, Select the file relative to the blend file — boolean, (optional)
		@param show_multiview Enable Multi-View — boolean, (optional)
		@param use_multiview Use Multi-View — boolean, (optional)
		@param display_type Display TypeDEFAULT Default, Automatically determine display type for files.LIST_SHORT Short List, Display files as short list.LIST_LONG Long List, Display files as a detailed list.THUMBNAIL Thumbnails, Display files as thumbnails. — enum in ['DEFAULT', 'LIST_SHORT', 'LIST_LONG', 'THUMBNAIL'], (optional)
		@param sort_method File sorting modeFILE_SORT_ALPHA Sort alphabetically, Sort the file list alphabetically.FILE_SORT_EXTENSION Sort by extension, Sort the file list by extension/type.FILE_SORT_TIME Sort by time, Sort files by modification time.FILE_SORT_SIZE Sort by size, Sort files by size. — enum in ['FILE_SORT_ALPHA', 'FILE_SORT_EXTENSION', 'FILE_SORT_TIME', 'FILE_SORT_SIZE'], (optional)
		@param frame_start Start Frame, Start frame of the sequence strip — int in [-inf, inf], (optional)
		@param frame_end End Frame, End frame for the color strip — int in [-inf, inf], (optional)
		@param channel Channel, Channel to place this strip into — int in [1, 32], (optional)
		@param replace_sel Replace Selection, Replace the current selection — boolean, (optional)
		@param overlap Allow Overlap, Don’t correct overlap on new sequence strips — boolean, (optional)
		@param use_placeholders Use Placeholders, Use placeholders for missing frames of the strip — boolean, (optional)
	**/
	static function image_strip_add(directory:String, files:Dynamic, filter_blender:Bool, filter_backup:Bool, filter_image:Bool, filter_movie:Bool, filter_python:Bool, filter_font:Bool, filter_sound:Bool, filter_text:Bool, filter_btx:Bool, filter_collada:Bool, filter_alembic:Bool, filter_folder:Bool, filter_blenlib:Bool, filemode:Int, relative_path:Bool, show_multiview:Bool, use_multiview:Bool, display_type:bpy.ops.sequencer.Sequencer.Enum11, sort_method:bpy.ops.sequencer.Sequencer.Enum12, frame_start:Int, frame_end:Int, channel:Int, replace_sel:Bool, overlap:Bool, use_placeholders:Bool):Void;
	/**
		On image sequence strips, it returns a strip for each image
		@param length Length, Length of each frame — int in [1, inf], (optional)
	**/
	static function images_separate(length:Int):Void;
	/**
		Lock the active strip so that it can’t be transformed
	**/
	static function lock():Void;
	/**
		Add a mask strip to the sequencer
		@param frame_start Start Frame, Start frame of the sequence strip — int in [-inf, inf], (optional)
		@param channel Channel, Channel to place this strip into — int in [1, 32], (optional)
		@param replace_sel Replace Selection, Replace the current selection — boolean, (optional)
		@param overlap Allow Overlap, Don’t correct overlap on new sequence strips — boolean, (optional)
		@param mask Mask — enum in [], (optional)
	**/
	static function mask_strip_add(frame_start:Int, channel:Int, replace_sel:Bool, overlap:Bool, mask:bpy.ops.sequencer.Sequencer.Enum13):Void;
	/**
		Group selected strips into a metastrip
	**/
	static function meta_make():Void;
	/**
		Put the contents of a metastrip back in the sequencer
	**/
	static function meta_separate():Void;
	/**
		Toggle a metastrip (to edit enclosed strips)
	**/
	static function meta_toggle():Void;
	/**
		Add a movie strip to the sequencer
		@param filepath File Path, Path to file — string, (optional, never None)
		@param files Files — bpy_prop_collection of OperatorFileListElement, (optional)
		@param filter_blender Filter .blend files — boolean, (optional)
		@param filter_backup Filter .blend files — boolean, (optional)
		@param filter_image Filter image files — boolean, (optional)
		@param filter_movie Filter movie files — boolean, (optional)
		@param filter_python Filter python files — boolean, (optional)
		@param filter_font Filter font files — boolean, (optional)
		@param filter_sound Filter sound files — boolean, (optional)
		@param filter_text Filter text files — boolean, (optional)
		@param filter_btx Filter btx files — boolean, (optional)
		@param filter_collada Filter COLLADA files — boolean, (optional)
		@param filter_alembic Filter Alembic files — boolean, (optional)
		@param filter_folder Filter folders — boolean, (optional)
		@param filter_blenlib Filter Blender IDs — boolean, (optional)
		@param filemode File Browser Mode, The setting for the file browser mode to load a .blend file, a library or a special file — int in [1, 9], (optional)
		@param relative_path Relative Path, Select the file relative to the blend file — boolean, (optional)
		@param show_multiview Enable Multi-View — boolean, (optional)
		@param use_multiview Use Multi-View — boolean, (optional)
		@param display_type Display TypeDEFAULT Default, Automatically determine display type for files.LIST_SHORT Short List, Display files as short list.LIST_LONG Long List, Display files as a detailed list.THUMBNAIL Thumbnails, Display files as thumbnails. — enum in ['DEFAULT', 'LIST_SHORT', 'LIST_LONG', 'THUMBNAIL'], (optional)
		@param sort_method File sorting modeFILE_SORT_ALPHA Sort alphabetically, Sort the file list alphabetically.FILE_SORT_EXTENSION Sort by extension, Sort the file list by extension/type.FILE_SORT_TIME Sort by time, Sort files by modification time.FILE_SORT_SIZE Sort by size, Sort files by size. — enum in ['FILE_SORT_ALPHA', 'FILE_SORT_EXTENSION', 'FILE_SORT_TIME', 'FILE_SORT_SIZE'], (optional)
		@param frame_start Start Frame, Start frame of the sequence strip — int in [-inf, inf], (optional)
		@param channel Channel, Channel to place this strip into — int in [1, 32], (optional)
		@param replace_sel Replace Selection, Replace the current selection — boolean, (optional)
		@param overlap Allow Overlap, Don’t correct overlap on new sequence strips — boolean, (optional)
		@param sound Sound, Load sound with the movie — boolean, (optional)
		@param use_framerate Use Movie Framerate, Use framerate from the movie to keep sound and video in sync — boolean, (optional)
	**/
	static function movie_strip_add(filepath:String, files:Dynamic, filter_blender:Bool, filter_backup:Bool, filter_image:Bool, filter_movie:Bool, filter_python:Bool, filter_font:Bool, filter_sound:Bool, filter_text:Bool, filter_btx:Bool, filter_collada:Bool, filter_alembic:Bool, filter_folder:Bool, filter_blenlib:Bool, filemode:Int, relative_path:Bool, show_multiview:Bool, use_multiview:Bool, display_type:bpy.ops.sequencer.Sequencer.Enum14, sort_method:bpy.ops.sequencer.Sequencer.Enum15, frame_start:Int, channel:Int, replace_sel:Bool, overlap:Bool, sound:Bool, use_framerate:Bool):Void;
	/**
		Add a movieclip strip to the sequencer
		@param frame_start Start Frame, Start frame of the sequence strip — int in [-inf, inf], (optional)
		@param channel Channel, Channel to place this strip into — int in [1, 32], (optional)
		@param replace_sel Replace Selection, Replace the current selection — boolean, (optional)
		@param overlap Allow Overlap, Don’t correct overlap on new sequence strips — boolean, (optional)
		@param clip Clip — enum in [], (optional)
	**/
	static function movieclip_strip_add(frame_start:Int, channel:Int, replace_sel:Bool, overlap:Bool, clip:bpy.ops.sequencer.Sequencer.Enum16):Void;
	/**
		Mute (un)selected strips
		@param unselected Unselected, Mute unselected rather than selected strips — boolean, (optional)
	**/
	static function mute(unselected:Bool):Void;
	/**
		Clear strip offsets from the start and end frames
	**/
	static function offset_clear():Void;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	static function paste():Void;
	/**
		Toggle the properties region visibility
	**/
	static function properties():Void;
	/**
		Reassign the inputs for the effect strip
	**/
	static function reassign_inputs():Void;
	/**
		Rebuild all selected proxies and timecode indices using the job system
	**/
	static function rebuild_proxy():Void;
	/**
		Refresh the sequencer editor
	**/
	static function refresh_all():Void;
	/**
		Reload strips in the sequencer
		@param adjust_length Adjust Length, Adjust length of strips to their data length — boolean, (optional)
	**/
	static function reload(adjust_length:Bool):Void;
	/**
		Set render size and aspect from active sequence
	**/
	static function rendersize():Void;
	/**
		Use mouse to sample color in current frame
	**/
	static function sample():Void;
	/**
		Add a strip to the sequencer using a blender scene as a source
		@param frame_start Start Frame, Start frame of the sequence strip — int in [-inf, inf], (optional)
		@param channel Channel, Channel to place this strip into — int in [1, 32], (optional)
		@param replace_sel Replace Selection, Replace the current selection — boolean, (optional)
		@param overlap Allow Overlap, Don’t correct overlap on new sequence strips — boolean, (optional)
		@param scene Scene — enum in [], (optional)
	**/
	static function scene_strip_add(frame_start:Int, channel:Int, replace_sel:Bool, overlap:Bool, scene:bpy.ops.sequencer.Sequencer.Enum17):Void;
	/**
		Select a strip (last selected becomes the “active strip”)
		@param extend Extend, Extend the selection — boolean, (optional)
		@param linked_handle Linked Handle, Select handles next to the active strip — boolean, (optional)
		@param left_right Left/Right, Select based on the current frame side the cursor is onNONE None, Don’t do left-right selection.MOUSE Mouse, Use mouse position for selection.LEFT Left, Select left.RIGHT Right, Select right. — enum in ['NONE', 'MOUSE', 'LEFT', 'RIGHT'], (optional)
		@param linked_time Linked Time, Select other strips at the same time — boolean, (optional)
	**/
	static function select(extend:Bool, linked_handle:Bool, left_right:bpy.ops.sequencer.Sequencer.Enum18, linked_time:Bool):Void;
	/**
		Select strips on the nominated side of the active strip
		@param side Side, The side of the handle that is selected — enum in ['MOUSE', 'LEFT', 'RIGHT', 'BOTH'], (optional)
	**/
	static function select_active_side(side:bpy.ops.sequencer.Sequencer.Enum19):Void;
	/**
		Select or deselect all strips
		@param action Action, Selection action to executeTOGGLE Toggle, Toggle selection for all elements.SELECT Select, Select all elements.DESELECT Deselect, Deselect all elements.INVERT Invert, Invert selection of all elements. — enum in ['TOGGLE', 'SELECT', 'DESELECT', 'INVERT'], (optional)
	**/
	static function select_all(action:bpy.ops.sequencer.Sequencer.Enum20):Void;
	/**
		Select strips using box selection
		@param xmin X Min — int in [-inf, inf], (optional)
		@param xmax X Max — int in [-inf, inf], (optional)
		@param ymin Y Min — int in [-inf, inf], (optional)
		@param ymax Y Max — int in [-inf, inf], (optional)
		@param deselect Deselect, Deselect rather than select items — boolean, (optional)
		@param extend Extend, Extend selection instead of deselecting everything first — boolean, (optional)
	**/
	static function select_box(xmin:Int, xmax:Int, ymin:Int, ymax:Int, deselect:Bool, extend:Bool):Void;
	/**
		Select all strips grouped by various properties
		@param type TypeTYPE Type, Shared strip type.TYPE_BASIC Global Type, All strips of same basic type (Graphical or Sound).TYPE_EFFECT Effect Type, Shared strip effect type (if active strip is not an effect one, select all non-effect strips).DATA Data, Shared data (scene, image, sound, etc.).EFFECT Effect, Shared effects.EFFECT_LINK Effect/Linked, Other strips affected by the active one (sharing some time, and below or effect-assigned).OVERLAP Overlap, Overlapping time. — enum in ['TYPE', 'TYPE_BASIC', 'TYPE_EFFECT', 'DATA', 'EFFECT', 'EFFECT_LINK', 'OVERLAP'], (optional)
		@param extend Extend, Extend selection instead of deselecting everything first — boolean, (optional)
		@param use_active_channel Same Channel, Only consider strips on the same channel as the active one — boolean, (optional)
	**/
	static function select_grouped(type:bpy.ops.sequencer.Sequencer.Enum21, extend:Bool, use_active_channel:Bool):Void;
	/**
		Select gizmo handles on the sides of the selected strip
		@param side Side, The side of the handle that is selected — enum in ['MOUSE', 'LEFT', 'RIGHT', 'BOTH'], (optional)
	**/
	static function select_handles(side:bpy.ops.sequencer.Sequencer.Enum22):Void;
	/**
		Shrink the current selection of adjacent selected strips
	**/
	static function select_less():Void;
	/**
		Select all strips adjacent to the current selection
	**/
	static function select_linked():Void;
	/**
		Select a chain of linked strips nearest to the mouse pointer
		@param extend Extend, Extend the selection — boolean, (optional)
	**/
	static function select_linked_pick(extend:Bool):Void;
	/**
		Select more strips adjacent to the current selection
	**/
	static function select_more():Void;
	/**
		Trim the contents of the active strip
		@param offset Offset, Offset to the data of the strip — int in [-inf, inf], (optional)
	**/
	static function slip(offset:Int):Void;
	/**
		Frame where selected strips will be snapped
		@param frame Frame, Frame where selected strips will be snapped — int in [-inf, inf], (optional)
	**/
	static function snap(frame:Int):Void;
	/**
		Add a sound strip to the sequencer
		@param filepath File Path, Path to file — string, (optional, never None)
		@param files Files — bpy_prop_collection of OperatorFileListElement, (optional)
		@param filter_blender Filter .blend files — boolean, (optional)
		@param filter_backup Filter .blend files — boolean, (optional)
		@param filter_image Filter image files — boolean, (optional)
		@param filter_movie Filter movie files — boolean, (optional)
		@param filter_python Filter python files — boolean, (optional)
		@param filter_font Filter font files — boolean, (optional)
		@param filter_sound Filter sound files — boolean, (optional)
		@param filter_text Filter text files — boolean, (optional)
		@param filter_btx Filter btx files — boolean, (optional)
		@param filter_collada Filter COLLADA files — boolean, (optional)
		@param filter_alembic Filter Alembic files — boolean, (optional)
		@param filter_folder Filter folders — boolean, (optional)
		@param filter_blenlib Filter Blender IDs — boolean, (optional)
		@param filemode File Browser Mode, The setting for the file browser mode to load a .blend file, a library or a special file — int in [1, 9], (optional)
		@param relative_path Relative Path, Select the file relative to the blend file — boolean, (optional)
		@param display_type Display TypeDEFAULT Default, Automatically determine display type for files.LIST_SHORT Short List, Display files as short list.LIST_LONG Long List, Display files as a detailed list.THUMBNAIL Thumbnails, Display files as thumbnails. — enum in ['DEFAULT', 'LIST_SHORT', 'LIST_LONG', 'THUMBNAIL'], (optional)
		@param sort_method File sorting modeFILE_SORT_ALPHA Sort alphabetically, Sort the file list alphabetically.FILE_SORT_EXTENSION Sort by extension, Sort the file list by extension/type.FILE_SORT_TIME Sort by time, Sort files by modification time.FILE_SORT_SIZE Sort by size, Sort files by size. — enum in ['FILE_SORT_ALPHA', 'FILE_SORT_EXTENSION', 'FILE_SORT_TIME', 'FILE_SORT_SIZE'], (optional)
		@param frame_start Start Frame, Start frame of the sequence strip — int in [-inf, inf], (optional)
		@param channel Channel, Channel to place this strip into — int in [1, 32], (optional)
		@param replace_sel Replace Selection, Replace the current selection — boolean, (optional)
		@param overlap Allow Overlap, Don’t correct overlap on new sequence strips — boolean, (optional)
		@param cache Cache, Cache the sound in memory — boolean, (optional)
		@param mono Mono, Merge all the sound’s channels into one — boolean, (optional)
	**/
	static function sound_strip_add(filepath:String, files:Dynamic, filter_blender:Bool, filter_backup:Bool, filter_image:Bool, filter_movie:Bool, filter_python:Bool, filter_font:Bool, filter_sound:Bool, filter_text:Bool, filter_btx:Bool, filter_collada:Bool, filter_alembic:Bool, filter_folder:Bool, filter_blenlib:Bool, filemode:Int, relative_path:Bool, display_type:bpy.ops.sequencer.Sequencer.Enum23, sort_method:bpy.ops.sequencer.Sequencer.Enum24, frame_start:Int, channel:Int, replace_sel:Bool, overlap:Bool, cache:Bool, mono:Bool):Void;
	/**
		Move frame to previous edit point
		@param next Next Strip — boolean, (optional)
		@param center Use strip center — boolean, (optional)
	**/
	static function strip_jump(next:Bool, center:Bool):Void;
	/**
		Add a modifier to the strip
		@param type Type — enum in ['COLOR_BALANCE', 'CURVES', 'HUE_CORRECT', 'BRIGHT_CONTRAST', 'MASK', 'WHITE_BALANCE', 'TONEMAP'], (optional)
	**/
	static function strip_modifier_add(type:bpy.ops.sequencer.Sequencer.Enum25):Void;
	/**
		Copy modifiers of the active strip to all selected strips
		@param type TypeREPLACE Replace, Replace modifiers in destination.APPEND Append, Append active modifiers to selected strips. — enum in ['REPLACE', 'APPEND'], (optional)
	**/
	static function strip_modifier_copy(type:bpy.ops.sequencer.Sequencer.Enum26):Void;
	/**
		Move modifier up and down in the stack
		@param name Name, Name of modifier to remove — string, (optional, never None)
		@param direction TypeUP Up, Move modifier up in the stack.DOWN Down, Move modifier down in the stack. — enum in ['UP', 'DOWN'], (optional)
	**/
	static function strip_modifier_move(name:String, direction:bpy.ops.sequencer.Sequencer.Enum27):Void;
	/**
		Remove a modifier from the strip
		@param name Name, Name of modifier to remove — string, (optional, never None)
	**/
	static function strip_modifier_remove(name:String):Void;
	/**
		Swap active strip with strip to the right or left
		@param side Side, Side of the strip to swap — enum in ['LEFT', 'RIGHT'], (optional)
	**/
	static function swap(side:bpy.ops.sequencer.Sequencer.Enum28):Void;
	/**
		Swap 2 sequencer strips
	**/
	static function swap_data():Void;
	/**
		Swap the first two inputs for the effect strip
	**/
	static function swap_inputs():Void;
	/**
		Unlock the active strip so that it can’t be transformed
	**/
	static function unlock():Void;
	/**
		Unmute (un)selected strips
		@param unselected Unselected, Unmute unselected rather than selected strips — boolean, (optional)
	**/
	static function unmute(unselected:Bool):Void;
	/**
		View all the strips in the sequencer
	**/
	static function view_all():Void;
	/**
		Zoom preview to fit in the area
	**/
	static function view_all_preview():Void;
	/**
		Reset viewable area to show range around current frame
	**/
	static function view_frame():Void;
	/**
		Set the boundaries of the border used for offset-view
		@param xmin X Min — int in [-inf, inf], (optional)
		@param xmax X Max — int in [-inf, inf], (optional)
		@param ymin Y Min — int in [-inf, inf], (optional)
		@param ymax Y Max — int in [-inf, inf], (optional)
	**/
	static function view_ghost_border(xmin:Int, xmax:Int, ymin:Int, ymax:Int):Void;
	/**
		Zoom the sequencer on the selected strips
	**/
	static function view_selected():Void;
	/**
		Toggle between sequencer views (sequence, preview, both)
	**/
	static function view_toggle():Void;
	/**
		Change zoom ratio of sequencer preview
		@param ratio Ratio, Zoom ratio, 1.0 is 1:1, higher is zoomed in, lower is zoomed out — float in [-inf, inf], (optional)
	**/
	static function view_zoom_ratio(ratio:Float):Void;
}