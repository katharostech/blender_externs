package bpy.data;
/**
	Data Access (bpy.data)
	
	This module is used for all Blender/Python access.
**/
@:pythonImport("bpy.data") extern class Module {
	/**
		Access to Blender’s internal data
		
		Type: bpy.types.BlendData
	**/
	var data(default, never) : bpy.types.blenddata.BlendData;
}