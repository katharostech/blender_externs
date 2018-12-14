package bpy.types.blenddatabrushes;
@:enum abstract Enum1(String) from String to String {
	var OBJECT : String = "OBJECT";
	var EDIT : String = "EDIT";
	var POSE : String = "POSE";
	var SCULPT : String = "SCULPT";
	var VERTEX_PAINT : String = "VERTEX_PAINT";
	var WEIGHT_PAINT : String = "WEIGHT_PAINT";
	var TEXTURE_PAINT : String = "TEXTURE_PAINT";
	var PARTICLE_EDIT : String = "PARTICLE_EDIT";
	var GPENCIL_EDIT : String = "GPENCIL_EDIT";
	var GPENCIL_SCULPT : String = "GPENCIL_SCULPT";
	var GPENCIL_PAINT : String = "GPENCIL_PAINT";
	var GPENCIL_WEIGHT : String = "GPENCIL_WEIGHT";
}/**
	Collection of brushes
**/
@:pythonImport("bpy.types.BlendDataBrushes") extern class BlendDataBrushes {
	/**
		Add a new brush to the main database
		@param name New name for the data-block — string, (never None)
		@param mode Paint Mode for the new brushOBJECT Object Mode.EDIT Edit Mode.POSE Pose Mode.SCULPT Sculpt Mode.VERTEX_PAINT Vertex Paint.WEIGHT_PAINT Weight Paint.TEXTURE_PAINT Texture Paint.PARTICLE_EDIT Particle Edit.GPENCIL_EDIT Edit Mode, Edit Grease Pencil Strokes.GPENCIL_SCULPT Sculpt Mode, Sculpt Grease Pencil Strokes.GPENCIL_PAINT Draw, Paint Grease Pencil Strokes.GPENCIL_WEIGHT Weight Paint, Grease Pencil Weight Paint Strokes. — enum in ['OBJECT', 'EDIT', 'POSE', 'SCULPT', 'VERTEX_PAINT', 'WEIGHT_PAINT', 'TEXTURE_PAINT', 'PARTICLE_EDIT', 'GPENCIL_EDIT', 'GPENCIL_SCULPT', 'GPENCIL_PAINT', 'GPENCIL_WEIGHT'], (optional)
		
		@returns Brush
	**/
	function new(name:String, mode:bpy.types.blenddatabrushes.BlendDataBrushes.Enum1):bpy.types.brush.Brush;
	/**
		Remove a brush from the current blendfile
		@param brush Brush to remove — Brush, (never None)
		@param do_unlink Unlink all usages of this brush before deleting it — boolean, (optional)
		@param do_id_user Decrement user counter of all datablocks used by this brush — boolean, (optional)
		@param do_ui_user Make sure interface does not reference this brush — boolean, (optional)
	**/
	function remove(brush:Dynamic, do_unlink:Bool, do_id_user:Bool, do_ui_user:Bool):Void;
	/**
		tag
		@param value Value — boolean
	**/
	function tag(value:Dynamic):Void;
	/**
		Add grease pencil brush settings
		@param brush Brush — Brush, (never None)
	**/
	function create_gpencil_data(brush:Dynamic):Void;
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