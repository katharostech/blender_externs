package bpy.ops.sound;
/**
	Sound Operators
**/
@:pythonImport("bpy.ops.sound") extern class Module {
	/**
		Update the audio animation cache
	**/
	static function bake_animation():Void;
	/**
		Mix the scene’s audio to a sound file
		@param filepath File Path, Path to file — string, (optional, never None)
		@param check_existing Check Existing, Check and warn on overwriting existing files — boolean, (optional)
		@param filter_blender Filter .blend files — boolean, (optional)
		@param filter_backup Filter .blend files — boolean, (optional)
		@param filter_image Filter image files — boolean, (optional)
		@param filter_movie Filter movie files — boolean, (optional)
		@param filter_python Filter python files — boolean, (optional)
		@param filter_font Filter font files — boolean, (optional)
		@param filter_sound Filter sound files — boolean, (optional)
		@param filter_text Filter text files — boolean, (optional)
		@param filter_btx Filter btx files — boolean, (optional)
		@param filter_collada Filter COLLADA files — boolean, (optional)
		@param filter_alembic Filter Alembic files — boolean, (optional)
		@param filter_folder Filter folders — boolean, (optional)
		@param filter_blenlib Filter Blender IDs — boolean, (optional)
		@param filemode File Browser Mode, The setting for the file browser mode to load a .blend file, a library or a special file — int in [1, 9], (optional)
		@param relative_path Relative Path, Select the file relative to the blend file — boolean, (optional)
		@param display_type Display TypeDEFAULT Default, Automatically determine display type for files.LIST_SHORT Short List, Display files as short list.LIST_LONG Long List, Display files as a detailed list.THUMBNAIL Thumbnails, Display files as thumbnails. — enum in ['DEFAULT', 'LIST_SHORT', 'LIST_LONG', 'THUMBNAIL'], (optional)
		@param sort_method File sorting modeFILE_SORT_ALPHA Sort alphabetically, Sort the file list alphabetically.FILE_SORT_EXTENSION Sort by extension, Sort the file list by extension/type.FILE_SORT_TIME Sort by time, Sort files by modification time.FILE_SORT_SIZE Sort by size, Sort files by size. — enum in ['FILE_SORT_ALPHA', 'FILE_SORT_EXTENSION', 'FILE_SORT_TIME', 'FILE_SORT_SIZE'], (optional)
		@param accuracy Accuracy, Sample accuracy, important for animation data (the lower the value, the more accurate) — int in [1, inf], (optional)
		@param container Container, File formatAC3 ac3, Dolby Digital ATRAC 3.FLAC flac, Free Lossless Audio Codec.MATROSKA mkv, Matroska.MP2 mp2, MPEG-1 Audio Layer II.MP3 mp3, MPEG-2 Audio Layer III.OGG ogg, Xiph.Org Ogg Container.WAV wav, Waveform Audio File Format. — enum in ['AC3', 'FLAC', 'MATROSKA', 'MP2', 'MP3', 'OGG', 'WAV'], (optional)
		@param codec Codec, Audio CodecAAC AAC, Advanced Audio Coding.AC3 AC3, Dolby Digital ATRAC 3.FLAC FLAC, Free Lossless Audio Codec.MP2 MP2, MPEG-1 Audio Layer II.MP3 MP3, MPEG-2 Audio Layer III.PCM PCM, Pulse Code Modulation (RAW).VORBIS Vorbis, Xiph.Org Vorbis Codec. — enum in ['AAC', 'AC3', 'FLAC', 'MP2', 'MP3', 'PCM', 'VORBIS'], (optional)
		@param format Format, Sample formatU8 U8, 8 bit unsigned.S16 S16, 16 bit signed.S24 S24, 24 bit signed.S32 S32, 32 bit signed.F32 F32, 32 bit floating point.F64 F64, 64 bit floating point. — enum in ['U8', 'S16', 'S24', 'S32', 'F32', 'F64'], (optional)
		@param bitrate Bitrate, Bitrate in kbit/s — int in [32, 512], (optional)
		@param split_channels Split channels, Each channel will be rendered into a mono file — boolean, (optional)
	**/
	static function mixdown(filepath:String, check_existing:Bool, filter_blender:Bool, filter_backup:Bool, filter_image:Bool, filter_movie:Bool, filter_python:Bool, filter_font:Bool, filter_sound:Bool, filter_text:Bool, filter_btx:Bool, filter_collada:Bool, filter_alembic:Bool, filter_folder:Bool, filter_blenlib:Bool, filemode:Int, relative_path:Bool, display_type:bpy.ops.sound.Sound.Enum1, sort_method:bpy.ops.sound.Sound.Enum2, accuracy:Int, container:bpy.ops.sound.Sound.Enum3, codec:bpy.ops.sound.Sound.Enum4, format:bpy.ops.sound.Sound.Enum5, bitrate:Int, split_channels:Bool):Void;
	/**
		Load a sound file
		@param filepath File Path, Path to file — string, (optional, never None)
		@param filter_blender Filter .blend files — boolean, (optional)
		@param filter_backup Filter .blend files — boolean, (optional)
		@param filter_image Filter image files — boolean, (optional)
		@param filter_movie Filter movie files — boolean, (optional)
		@param filter_python Filter python files — boolean, (optional)
		@param filter_font Filter font files — boolean, (optional)
		@param filter_sound Filter sound files — boolean, (optional)
		@param filter_text Filter text files — boolean, (optional)
		@param filter_btx Filter btx files — boolean, (optional)
		@param filter_collada Filter COLLADA files — boolean, (optional)
		@param filter_alembic Filter Alembic files — boolean, (optional)
		@param filter_folder Filter folders — boolean, (optional)
		@param filter_blenlib Filter Blender IDs — boolean, (optional)
		@param filemode File Browser Mode, The setting for the file browser mode to load a .blend file, a library or a special file — int in [1, 9], (optional)
		@param relative_path Relative Path, Select the file relative to the blend file — boolean, (optional)
		@param show_multiview Enable Multi-View — boolean, (optional)
		@param use_multiview Use Multi-View — boolean, (optional)
		@param display_type Display TypeDEFAULT Default, Automatically determine display type for files.LIST_SHORT Short List, Display files as short list.LIST_LONG Long List, Display files as a detailed list.THUMBNAIL Thumbnails, Display files as thumbnails. — enum in ['DEFAULT', 'LIST_SHORT', 'LIST_LONG', 'THUMBNAIL'], (optional)
		@param sort_method File sorting modeFILE_SORT_ALPHA Sort alphabetically, Sort the file list alphabetically.FILE_SORT_EXTENSION Sort by extension, Sort the file list by extension/type.FILE_SORT_TIME Sort by time, Sort files by modification time.FILE_SORT_SIZE Sort by size, Sort files by size. — enum in ['FILE_SORT_ALPHA', 'FILE_SORT_EXTENSION', 'FILE_SORT_TIME', 'FILE_SORT_SIZE'], (optional)
		@param cache Cache, Cache the sound in memory — boolean, (optional)
		@param mono Mono, Merge all the sound’s channels into one — boolean, (optional)
	**/
	static function open(filepath:String, filter_blender:Bool, filter_backup:Bool, filter_image:Bool, filter_movie:Bool, filter_python:Bool, filter_font:Bool, filter_sound:Bool, filter_text:Bool, filter_btx:Bool, filter_collada:Bool, filter_alembic:Bool, filter_folder:Bool, filter_blenlib:Bool, filemode:Int, relative_path:Bool, show_multiview:Bool, use_multiview:Bool, display_type:bpy.ops.sound.Sound.Enum6, sort_method:bpy.ops.sound.Sound.Enum7, cache:Bool, mono:Bool):Void;
	/**
		Load a sound file as mono
		@param filepath File Path, Path to file — string, (optional, never None)
		@param filter_blender Filter .blend files — boolean, (optional)
		@param filter_backup Filter .blend files — boolean, (optional)
		@param filter_image Filter image files — boolean, (optional)
		@param filter_movie Filter movie files — boolean, (optional)
		@param filter_python Filter python files — boolean, (optional)
		@param filter_font Filter font files — boolean, (optional)
		@param filter_sound Filter sound files — boolean, (optional)
		@param filter_text Filter text files — boolean, (optional)
		@param filter_btx Filter btx files — boolean, (optional)
		@param filter_collada Filter COLLADA files — boolean, (optional)
		@param filter_alembic Filter Alembic files — boolean, (optional)
		@param filter_folder Filter folders — boolean, (optional)
		@param filter_blenlib Filter Blender IDs — boolean, (optional)
		@param filemode File Browser Mode, The setting for the file browser mode to load a .blend file, a library or a special file — int in [1, 9], (optional)
		@param relative_path Relative Path, Select the file relative to the blend file — boolean, (optional)
		@param show_multiview Enable Multi-View — boolean, (optional)
		@param use_multiview Use Multi-View — boolean, (optional)
		@param display_type Display TypeDEFAULT Default, Automatically determine display type for files.LIST_SHORT Short List, Display files as short list.LIST_LONG Long List, Display files as a detailed list.THUMBNAIL Thumbnails, Display files as thumbnails. — enum in ['DEFAULT', 'LIST_SHORT', 'LIST_LONG', 'THUMBNAIL'], (optional)
		@param sort_method File sorting modeFILE_SORT_ALPHA Sort alphabetically, Sort the file list alphabetically.FILE_SORT_EXTENSION Sort by extension, Sort the file list by extension/type.FILE_SORT_TIME Sort by time, Sort files by modification time.FILE_SORT_SIZE Sort by size, Sort files by size. — enum in ['FILE_SORT_ALPHA', 'FILE_SORT_EXTENSION', 'FILE_SORT_TIME', 'FILE_SORT_SIZE'], (optional)
		@param cache Cache, Cache the sound in memory — boolean, (optional)
		@param mono Mono, Mixdown the sound to mono — boolean, (optional)
	**/
	static function open_mono(filepath:String, filter_blender:Bool, filter_backup:Bool, filter_image:Bool, filter_movie:Bool, filter_python:Bool, filter_font:Bool, filter_sound:Bool, filter_text:Bool, filter_btx:Bool, filter_collada:Bool, filter_alembic:Bool, filter_folder:Bool, filter_blenlib:Bool, filemode:Int, relative_path:Bool, show_multiview:Bool, use_multiview:Bool, display_type:bpy.ops.sound.Sound.Enum8, sort_method:bpy.ops.sound.Sound.Enum9, cache:Bool, mono:Bool):Void;
	/**
		Pack the sound into the current blend file
	**/
	static function pack():Void;
	/**
		Unpack the sound to the samples filename
		@param method Method, How to unpack — enum in ['USE_LOCAL', 'WRITE_LOCAL', 'USE_ORIGINAL', 'WRITE_ORIGINAL'], (optional)
		@param id Sound Name, Sound data-block name to unpack — string, (optional, never None)
	**/
	static function unpack(method:bpy.ops.sound.Sound.Enum10, id:String):Void;
	/**
		Update animation flags
	**/
	static function update_animation_flags():Void;
}