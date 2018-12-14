package bpy.types.idmaterials;
/**
	Collection of materials
**/
@:pythonImport("bpy.types.IDMaterials") extern class IDMaterials {
	/**
		Add a new material to the data-block
		@param material Material to add — Material
	**/
	function append(material:Dynamic):Void;
	/**
		Remove a material from the data-block
		@param index Index of material to remove — int in [-32766, 32766], (optional)
		@param update_data Update data by re-adjusting the material slots assigned — boolean, (optional)
		
		@returns Material
	**/
	function pop(index:Int, update_data:Bool):bpy.types.material.Material;
	/**
		Remove all materials from the data-block
		@param update_data Update data by re-adjusting the material slots assigned — boolean, (optional)
	**/
	function clear(update_data:Bool):Void;
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