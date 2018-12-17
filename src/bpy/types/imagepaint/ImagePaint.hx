package bpy.types.imagepaint;
@:enum abstract Enum1(String) from String to String {
	var MATERIAL : String = "MATERIAL";
	var IMAGE : String = "IMAGE";
}/**
	Properties of image and texture painting mode
**/
@:native("bpy.types.ImagePaint") extern class ImagePaint {
	/**
		Image used as canvas
		
		Type: Image
	**/
	var canvas : bpy.types.image.Image;
	/**
		Image used as clone source
		
		Type: Image
	**/
	var clone_image : bpy.types.image.Image;
	/**
		Amount of dithering when painting on byte images
		
		Type: float in [0, 2], default 0.0
	**/
	var dither : Float;
	/**
		Invert the stencil layer
		
		Type: boolean, default False
	**/
	var invert_stencil : Bool;
	/**
		The mesh is missing materials
		
		Type: boolean, default False, (readonly)
	**/
	var missing_materials(default, never) : Bool;
	/**
		Image Painting does not have a stencil
		
		Type: boolean, default False, (readonly)
	**/
	var missing_stencil(default, never) : Bool;
	/**
		Image Painting does not have a texture to paint on
		
		Type: boolean, default False, (readonly)
	**/
	var missing_texture(default, never) : Bool;
	/**
		A UV layer is missing on the mesh
		
		Type: boolean, default False, (readonly)
	**/
	var missing_uvs(default, never) : Bool;
	/**
		Mode of operation for projection painting
		
		Type: enum in [‘MATERIAL’, ‘IMAGE’], default ‘MATERIAL’
	**/
	var mode : bpy.types.imagepaint.ImagePaint.Enum1;
	/**
		Paint most on faces pointing towards the view according to this angle
		
		Type: int in [0, 90], default 0
	**/
	var normal_angle : Int;
	/**
		Size to capture the image for re-projecting
		
		Type: int array of 2 items in [512, 16384], default (0, 0)
	**/
	var screen_grab_size : Array<Int>;
	/**
		Extend paint beyond the faces UVs to reduce seams (in pixels, slower)
		
		Type: int in [-32768, 32767], default 0
	**/
	var seam_bleed : Int;
	/**
		Stencil color in the viewport
		
		Type: float array of 3 items in [0, 1], default (0.0, 0.0, 0.0)
	**/
	var stencil_color : Array<Float>;
	/**
		Image used as stencil
		
		Type: Image
	**/
	var stencil_image : bpy.types.image.Image;
	/**
		Ignore faces pointing away from the view (faster)
		
		Type: boolean, default False
	**/
	var use_backface_culling : Bool;
	/**
		Use another UV map as clone source, otherwise use the 3D cursor as the source
		
		Type: boolean, default False
	**/
	var use_clone_layer : Bool;
	/**
		Paint most on faces pointing towards the view
		
		Type: boolean, default False
	**/
	var use_normal_falloff : Bool;
	/**
		Only paint onto the faces directly under the brush (slower)
		
		Type: boolean, default False
	**/
	var use_occlude : Bool;
	/**
		Set the mask layer from the UV map buttons
		
		Type: boolean, default False
	**/
	var use_stencil_layer : Bool;
	/**
		Check if required texpaint data exist
		
		@returns boolean
	**/
	function detect_data():Bool;
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
		Active Brush
		
		Type: Brush
	**/
	var brush : bpy.types.brush.Brush;
	/**
		
		
		Type: bpy_prop_collection of PaintToolSlot, (readonly)
	**/
	var tool_slots(default, never) : bpy.types.bpy_prop_collection.Bpy_prop_collection;
	/**
		Active Palette
		
		Type: Palette
	**/
	var palette : bpy.types.palette.Palette;
	/**
		
		
		Type: boolean, default False
	**/
	var show_brush : Bool;
	/**
		
		
		Type: boolean, default False
	**/
	var show_brush_on_surface : Bool;
	/**
		For multires, show low resolution while navigating the view
		
		Type: boolean, default False
	**/
	var show_low_resolution : Bool;
	/**
		Average multiple input samples together to smooth the brush stroke
		
		Type: int in [0, inf], default 0
	**/
	var input_samples : Int;
	/**
		Mirror brush across the X axis
		
		Type: boolean, default False
	**/
	var use_symmetry_x : Bool;
	/**
		Mirror brush across the Y axis
		
		Type: boolean, default False
	**/
	var use_symmetry_y : Bool;
	/**
		Mirror brush across the Z axis
		
		Type: boolean, default False
	**/
	var use_symmetry_z : Bool;
	/**
		Reduce the strength of the brush where it overlaps symmetrical daubs
		
		Type: boolean, default False
	**/
	var use_symmetry_feather : Bool;
	/**
		Editable cavity curve
		
		Type: CurveMapping, (readonly, never None)
	**/
	var cavity_curve(default, never) : bpy.types.curvemapping.CurveMapping;
	/**
		Mask painting according to mesh geometry cavity
		
		Type: boolean, default False
	**/
	var use_cavity : Bool;
	/**
		Stride at which tiled strokes are copied
		
		Type: float array of 3 items in [0.01, inf], default (0.0, 0.0, 0.0)
	**/
	var tile_offset : Array<Float>;
	/**
		Tile along X axis
		
		Type: boolean, default False
	**/
	var tile_x : Bool;
	/**
		Tile along Y axis
		
		Type: boolean, default False
	**/
	var tile_y : Bool;
	/**
		Tile along Z axis
		
		Type: boolean, default False
	**/
	var tile_z : Bool;
}