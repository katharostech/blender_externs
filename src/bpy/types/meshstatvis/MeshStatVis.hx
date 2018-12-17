package bpy.types.meshstatvis;
@:enum abstract Enum1(String) from String to String {
	var POS_X : String = "POS_X";
	var POS_Y : String = "POS_Y";
	var POS_Z : String = "POS_Z";
	var NEG_X : String = "NEG_X";
	var NEG_Y : String = "NEG_Y";
	var NEG_Z : String = "NEG_Z";
}@:enum abstract Enum2(String) from String to String {
	var OVERHANG : String = "OVERHANG";
	var THICKNESS : String = "THICKNESS";
	var INTERSECT : String = "INTERSECT";
	var DISTORT : String = "DISTORT";
	var SHARP : String = "SHARP";
}@:native("bpy.types.MeshStatVis") extern class MeshStatVis {
	/**
		Maximum angle to display
		
		Type: float in [0, 3.14159], default 0.5
	**/
	var distort_max : Float;
	/**
		Minimum angle to display
		
		Type: float in [0, 3.14159], default 0.5
	**/
	var distort_min : Float;
	/**
		
		
		Type: enum in [‘POS_X’, ‘POS_Y’, ‘POS_Z’, ‘NEG_X’, ‘NEG_Y’, ‘NEG_Z’], default ‘POS_X’
	**/
	var overhang_axis : bpy.types.meshstatvis.MeshStatVis.Enum1;
	/**
		Maximum angle to display
		
		Type: float in [0, 3.14159], default 0.5
	**/
	var overhang_max : Float;
	/**
		Minimum angle to display
		
		Type: float in [0, 3.14159], default 0.5
	**/
	var overhang_min : Float;
	/**
		Maximum angle to display
		
		Type: float in [-3.14159, 3.14159], default 0.5
	**/
	var sharp_max : Float;
	/**
		Minimum angle to display
		
		Type: float in [-3.14159, 3.14159], default 0.5
	**/
	var sharp_min : Float;
	/**
		Maximum for measuring thickness
		
		Type: float in [0, 1000], default 0.5
	**/
	var thickness_max : Float;
	/**
		Minimum for measuring thickness
		
		Type: float in [0, 1000], default 0.5
	**/
	var thickness_min : Float;
	/**
		Number of samples to test per face
		
		Type: int in [1, 32], default 0
	**/
	var thickness_samples : Int;
	/**
		Type of data to visualize/check
		
		Type: enum in [‘OVERHANG’, ‘THICKNESS’, ‘INTERSECT’, ‘DISTORT’, ‘SHARP’], default ‘OVERHANG’
	**/
	var type : bpy.types.meshstatvis.MeshStatVis.Enum2;
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