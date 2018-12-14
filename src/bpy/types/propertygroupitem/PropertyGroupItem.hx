package bpy.types.propertygroupitem;
/**
	Property that stores arbitrary, user defined properties
**/
@:pythonImport("bpy.types.PropertyGroupItem") extern class PropertyGroupItem {
	/**
		
		
		Type: bpy_prop_collection of PropertyGroup, (readonly)
	**/
	var collection(default, never) : bpy.types.bpy_prop_collection.Bpy_prop_collection;
	/**
		
		
		Type: float in [-inf, inf], default 0.0
	**/
	var double : Float;
	/**
		
		
		Type: float array of 1 items in [-inf, inf], default (0.0)
	**/
	var double_array : Array<Float>;
	/**
		
		
		Type: float in [-inf, inf], default 0.0
	**/
	var float : Float;
	/**
		
		
		Type: float array of 1 items in [-inf, inf], default (0.0)
	**/
	var float_array : Array<Float>;
	/**
		
		
		Type: PropertyGroup, (readonly)
	**/
	var group(default, never) : bpy.types.propertygroup.PropertyGroup;
	/**
		
		
		Type: ID, (readonly)
	**/
	var id(default, never) : bpy.types.id.ID;
	/**
		
		
		Type: bpy_prop_collection of PropertyGroup, (readonly)
	**/
	var idp_array(default, never) : bpy.types.bpy_prop_collection.Bpy_prop_collection;
	/**
		
		
		Type: int in [-inf, inf], default 0
	**/
	var int : Int;
	/**
		
		
		Type: int array of 1 items in [-inf, inf], default (0,)
	**/
	var int_array : Array<Int>;
	/**
		
		
		Type: string, default “”, (never None)
	**/
	var string : String;
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