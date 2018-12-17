package bpy.types.renderresult;
/**
	Result of rendering, including all layers and passes
**/
@:native("bpy.types.RenderResult") extern class RenderResult {
	/**
		
		
		Type: bpy_prop_collection of RenderLayer, (readonly)
	**/
	var layers(default, never) : bpy.types.bpy_prop_collection.Bpy_prop_collection;
	/**
		
		
		Type: int in [-inf, inf], default 0, (readonly)
	**/
	var resolution_x(default, never) : Int;
	/**
		
		
		Type: int in [-inf, inf], default 0, (readonly)
	**/
	var resolution_y(default, never) : Int;
	/**
		
		
		Type: bpy_prop_collection of RenderView, (readonly)
	**/
	var views(default, never) : bpy.types.bpy_prop_collection.Bpy_prop_collection;
	/**
		Copies the pixels of this render result from an image file
		@param filename File Name, Filename to load into this render tile, must be no smaller than the render result — string, (never None)
	**/
	function load_from_file(filename:String):Void;
	/**
		Add engine-specific stamp data to the result
		@param field Field, Name of the stamp field to add — string, (never None)
		@param value Value, Value of the stamp data — string, (never None)
	**/
	function stamp_data_add_field(field:String, value:String):Void;
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
}