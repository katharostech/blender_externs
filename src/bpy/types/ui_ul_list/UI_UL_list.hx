package bpy.types.ui_ul_list;
@:pythonImport("bpy.types.UI_UL_list") extern class UI_UL_list {
	/**
		Set FILTER_ITEM for items which name matches filter_name one (case-insensitive).
		pattern is the filtering pattern.
		propname is the name of the string property to use for filtering.
		flags must be a list of integers the same length as items, or None!
		return a list of flags (based on given flags if not None),
		or an empty list if no flags were given and no filtering has been done.
	**/
	static function filter_items_by_name():Void;
	/**
		Common sorting utility. Returns a neworder list mapping org_idx -&gt; new_idx.
		sort_data must be an (unordered) list of tuples [(org_idx, …), (org_idx, …), …].
		key must be the same kind of callable you would use for sorted() builtin function.
		reverse will reverse the sorting!
	**/
	static function sort_items_helper():Void;
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