package aud;
/**
	Audio System (aud)
	
	Audaspace (pronounced “outer space”) is a high level audio library.
**/
@:pythonImport("aud") extern class Module {
	/**
		constant value 3
	**/
	var AP_LOCATION(default, never) : Dynamic;
	/**
		constant value 4
	**/
	var AP_ORIENTATION(default, never) : Dynamic;
	/**
		constant value 1
	**/
	var AP_PANNING(default, never) : Dynamic;
	/**
		constant value 2
	**/
	var AP_PITCH(default, never) : Dynamic;
	/**
		constant value 0
	**/
	var AP_VOLUME(default, never) : Dynamic;
	/**
		constant value 0
	**/
	var CHANNELS_INVALID(default, never) : Dynamic;
	/**
		constant value 1
	**/
	var CHANNELS_MONO(default, never) : Dynamic;
	/**
		constant value 2
	**/
	var CHANNELS_STEREO(default, never) : Dynamic;
	/**
		constant value 3
	**/
	var CHANNELS_STEREO_LFE(default, never) : Dynamic;
	/**
		constant value 4
	**/
	var pyCHANNELS_SURROUND4(default, never) : Dynamic;
	/**
		constant value 5
	**/
	var pyCHANNELS_SURROUND5(default, never) : Dynamic;
	/**
		constant value 6
	**/
	var pyCHANNELS_SURROUND51(default, never) : Dynamic;
	/**
		constant value 7
	**/
	var pyCHANNELS_SURROUND61(default, never) : Dynamic;
	/**
		constant value 8
	**/
	var pyCHANNELS_SURROUND71(default, never) : Dynamic;
	/**
		constant value 1
	**/
	var CODEC_AAC(default, never) : Dynamic;
	/**
		constant value 2
	**/
	var pyCODEC_AC3(default, never) : Dynamic;
	/**
		constant value 3
	**/
	var CODEC_FLAC(default, never) : Dynamic;
	/**
		constant value 0
	**/
	var CODEC_INVALID(default, never) : Dynamic;
	/**
		constant value 4
	**/
	var pyCODEC_MP2(default, never) : Dynamic;
	/**
		constant value 5
	**/
	var pyCODEC_MP3(default, never) : Dynamic;
	/**
		constant value 8
	**/
	var CODEC_OPUS(default, never) : Dynamic;
	/**
		constant value 6
	**/
	var CODEC_PCM(default, never) : Dynamic;
	/**
		constant value 7
	**/
	var CODEC_VORBIS(default, never) : Dynamic;
	/**
		constant value 1
	**/
	var pyCONTAINER_AC3(default, never) : Dynamic;
	/**
		constant value 2
	**/
	var CONTAINER_FLAC(default, never) : Dynamic;
	/**
		constant value 0
	**/
	var CONTAINER_INVALID(default, never) : Dynamic;
	/**
		constant value 3
	**/
	var CONTAINER_MATROSKA(default, never) : Dynamic;
	/**
		constant value 4
	**/
	var pyCONTAINER_MP2(default, never) : Dynamic;
	/**
		constant value 5
	**/
	var pyCONTAINER_MP3(default, never) : Dynamic;
	/**
		constant value 6
	**/
	var CONTAINER_OGG(default, never) : Dynamic;
	/**
		constant value 7
	**/
	var CONTAINER_WAV(default, never) : Dynamic;
	/**
		constant value 5
	**/
	var DISTANCE_MODEL_EXPONENT(default, never) : Dynamic;
	/**
		constant value 6
	**/
	var DISTANCE_MODEL_EXPONENT_CLAMPED(default, never) : Dynamic;
	/**
		constant value 0
	**/
	var DISTANCE_MODEL_INVALID(default, never) : Dynamic;
	/**
		constant value 1
	**/
	var DISTANCE_MODEL_INVERSE(default, never) : Dynamic;
	/**
		constant value 2
	**/
	var DISTANCE_MODEL_INVERSE_CLAMPED(default, never) : Dynamic;
	/**
		constant value 3
	**/
	var DISTANCE_MODEL_LINEAR(default, never) : Dynamic;
	/**
		constant value 4
	**/
	var DISTANCE_MODEL_LINEAR_CLAMPED(default, never) : Dynamic;
	/**
		constant value 36
	**/
	var pyFORMAT_FLOAT32(default, never) : Dynamic;
	/**
		constant value 40
	**/
	var pyFORMAT_FLOAT64(default, never) : Dynamic;
	/**
		constant value 0
	**/
	var FORMAT_INVALID(default, never) : Dynamic;
	/**
		constant value 18
	**/
	var pyFORMAT_S16(default, never) : Dynamic;
	/**
		constant value 19
	**/
	var pyFORMAT_S24(default, never) : Dynamic;
	/**
		constant value 20
	**/
	var pyFORMAT_S32(default, never) : Dynamic;
	/**
		constant value 1
	**/
	var pyFORMAT_U8(default, never) : Dynamic;
	/**
		constant value 11025
	**/
	var pyRATE_11025(default, never) : Dynamic;
	/**
		constant value 16000
	**/
	var pyRATE_16000(default, never) : Dynamic;
	/**
		constant value 192000
	**/
	var pyRATE_192000(default, never) : Dynamic;
	/**
		constant value 22050
	**/
	var pyRATE_22050(default, never) : Dynamic;
	/**
		constant value 32000
	**/
	var pyRATE_32000(default, never) : Dynamic;
	/**
		constant value 44100
	**/
	var pyRATE_44100(default, never) : Dynamic;
	/**
		constant value 48000
	**/
	var pyRATE_48000(default, never) : Dynamic;
	/**
		constant value 8000
	**/
	var pyRATE_8000(default, never) : Dynamic;
	/**
		constant value 88200
	**/
	var pyRATE_88200(default, never) : Dynamic;
	/**
		constant value 96000
	**/
	var pyRATE_96000(default, never) : Dynamic;
	/**
		constant value 0
	**/
	var RATE_INVALID(default, never) : Dynamic;
	/**
		constant value 0
	**/
	var STATUS_INVALID(default, never) : Dynamic;
	/**
		constant value 2
	**/
	var STATUS_PAUSED(default, never) : Dynamic;
	/**
		constant value 1
	**/
	var STATUS_PLAYING(default, never) : Dynamic;
	/**
		constant value 3
	**/
	var STATUS_STOPPED(default, never) : Dynamic;
}