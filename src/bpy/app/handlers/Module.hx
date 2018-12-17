package bpy.app.handlers;
/**
	Application Handlers (bpy.app.handlers)
	
	This module contains callback lists
**/
@:pythonImport("bpy.app.handlers") extern class Module {
	/**
		on depsgraph update (post)
	**/
	var depsgraph_update_post(default, never) : Dynamic;
	/**
		on depsgraph update (pre)
	**/
	var depsgraph_update_pre(default, never) : Dynamic;
	/**
		on frame change for playback and rendering (after)
	**/
	var frame_change_post(default, never) : Dynamic;
	/**
		on frame change for playback and rendering (before)
	**/
	var frame_change_pre(default, never) : Dynamic;
	/**
		on loading a new blend file (after)
	**/
	var load_post(default, never) : Dynamic;
	/**
		on loading a new blend file (before)
	**/
	var load_pre(default, never) : Dynamic;
	/**
		on loading a redo step (after)
	**/
	var redo_post(default, never) : Dynamic;
	/**
		on loading a redo step (before)
	**/
	var redo_pre(default, never) : Dynamic;
	/**
		on canceling a render job
	**/
	var render_cancel(default, never) : Dynamic;
	/**
		on completion of render job
	**/
	var render_complete(default, never) : Dynamic;
	/**
		on initialization of a render job
	**/
	var render_init(default, never) : Dynamic;
	/**
		on render (after)
	**/
	var render_post(default, never) : Dynamic;
	/**
		on render (before)
	**/
	var render_pre(default, never) : Dynamic;
	/**
		on printing render statistics
	**/
	var render_stats(default, never) : Dynamic;
	/**
		on writing a render frame (directly after the frame is written)
	**/
	var render_write(default, never) : Dynamic;
	/**
		on saving a blend file (after)
	**/
	var save_post(default, never) : Dynamic;
	/**
		on saving a blend file (before)
	**/
	var save_pre(default, never) : Dynamic;
	/**
		on loading an undo step (after)
	**/
	var undo_post(default, never) : Dynamic;
	/**
		on loading an undo step (before)
	**/
	var undo_pre(default, never) : Dynamic;
	/**
		on ending the versioning code
	**/
	var version_update(default, never) : Dynamic;
	/**
		Function decorator for callback functions not to be removed when loading new files
	**/
	var persistent(default, never) : Dynamic;
}