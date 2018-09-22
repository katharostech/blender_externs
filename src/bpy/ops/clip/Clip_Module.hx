/* This file is generated, do not edit! */
package bpy.ops.clip;
@:pythonImport("bpy.ops.clip") extern class Clip_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function add_marker(?location:Dynamic):Dynamic;
	static public function add_marker_at_click():Dynamic;
	static public function add_marker_move(?CLIP_OT_add_marker:Dynamic, ?TRANSFORM_OT_translate:Dynamic):Dynamic;
	static public function add_marker_slide(?CLIP_OT_add_marker:Dynamic, ?TRANSFORM_OT_translate:Dynamic):Dynamic;
	static public function apply_solution_scale(?distance:Dynamic):Dynamic;
	static public function bundles_to_mesh():Dynamic;
	static public function camera_preset_add(?name:Dynamic, ?remove_name:Dynamic, ?remove_active:Dynamic, ?use_focal_length:Dynamic):Dynamic;
	static public function change_frame(?frame:Dynamic):Dynamic;
	static public function clean_tracks(?frames:Dynamic, ?error:Dynamic, ?action:Dynamic):Dynamic;
	static public function clear_solution():Dynamic;
	static public function clear_track_path(?action:Dynamic, ?clear_active:Dynamic):Dynamic;
	static public function constraint_to_fcurve():Dynamic;
	static public function copy_tracks():Dynamic;
	static public function create_plane_track():Dynamic;
	static public function cursor_set(?location:Dynamic):Dynamic;
	static public function delete_marker():Dynamic;
	static public function delete_proxy():Dynamic;
	static public function delete_track():Dynamic;
	static public function detect_features(?placement:Dynamic, ?margin:Dynamic, ?threshold:Dynamic, ?min_distance:Dynamic):Dynamic;
	static public function disable_markers(?action:Dynamic):Dynamic;
	static public function dopesheet_select_channel(?location:Dynamic, ?extend:Dynamic):Dynamic;
	static public function dopesheet_view_all():Dynamic;
	static public function filter_tracks(?track_threshold:Dynamic):Dynamic;
	static public function frame_jump(?position:Dynamic):Dynamic;
	static public function graph_center_current_frame():Dynamic;
	static public function graph_delete_curve():Dynamic;
	static public function graph_delete_knot():Dynamic;
	static public function graph_disable_markers(?action:Dynamic):Dynamic;
	static public function graph_select(?location:Dynamic, ?extend:Dynamic):Dynamic;
	static public function graph_select_all_markers(?action:Dynamic):Dynamic;
	static public function graph_select_border(?xmin:Dynamic, ?xmax:Dynamic, ?ymin:Dynamic, ?ymax:Dynamic, ?deselect:Dynamic, ?extend:Dynamic):Dynamic;
	static public function graph_view_all():Dynamic;
	static public function hide_tracks(?unselected:Dynamic):Dynamic;
	static public function hide_tracks_clear():Dynamic;
	static public function join_tracks():Dynamic;
	static public function keyframe_delete():Dynamic;
	static public function keyframe_insert():Dynamic;
	static public function lock_tracks(?action:Dynamic):Dynamic;
	static public function mode_set(?mode:Dynamic):Dynamic;
	static public function open(?directory:Dynamic, ?files:Dynamic, ?filter_blender:Dynamic, ?filter_backup:Dynamic, ?filter_image:Dynamic, ?filter_movie:Dynamic, ?filter_python:Dynamic, ?filter_font:Dynamic, ?filter_sound:Dynamic, ?filter_text:Dynamic, ?filter_btx:Dynamic, ?filter_collada:Dynamic, ?filter_alembic:Dynamic, ?filter_folder:Dynamic, ?filter_blenlib:Dynamic, ?filemode:Dynamic, ?relative_path:Dynamic, ?show_multiview:Dynamic, ?use_multiview:Dynamic, ?display_type:Dynamic, ?sort_method:Dynamic):Dynamic;
	static public function paste_tracks():Dynamic;
	static public function prefetch():Dynamic;
	static public function properties():Dynamic;
	static public function rebuild_proxy():Dynamic;
	static public function refine_markers(?backwards:Dynamic):Dynamic;
	static public function reload():Dynamic;
	static public function select(?extend:Dynamic, ?location:Dynamic):Dynamic;
	static public function select_all(?action:Dynamic):Dynamic;
	static public function select_border(?xmin:Dynamic, ?xmax:Dynamic, ?ymin:Dynamic, ?ymax:Dynamic, ?deselect:Dynamic, ?extend:Dynamic):Dynamic;
	static public function select_circle(?x:Dynamic, ?y:Dynamic, ?radius:Dynamic, ?deselect:Dynamic):Dynamic;
	static public function select_grouped(?group:Dynamic):Dynamic;
	static public function select_lasso(?path:Dynamic, ?deselect:Dynamic, ?extend:Dynamic):Dynamic;
	static public function set_active_clip():Dynamic;
	static public function set_axis(?axis:Dynamic):Dynamic;
	static public function set_center_principal():Dynamic;
	static public function set_origin(?use_median:Dynamic):Dynamic;
	static public function set_plane(?plane:Dynamic):Dynamic;
	static public function set_scale(?distance:Dynamic):Dynamic;
	static public function set_scene_frames():Dynamic;
	static public function set_solution_scale(?distance:Dynamic):Dynamic;
	static public function set_solver_keyframe(?keyframe:Dynamic):Dynamic;
	static public function set_viewport_background():Dynamic;
	static public function setup_tracking_scene():Dynamic;
	static public function slide_marker(?offset:Dynamic):Dynamic;
	static public function slide_plane_marker():Dynamic;
	static public function solve_camera():Dynamic;
	static public function stabilize_2d_add():Dynamic;
	static public function stabilize_2d_remove():Dynamic;
	static public function stabilize_2d_rotation_add():Dynamic;
	static public function stabilize_2d_rotation_remove():Dynamic;
	static public function stabilize_2d_rotation_select():Dynamic;
	static public function stabilize_2d_select():Dynamic;
	static public function tools():Dynamic;
	static public function track_color_preset_add(?name:Dynamic, ?remove_name:Dynamic, ?remove_active:Dynamic):Dynamic;
	static public function track_copy_color():Dynamic;
	static public function track_markers(?backwards:Dynamic, ?sequence:Dynamic):Dynamic;
	static public function track_settings_as_default():Dynamic;
	static public function track_settings_to_track():Dynamic;
	static public function track_to_empty():Dynamic;
	static public function tracking_object_new():Dynamic;
	static public function tracking_object_remove():Dynamic;
	static public function tracking_settings_preset_add(?name:Dynamic, ?remove_name:Dynamic, ?remove_active:Dynamic):Dynamic;
	static public function view_all(?fit_view:Dynamic):Dynamic;
	static public function view_ndof():Dynamic;
	static public function view_pan(?offset:Dynamic):Dynamic;
	static public function view_selected():Dynamic;
	static public function view_zoom(?factor:Dynamic):Dynamic;
	static public function view_zoom_in(?location:Dynamic):Dynamic;
	static public function view_zoom_out(?location:Dynamic):Dynamic;
	static public function view_zoom_ratio(?ratio:Dynamic):Dynamic;
}