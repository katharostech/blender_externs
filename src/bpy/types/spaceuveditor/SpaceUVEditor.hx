package bpy.types.spaceuveditor;
@:enum abstract Enum1(String) from String to String {
	var ANGLE : String = "ANGLE";
	var AREA : String = "AREA";
}@:enum abstract Enum2(String) from String to String {
	var OUTLINE : String = "OUTLINE";
	var DASH : String = "DASH";
	var BLACK : String = "BLACK";
	var WHITE : String = "WHITE";
}@:enum abstract Enum3(String) from String to String {
	var DISABLED : String = "DISABLED";
	var SHARED_LOCATION : String = "SHARED_LOCATION";
	var SHARED_VERTEX : String = "SHARED_VERTEX";
}/**
	UV editor data for the image editor space
**/
@:native("bpy.types.SpaceUVEditor") extern class SpaceUVEditor {
	/**
		Type of stretch to draw
		
		Type: enum in [‘ANGLE’, ‘AREA’], default ‘ANGLE’
	**/
	var display_stretch_type : bpy.types.spaceuveditor.SpaceUVEditor.Enum1;
	/**
		Display type for drawing UV edges
		
		Type: enum in [‘OUTLINE’, ‘DASH’, ‘BLACK’, ‘WHITE’], default ‘OUTLINE’
	**/
	var edge_display_type : bpy.types.spaceuveditor.SpaceUVEditor.Enum2;
	/**
		Constraint to stay within the image bounds while editing
		
		Type: boolean, default False
	**/
	var lock_bounds : Bool;
	/**
		Display edges in vertex select mode
		
		Type: boolean, default False
	**/
	var show_edges : Bool;
	/**
		Display faces over the image
		
		Type: boolean, default False
	**/
	var show_faces : Bool;
	/**
		Display metadata properties of the image
		
		Type: boolean, default False
	**/
	var show_metadata : Bool;
	/**
		Display edges after modifiers are applied
		
		Type: boolean, default False
	**/
	var show_modified_edges : Bool;
	/**
		Display UV coordinates in pixels rather than from 0.0 to 1.0
		
		Type: boolean, default False
	**/
	var show_pixel_coords : Bool;
	/**
		Display UV edges anti-aliased
		
		Type: boolean, default False
	**/
	var show_smooth_edges : Bool;
	/**
		Display faces colored according to the difference in shape between UVs and their 3D coordinates (blue for low distortion, red for high distortion)
		
		Type: boolean, default False
	**/
	var show_stretch : Bool;
	/**
		Display overlay of texture paint uv layer
		
		Type: boolean, default False
	**/
	var show_texpaint : Bool;
	/**
		Automatically select also UVs sharing the same vertex as the ones being selected
		
		Type: enum in [‘DISABLED’, ‘SHARED_LOCATION’, ‘SHARED_VERTEX’], default ‘SHARED_LOCATION’
	**/
	var sticky_select_mode : bpy.types.spaceuveditor.SpaceUVEditor.Enum3;
	/**
		Continuously unwrap the selected UV island while transforming pinned vertices
		
		Type: boolean, default False
	**/
	var use_live_unwrap : Bool;
	/**
		Snap UVs to pixel locations while editing
		
		Type: boolean, default False
	**/
	var use_snap_to_pixels : Bool;
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