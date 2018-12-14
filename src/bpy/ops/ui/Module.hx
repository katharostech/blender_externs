package bpy.ops.ui;
/**
	Ui Operators
**/
@:pythonImport("bpy.ops.ui") extern class Module {
	/**
		Presses active button
		@param skip_depressed Skip Depressed — boolean, (optional)
	**/
	static function button_execute(skip_depressed:Bool):Void;
	/**
		Copy the RNA data path for this property to the clipboard
		@param full_path full_path, Copy full data path — boolean, (optional)
	**/
	static function copy_data_path_button(full_path:Bool):Void;
	/**
		Copy the Python command matching this button
	**/
	static function copy_python_command_button():Void;
	/**
		Copy property from this object to selected objects or bones
		@param all All, Copy to selected all elements of the array — boolean, (optional)
	**/
	static function copy_to_selected_button(all:Bool):Void;
	/**
		Drop colors to buttons
		@param color Color, Source color — float array of 3 items in [0, inf], (optional)
		@param gamma Gamma Corrected, The source color is gamma corrected — boolean, (optional)
	**/
	static function drop_color(color:Array<Float>, gamma:Bool):Void;
	/**
		Edit UI source code of the active button
	**/
	static function editsource():Void;
	/**
		Edit i18n in current language for the active button
	**/
	static function edittranslation_init():Void;
	/**
		Sample a color from the Blender Window to store in a property
	**/
	static function eyedropper_color():Void;
	/**
		Pick a color from Cryptomatte node Pick output image
	**/
	static function eyedropper_color_crypto():Void;
	/**
		Sample a color band
	**/
	static function eyedropper_colorband():Void;
	/**
		Pointsample a color band
	**/
	static function eyedropper_colorband_point():Void;
	/**
		Sample depth from the 3D view
	**/
	static function eyedropper_depth():Void;
	/**
		Pick a property to use as a driver target
		@param mapping_type Mapping Type, Method used to match target and driven propertiesSINGLE_MANY All from Target, Drive all components of this property using the target picked.DIRECT Single from Target, Drive this component of this property using the target picked.MATCH Match Indices, Create drivers for each pair of corresponding elements.NONE_ALL Manually Create Later, Create drivers for all properties without assigning any targets yet.NONE_SINGLE Manually Create Later (Single), Create driver for this property only and without assigning any targets yet. — enum in ['SINGLE_MANY', 'DIRECT', 'MATCH', 'NONE_ALL', 'NONE_SINGLE'], (optional)
	**/
	static function eyedropper_driver(mapping_type:bpy.ops.ui.Ui.Enum1):Void;
	/**
		Sample a data-block from the 3D View to store in a property
	**/
	static function eyedropper_id():Void;
	/**
		Switch to the target object or bone
	**/
	static function jump_to_target_button():Void;
	/**
		Remove an override operation
		@param all All, Reset to default values all elements of the array — boolean, (optional)
	**/
	static function override_remove_button(all:Bool):Void;
	/**
		Create an override operation, or set the type of an existing one
		@param all All, Reset to default values all elements of the array — boolean, (optional)
		@param type Type, Type of override operationNOOP NoOp, ‘No-Operation’, place holder preventing automatic override to ever affect the property.REPLACE Replace, Completely replace value from linked data by local one.DIFFERENCE Difference, Store difference to linked data value.FACTOR Factor, Store factor to linked data value (useful e.g. for scale). — enum in ['NOOP', 'REPLACE', 'DIFFERENCE', 'FACTOR'], (optional)
	**/
	static function override_type_set_button(all:Bool, type:bpy.ops.ui.Ui.Enum2):Void;
	/**
		Force a full reload of UI translation
	**/
	static function reloadtranslation():Void;
	/**
		Write the reports
	**/
	static function reports_to_textblock():Void;
	/**
		Reset this property’s value to its default value
		@param all All, Reset to default values all elements of the array — boolean, (optional)
	**/
	static function reset_default_button(all:Bool):Void;
	/**
		Reset to the default theme colors
	**/
	static function reset_default_theme():Void;
	/**
		Clear the property and use default or generated value in operators
	**/
	static function unset_property_button():Void;
}