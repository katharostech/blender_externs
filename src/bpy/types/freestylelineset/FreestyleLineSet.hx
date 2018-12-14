package bpy.types.freestylelineset;
@:enum abstract Enum1(String) from String to String {
	var INCLUSIVE : String = "INCLUSIVE";
	var EXCLUSIVE : String = "EXCLUSIVE";
}@:enum abstract Enum2(String) from String to String {
	var OR : String = "OR";
	var AND : String = "AND";
}@:enum abstract Enum3(String) from String to String {
	var INCLUSIVE : String = "INCLUSIVE";
	var EXCLUSIVE : String = "EXCLUSIVE";
}@:enum abstract Enum4(String) from String to String {
	var ONE : String = "ONE";
	var BOTH : String = "BOTH";
}@:enum abstract Enum5(String) from String to String {
	var INCLUSIVE : String = "INCLUSIVE";
	var EXCLUSIVE : String = "EXCLUSIVE";
}@:enum abstract Enum6(String) from String to String {
	var VISIBLE : String = "VISIBLE";
	var HIDDEN : String = "HIDDEN";
	var RANGE : String = "RANGE";
}/**
	Line set for associating lines and style parameters
**/
@:pythonImport("bpy.types.FreestyleLineSet") extern class FreestyleLineSet {
	/**
		A collection of objects based on which feature edges are selected
		
		Type: Collection
	**/
	var collection : bpy.types.collection.Collection;
	/**
		Specify either inclusion or exclusion of feature edges belonging to a collection of objects
		
		Type: enum in [‘INCLUSIVE’, ‘EXCLUSIVE’], default ‘INCLUSIVE’
	**/
	var collection_negation : bpy.types.freestylelineset.FreestyleLineSet.Enum1;
	/**
		Specify a logical combination of selection conditions on feature edge types
		
		Type: enum in [‘OR’, ‘AND’], default ‘OR’
	**/
	var edge_type_combination : bpy.types.freestylelineset.FreestyleLineSet.Enum2;
	/**
		Specify either inclusion or exclusion of feature edges selected by edge types
		
		Type: enum in [‘INCLUSIVE’, ‘EXCLUSIVE’], default ‘INCLUSIVE’
	**/
	var edge_type_negation : bpy.types.freestylelineset.FreestyleLineSet.Enum3;
	/**
		Exclude border edges
		
		Type: boolean, default False
	**/
	var exclude_border : Bool;
	/**
		Exclude contours
		
		Type: boolean, default False
	**/
	var exclude_contour : Bool;
	/**
		Exclude crease edges
		
		Type: boolean, default False
	**/
	var exclude_crease : Bool;
	/**
		Exclude edge marks
		
		Type: boolean, default False
	**/
	var exclude_edge_mark : Bool;
	/**
		Exclude external contours
		
		Type: boolean, default False
	**/
	var exclude_external_contour : Bool;
	/**
		Exclude edges at material boundaries
		
		Type: boolean, default False
	**/
	var exclude_material_boundary : Bool;
	/**
		Exclude ridges and valleys
		
		Type: boolean, default False
	**/
	var exclude_ridge_valley : Bool;
	/**
		Exclude silhouette edges
		
		Type: boolean, default False
	**/
	var exclude_silhouette : Bool;
	/**
		Exclude suggestive contours
		
		Type: boolean, default False
	**/
	var exclude_suggestive_contour : Bool;
	/**
		Specify a feature edge selection condition based on face marks
		
		Type: enum in [‘ONE’, ‘BOTH’], default ‘ONE’
	**/
	var face_mark_condition : bpy.types.freestylelineset.FreestyleLineSet.Enum4;
	/**
		Specify either inclusion or exclusion of feature edges selected by face marks
		
		Type: enum in [‘INCLUSIVE’, ‘EXCLUSIVE’], default ‘INCLUSIVE’
	**/
	var face_mark_negation : bpy.types.freestylelineset.FreestyleLineSet.Enum5;
	/**
		Line style settings
		
		Type: FreestyleLineStyle, (never None)
	**/
	var linestyle : bpy.types.freestylelinestyle.FreestyleLineStyle;
	/**
		Line set name
		
		Type: string, default “”, (never None)
	**/
	var name : String;
	/**
		Last QI value of the QI range
		
		Type: int in [0, inf], default 0
	**/
	var qi_end : Int;
	/**
		First QI value of the QI range
		
		Type: int in [0, inf], default 0
	**/
	var qi_start : Int;
	/**
		Select border edges (open mesh edges)
		
		Type: boolean, default False
	**/
	var select_border : Bool;
	/**
		Select feature edges based on a collection of objects
		
		Type: boolean, default False
	**/
	var select_by_collection : Bool;
	/**
		Select feature edges based on edge types
		
		Type: boolean, default False
	**/
	var select_by_edge_types : Bool;
	/**
		Select feature edges by face marks
		
		Type: boolean, default False
	**/
	var select_by_face_marks : Bool;
	/**
		Select feature edges by image border (less memory consumption)
		
		Type: boolean, default False
	**/
	var select_by_image_border : Bool;
	/**
		Select feature edges based on visibility
		
		Type: boolean, default False
	**/
	var select_by_visibility : Bool;
	/**
		Select contours (outer silhouettes of each object)
		
		Type: boolean, default False
	**/
	var select_contour : Bool;
	/**
		Select crease edges (those between two faces making an angle smaller than the Crease Angle)
		
		Type: boolean, default False
	**/
	var select_crease : Bool;
	/**
		Select edge marks (edges annotated by Freestyle edge marks)
		
		Type: boolean, default False
	**/
	var select_edge_mark : Bool;
	/**
		Select external contours (outer silhouettes of occluding and occluded objects)
		
		Type: boolean, default False
	**/
	var select_external_contour : Bool;
	/**
		Select edges at material boundaries
		
		Type: boolean, default False
	**/
	var select_material_boundary : Bool;
	/**
		Select ridges and valleys (boundary lines between convex and concave areas of surface)
		
		Type: boolean, default False
	**/
	var select_ridge_valley : Bool;
	/**
		Select silhouettes (edges at the boundary of visible and hidden faces)
		
		Type: boolean, default False
	**/
	var select_silhouette : Bool;
	/**
		Select suggestive contours (almost silhouette/contour edges)
		
		Type: boolean, default False
	**/
	var select_suggestive_contour : Bool;
	/**
		Enable or disable this line set during stroke rendering
		
		Type: boolean, default False
	**/
	var show_render : Bool;
	/**
		Determine how to use visibility for feature edge selection
		
		Type: enum in [‘VISIBLE’, ‘HIDDEN’, ‘RANGE’], default ‘VISIBLE’
	**/
	var visibility : bpy.types.freestylelineset.FreestyleLineSet.Enum6;
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