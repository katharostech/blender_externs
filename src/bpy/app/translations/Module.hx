package bpy.app.translations;
/**
	Application Translations (bpy.app.translations)
	
	This object contains some data/methods regarding internationalization in Blender, and allows every py script
	            to feature translations for its own UI messages.
**/
@:pythonImport("bpy.app.translations") extern class Module {
	/**
		The actual locale currently in use (will always return a void string when Blender is built without internationalization support).
	**/
	var locale : Dynamic;
	/**
		All locales currently known by Blender (i.e. available as translations).
	**/
	var locales : Dynamic;
	/**
		A readonly dict mapping contexts’ C-identifiers to their py-identifiers.
	**/
	var contexts_C_to_py(default, never) : Dynamic;
	/**
		constant value bpy.app.translations.contexts(default_real=None, default=’*’, operator_default=’Operator’, ui_events_keymaps=’UI_Events_KeyMaps’, plural=’Plural’, id_action=’Action’, id_armature=’Armature’, id_brush=’Brush’, id_camera=’Camera’, id_cachefile=’CacheFile’, id_collection=’Collection’, id_curve=’Curve’, id_fs_linestyle=’FreestyleLineStyle’, id_gpencil=’GPencil’, id_id=’ID’, id_image=’Image’, id_shapekey=’Key’, id_lamp=’Lamp’, id_library=’Library’, id_lattice=’Lattice’, id_mask=’Mask’, …)
	**/
	var contexts(default, never) : Dynamic;
	/**
		Return all components and their combinations  of the given ISO locale string.
		
		For non-complete locales, missing elements will be None.
		@param locale The ISO locale string to explode. — 
	**/
	static function locale_explode(locale:Dynamic):Void;
	/**
		Try to translate the given msgid (with optional msgctxt).
		@param msgid The string to translate. — string
		@param msgctxt The translation context (defaults to BLT_I18NCONTEXT_DEFAULT). — string or None
	**/
	static function pgettext(msgid:String, msgctxt:String):Void;
	/**
		Try to translate the given msgid (with optional msgctxt), if new data name’s translation is enabled.
		@param msgid The string to translate. — string
		@param msgctxt The translation context (defaults to BLT_I18NCONTEXT_DEFAULT). — string or None
	**/
	static function pgettext_data(msgid:String, msgctxt:String):Void;
	/**
		Try to translate the given msgid (with optional msgctxt), if labels’ translation is enabled.
		@param msgid The string to translate. — string
		@param msgctxt The translation context (defaults to BLT_I18NCONTEXT_DEFAULT). — string or None
	**/
	static function pgettext_iface(msgid:String, msgctxt:String):Void;
	/**
		Try to translate the given msgid (with optional msgctxt), if tooltips’ translation is enabled.
		@param msgid The string to translate. — string
		@param msgctxt The translation context (defaults to BLT_I18NCONTEXT_DEFAULT). — string or None
	**/
	static function pgettext_tip(msgid:String, msgctxt:String):Void;
	/**
		Registers an addon’s UI translations.
		@param module_name The name identifying the addon. — string
		@param translations_dict A dictionary built like that:
		                                            {locale: {msg_key: msg_translation, ...}, ...} — dict
	**/
	static function register(module_name:String, translations_dict:Dynamic):Void;
	/**
		Unregisters an addon’s UI translations.
		@param module_name The name identifying the addon. — string
	**/
	static function unregister(module_name:String):Void;
}