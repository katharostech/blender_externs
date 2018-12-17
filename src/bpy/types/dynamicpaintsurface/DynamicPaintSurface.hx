package bpy.types.dynamicpaintsurface;
@:enum abstract Enum1(String) from String to String {
	var DISPLACE : String = "DISPLACE";
	var DEPTH : String = "DEPTH";
}@:enum abstract Enum2(String) from String to String {
	var SPREAD : String = "SPREAD";
	var DRIP : String = "DRIP";
	var SHRINK : String = "SHRINK";
}@:enum abstract Enum3(String) from String to String {
	var PNG : String = "PNG";
	var OPENEXR : String = "OPENEXR";
}@:enum abstract Enum4(String) from String to String {
	var NONE : String = "NONE";
	var COLOR : String = "COLOR";
	var TEXTURE : String = "TEXTURE";
	var VERTEX_COLOR : String = "VERTEX_COLOR";
}@:enum abstract Enum5(String) from String to String {
	var PAINT : String = "PAINT";
	var WETMAP : String = "WETMAP";
}@:enum abstract Enum6(String) from String to String {
	var VERTEX : String = "VERTEX";
	var IMAGE : String = "IMAGE";
}@:enum abstract Enum7(String) from String to String {
	var PAINT : String = "PAINT";
}/**
	A canvas surface layer
**/
@:native("bpy.types.DynamicPaintSurface") extern class DynamicPaintSurface {
	/**
		Only use brush objects from this collection
		
		Type: Collection
	**/
	var brush_collection : bpy.types.collection.Collection;
	/**
		Adjust influence brush objects have on this surface
		
		Type: float in [0, 1], default 0.0
	**/
	var brush_influence_scale : Float;
	/**
		Adjust radius of proximity brushes or particles for this surface
		
		Type: float in [0, 10], default 0.0
	**/
	var brush_radius_scale : Float;
	/**
		The wetness level when colors start to shift to the background
		
		Type: float in [0, 1], default 0.0
	**/
	var color_dry_threshold : Float;
	/**
		How fast colors get mixed within wet paint
		
		Type: float in [0, 2], default 0.0
	**/
	var color_spread_speed : Float;
	/**
		Maximum level of depth intersection in object space (use 0.0 to disable)
		
		Type: float in [0, 50], default 0.0
	**/
	var depth_clamp : Float;
	/**
		Strength of displace when applied to the mesh
		
		Type: float in [-50, 50], default 0.0
	**/
	var displace_factor : Float;
	/**
		
		
		Type: enum in [‘DISPLACE’, ‘DEPTH’], default ‘DISPLACE’
	**/
	var displace_type : bpy.types.dynamicpaintsurface.DynamicPaintSurface.Enum1;
	/**
		Approximately in how many frames should dissolve happen
		
		Type: int in [1, 10000], default 0
	**/
	var dissolve_speed : Int;
	/**
		How much surface acceleration affects dripping
		
		Type: float in [-200, 200], default 0.0
	**/
	var drip_acceleration : Float;
	/**
		How much surface velocity affects dripping
		
		Type: float in [-200, 200], default 0.0
	**/
	var drip_velocity : Float;
	/**
		Approximately in how many frames should drying happen
		
		Type: int in [1, 10000], default 0
	**/
	var dry_speed : Int;
	/**
		
		
		Type: enum in [‘SPREAD’, ‘DRIP’, ‘SHRINK’], default ‘SPREAD’
	**/
	var effect_ui : bpy.types.dynamicpaintsurface.DynamicPaintSurface.Enum2;
	/**
		
		
		Type: EffectorWeights, (readonly)
	**/
	var effector_weights(default, never) : bpy.types.effectorweights.EffectorWeights;
	/**
		Simulation end frame
		
		Type: int in [1, 1048574], default 0
	**/
	var frame_end : Int;
	/**
		Simulation start frame
		
		Type: int in [1, 1048574], default 0
	**/
	var frame_start : Int;
	/**
		Do extra frames between scene frames to ensure smooth motion
		
		Type: int in [0, 20], default 0
	**/
	var frame_substeps : Int;
	/**
		
		
		Type: enum in [‘PNG’, ‘OPENEXR’], default ‘PNG’
	**/
	var image_fileformat : bpy.types.dynamicpaintsurface.DynamicPaintSurface.Enum3;
	/**
		Directory to save the textures
		
		Type: string, default “”, (never None)
	**/
	var image_output_path : String;
	/**
		Output image resolution
		
		Type: int in [16, 4096], default 0
	**/
	var image_resolution : Int;
	/**
		Initial color of the surface
		
		Type: float array of 4 items in [0, inf], default (0.0, 0.0, 0.0, 0.0)
	**/
	var init_color : Array<Float>;
	/**
		
		
		Type: enum in [‘NONE’, ‘COLOR’, ‘TEXTURE’, ‘VERTEX_COLOR’], default ‘NONE’
	**/
	var init_color_type : bpy.types.dynamicpaintsurface.DynamicPaintSurface.Enum4;
	/**
		
		
		Type: string, default “”, (never None)
	**/
	var init_layername : String;
	/**
		
		
		Type: Texture
	**/
	var init_texture : bpy.types.texture.Texture;
	/**
		Toggle whether surface is processed or ignored
		
		Type: boolean, default False
	**/
	var is_active : Bool;
	/**
		
		
		Type: boolean, default False, (readonly)
	**/
	var is_cache_user(default, never) : Bool;
	/**
		Surface name
		
		Type: string, default “”, (never None)
	**/
	var name : String;
	/**
		Name used to save output from this surface
		
		Type: string, default “”, (never None)
	**/
	var output_name_a : String;
	/**
		Name used to save output from this surface
		
		Type: string, default “”, (never None)
	**/
	var output_name_b : String;
	/**
		
		
		Type: PointCache, (readonly, never None)
	**/
	var point_cache(default, never) : bpy.types.pointcache.PointCache;
	/**
		
		
		Type: enum in [‘PAINT’, ‘WETMAP’], default ‘PAINT’
	**/
	var preview_id : bpy.types.dynamicpaintsurface.DynamicPaintSurface.Enum5;
	/**
		Display surface preview in 3D-views
		
		Type: boolean, default False
	**/
	var show_preview : Bool;
	/**
		How fast shrink effect moves on the canvas surface
		
		Type: float in [0.001, 10], default 0.0
	**/
	var shrink_speed : Float;
	/**
		How fast spread effect moves on the canvas surface
		
		Type: float in [0.001, 10], default 0.0
	**/
	var spread_speed : Float;
	/**
		Surface Format
		
		Type: enum in [‘VERTEX’, ‘IMAGE’], default ‘VERTEX’
	**/
	var surface_format : bpy.types.dynamicpaintsurface.DynamicPaintSurface.Enum6;
	/**
		Surface Type
		
		Type: enum in [‘PAINT’], default ‘PAINT’
	**/
	var surface_type : bpy.types.dynamicpaintsurface.DynamicPaintSurface.Enum7;
	/**
		Use 5x multisampling to smooth paint edges
		
		Type: boolean, default False
	**/
	var use_antialiasing : Bool;
	/**
		Whether this surface has some color preview for 3D view
		
		Type: boolean, default False, (readonly)
	**/
	var use_color_preview(default, never) : Bool;
	/**
		Enable to make surface changes disappear over time
		
		Type: boolean, default False
	**/
	var use_dissolve : Bool;
	/**
		Use logarithmic dissolve (makes high values to fade faster than low values)
		
		Type: boolean, default False
	**/
	var use_dissolve_log : Bool;
	/**
		Process drip effect (drip wet paint to gravity direction)
		
		Type: boolean, default False
	**/
	var use_drip : Bool;
	/**
		Use logarithmic drying (makes high values to dry faster than low values)
		
		Type: boolean, default False
	**/
	var use_dry_log : Bool;
	/**
		Enable to make surface wetness dry over time
		
		Type: boolean, default False
	**/
	var use_drying : Bool;
	/**
		New displace is added cumulatively on top of existing
		
		Type: boolean, default False
	**/
	var use_incremental_displace : Bool;
	/**
		Save this output layer
		
		Type: boolean, default False
	**/
	var use_output_a : Bool;
	/**
		Save this output layer
		
		Type: boolean, default False
	**/
	var use_output_b : Bool;
	/**
		Multiply color by alpha (recommended for Blender input)
		
		Type: boolean, default False
	**/
	var use_premultiply : Bool;
	/**
		Process shrink effect (shrink paint areas)
		
		Type: boolean, default False
	**/
	var use_shrink : Bool;
	/**
		Process spread effect (spread wet paint around surface)
		
		Type: boolean, default False
	**/
	var use_spread : Bool;
	/**
		Pass waves through mesh edges
		
		Type: boolean, default False
	**/
	var use_wave_open_border : Bool;
	/**
		UV map name
		
		Type: string, default “”, (never None)
	**/
	var uv_layer : String;
	/**
		Wave damping factor
		
		Type: float in [0, 1], default 0.0
	**/
	var wave_damping : Float;
	/**
		Limit maximum steepness of wave slope between simulation points (use higher values for smoother waves at expense of reduced detail)
		
		Type: float in [0, 10], default 0.0
	**/
	var wave_smoothness : Float;
	/**
		Wave propagation speed
		
		Type: float in [0.01, 5], default 0.0
	**/
	var wave_speed : Float;
	/**
		Spring force that pulls water level back to zero
		
		Type: float in [0, 1], default 0.0
	**/
	var wave_spring : Float;
	/**
		Wave time scaling factor
		
		Type: float in [0.01, 3], default 0.0
	**/
	var wave_timescale : Float;
	/**
		Checks if surface output layer of given name exists
		@param index Index — int in [0, 1]
		
		@returns boolean
	**/
	function output_exists(index:Int):Bool;
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