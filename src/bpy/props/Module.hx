package bpy.props;
/**
	Property Definitions (bpy.props)
	
	This module defines properties to extend Blender’s internal data. The result of these functions is used to assign properties to classes registered with Blender and can’t be used directly.
**/
@:pythonImport("bpy.props") extern class Module {
	/**
		Returns a new boolean property definition.
		@param name Name used in the user interface. — string
		@param description Text used for the tooltip and api documentation. — string
		@param options Enumerator in [‘HIDDEN’, ‘SKIP_SAVE’, ‘ANIMATABLE’, ‘LIBRARY_EDITABLE’, ‘PROPORTIONAL’,’TEXTEDIT_UPDATE’]. — set
		@param tags Enumerator of tags that are defined by parent class. — set
		@param subtype Enumerator in [‘PIXEL’, ‘UNSIGNED’, ‘PERCENTAGE’, ‘FACTOR’, ‘ANGLE’, ‘TIME’, ‘DISTANCE’, ‘NONE’]. — string
		@param update Function to be called when this value is modified,
		                                            This function must take 2 values (self, context) and return None.
		                                            Warning there are no safety checks to avoid infinite recursion. — function
		@param get Function to be called when this value is ‘read’,
		                                            This function must take 1 value (self) and return the value of the property. — function
		@param set Function to be called when this value is ‘written’,
		                                            This function must take 2 values (self, value) and return None. — function
	**/
	static function BoolProperty(name:String, description:String, options:Dynamic, tags:Dynamic, subtype:String, update:Dynamic, get:Dynamic, set:Dynamic):Void;
	/**
		Returns a new vector boolean property definition.
		@param name Name used in the user interface. — string
		@param description Text used for the tooltip and api documentation. — string
		@param pyDefault sequence of booleans the length of size. — sequence
		@param options Enumerator in [‘HIDDEN’, ‘SKIP_SAVE’, ‘ANIMATABLE’, ‘LIBRARY_EDITABLE’, ‘PROPORTIONAL’,’TEXTEDIT_UPDATE’]. — set
		@param tags Enumerator of tags that are defined by parent class. — set
		@param subtype Enumerator in [‘COLOR’, ‘TRANSLATION’, ‘DIRECTION’, ‘VELOCITY’, ‘ACCELERATION’, ‘MATRIX’, ‘EULER’, ‘QUATERNION’, ‘AXISANGLE’, ‘XYZ’, ‘COLOR_GAMMA’, ‘LAYER’, ‘LAYER_MEMBER’, ‘NONE’]. — string
		@param size Vector dimensions in [1, 32]. — int
		@param update Function to be called when this value is modified,
		                                            This function must take 2 values (self, context) and return None.
		                                            Warning there are no safety checks to avoid infinite recursion. — function
		@param get Function to be called when this value is ‘read’,
		                                            This function must take 1 value (self) and return the value of the property. — function
		@param set Function to be called when this value is ‘written’,
		                                            This function must take 2 values (self, value) and return None. — function
	**/
	static function BoolVectorProperty(name:String, description:String, pyDefault:Dynamic, options:Dynamic, tags:Dynamic, subtype:String, size:Int, update:Dynamic, get:Dynamic, set:Dynamic):Void;
	/**
		Returns a new collection property definition.
		@param type A subclass of bpy.types.PropertyGroup or bpy.types.ID. — class
		@param name Name used in the user interface. — string
		@param description Text used for the tooltip and api documentation. — string
		@param options Enumerator in [‘HIDDEN’, ‘SKIP_SAVE’, ‘ANIMATABLE’, ‘LIBRARY_EDITABLE’, ‘PROPORTIONAL’,’TEXTEDIT_UPDATE’]. — set
		@param tags Enumerator of tags that are defined by parent class. — set
	**/
	static function CollectionProperty(type:Dynamic, name:String, description:String, options:Dynamic, tags:Dynamic):Void;
	/**
		Returns a new enumerator property definition.
		@param items sequence of enum items formatted:
		                                                [(identifier, name, description, icon, number), ...].The first three elements of the tuples are mandatory.identifierThe identifier is used for Python access.nameName for the interace.descriptionUsed for documentation and tooltips.iconAn icon string identifier or integer icon value
		                                                            (e.g. returned by bpy.types.UILayout.icon)numberUnique value used as the identifier for this item (stored in file data).
		                                                            Use when the identifier may need to change. If the ENUM_FLAG option is used,
		                                                            the values are bitmasks and should be powers of two.When an item only contains 4 items they define (identifier, name, description, number).For dynamic values a callback can be passed which returns a list in
		                                                the same format as the static list.
		                                                This function must take 2 arguments (self, context), context may be None.There is a known bug with using a callback,
		                                                    Python must keep a reference to the strings returned or Blender will misbehave
		                                                    or even crash. — sequence of string tuples or a function
		@param name Name used in the user interface. — string
		@param description Text used for the tooltip and api documentation. — string
		@param pyDefault The default value for this enum, a string from the identifiers used in items.
		                                            If the ENUM_FLAG option is used this must be a set of such string identifiers instead.
		                                            WARNING: It shall not be specified (or specified to its default None value) for dynamic enums
		                                            (i.e. if a callback function is given as items parameter). — string or set
		@param options Enumerator in [‘HIDDEN’, ‘SKIP_SAVE’, ‘ANIMATABLE’, ‘ENUM_FLAG’, ‘LIBRARY_EDITABLE’]. — set
		@param tags Enumerator of tags that are defined by parent class. — set
		@param update Function to be called when this value is modified,
		                                            This function must take 2 values (self, context) and return None.
		                                            Warning there are no safety checks to avoid infinite recursion. — function
		@param get Function to be called when this value is ‘read’,
		                                            This function must take 1 value (self) and return the value of the property. — function
		@param set Function to be called when this value is ‘written’,
		                                            This function must take 2 values (self, value) and return None. — function
	**/
	static function EnumProperty(items:Dynamic, name:String, description:String, pyDefault:String, options:Dynamic, tags:Dynamic, update:Dynamic, get:Dynamic, set:Dynamic):Void;
	/**
		Returns a new float property definition.
		@param name Name used in the user interface. — string
		@param description Text used for the tooltip and api documentation. — string
		@param min Hard minimum, trying to assign a value below will silently assign this minimum instead. — float
		@param max Hard maximum, trying to assign a value above will silently assign this maximum instead. — float
		@param soft_min Soft minimum (&gt;= min), user won’t be able to drag the widget below this value in the UI. — float
		@param soft_max Soft maximum (&lt;= max), user won’t be able to drag the widget above this value in the UI. — float
		@param step Step of increment/decrement in UI, in [1, 100], defaults to 3 (WARNING: actual value is /100). — int
		@param precision Maximum number of decimal digits to display, in [0, 6]. — int
		@param options Enumerator in [‘HIDDEN’, ‘SKIP_SAVE’, ‘ANIMATABLE’, ‘LIBRARY_EDITABLE’, ‘PROPORTIONAL’,’TEXTEDIT_UPDATE’]. — set
		@param tags Enumerator of tags that are defined by parent class. — set
		@param subtype Enumerator in [‘PIXEL’, ‘UNSIGNED’, ‘PERCENTAGE’, ‘FACTOR’, ‘ANGLE’, ‘TIME’, ‘DISTANCE’, ‘NONE’]. — string
		@param unit Enumerator in [‘NONE’, ‘LENGTH’, ‘AREA’, ‘VOLUME’, ‘ROTATION’, ‘TIME’, ‘VELOCITY’, ‘ACCELERATION’, ‘MASS’, ‘CAMERA’]. — string
		@param update Function to be called when this value is modified,
		                                            This function must take 2 values (self, context) and return None.
		                                            Warning there are no safety checks to avoid infinite recursion. — function
		@param get Function to be called when this value is ‘read’,
		                                            This function must take 1 value (self) and return the value of the property. — function
		@param set Function to be called when this value is ‘written’,
		                                            This function must take 2 values (self, value) and return None. — function
	**/
	static function FloatProperty(name:String, description:String, min:Float, max:Float, soft_min:Float, soft_max:Float, step:Int, precision:Int, options:Dynamic, tags:Dynamic, subtype:String, unit:String, update:Dynamic, get:Dynamic, set:Dynamic):Void;
	/**
		Returns a new vector float property definition.
		@param name Name used in the user interface. — string
		@param description Text used for the tooltip and api documentation. — string
		@param pyDefault sequence of floats the length of size. — sequence
		@param min Hard minimum, trying to assign a value below will silently assign this minimum instead. — float
		@param max Hard maximum, trying to assign a value above will silently assign this maximum instead. — float
		@param soft_min Soft minimum (&gt;= min), user won’t be able to drag the widget below this value in the UI. — float
		@param soft_max Soft maximum (&lt;= max), user won’t be able to drag the widget above this value in the UI. — float
		@param options Enumerator in [‘HIDDEN’, ‘SKIP_SAVE’, ‘ANIMATABLE’, ‘LIBRARY_EDITABLE’, ‘PROPORTIONAL’,’TEXTEDIT_UPDATE’]. — set
		@param tags Enumerator of tags that are defined by parent class. — set
		@param step Step of increment/decrement in UI, in [1, 100], defaults to 3 (WARNING: actual value is /100). — int
		@param precision Maximum number of decimal digits to display, in [0, 6]. — int
		@param subtype Enumerator in [‘COLOR’, ‘TRANSLATION’, ‘DIRECTION’, ‘VELOCITY’, ‘ACCELERATION’, ‘MATRIX’, ‘EULER’, ‘QUATERNION’, ‘AXISANGLE’, ‘XYZ’, ‘COLOR_GAMMA’, ‘LAYER’, ‘LAYER_MEMBER’, ‘NONE’]. — string
		@param unit Enumerator in [‘NONE’, ‘LENGTH’, ‘AREA’, ‘VOLUME’, ‘ROTATION’, ‘TIME’, ‘VELOCITY’, ‘ACCELERATION’, ‘MASS’, ‘CAMERA’]. — string
		@param size Vector dimensions in [1, 32]. — int
		@param update Function to be called when this value is modified,
		                                            This function must take 2 values (self, context) and return None.
		                                            Warning there are no safety checks to avoid infinite recursion. — function
		@param get Function to be called when this value is ‘read’,
		                                            This function must take 1 value (self) and return the value of the property. — function
		@param set Function to be called when this value is ‘written’,
		                                            This function must take 2 values (self, value) and return None. — function
	**/
	static function FloatVectorProperty(name:String, description:String, pyDefault:Dynamic, min:Float, max:Float, soft_min:Float, soft_max:Float, options:Dynamic, tags:Dynamic, step:Int, precision:Int, subtype:String, unit:String, size:Int, update:Dynamic, get:Dynamic, set:Dynamic):Void;
	/**
		Returns a new int property definition.
		@param name Name used in the user interface. — string
		@param description Text used for the tooltip and api documentation. — string
		@param min Hard minimum, trying to assign a value below will silently assign this minimum instead. — int
		@param max Hard maximum, trying to assign a value above will silently assign this maximum instead. — int
		@param soft_max Soft maximum (&lt;= max), user won’t be able to drag the widget above this value in the UI. — int
		@param soft_min Soft minimum (&gt;= min), user won’t be able to drag the widget below this value in the UI. — int
		@param step Step of increment/decrement in UI, in [1, 100], defaults to 1 (WARNING: unused currently!). — int
		@param options Enumerator in [‘HIDDEN’, ‘SKIP_SAVE’, ‘ANIMATABLE’, ‘LIBRARY_EDITABLE’, ‘PROPORTIONAL’,’TEXTEDIT_UPDATE’]. — set
		@param tags Enumerator of tags that are defined by parent class. — set
		@param subtype Enumerator in [‘PIXEL’, ‘UNSIGNED’, ‘PERCENTAGE’, ‘FACTOR’, ‘ANGLE’, ‘TIME’, ‘DISTANCE’, ‘NONE’]. — string
		@param update Function to be called when this value is modified,
		                                            This function must take 2 values (self, context) and return None.
		                                            Warning there are no safety checks to avoid infinite recursion. — function
		@param get Function to be called when this value is ‘read’,
		                                            This function must take 1 value (self) and return the value of the property. — function
		@param set Function to be called when this value is ‘written’,
		                                            This function must take 2 values (self, value) and return None. — function
	**/
	static function IntProperty(name:String, description:String, min:Int, max:Int, soft_max:Int, soft_min:Int, step:Int, options:Dynamic, tags:Dynamic, subtype:String, update:Dynamic, get:Dynamic, set:Dynamic):Void;
	/**
		Returns a new vector int property definition.
		@param name Name used in the user interface. — string
		@param description Text used for the tooltip and api documentation. — string
		@param pyDefault sequence of ints the length of size. — sequence
		@param min Hard minimum, trying to assign a value below will silently assign this minimum instead. — int
		@param max Hard maximum, trying to assign a value above will silently assign this maximum instead. — int
		@param soft_min Soft minimum (&gt;= min), user won’t be able to drag the widget below this value in the UI. — int
		@param soft_max Soft maximum (&lt;= max), user won’t be able to drag the widget above this value in the UI. — int
		@param step Step of increment/decrement in UI, in [1, 100], defaults to 1 (WARNING: unused currently!). — int
		@param options Enumerator in [‘HIDDEN’, ‘SKIP_SAVE’, ‘ANIMATABLE’, ‘LIBRARY_EDITABLE’, ‘PROPORTIONAL’,’TEXTEDIT_UPDATE’]. — set
		@param tags Enumerator of tags that are defined by parent class. — set
		@param subtype Enumerator in [‘COLOR’, ‘TRANSLATION’, ‘DIRECTION’, ‘VELOCITY’, ‘ACCELERATION’, ‘MATRIX’, ‘EULER’, ‘QUATERNION’, ‘AXISANGLE’, ‘XYZ’, ‘COLOR_GAMMA’, ‘LAYER’, ‘LAYER_MEMBER’, ‘NONE’]. — string
		@param size Vector dimensions in [1, 32]. — int
		@param update Function to be called when this value is modified,
		                                            This function must take 2 values (self, context) and return None.
		                                            Warning there are no safety checks to avoid infinite recursion. — function
		@param get Function to be called when this value is ‘read’,
		                                            This function must take 1 value (self) and return the value of the property. — function
		@param set Function to be called when this value is ‘written’,
		                                            This function must take 2 values (self, value) and return None. — function
	**/
	static function IntVectorProperty(name:String, description:String, pyDefault:Dynamic, min:Int, max:Int, soft_min:Int, soft_max:Int, step:Int, options:Dynamic, tags:Dynamic, subtype:String, size:Int, update:Dynamic, get:Dynamic, set:Dynamic):Void;
	/**
		Returns a new pointer property definition.
		@param type A subclass of bpy.types.PropertyGroup or bpy.types.ID. — class
		@param name Name used in the user interface. — string
		@param description Text used for the tooltip and api documentation. — string
		@param options Enumerator in [‘HIDDEN’, ‘SKIP_SAVE’, ‘ANIMATABLE’, ‘LIBRARY_EDITABLE’, ‘PROPORTIONAL’,’TEXTEDIT_UPDATE’]. — set
		@param tags Enumerator of tags that are defined by parent class. — set
		@param poll function to be called to determine whether an item is valid for this property.
		                                            The function must take 2 values (self, object) and return Bool. — function
		@param update Function to be called when this value is modified,
		                                            This function must take 2 values (self, context) and return None.
		                                            Warning there are no safety checks to avoid infinite recursion. — function
	**/
	static function PointerProperty(type:Dynamic, name:String, description:String, options:Dynamic, tags:Dynamic, poll:Dynamic, update:Dynamic):Void;
	/**
		Removes a dynamically defined property.
		@param cls The class containing the property (must be a positional argument). — type
		@param attr Property name (must be passed as a keyword). — string
	**/
	static function RemoveProperty(cls:Dynamic, attr:String):Void;
	/**
		Returns a new string property definition.
		@param name Name used in the user interface. — string
		@param description Text used for the tooltip and api documentation. — string
		@param pyDefault initializer string. — string
		@param maxlen maximum length of the string. — int
		@param options Enumerator in [‘HIDDEN’, ‘SKIP_SAVE’, ‘ANIMATABLE’, ‘LIBRARY_EDITABLE’, ‘PROPORTIONAL’,’TEXTEDIT_UPDATE’]. — set
		@param tags Enumerator of tags that are defined by parent class. — set
		@param subtype Enumerator in [‘FILE_PATH’, ‘DIR_PATH’, ‘FILE_NAME’, ‘BYTE_STRING’, ‘PASSWORD’, ‘NONE’]. — string
		@param update Function to be called when this value is modified,
		                                            This function must take 2 values (self, context) and return None.
		                                            Warning there are no safety checks to avoid infinite recursion. — function
		@param get Function to be called when this value is ‘read’,
		                                            This function must take 1 value (self) and return the value of the property. — function
		@param set Function to be called when this value is ‘written’,
		                                            This function must take 2 values (self, value) and return None. — function
	**/
	static function StringProperty(name:String, description:String, pyDefault:String, maxlen:Int, options:Dynamic, tags:Dynamic, subtype:String, update:Dynamic, get:Dynamic, set:Dynamic):Void;
}