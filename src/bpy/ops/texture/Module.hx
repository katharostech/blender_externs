package bpy.ops.texture;
/**
	Texture Operators
**/
@:pythonImport("bpy.ops.texture") extern class Module {
	/**
		Add a new texture
	**/
	static function pyNew():Void;
	/**
		Copy the material texture settings and nodes
	**/
	static function slot_copy():Void;
	/**
		Move texture slots up and down
		@param type Type — enum in ['UP', 'DOWN'], (optional)
	**/
	static function slot_move(type:bpy.ops.texture.Texture.Enum1):Void;
	/**
		Copy the texture settings and nodes
	**/
	static function slot_paste():Void;
}