package bpy_extras.io_utils;
/**
	bpy_extras submodule (bpy_extras.io_utils)
**/
@:pythonImport("bpy_extras.io_utils") extern class Module {
	/**
		A decorator for import/export classes, generating properties needed by the axis conversion system and IO helpers,
		with specified default values (axes).
	**/
	static function orientation_helper():Void;
	/**
		Each argument us an axis in [‘X’, ‘Y’, ‘Z’, ‘-X’, ‘-Y’, ‘-Z’]
		where the first 2 are a source and the second 2 are the target.
	**/
	static function axis_conversion():Void;
	/**
		Function to ensure an operator has valid axis conversion settings, intended
		to be used from bpy.types.Operator.check.
		@param operator the operator to access axis attributes from. — bpy.types.Operator
		@param forward_attr attribute storing the forward axis — string
		@param up_attr attribute storing the up axis — string
		
		@returns boolean
	**/
	static function axis_conversion_ensure(operator:Dynamic, forward_attr:Dynamic, up_attr:Dynamic):Dynamic;
	static function create_derived_objects():Void;
	static function free_derived_objects():Void;
	static function unpack_list():Void;
	static function unpack_face_list():Void;
	/**
		Return a filepath relative to a destination directory, for use with
		exporters.
		@param filepath the file path to return,
		                                        supporting blenders relative ‘//’ prefix. — string
		@param base_src the directory the filepath is relative too
		                                        (normally the blend file). — string
		@param base_dst the directory the filepath will be referenced from
		                                        (normally the export path). — string
		@param mode the method used get the path in
		                                        [‘AUTO’, ‘ABSOLUTE’, ‘RELATIVE’, ‘MATCH’, ‘STRIP’, ‘COPY’] — string
		@param copy_subdir the subdirectory of base_dst to use when mode=’COPY’. — string
		@param copy_set collect from/to pairs when mode=’COPY’,
		                                        pass to path_reference_copy when exporting is done. — set
		@param library The library this path is relative to. — bpy.types.Library or None
		
		@returns string
	**/
	static function path_reference(filepath:Dynamic, base_src:Dynamic, base_dst:Dynamic, mode:Dynamic, copy_subdir:Dynamic, copy_set:Dynamic, library:Dynamic):Dynamic;
	/**
		Execute copying files of path_reference
		@param copy_set set of (from, to) pairs to copy. — set
		@param report function used for reporting warnings, takes a string argument. — function
	**/
	static function path_reference_copy(copy_set:Dynamic, report:Dynamic):Void;
	/**
		Helper function for storing unique names which may have special characters
		stripped and restricted to a maximum length.
		@param key unique item this name belongs to, name_dict[key] will be reused
		                                        when available.
		                                        This can be the object, mesh, material, etc instance its self. — any hashable object associated with the name.
		@param name The name used to create a unique value in name_dict. — string
		@param name_dict This is used to cache namespace to ensure no collisions
		                                        occur, this should be an empty dict initially and only modified by this
		                                        function. — dict
		@param clean_func Function to call on name before creating a unique value. — function
		@param sep Separator to use when between the name and a number when a
		                                        duplicate name is found. — string
	**/
	static function unique_name(key:Dynamic, name:Dynamic, name_dict:Dynamic, clean_func:Dynamic, sep:Dynamic):Void;
	/**
		constant value (&lt;built-in function EnumProperty&gt;, {‘name’: ‘Path Mode’, ‘description’: ‘Method used to reference paths’, ‘items’: ((‘AUTO’, ‘Auto’, ‘Use Relative paths with subdirectories only’), (‘ABSOLUTE’, ‘Absolute’, ‘Always write absolute paths’), (‘RELATIVE’, ‘Relative’, ‘Always write relative paths (where possible)’), (‘MATCH’, ‘Match’, ‘Match Absolute/Relative setting with input path’), (‘STRIP’, ‘Strip Path’, ‘Filename only’), (‘COPY’, ‘Copy’, ‘Copy the file to the destination path (or subdirectory)’)), ‘default’: ‘AUTO’, ‘attr’: ‘path_mode’})
	**/
	var path_reference_mode(default, never) : Dynamic;
}