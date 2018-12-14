package bpy.types.bpy_struct;
/**
	built-in base class for all classes in bpy.types.
**/
@:pythonImport("bpy.types.bpy_struct") extern class Bpy_struct {
	/**
		Returns the memory address which holds a pointer to blenders internal data
		
		@returns int
	**/
	function as_pointer():Dynamic;
	/**
		Adds driver(s) to the given property
		@param path path to the property to drive, analogous to the fcurve’s data path. — string
		@param index array index of the property drive. Defaults to -1 for all indices or a single channel if the property is not an array. — int
		
		@returns bpy.types.FCurve or list if index is -1 with an array property.
	**/
	function driver_add(path:Dynamic, index:Dynamic):bpy.types.fcurve.FCurve;
	/**
		Remove driver(s) from the given property
		@param path path to the property to drive, analogous to the fcurve’s data path. — string
		@param index array index of the property drive. Defaults to -1 for all indices or a single channel if the property is not an array. — int
		
		@returns boolean
	**/
	function driver_remove(path:Dynamic, index:Dynamic):Dynamic;
	/**
		Returns the value of the custom property assigned to key or default
		when not found (matches pythons dictionary function of the same name).
		@param key The key associated with the custom property. — string
		@param default Optional argument for the value to return if
		                                                key is not found. — Undefined
	**/
	function get(key:Dynamic, default:Dynamic):Void;
	/**
		Check if a property is hidden.
		
		@returns boolean
	**/
	function is_property_hidden():Dynamic;
	/**
		Check if a property is statically overridable.
		
		@returns boolean
	**/
	function is_property_overridable_static():Dynamic;
	/**
		Check if a property is readonly.
		
		@returns boolean
	**/
	function is_property_readonly():Dynamic;
	/**
		Check if a property is set, use for testing operator properties.
		
		@returns boolean
	**/
	function is_property_set():Dynamic;
	/**
		Returns the items of this objects custom properties (matches pythons
		dictionary function of the same name).
		
		@returns list of key, value tuples
	**/
	function items():Array<Dynamic>;
	/**
		Remove a keyframe from this properties fcurve.
		@param data_path path to the property to remove a key, analogous to the fcurve’s data path. — string
		@param index array index of the property to remove a key. Defaults to -1 removing all indices or a single channel if the property is not an array. — int
		@param frame The frame on which the keyframe is deleted, defaulting to the current frame. — float
		@param group The name of the group the F-Curve should be added to if it doesn’t exist yet. — str
		
		@returns boolean
	**/
	function keyframe_delete(data_path:Dynamic, index:Dynamic, frame:Dynamic, group:Dynamic):Dynamic;
	/**
		Insert a keyframe on the property given, adding fcurves and animation data when necessary.
		
		This is the most simple example of inserting a keyframe from python.
		
		Note that when keying data paths which contain nested properties this must be
		done from the ID subclass, in this case the Armature rather
		than the bone.
		@param data_path path to the property to key, analogous to the fcurve’s data path. — string
		@param index array index of the property to key.
		                                                Defaults to -1 which will key all indices or a single channel if the property is not an array. — int
		@param frame The frame on which the keyframe is inserted, defaulting to the current frame. — float
		@param group The name of the group the F-Curve should be added to if it doesn’t exist yet. — str
		@param options Optional flags:INSERTKEY_NEEDED Only insert keyframes where they’re needed in the relevant F-Curves.INSERTKEY_VISUAL Insert keyframes based on ‘visual transforms’.INSERTKEY_XYZ_TO_RGB Color for newly added transformation F-Curves (Location, Rotation, Scale)and also Color is based on the transform axis. — Location, Rotation, Scale
		
		@returns boolean
	**/
	function keyframe_insert(data_path:Dynamic, index:Dynamic, frame:Dynamic, group:Dynamic, options:Dynamic):Dynamic;
	/**
		Returns the keys of this objects custom properties (matches pythons
		dictionary function of the same name).
		
		@returns list of strings
	**/
	function keys():Array<Dynamic>;
	/**
		Returns the data path from the ID to this object (string).
		@param property Optional property name which can be used if the path is
		                                        to a property of this object. — string
		
		@returns str
	**/
	function path_from_id(property:Dynamic):Dynamic;
	/**
		Returns the property from the path, raise an exception when not found.
		@param path path which this property resolves. — string
		@param coerce optional argument, when True, the property will be converted
		                                                into its python representation. — boolean
	**/
	function path_resolve(path:Dynamic, coerce:Dynamic):Void;
	/**
		Remove and return the value of the custom property assigned to key or default
		when not found (matches pythons dictionary function of the same name).
		@param key The key associated with the custom property. — string
		@param default Optional argument for the value to return if
		                                                key is not found. — Undefined
	**/
	function pop(key:Dynamic, default:Dynamic):Void;
	/**
		Define a property as statically overridable or not (only for custom properties!).
		
		@returns boolean
	**/
	function property_overridable_static_set():Dynamic;
	/**
		Unset a property, will use default value afterward.
	**/
	function property_unset():Void;
	/**
		Return a new instance, this is needed because types
		such as textures can be changed at runtime.
		
		@returns subclass of bpy.types.bpy_struct
	**/
	function type_recast():Dynamic;
	/**
		Returns the values of this objects custom properties (matches pythons
		dictionary function of the same name).
		
		@returns list
	**/
	function values():Dynamic;
	/**
		The bpy.types.ID object this datablock is from or None, (not available for all data types)
	**/
	var id_data : Dynamic;
}