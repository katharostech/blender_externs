package bpy.types.viewlayer_ul_linesets;
@:native("bpy.types.VIEWLAYER_UL_linesets") extern class VIEWLAYER_UL_linesets {
	function draw_item(context:Dynamic, layout:Dynamic, data:Dynamic, item:Dynamic, icon:Dynamic, active_data:Dynamic, active_propname:Dynamic, index:Dynamic):Void;
	/**
		
		@param id The RNA type identifier. — string
		
		@returns bpy.types.Struct subclass
	**/
	static function bl_rna_get_subclass(id:String):bpy.types.struct.Struct;
	/**
		
		@param id The RNA type identifier. — string
		
		@returns type
	**/
	static function bl_rna_get_subclass_py(id:String):Dynamic;
	/**
		If this is set, the uilist gets a custom ID, otherwise it takes the name of the class used to define the uilist (for example, if the class name is “OBJECT_UL_vgroups”, and bl_idname is not set by the script, then bl_idname = “OBJECT_UL_vgroups”)
		
		Type: string, default “”, (never None)
	**/
	var bl_idname : String;
	/**
		
		
		Type: enum in [‘DEFAULT’, ‘COMPACT’, ‘GRID’], default ‘DEFAULT’, (readonly)
	**/
	var layout_type(default, never) : bpy.types.uilist.UIList.Enum1;
	/**
		Show filtering options
		
		Type: boolean, default False
	**/
	var use_filter_show : Bool;
	/**
		Only show items matching this name (use ‘*’ as wildcard)
		
		Type: string, default “”, (never None)
	**/
	var filter_name : String;
	/**
		Invert filtering (show hidden items, and vice-versa)
		
		Type: boolean, default False
	**/
	var use_filter_invert : Bool;
	/**
		Sort items by their name
		
		Type: boolean, default False
	**/
	var use_filter_sort_alpha : Bool;
	/**
		Invert the order of shown items
		
		Type: boolean, default False
	**/
	var use_filter_sort_reverse : Bool;
	/**
		The value of the reserved bitflag ‘FILTER_ITEM’ (in filter_flags values)
		
		Type: int in [0, inf], default 0, (readonly)
	**/
	var bitflag_filter_item(default, never) : Int;
	/**
		Draw an item in the list (NOTE: when you define your own draw_item function, you may want to check given ‘item’ is of the right type…)
		@param layout Layout to draw the item — UILayout, (never None)
		@param data Data from which to take Collection property — AnyType
		@param item Item of the collection property — AnyType
		@param icon Icon of the item in the collection — int in [0, inf]
		@param active_data Data from which to take property for the active element — AnyType, (never None)
		@param active_property Identifier of property in active_data, for the active element — string, (optional argument, never None)
		@param index Index of the item in the collection — int in [0, inf], (optional)
		@param flt_flag The filter-flag result for this item — int in [0, inf], (optional)
	**/
	function draw_item(layout:bpy.types.uilayout.UILayout, data:bpy.types.anytype.AnyType, item:bpy.types.anytype.AnyType, icon:Int, active_data:bpy.types.anytype.AnyType, active_property:String, index:Int, flt_flag:Int):Void;
	/**
		Draw filtering options
		@param layout Layout to draw the item — UILayout, (never None)
		@param reverse Display items in reverse order — boolean, (optional)
	**/
	function draw_filter(layout:bpy.types.uilayout.UILayout, reverse:Bool):Void;
	/**
		Filter and/or re-order items of the collection (output filter results in filter_flags, and reorder results in filter_neworder arrays)
		@param data Data from which to take Collection property — AnyType
		@param property Identifier of property in data, for the collection — string, (never None)
	**/
	function filter_items(data:bpy.types.anytype.AnyType, property:String):Void;
}