package bpy.types.wmtools;
@:enum abstract Enum1(String) from String to String {
	var VIEW : String = "VIEW";
	var UV : String = "UV";
	var PAINT : String = "PAINT";
	var MASK : String = "MASK";
}@:pythonImport("bpy.types.wmTools") extern class WmTools {
	/**
		
		@param create Create — boolean, (optional)
		
		@returns WorkspaceTool
	**/
	function from_space_view3d_mode(create:Bool):bpy.types.workspacetool.WorkspaceTool;
	/**
		
		@param mode VIEW View, View the image.UV UV Edit, UV edit in mesh editmode.PAINT Paint, 2D image painting mode.MASK Mask, Mask editing. — enum in ['VIEW', 'UV', 'PAINT', 'MASK']
		@param create Create — boolean, (optional)
		
		@returns WorkspaceTool
	**/
	function from_space_image_mode(mode:bpy.types.wmtools.WmTools.Enum1, create:Bool):bpy.types.workspacetool.WorkspaceTool;
	/**
		
		@param create Create — boolean, (optional)
		
		@returns WorkspaceTool
	**/
	function from_space_node(create:Bool):bpy.types.workspacetool.WorkspaceTool;
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