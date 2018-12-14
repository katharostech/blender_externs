package bpy.ops.wm;
/**
	Wm Operators
	
	Exporting Animations will enforce the decomposition of node transforms
	            into  &lt;translation&gt; &lt;rotation&gt; and &lt;scale&gt; components
	
	This allows you to export entire animation libraries for your charater(s)
	
	This does only work when the inverse parent matrix is the Unity matrix
	            Otherwise you may end up with odd results
	
	This helps when you want to keep manual tweeks
**/
@:pythonImport("bpy.ops.wm") extern class Module {
	/**
		Disable an add-on
		@param module Module, Module name of the add-on to disable — string, (optional, never None)
	**/
	static function addon_disable(module:String):Void;
	/**
		Enable an add-on
		@param module Module, Module name of the add-on to enable — string, (optional, never None)
	**/
	static function addon_enable(module:String):Void;
	/**
		Display information and preferences for this add-on
		@param module Module, Module name of the add-on to expand — string, (optional, never None)
	**/
	static function addon_expand(module:String):Void;
	/**
		Install an add-on
		@param overwrite Overwrite, Remove existing add-ons with the same ID — boolean, (optional)
		@param target Target Path — enum in ['DEFAULT', 'PREFS'], (optional)
		@param filepath filepath — string, (optional, never None)
		@param filter_folder Filter folders — boolean, (optional)
		@param filter_python Filter python — boolean, (optional)
		@param filter_glob filter_glob — string, (optional, never None)
	**/
	static function addon_install(overwrite:Bool, target:bpy.ops.wm.Wm.Enum1, filepath:String, filter_folder:Bool, filter_python:Bool, filter_glob:String):Void;
	/**
		Scan add-on directories for new modules
	**/
	static function addon_refresh():Void;
	/**
		Delete the add-on from the file system
		@param module Module, Module name of the add-on to remove — string, (optional, never None)
	**/
	static function addon_remove(module:String):Void;
	/**
		Show add-on user preferences
		@param module Module, Module name of the add-on to expand — string, (optional, never None)
	**/
	static function addon_userpref_show(module:String):Void;
	/**
		Export current scene in an Alembic archive
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
		@param start Start Frame, Start frame of the export, use the default value to take the start frame of the current scene — int in [-inf, inf], (optional)
		@param end End Frame, End frame of the export, use the default value to take the end frame of the current scene — int in [-inf, inf], (optional)
		@param xsamples Transform Samples, Number of times per frame transformations are sampled — int in [1, 128], (optional)
		@param gsamples Geometry Samples, Number of times per frame object data are sampled — int in [1, 128], (optional)
		@param sh_open Shutter Open, Time at which the shutter is open — float in [-1, 1], (optional)
		@param sh_close Shutter Close, Time at which the shutter is closed — float in [-1, 1], (optional)
		@param selected Selected Objects Only, Export only selected objects — boolean, (optional)
		@param renderable_only Renderable Objects Only, Export only objects marked renderable in the outliner — boolean, (optional)
		@param visible_layers_only Visible Layers Only, Export only objects in visible layers — boolean, (optional)
		@param flatten Flatten Hierarchy, Do not preserve objects’ parent/children relationship — boolean, (optional)
		@param uvs UVs, Export UVs — boolean, (optional)
		@param packuv Pack UV Islands, Export UVs with packed island — boolean, (optional)
		@param normals Normals, Export normals — boolean, (optional)
		@param vcolors Vertex Colors, Export vertex colors — boolean, (optional)
		@param face_sets Face Sets, Export per face shading group assignments — boolean, (optional)
		@param subdiv_schema Use Subdivision Schema, Export meshes using Alembic’s subdivision schema — boolean, (optional)
		@param apply_subdiv Apply Subsurf, Export subdivision surfaces as meshes — boolean, (optional)
		@param compression_type Compression — enum in ['OGAWA', 'HDF5'], (optional)
		@param global_scale Scale, Value by which to enlarge or shrink the objects with respect to the world’s origin — float in [0.0001, 1000], (optional)
		@param triangulate Triangulate, Export Polygons (Quads &amp; NGons) as Triangles — boolean, (optional)
		@param quad_method Quad Method, Method for splitting the quads into trianglesBEAUTY Beauty , Split the quads in nice triangles, slower method.FIXED Fixed, Split the quads on the first and third vertices.FIXED_ALTERNATE Fixed Alternate, Split the quads on the 2nd and 4th vertices.SHORTEST_DIAGONAL Shortest Diagonal, Split the quads based on the distance between the vertices. — enum in ['BEAUTY', 'FIXED', 'FIXED_ALTERNATE', 'SHORTEST_DIAGONAL'], (optional)
		@param ngon_method Polygon Method, Method for splitting the polygons into trianglesBEAUTY Beauty , Split the quads in nice triangles, slower method.FIXED Fixed, Split the quads on the first and third vertices.FIXED_ALTERNATE Fixed Alternate, Split the quads on the 2nd and 4th vertices.SHORTEST_DIAGONAL Shortest Diagonal, Split the quads based on the distance between the vertices. — enum in ['BEAUTY', 'FIXED', 'FIXED_ALTERNATE', 'SHORTEST_DIAGONAL'], (optional)
		@param export_hair Export Hair, Exports hair particle systems as animated curves — boolean, (optional)
		@param export_particles Export Particles, Exports non-hair particle systems — boolean, (optional)
		@param as_background_job Run as Background Job, Enable this to run the import in the background, disable to block Blender while importing — boolean, (optional)
	**/
	static function alembic_export(filepath:String, check_existing:Bool, filter_blender:Bool, filter_backup:Bool, filter_image:Bool, filter_movie:Bool, filter_python:Bool, filter_font:Bool, filter_sound:Bool, filter_text:Bool, filter_btx:Bool, filter_collada:Bool, filter_alembic:Bool, filter_folder:Bool, filter_blenlib:Bool, filemode:Int, display_type:bpy.ops.wm.Wm.Enum2, sort_method:bpy.ops.wm.Wm.Enum3, start:Int, end:Int, xsamples:Int, gsamples:Int, sh_open:Float, sh_close:Float, selected:Bool, renderable_only:Bool, visible_layers_only:Bool, flatten:Bool, uvs:Bool, packuv:Bool, normals:Bool, vcolors:Bool, face_sets:Bool, subdiv_schema:Bool, apply_subdiv:Bool, compression_type:bpy.ops.wm.Wm.Enum4, global_scale:Float, triangulate:Bool, quad_method:bpy.ops.wm.Wm.Enum5, ngon_method:bpy.ops.wm.Wm.Enum6, export_hair:Bool, export_particles:Bool, as_background_job:Bool):Void;
	/**
		Load an Alembic archive
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
		@param scale Scale, Value by which to enlarge or shrink the objects with respect to the world’s origin — float in [0.0001, 1000], (optional)
		@param set_frame_range Set Frame Range, If checked, update scene’s start and end frame to match those of the Alembic archive — boolean, (optional)
		@param validate_meshes Validate Meshes, Check imported mesh objects for invalid data (slow) — boolean, (optional)
		@param is_sequence Is Sequence, Set to true if the cache is split into separate files — boolean, (optional)
		@param as_background_job Run as Background Job, Enable this to run the export in the background, disable to block Blender while exporting — boolean, (optional)
	**/
	static function alembic_import(filepath:String, check_existing:Bool, filter_blender:Bool, filter_backup:Bool, filter_image:Bool, filter_movie:Bool, filter_python:Bool, filter_font:Bool, filter_sound:Bool, filter_text:Bool, filter_btx:Bool, filter_collada:Bool, filter_alembic:Bool, filter_folder:Bool, filter_blenlib:Bool, filemode:Int, display_type:bpy.ops.wm.Wm.Enum7, sort_method:bpy.ops.wm.Wm.Enum8, scale:Float, set_frame_range:Bool, validate_meshes:Bool, is_sequence:Bool, as_background_job:Bool):Void;
	/**
		Install an application-template
		@param overwrite Overwrite, Remove existing template with the same ID — boolean, (optional)
		@param filepath filepath — string, (optional, never None)
		@param filter_folder Filter folders — boolean, (optional)
		@param filter_glob filter_glob — string, (optional, never None)
	**/
	static function app_template_install(overwrite:Bool, filepath:String, filter_folder:Bool, filter_glob:String):Void;
	/**
		Append from a Library .blend file
		@param filepath File Path, Path to file — string, (optional, never None)
		@param directory Directory, Directory of the file — string, (optional, never None)
		@param filename File Name, Name of the file — string, (optional, never None)
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
		@param display_type Display TypeDEFAULT Default, Automatically determine display type for files.LIST_SHORT Short List, Display files as short list.LIST_LONG Long List, Display files as a detailed list.THUMBNAIL Thumbnails, Display files as thumbnails. — enum in ['DEFAULT', 'LIST_SHORT', 'LIST_LONG', 'THUMBNAIL'], (optional)
		@param sort_method File sorting modeFILE_SORT_ALPHA Sort alphabetically, Sort the file list alphabetically.FILE_SORT_EXTENSION Sort by extension, Sort the file list by extension/type.FILE_SORT_TIME Sort by time, Sort files by modification time.FILE_SORT_SIZE Sort by size, Sort files by size. — enum in ['FILE_SORT_ALPHA', 'FILE_SORT_EXTENSION', 'FILE_SORT_TIME', 'FILE_SORT_SIZE'], (optional)
		@param link Link, Link the objects or data-blocks rather than appending — boolean, (optional)
		@param autoselect Select, Select new objects — boolean, (optional)
		@param active_collection Active Collection, Put new objects on the active collection — boolean, (optional)
		@param instance_collections Instance Collections, Create instances for collections, rather than adding them directly to the scene — boolean, (optional)
		@param set_fake Fake User, Set Fake User for appended items (except Objects and Groups) — boolean, (optional)
		@param use_recursive Localize All, Localize all appended data, including those indirectly linked from other libraries — boolean, (optional)
	**/
	static function append(filepath:String, directory:String, filename:String, files:Dynamic, filter_blender:Bool, filter_backup:Bool, filter_image:Bool, filter_movie:Bool, filter_python:Bool, filter_font:Bool, filter_sound:Bool, filter_text:Bool, filter_btx:Bool, filter_collada:Bool, filter_alembic:Bool, filter_folder:Bool, filter_blenlib:Bool, filemode:Int, display_type:bpy.ops.wm.Wm.Enum9, sort_method:bpy.ops.wm.Wm.Enum10, link:Bool, autoselect:Bool, active_collection:Bool, instance_collections:Bool, set_fake:Bool, use_recursive:Bool):Void;
	/**
		Check and fix all strings in current .blend file to be valid UTF-8 Unicode (needed for some old, 2.4x area files)
	**/
	static function blend_strings_utf8_validate():Void;
	/**
		Call (draw) a pre-defined menu
		@param name Name, Name of the menu — string, (optional, never None)
	**/
	static function call_menu(name:String):Void;
	/**
		Call (draw) a pre-defined pie menu
		@param name Name, Name of the pie menu — string, (optional, never None)
	**/
	static function call_menu_pie(name:String):Void;
	/**
		Call (draw) a pre-defined panel
		@param name Name, Name of the menu — string, (optional, never None)
		@param keep_open Keep Open — boolean, (optional)
	**/
	static function call_panel(name:String, keep_open:Bool):Void;
	/**
		Save a Collada file
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
		@param prop_bc_export_ui_section Export Section, Only for User Interface Organisationmain Main, Data Export Section.geometry Geom, Geometry Export Section.armature Arm, Armature Export Section.animation Anim, Animation Export Section.collada Extra, Collada Export Section. — enum in ['main', 'geometry', 'armature', 'animation', 'collada'], (optional)
		@param apply_modifiers Apply Modifiers, Apply modifiers to exported mesh (non destructive)) — boolean, (optional)
		@param export_mesh_type Resolution, Modifier resolution for export — int in [-inf, inf], (optional)
		@param export_mesh_type_selection Resolution, Modifier resolution for exportview View, Apply modifier’s view settings.render Render, Apply modifier’s render settings. — enum in ['view', 'render'], (optional)
		@param selected Selection Only, Export only selected elements — boolean, (optional)
		@param include_children Include Children, Export all children of selected objects (even if not selected) — boolean, (optional)
		@param include_armatures Include Armatures, Export related armatures (even if not selected) — boolean, (optional)
		@param include_shapekeys Include Shape Keys, Export all Shape Keys from Mesh Objects — boolean, (optional)
		@param deform_bones_only Deform Bones only, Only export deforming bones with armatures — boolean, (optional)
		@param include_animations Include Animations, Export Animations if available. — 
	**/
	static function collada_export(filepath:String, check_existing:Bool, filter_blender:Bool, filter_backup:Bool, filter_image:Bool, filter_movie:Bool, filter_python:Bool, filter_font:Bool, filter_sound:Bool, filter_text:Bool, filter_btx:Bool, filter_collada:Bool, filter_alembic:Bool, filter_folder:Bool, filter_blenlib:Bool, filemode:Int, display_type:bpy.ops.wm.Wm.Enum11, sort_method:bpy.ops.wm.Wm.Enum12, prop_bc_export_ui_section:bpy.ops.wm.Wm.Enum13, apply_modifiers:Bool, export_mesh_type:Int, export_mesh_type_selection:bpy.ops.wm.Wm.Enum14, selected:Bool, include_children:Bool, include_armatures:Bool, include_shapekeys:Bool, deform_bones_only:Bool, include_animations:Dynamic):Void;
	/**
		Load a Collada file
		@param filepath File Path, Path to file — string, (optional, never None)
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
		@param import_units Import Units, If disabled match import to Blender’s current Unit settings, otherwise use the settings from the Imported scene — boolean, (optional)
		@param fix_orientation Fix Leaf Bones, Fix Orientation of Leaf Bones (Collada does only support Joints) — boolean, (optional)
		@param find_chains Find Bone Chains, Find best matching Bone Chains and ensure bones in chain are connected — boolean, (optional)
		@param auto_connect Auto Connect, Set use_connect for parent bones which have exactly one child bone — boolean, (optional)
		@param min_chain_length Minimum Chain Length, When searching Bone Chains disregard chains of length below this value — int in [0, inf], (optional)
		@param keep_bind_info Keep Bind Info, Store Bindpose information in custom bone properties for later use during Collada export — boolean, (optional)
	**/
	static function collada_import(filepath:String, filter_blender:Bool, filter_backup:Bool, filter_image:Bool, filter_movie:Bool, filter_python:Bool, filter_font:Bool, filter_sound:Bool, filter_text:Bool, filter_btx:Bool, filter_collada:Bool, filter_alembic:Bool, filter_folder:Bool, filter_blenlib:Bool, filemode:Int, display_type:bpy.ops.wm.Wm.Enum15, sort_method:bpy.ops.wm.Wm.Enum16, import_units:Bool, fix_orientation:Bool, find_chains:Bool, auto_connect:Bool, min_chain_length:Int, keep_bind_info:Bool):Void;
	/**
		Set boolean values for a collection of items
		@param data_path_iter data_path_iter, The data path relative to the context, must point to an iterable — string, (optional, never None)
		@param data_path_item data_path_item, The data path from each iterable to the value (int or float) — string, (optional, never None)
		@param type Type — enum in ['TOGGLE', 'ENABLE', 'DISABLE'], (optional)
	**/
	static function context_collection_boolean_set(data_path_iter:String, data_path_item:String, type:bpy.ops.wm.Wm.Enum17):Void;
	/**
		Set a context array value (useful for cycling the active mesh edit mode)
		@param data_path Context Attributes, RNA context string — string, (optional, never None)
		@param reverse Reverse, Cycle backwards — boolean, (optional)
	**/
	static function context_cycle_array(data_path:String, reverse:Bool):Void;
	/**
		Toggle a context value
		@param data_path Context Attributes, RNA context string — string, (optional, never None)
		@param reverse Reverse, Cycle backwards — boolean, (optional)
		@param wrap Wrap, Wrap back to the first/last values — boolean, (optional)
	**/
	static function context_cycle_enum(data_path:String, reverse:Bool, wrap:Bool):Void;
	/**
		Set a context value (useful for cycling active material, vertex keys, groups, etc.)
		@param data_path Context Attributes, RNA context string — string, (optional, never None)
		@param reverse Reverse, Cycle backwards — boolean, (optional)
		@param wrap Wrap, Wrap back to the first/last values — boolean, (optional)
	**/
	static function context_cycle_int(data_path:String, reverse:Bool, wrap:Bool):Void;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
		@param data_path Context Attributes, RNA context string — string, (optional, never None)
	**/
	static function context_menu_enum(data_path:String):Void;
	/**
		Adjust arbitrary values with mouse input
		@param data_path_iter data_path_iter, The data path relative to the context, must point to an iterable — string, (optional, never None)
		@param data_path_item data_path_item, The data path from each iterable to the value (int or float) — string, (optional, never None)
		@param header_text Header Text, Text to display in header during scale — string, (optional, never None)
		@param input_scale input_scale, Scale the mouse movement by this value before applying the delta — float in [-inf, inf], (optional)
		@param invert invert, Invert the mouse input — boolean, (optional)
		@param initial_x initial_x — int in [-inf, inf], (optional)
	**/
	static function context_modal_mouse(data_path_iter:String, data_path_item:String, header_text:String, input_scale:Float, invert:Bool, initial_x:Int):Void;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
		@param data_path Context Attributes, RNA context string — string, (optional, never None)
	**/
	static function context_pie_enum(data_path:String):Void;
	/**
		Scale a float context value
		@param data_path Context Attributes, RNA context string — string, (optional, never None)
		@param value Value, Assign value — float in [-inf, inf], (optional)
	**/
	static function context_scale_float(data_path:String, value:Float):Void;
	/**
		Scale an int context value
		@param data_path Context Attributes, RNA context string — string, (optional, never None)
		@param value Value, Assign value — float in [-inf, inf], (optional)
		@param always_step Always Step, Always adjust the value by a minimum of 1 when ‘value’ is not 1.0 — boolean, (optional)
	**/
	static function context_scale_int(data_path:String, value:Float, always_step:Bool):Void;
	/**
		Set a context value
		@param data_path Context Attributes, RNA context string — string, (optional, never None)
		@param value Value, Assignment value — boolean, (optional)
	**/
	static function context_set_boolean(data_path:String, value:Bool):Void;
	/**
		Set a context value
		@param data_path Context Attributes, RNA context string — string, (optional, never None)
		@param value Value, Assignment value (as a string) — string, (optional, never None)
	**/
	static function context_set_enum(data_path:String, value:String):Void;
	/**
		Set a context value
		@param data_path Context Attributes, RNA context string — string, (optional, never None)
		@param value Value, Assignment value — float in [-inf, inf], (optional)
		@param relative Relative, Apply relative to the current value (delta) — boolean, (optional)
	**/
	static function context_set_float(data_path:String, value:Float, relative:Bool):Void;
	/**
		Set a context value to an ID data-block
		@param data_path Context Attributes, RNA context string — string, (optional, never None)
		@param value Value, Assign value — string, (optional, never None)
	**/
	static function context_set_id(data_path:String, value:String):Void;
	/**
		Set a context value
		@param data_path Context Attributes, RNA context string — string, (optional, never None)
		@param value Value, Assign value — int in [-inf, inf], (optional)
		@param relative Relative, Apply relative to the current value (delta) — boolean, (optional)
	**/
	static function context_set_int(data_path:String, value:Int, relative:Bool):Void;
	/**
		Set a context value
		@param data_path Context Attributes, RNA context string — string, (optional, never None)
		@param value Value, Assign value — string, (optional, never None)
	**/
	static function context_set_string(data_path:String, value:String):Void;
	/**
		Set a context value
		@param data_path Context Attributes, RNA context string — string, (optional, never None)
		@param value Value, Assignment value (as a string) — string, (optional, never None)
	**/
	static function context_set_value(data_path:String, value:String):Void;
	/**
		Toggle a context value
		@param data_path Context Attributes, RNA context string — string, (optional, never None)
	**/
	static function context_toggle(data_path:String):Void;
	/**
		Toggle a context value
		@param data_path Context Attributes, RNA context string — string, (optional, never None)
		@param value_1 Value, Toggle enum — string, (optional, never None)
		@param value_2 Value, Toggle enum — string, (optional, never None)
	**/
	static function context_toggle_enum(data_path:String, value_1:String, value_2:String):Void;
	/**
		Copy settings from previous version
	**/
	static function copy_prev_settings():Void;
	/**
		Open a popup to set the debug level
		@param debug_value Debug Value — int in [-32768, 32767], (optional)
	**/
	static function debug_menu(debug_value:Int):Void;
	/**
		Load online reference docs
		@param doc_id Doc ID — string, (optional, never None)
	**/
	static function doc_view(doc_id:String):Void;
	/**
		Load online manual
		@param doc_id Doc ID — string, (optional, never None)
	**/
	static function doc_view_manual(doc_id:String):Void;
	/**
		View a context based online manual in a web browser
	**/
	static function doc_view_manual_ui_context():Void;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
		@param filepath filepath — string, (optional, never None)
	**/
	static function drop_blend_file(filepath:String):Void;
	/**
		Add or remove a theme preset
		@param name Name, Name of the preset, used to make the path name — string, (optional, never None)
		@param remove_name remove_name — boolean, (optional)
		@param remove_active remove_active — boolean, (optional)
	**/
	static function interface_theme_preset_add(name:String, remove_name:Bool, remove_active:Bool):Void;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
		@param filepath filepath — string, (optional, never None)
	**/
	static function keyconfig_activate(filepath:String):Void;
	/**
		Export key configuration to a python script
		@param all All Keymaps, Write all keymaps (not just user modified) — boolean, (optional)
		@param filepath filepath — string, (optional, never None)
		@param filter_folder Filter folders — boolean, (optional)
		@param filter_text Filter text — boolean, (optional)
		@param filter_python Filter python — boolean, (optional)
	**/
	static function keyconfig_export(all:Bool, filepath:String, filter_folder:Bool, filter_text:Bool, filter_python:Bool):Void;
	/**
		Import key configuration from a python script
		@param filepath filepath — string, (optional, never None)
		@param filter_folder Filter folders — boolean, (optional)
		@param filter_text Filter text — boolean, (optional)
		@param filter_python Filter python — boolean, (optional)
		@param keep_original Keep original, Keep original file after copying to configuration folder — boolean, (optional)
	**/
	static function keyconfig_import(filepath:String, filter_folder:Bool, filter_text:Bool, filter_python:Bool, keep_original:Bool):Void;
	/**
		Add or remove a Key-config Preset
		@param name Name, Name of the preset, used to make the path name — string, (optional, never None)
		@param remove_name remove_name — boolean, (optional)
		@param remove_active remove_active — boolean, (optional)
	**/
	static function keyconfig_preset_add(name:String, remove_name:Bool, remove_active:Bool):Void;
	/**
		Remove key config
	**/
	static function keyconfig_remove():Void;
	/**
		Test key-config for conflicts
	**/
	static function keyconfig_test():Void;
	/**
		Add key map item
	**/
	static function keyitem_add():Void;
	/**
		Remove key map item
		@param item_id Item Identifier, Identifier of the item to remove — int in [-inf, inf], (optional)
	**/
	static function keyitem_remove(item_id:Int):Void;
	/**
		Restore key map item
		@param item_id Item Identifier, Identifier of the item to remove — int in [-inf, inf], (optional)
	**/
	static function keyitem_restore(item_id:Int):Void;
	/**
		Restore key map(s)
		@param all All Keymaps, Restore all keymaps to default — boolean, (optional)
	**/
	static function keymap_restore(all:Bool):Void;
	/**
		Reload the given library
		@param library Library, Library to reload — string, (optional, never None)
		@param filepath File Path, Path to file — string, (optional, never None)
		@param directory Directory, Directory of the file — string, (optional, never None)
		@param filename File Name, Name of the file — string, (optional, never None)
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
	**/
	static function lib_reload(library:String, filepath:String, directory:String, filename:String, filter_blender:Bool, filter_backup:Bool, filter_image:Bool, filter_movie:Bool, filter_python:Bool, filter_font:Bool, filter_sound:Bool, filter_text:Bool, filter_btx:Bool, filter_collada:Bool, filter_alembic:Bool, filter_folder:Bool, filter_blenlib:Bool, filemode:Int, relative_path:Bool, display_type:bpy.ops.wm.Wm.Enum18, sort_method:bpy.ops.wm.Wm.Enum19):Void;
	/**
		Relocate the given library to one or several others
		@param library Library, Library to relocate — string, (optional, never None)
		@param filepath File Path, Path to file — string, (optional, never None)
		@param directory Directory, Directory of the file — string, (optional, never None)
		@param filename File Name, Name of the file — string, (optional, never None)
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
	**/
	static function lib_relocate(library:String, filepath:String, directory:String, filename:String, files:Dynamic, filter_blender:Bool, filter_backup:Bool, filter_image:Bool, filter_movie:Bool, filter_python:Bool, filter_font:Bool, filter_sound:Bool, filter_text:Bool, filter_btx:Bool, filter_collada:Bool, filter_alembic:Bool, filter_folder:Bool, filter_blenlib:Bool, filemode:Int, relative_path:Bool, display_type:bpy.ops.wm.Wm.Enum20, sort_method:bpy.ops.wm.Wm.Enum21):Void;
	/**
		Link from a Library .blend file
		@param filepath File Path, Path to file — string, (optional, never None)
		@param directory Directory, Directory of the file — string, (optional, never None)
		@param filename File Name, Name of the file — string, (optional, never None)
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
		@param link Link, Link the objects or data-blocks rather than appending — boolean, (optional)
		@param autoselect Select, Select new objects — boolean, (optional)
		@param active_collection Active Collection, Put new objects on the active collection — boolean, (optional)
		@param instance_collections Instance Collections, Create instances for collections, rather than adding them directly to the scene — boolean, (optional)
	**/
	static function link(filepath:String, directory:String, filename:String, files:Dynamic, filter_blender:Bool, filter_backup:Bool, filter_image:Bool, filter_movie:Bool, filter_python:Bool, filter_font:Bool, filter_sound:Bool, filter_text:Bool, filter_btx:Bool, filter_collada:Bool, filter_alembic:Bool, filter_folder:Bool, filter_blenlib:Bool, filemode:Int, relative_path:Bool, display_type:bpy.ops.wm.Wm.Enum22, sort_method:bpy.ops.wm.Wm.Enum23, link:Bool, autoselect:Bool, active_collection:Bool, instance_collections:Bool):Void;
	/**
		Print memory statistics to the console
	**/
	static function memory_statistics():Void;
	/**
		Open a Blender file
		@param filepath File Path, Path to file — string, (optional, never None)
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
		@param load_ui Load UI, Load user interface setup in the .blend file — boolean, (optional)
		@param use_scripts Trusted Source, Allow .blend file to execute scripts automatically, default available from system preferences — boolean, (optional)
	**/
	static function open_mainfile(filepath:String, filter_blender:Bool, filter_backup:Bool, filter_image:Bool, filter_movie:Bool, filter_python:Bool, filter_font:Bool, filter_sound:Bool, filter_text:Bool, filter_btx:Bool, filter_collada:Bool, filter_alembic:Bool, filter_folder:Bool, filter_blenlib:Bool, filemode:Int, display_type:bpy.ops.wm.Wm.Enum24, sort_method:bpy.ops.wm.Wm.Enum25, load_ui:Bool, use_scripts:Bool):Void;
	/**
		List all the Operators in a text-block, useful for scripting
	**/
	static function operator_cheat_sheet():Void;
	/**
		Set the active operator to its default values
	**/
	static function operator_defaults():Void;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
		@param data_path Operator, Operator name (in python as string) — string, (optional, never None)
		@param prop_string Property, Property name (as a string) — string, (optional, never None)
	**/
	static function operator_pie_enum(data_path:String, prop_string:String):Void;
	/**
		Add or remove an Operator Preset
		@param name Name, Name of the preset, used to make the path name — string, (optional, never None)
		@param remove_name remove_name — boolean, (optional)
		@param remove_active remove_active — boolean, (optional)
		@param operator Operator — string, (optional, never None)
	**/
	static function operator_preset_add(name:String, remove_name:Bool, remove_active:Bool, operator:String):Void;
	/**
		Enable workspace owner ID
		@param owner_id UI Tag — string, (optional, never None)
	**/
	static function owner_disable(owner_id:String):Void;
	/**
		Enable workspace owner ID
		@param owner_id UI Tag — string, (optional, never None)
	**/
	static function owner_enable(owner_id:String):Void;
	/**
		Open a path in a file browser
		@param filepath filepath — string, (optional, never None)
	**/
	static function path_open(filepath:String):Void;
	/**
		Clear selected .blend file’s previews
		@param files files — bpy_prop_collection of OperatorFileListElement, (optional)
		@param directory directory — string, (optional, never None)
		@param filter_blender filter_blender — boolean, (optional)
		@param filter_folder filter_folder — boolean, (optional)
		@param use_scenes Scenes, Clear scenes’ previews — boolean, (optional)
		@param use_collections Collections, Clear collections’ previews — boolean, (optional)
		@param use_objects Objects, Clear objects’ previews — boolean, (optional)
		@param use_intern_data Mat/Tex/…, Clear ‘internal’ previews (materials, textures, images, etc.) — boolean, (optional)
		@param use_trusted Trusted Blend Files, Enable python evaluation for selected files — boolean, (optional)
		@param use_backups Save Backups, Keep a backup (.blend1) version of the files when saving with cleared previews — boolean, (optional)
	**/
	static function previews_batch_clear(files:Dynamic, directory:String, filter_blender:Bool, filter_folder:Bool, use_scenes:Bool, use_collections:Bool, use_objects:Bool, use_intern_data:Bool, use_trusted:Bool, use_backups:Bool):Void;
	/**
		Generate selected .blend file’s previews
		@param files files — bpy_prop_collection of OperatorFileListElement, (optional)
		@param directory directory — string, (optional, never None)
		@param filter_blender filter_blender — boolean, (optional)
		@param filter_folder filter_folder — boolean, (optional)
		@param use_scenes Scenes, Generate scenes’ previews — boolean, (optional)
		@param use_collections Collections, Generate collections’ previews — boolean, (optional)
		@param use_objects Objects, Generate objects’ previews — boolean, (optional)
		@param use_intern_data Mat/Tex/…, Generate ‘internal’ previews (materials, textures, images, etc.) — boolean, (optional)
		@param use_trusted Trusted Blend Files, Enable python evaluation for selected files — boolean, (optional)
		@param use_backups Save Backups, Keep a backup (.blend1) version of the files when saving with generated previews — boolean, (optional)
	**/
	static function previews_batch_generate(files:Dynamic, directory:String, filter_blender:Bool, filter_folder:Bool, use_scenes:Bool, use_collections:Bool, use_objects:Bool, use_intern_data:Bool, use_trusted:Bool, use_backups:Bool):Void;
	/**
		Clear data-block previews (only for some types like objects, materials, textures, etc.)
		@param id_type Data-Block Type, Which data-block previews to clear — enum set in {'SCENE', 'GROUP', 'OBJECT', 'MATERIAL', 'LIGHT', 'WORLD', 'TEXTURE', 'IMAGE'}, (optional)
	**/
	static function previews_clear(id_type:Dynamic):Void;
	/**
		Ensure data-block previews are available and up-to-date (to be saved in .blend file, only for some types like materials, textures, etc.)
	**/
	static function previews_ensure():Void;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
		@param data_path Property Edit, Property data_path edit — string, (optional, never None)
	**/
	static function properties_add(data_path:String):Void;
	/**
		Jump to a different tab inside the properties editor
		@param context Context — string, (optional, never None)
	**/
	static function properties_context_change(context:String):Void;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
		@param data_path Property Edit, Property data_path edit — string, (optional, never None)
		@param property Property Name, Property name edit — string, (optional, never None)
		@param value Property Value, Property value edit — string, (optional, never None)
		@param min Min — float in [-inf, inf], (optional)
		@param max Max — float in [-inf, inf], (optional)
		@param use_soft_limits Use Soft Limits — boolean, (optional)
		@param is_overridable_static Is Statically Overridable — boolean, (optional)
		@param soft_min Min — float in [-inf, inf], (optional)
		@param soft_max Max — float in [-inf, inf], (optional)
		@param description Tooltip — string, (optional, never None)
	**/
	static function properties_edit(data_path:String, property:String, value:String, min:Float, max:Float, use_soft_limits:Bool, is_overridable_static:Bool, soft_min:Float, soft_max:Float, description:String):Void;
	/**
		Internal use (edit a property data_path)
		@param data_path Property Edit, Property data_path edit — string, (optional, never None)
		@param property Property Name, Property name edit — string, (optional, never None)
	**/
	static function properties_remove(data_path:String, property:String):Void;
	/**
		Quit Blender
	**/
	static function quit_blender():Void;
	/**
		Set some size property (like e.g. brush size) with mouse wheel
		@param data_path_primary Primary Data Path, Primary path of property to be set by the radial control — string, (optional, never None)
		@param data_path_secondary Secondary Data Path, Secondary path of property to be set by the radial control — string, (optional, never None)
		@param use_secondary Use Secondary, Path of property to select between the primary and secondary data paths — string, (optional, never None)
		@param rotation_path Rotation Path, Path of property used to rotate the texture display — string, (optional, never None)
		@param color_path Color Path, Path of property used to set the color of the control — string, (optional, never None)
		@param fill_color_path Fill Color Path, Path of property used to set the fill color of the control — string, (optional, never None)
		@param fill_color_override_path Fill Color Override Path — string, (optional, never None)
		@param fill_color_override_test_path Fill Color Override Test — string, (optional, never None)
		@param zoom_path Zoom Path, Path of property used to set the zoom level for the control — string, (optional, never None)
		@param image_id Image ID, Path of ID that is used to generate an image for the control — string, (optional, never None)
		@param secondary_tex Secondary Texture, Tweak brush secondary/mask texture — boolean, (optional)
	**/
	static function radial_control(data_path_primary:String, data_path_secondary:String, use_secondary:String, rotation_path:String, color_path:String, fill_color_path:String, fill_color_override_path:String, fill_color_override_test_path:String, zoom_path:String, image_id:String, secondary_tex:Bool):Void;
	/**
		Load default file and user preferences
		@param use_empty Empty — boolean, (optional)
	**/
	static function read_factory_settings(use_empty:Bool):Void;
	/**
		Reloads history and bookmarks
	**/
	static function read_history():Void;
	/**
		Open the default file (doesn’t save the current file)
		@param filepath File Path, Path to an alternative start-up file — string, (optional, never None)
		@param load_ui Load UI, Load user interface setup from the .blend file — boolean, (optional)
		@param use_empty Empty — boolean, (optional)
		@param use_splash Splash — boolean, (optional)
	**/
	static function read_homefile(filepath:String, load_ui:Bool, use_empty:Bool, use_splash:Bool):Void;
	/**
		Open an automatically saved file to recover it
		@param filepath File Path, Path to file — string, (optional, never None)
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
	static function recover_auto_save(filepath:String, filter_blender:Bool, filter_backup:Bool, filter_image:Bool, filter_movie:Bool, filter_python:Bool, filter_font:Bool, filter_sound:Bool, filter_text:Bool, filter_btx:Bool, filter_collada:Bool, filter_alembic:Bool, filter_folder:Bool, filter_blenlib:Bool, filemode:Int, display_type:bpy.ops.wm.Wm.Enum26, sort_method:bpy.ops.wm.Wm.Enum27):Void;
	/**
		Open the last closed file (“quit.blend”)
	**/
	static function recover_last_session():Void;
	/**
		Simple redraw timer to test the speed of updating the interface
		@param type TypeDRAW Draw Region, Draw Region.DRAW_SWAP Draw Region + Swap, Draw Region and Swap.DRAW_WIN Draw Window, Draw Window.DRAW_WIN_SWAP Draw Window + Swap, Draw Window and Swap.ANIM_STEP Anim Step, Animation Steps.ANIM_PLAY Anim Play, Animation Playback.UNDO Undo/Redo, Undo/Redo. — enum in ['DRAW', 'DRAW_SWAP', 'DRAW_WIN', 'DRAW_WIN_SWAP', 'ANIM_STEP', 'ANIM_PLAY', 'UNDO'], (optional)
		@param iterations Iterations, Number of times to redraw — int in [1, inf], (optional)
		@param time_limit Time Limit, Seconds to run the test for (override iterations) — float in [0, inf], (optional)
	**/
	static function redraw_timer(type:bpy.ops.wm.Wm.Enum28, iterations:Int, time_limit:Float):Void;
	/**
		Reload the saved file
		@param use_scripts Trusted Source, Allow .blend file to execute scripts automatically, default available from system preferences — boolean, (optional)
	**/
	static function revert_mainfile(use_scripts:Bool):Void;
	/**
		Save the current file in the desired location
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
		@param compress Compress, Write compressed .blend file — boolean, (optional)
		@param relative_remap Remap Relative, Remap relative paths when saving in a different directory — boolean, (optional)
		@param copy Save Copy, Save a copy of the actual working state but does not make saved file active — boolean, (optional)
	**/
	static function save_as_mainfile(filepath:String, check_existing:Bool, filter_blender:Bool, filter_backup:Bool, filter_image:Bool, filter_movie:Bool, filter_python:Bool, filter_font:Bool, filter_sound:Bool, filter_text:Bool, filter_btx:Bool, filter_collada:Bool, filter_alembic:Bool, filter_folder:Bool, filter_blenlib:Bool, filemode:Int, display_type:bpy.ops.wm.Wm.Enum29, sort_method:bpy.ops.wm.Wm.Enum30, compress:Bool, relative_remap:Bool, copy:Bool):Void;
	/**
		Make the current file the default .blend file
	**/
	static function save_homefile():Void;
	/**
		Save the current Blender file
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
		@param compress Compress, Write compressed .blend file — boolean, (optional)
		@param relative_remap Remap Relative, Remap relative paths when saving in a different directory — boolean, (optional)
		@param exit Exit, Exit Blender after saving — boolean, (optional)
	**/
	static function save_mainfile(filepath:String, check_existing:Bool, filter_blender:Bool, filter_backup:Bool, filter_image:Bool, filter_movie:Bool, filter_python:Bool, filter_font:Bool, filter_sound:Bool, filter_text:Bool, filter_btx:Bool, filter_collada:Bool, filter_alembic:Bool, filter_folder:Bool, filter_blenlib:Bool, filemode:Int, display_type:bpy.ops.wm.Wm.Enum31, sort_method:bpy.ops.wm.Wm.Enum32, compress:Bool, relative_remap:Bool, exit:Bool):Void;
	/**
		Save user preferences separately, overrides startup file preferences
	**/
	static function save_userpref():Void;
	/**
		Pop-up a search menu over all available operators in current context
	**/
	static function search_menu():Void;
	/**
		Toggle 3D stereo support for current window (or change the display mode)
		@param display_mode Display ModeANAGLYPH Anaglyph, Render views for left and right eyes as two differently filtered colors in a single image (anaglyph glasses are required).INTERLACE Interlace, Render views for left and right eyes interlaced in a single image (3D-ready monitor is required).TIMESEQUENTIAL Time Sequential, Render alternate eyes (also known as page flip, quad buffer support in the graphic card is required).SIDEBYSIDE Side-by-Side, Render views for left and right eyes side-by-side.TOPBOTTOM Top-Bottom, Render views for left and right eyes one above another. — enum in ['ANAGLYPH', 'INTERLACE', 'TIMESEQUENTIAL', 'SIDEBYSIDE', 'TOPBOTTOM'], (optional)
		@param anaglyph_type Anaglyph Type — enum in ['RED_CYAN', 'GREEN_MAGENTA', 'YELLOW_BLUE'], (optional)
		@param interlace_type Interlace Type — enum in ['ROW_INTERLEAVED', 'COLUMN_INTERLEAVED', 'CHECKERBOARD_INTERLEAVED'], (optional)
		@param use_interlace_swap Swap Left/Right, Swap left and right stereo channels — boolean, (optional)
		@param use_sidebyside_crosseyed Cross-Eyed, Right eye should see left image and vice-versa — boolean, (optional)
	**/
	static function set_stereo_3d(display_mode:bpy.ops.wm.Wm.Enum33, anaglyph_type:bpy.ops.wm.Wm.Enum34, interlace_type:bpy.ops.wm.Wm.Enum35, use_interlace_swap:Bool, use_sidebyside_crosseyed:Bool):Void;
	/**
		Open the splash screen with release info
	**/
	static function splash():Void;
	/**
		Install a user defined studio light
		@param files File Path — bpy_prop_collection of OperatorFileListElement, (optional)
		@param directory directory — string, (optional, never None)
		@param filter_folder Filter folders — boolean, (optional)
		@param filter_glob filter_glob — string, (optional, never None)
		@param type type — enum in ['MATCAP', 'WORLD', 'STUDIO'], (optional)
	**/
	static function studiolight_install(files:Dynamic, directory:String, filter_folder:Bool, filter_glob:String, type:bpy.ops.wm.Wm.Enum36):Void;
	/**
		Create custom studio light from the studio light editor settings
		@param filename Name — string, (optional, never None)
	**/
	static function studiolight_new(filename:String):Void;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
		@param index index — int in [-inf, inf], (optional)
	**/
	static function studiolight_uninstall(index:Int):Void;
	/**
		Show light user preferences
	**/
	static function studiolight_userpref_show():Void;
	/**
		Generate system information, saved into a text file
		@param filepath filepath — string, (optional, never None)
	**/
	static function sysinfo(filepath:String):Void;
	/**
		Load and apply a Blender XML theme file
		@param overwrite Overwrite, Remove existing theme file if exists — boolean, (optional)
		@param filepath filepath — string, (optional, never None)
		@param filter_folder Filter folders — boolean, (optional)
		@param filter_glob filter_glob — string, (optional, never None)
	**/
	static function theme_install(overwrite:Bool, filepath:String, filter_folder:Bool, filter_glob:String):Void;
	/**
		Set the tool by name (for keymaps)
		@param name Text, Display name of the tool — string, (optional, never None)
		@param cycle Cycle, Cycle through tools in this group — boolean, (optional)
		@param space_type Type — enum in ['EMPTY', 'VIEW_3D', 'IMAGE_EDITOR', 'NODE_EDITOR', 'SEQUENCE_EDITOR', 'CLIP_EDITOR', 'DOPESHEET_EDITOR', 'GRAPH_EDITOR', 'NLA_EDITOR', 'TEXT_EDITOR', 'CONSOLE', 'INFO', 'TOPBAR', 'STATUSBAR', 'OUTLINER', 'PROPERTIES', 'FILE_BROWSER', 'USER_PREFERENCES'], (optional)
	**/
	static function tool_set_by_name(name:String, cycle:Bool, space_type:bpy.ops.wm.Wm.Enum37):Void;
	/**
		Undocumented contribute &lt;https://developer.blender.org/T51061&gt;
	**/
	static function toolbar():Void;
	/**
		Open a website in the web-browser
		@param url URL, URL to open — string, (optional, never None)
	**/
	static function url_open(url:String):Void;
	/**
		Add path to exclude from autoexecution
	**/
	static function userpref_autoexec_path_add():Void;
	/**
		Remove path to exclude from autoexecution
		@param index Index — int in [0, inf], (optional)
	**/
	static function userpref_autoexec_path_remove(index:Int):Void;
	/**
		Close the current window
	**/
	static function window_close():Void;
	/**
		Toggle the current window fullscreen
	**/
	static function window_fullscreen_toggle():Void;
	/**
		Create a new window
	**/
	static function window_new():Void;
	/**
		Create a new main window with its own workspace and scene selection
	**/
	static function window_new_main():Void;
}