package bpy.types.ffmpegsettings;
@:enum abstract Enum1(String) from String to String {
	var MONO : String = "MONO";
	var STEREO : String = "STEREO";
	var SURROUND4 : String = "SURROUND4";
	var SURROUND51 : String = "SURROUND51";
	var SURROUND71 : String = "SURROUND71";
}@:enum abstract Enum2(String) from String to String {
	var NONE : String = "NONE";
	var AAC : String = "AAC";
	var AC3 : String = "AC3";
	var FLAC : String = "FLAC";
	var MP2 : String = "MP2";
	var MP3 : String = "MP3";
	var PCM : String = "PCM";
	var VORBIS : String = "VORBIS";
}@:enum abstract Enum3(String) from String to String {
	var NONE : String = "NONE";
	var DNXHD : String = "DNXHD";
	var DV : String = "DV";
	var FFV1 : String = "FFV1";
	var FLASH : String = "FLASH";
	var H264 : String = "H264";
	var HUFFYUV : String = "HUFFYUV";
	var MPEG1 : String = "MPEG1";
	var MPEG2 : String = "MPEG2";
	var MPEG4 : String = "MPEG4";
	var PNG : String = "PNG";
	var QTRLE : String = "QTRLE";
	var THEORA : String = "THEORA";
	var WEBM : String = "WEBM";
}@:enum abstract Enum4(String) from String to String {
	var NONE : String = "NONE";
	var LOSSLESS : String = "LOSSLESS";
	var PERC_LOSSLESS : String = "PERC_LOSSLESS";
	var HIGH : String = "HIGH";
	var MEDIUM : String = "MEDIUM";
	var LOW : String = "LOW";
	var VERYLOW : String = "VERYLOW";
	var LOWEST : String = "LOWEST";
}@:enum abstract Enum5(String) from String to String {
	var BEST : String = "BEST";
	var GOOD : String = "GOOD";
	var REALTIME : String = "REALTIME";
}@:enum abstract Enum6(String) from String to String {
	var MPEG1 : String = "MPEG1";
	var MPEG2 : String = "MPEG2";
	var MPEG4 : String = "MPEG4";
	var AVI : String = "AVI";
	var QUICKTIME : String = "QUICKTIME";
	var DV : String = "DV";
	var OGG : String = "OGG";
	var MKV : String = "MKV";
	var FLASH : String = "FLASH";
}/**
	FFmpeg related settings for the scene
**/
@:pythonImport("bpy.types.FFmpegSettings") extern class FFmpegSettings {
	/**
		Audio bitrate (kb/s)
		
		Type: int in [32, 384], default 0
	**/
	var audio_bitrate : Int;
	/**
		Audio channel count
		
		Type: enum in [‘MONO’, ‘STEREO’, ‘SURROUND4’, ‘SURROUND51’, ‘SURROUND71’], default ‘MONO’
	**/
	var audio_channels : bpy.types.ffmpegsettings.FFmpegSettings.Enum1;
	/**
		FFmpeg audio codec to use
		
		Type: enum in [‘NONE’, ‘AAC’, ‘AC3’, ‘FLAC’, ‘MP2’, ‘MP3’, ‘PCM’, ‘VORBIS’], default ‘NONE’
	**/
	var audio_codec : bpy.types.ffmpegsettings.FFmpegSettings.Enum2;
	/**
		Audio samplerate(samples/s)
		
		Type: int in [8000, 192000], default 0
	**/
	var audio_mixrate : Int;
	/**
		Audio volume
		
		Type: float in [0, 1], default 0.0
	**/
	var audio_volume : Float;
	/**
		Rate control: buffer size (kb)
		
		Type: int in [0, 2000], default 0
	**/
	var buffersize : Int;
	/**
		FFmpeg codec to use for video output
		
		Type: enum in [‘NONE’, ‘DNXHD’, ‘DV’, ‘FFV1’, ‘FLASH’, ‘H264’, ‘HUFFYUV’, ‘MPEG1’, ‘MPEG2’, ‘MPEG4’, ‘PNG’, ‘QTRLE’, ‘THEORA’, ‘WEBM’], default ‘H264’
	**/
	var codec : bpy.types.ffmpegsettings.FFmpegSettings.Enum3;
	/**
		Constant Rate Factor (CRF); tradeoff between video quality and file size
		
		Type: enum in [‘NONE’, ‘LOSSLESS’, ‘PERC_LOSSLESS’, ‘HIGH’, ‘MEDIUM’, ‘LOW’, ‘VERYLOW’, ‘LOWEST’], default ‘MEDIUM’
	**/
	var constant_rate_factor : bpy.types.ffmpegsettings.FFmpegSettings.Enum4;
	/**
		Tradeoff between encoding speed and compression ratio
		
		Type: enum in [‘BEST’, ‘GOOD’, ‘REALTIME’], default ‘GOOD’
	**/
	var ffmpeg_preset : bpy.types.ffmpegsettings.FFmpegSettings.Enum5;
	/**
		Output file container
		
		Type: enum in [‘MPEG1’, ‘MPEG2’, ‘MPEG4’, ‘AVI’, ‘QUICKTIME’, ‘DV’, ‘OGG’, ‘MKV’, ‘FLASH’], default ‘MKV’
	**/
	var format : bpy.types.ffmpegsettings.FFmpegSettings.Enum6;
	/**
		Distance between key frames, also known as GOP size; influences file size and seekability
		
		Type: int in [0, 500], default 25
	**/
	var gopsize : Int;
	/**
		Maximum number of B-frames between non-B-frames; influences file size and seekability
		
		Type: int in [0, 16], default 0
	**/
	var max_b_frames : Int;
	/**
		Rate control: max rate (kb/s)
		
		Type: int in [-inf, inf], default 0
	**/
	var maxrate : Int;
	/**
		Rate control: min rate (kb/s)
		
		Type: int in [-inf, inf], default 0
	**/
	var minrate : Int;
	/**
		Mux rate (bits/s(!))
		
		Type: int in [0, inf], default 0
	**/
	var muxrate : Int;
	/**
		Mux packet size (byte)
		
		Type: int in [0, 16384], default 0
	**/
	var packetsize : Int;
	/**
		Autosplit output at 2GB boundary
		
		Type: boolean, default False
	**/
	var use_autosplit : Bool;
	/**
		Use lossless output for video streams
		
		Type: boolean, default False
	**/
	var use_lossless_output : Bool;
	/**
		Set a maximum number of B-frames
		
		Type: boolean, default False
	**/
	var use_max_b_frames : Bool;
	/**
		Video bitrate (kb/s)
		
		Type: int in [-inf, inf], default 0
	**/
	var video_bitrate : Int;
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