package aud;
/**
	Device objects represent an audio output backend like OpenAL or SDL, but might also represent a file output or RAM buffer output.
	
	lock()
	
	Locks the device so that it’s guaranteed, that no samples are read from the streams until unlock() is called.
	This is useful if you want to do start/stop/pause/resume some sounds at the same time.
	
	play(sound, keep=False)
	
	Plays a sound.
	
	stopAll()
	
	Stops all playing and paused sounds.
	
	unlock()
	
	Unlocks the device after a lock call, see lock() for details.
**/
@:native("aud.Device") extern class Device {
	/**
		The channel count of the device.
	**/
	var channels : Dynamic;
	/**
		The distance model of the device.
	**/
	var distance_model : Dynamic;
	/**
		The doppler factor of the device.
		This factor is a scaling factor for the velocity vectors in doppler calculation. So a value bigger than 1 will exaggerate the effect as it raises the velocity.
	**/
	var doppler_factor : Dynamic;
	/**
		The native sample format of the device.
	**/
	var format : Dynamic;
	/**
		The listeners’s location in 3D space, a 3D tuple of floats.
	**/
	var listener_location : Dynamic;
	/**
		The listener’s orientation in 3D space as quaternion, a 4 float tuple.
	**/
	var listener_orientation : Dynamic;
	/**
		The listener’s velocity in 3D space, a 3D tuple of floats.
	**/
	var listener_velocity : Dynamic;
	/**
		The sampling rate of the device in Hz.
	**/
	var rate : Dynamic;
	/**
		The speed of sound of the device.
		The speed of sound in air is typically 343.3 m/s.
	**/
	var speed_of_sound : Dynamic;
	/**
		The overall volume of the device.
	**/
	var volume : Dynamic;
}/**
	The DynamicMusic object allows to play music depending on a current scene, scene changes are managed by the class, with the possibility of custom transitions.
	The default transition is a crossfade effect, and the default scene is silent and has id 0
	
	addScene(scene)
	
	Adds a new scene.
	
	addTransition(ini, end, transition)
	
	Adds a new scene.
	
	pause()
	
	Pauses playback of the scene.
	
	resume()
	
	Resumes playback of the scene.
	
	stop()
	
	Stops playback of the scene.
**/
@:native("aud.DynamicMusic") extern class DynamicMusic {
	/**
		The length in seconds of the crossfade transition
	**/
	var fadeTime : Dynamic;
	/**
		The playback position of the scene in seconds.
	**/
	var position : Dynamic;
	/**
		The current scene
	**/
	var scene : Dynamic;
	/**
		Whether the scene is playing, paused or stopped (=invalid).
	**/
	var status : Dynamic;
	/**
		The volume of the scene.
	**/
	var volume : Dynamic;
}/**
	Handle objects are playback handles that can be used to control playback of a sound. If a sound is played back multiple times then there are as many handles.
	
	pause()
	
	Pauses playback.
	
	resume()
	
	Resumes playback.
	
	stop()
	
	Stops playback.
**/
@:native("aud.Handle") extern class Handle {
	/**
		This factor is used for distance based attenuation of the source.
	**/
	var attenuation : Dynamic;
	/**
		The opening angle of the inner cone of the source. If the cone values of a source are set there are two (audible) cones with the apex at the location of the source and with infinite height, heading in the direction of the source’s orientation.
		In the inner cone the volume is normal. Outside the outer cone the volume will be cone_volume_outer and in the area between the volume will be interpolated linearly.
	**/
	var cone_angle_inner : Dynamic;
	/**
		The opening angle of the outer cone of the source.
	**/
	var cone_angle_outer : Dynamic;
	/**
		The volume outside the outer cone of the source.
	**/
	var cone_volume_outer : Dynamic;
	/**
		The maximum distance of the source.
		If the listener is further away the source volume will be 0.
	**/
	var distance_maximum : Dynamic;
	/**
		The reference distance of the source.
		At this distance the volume will be exactly volume.
	**/
	var distance_reference : Dynamic;
	/**
		Whether the sound should be kept paused in the device when its end is reached.
		This can be used to seek the sound to some position and start playback again.
	**/
	var keep : Dynamic;
	/**
		The source’s location in 3D space, a 3D tuple of floats.
	**/
	var location : Dynamic;
	/**
		The (remaining) loop count of the sound. A negative value indicates infinity.
	**/
	var loop_count : Dynamic;
	/**
		The source’s orientation in 3D space as quaternion, a 4 float tuple.
	**/
	var orientation : Dynamic;
	/**
		The pitch of the sound.
	**/
	var pitch : Dynamic;
	/**
		The playback position of the sound in seconds.
	**/
	var position : Dynamic;
	/**
		Whether the source’s location, velocity and orientation is relative or absolute to the listener.
	**/
	var relative : Dynamic;
	/**
		Whether the sound is playing, paused or stopped (=invalid).
	**/
	var status : Dynamic;
	/**
		The source’s velocity in 3D space, a 3D tuple of floats.
	**/
	var velocity : Dynamic;
	/**
		The volume of the sound.
	**/
	var volume : Dynamic;
	/**
		The maximum volume of the source.
	**/
	var volume_maximum : Dynamic;
	/**
		The minimum volume of the source.
	**/
	var volume_minimum : Dynamic;
}/**
	A PlabackManager object allows to easily control groups os sounds organized in categories.
	
	addCategory(volume)
	
	Adds a category with a custom volume.
	
	clean()
	
	Cleans all the invalid and finished sound from the playback manager.
	
	getVolume(catKey)
	
	Retrieves the volume of a category.
	
	pause(catKey)
	
	Pauses playback of the category.
	
	setVolume(sound, catKey)
	
	Plays a sound through the playback manager and assigns it to a category.
	
	resume(catKey)
	
	Resumes playback of the catgory.
	
	setVolume(volume, catKey)
	
	Changes the volume of a category.
	
	stop(catKey)
	
	Stops playback of the category.
**/
@:native("aud.PlaybackManager") extern class PlaybackManager {

}/**
	This sound represents sequenced entries to play a sound scene.
	
	add()
	
	Adds a new entry to the scene.
	:arg sound: The sound this entry should play.
	:type sound: Sound
	:arg begin: The start time.
	:type begin: float
	:arg end: The end time or a negative value if determined by the sound.
	:type end: float
	:arg skip: How much seconds should be skipped at the beginning.
	:type skip: float
	:return: The entry added.
	:rtype: SequenceEntry
	
	reomve()
	
	Adds a new entry to the scene.
	:arg entry: The entry to remove.
	:type entry: SequenceEntry
	
	setAnimationData()
	
	Writes animation data to a sequence.
**/
@:native("aud.Sequence") extern class Sequence {
	/**
		The channel count of the sequence.
	**/
	var channels : Dynamic;
	/**
		The distance model of the sequence.
	**/
	var distance_model : Dynamic;
	/**
		The doppler factor of the sequence.
		This factor is a scaling factor for the velocity vectors in doppler calculation. So a value bigger than 1 will exaggerate the effect as it raises the velocity.
	**/
	var doppler_factor : Dynamic;
	/**
		The listeners’s location in 3D space, a 3D tuple of floats.
	**/
	var fps : Dynamic;
	/**
		Whether the whole sequence is muted.
	**/
	var muted : Dynamic;
	/**
		The sampling rate of the sequence in Hz.
	**/
	var rate : Dynamic;
	/**
		The speed of sound of the sequence.
		The speed of sound in air is typically 343.3 m/s.
	**/
	var speed_of_sound : Dynamic;
}/**
	SequenceEntry objects represent an entry of a sequenced sound.
	
	move()
	
	Moves the entry.
	
	setAnimationData()
	
	Writes animation data to a sequenced entry.
**/
@:native("aud.SequenceEntry") extern class SequenceEntry {
	/**
		This factor is used for distance based attenuation of the source.
	**/
	var attenuation : Dynamic;
	/**
		The opening angle of the inner cone of the source. If the cone values of a source are set there are two (audible) cones with the apex at the location of the source and with infinite height, heading in the direction of the source’s orientation.
		In the inner cone the volume is normal. Outside the outer cone the volume will be cone_volume_outer and in the area between the volume will be interpolated linearly.
	**/
	var cone_angle_inner : Dynamic;
	/**
		The opening angle of the outer cone of the source.
	**/
	var cone_angle_outer : Dynamic;
	/**
		The volume outside the outer cone of the source.
	**/
	var cone_volume_outer : Dynamic;
	/**
		The maximum distance of the source.
		If the listener is further away the source volume will be 0.
	**/
	var distance_maximum : Dynamic;
	/**
		The reference distance of the source.
		At this distance the volume will be exactly volume.
	**/
	var distance_reference : Dynamic;
	/**
		Whether the entry is muted.
	**/
	var muted : Dynamic;
	/**
		Whether the source’s location, velocity and orientation is relative or absolute to the listener.
	**/
	var relative : Dynamic;
	/**
		The sound the entry is representing and will be played in the sequence.
	**/
	var sound : Dynamic;
	/**
		The maximum volume of the source.
	**/
	var volume_maximum : Dynamic;
	/**
		The minimum volume of the source.
	**/
	var volume_minimum : Dynamic;
}/**
	Sound objects are immutable and represent a sound that can be played simultaneously multiple times. They are called factories because they create reader objects internally that are used for playback.
	
	buffer(data, rate)
	
	Creates a sound from a data buffer.
	
	file(filename)
	
	Creates a sound object of a sound file.
	
	list()
	
	Creates an empty sound list that can contain several sounds.
	
	sawtooth(frequency, rate=48000)
	
	Creates a sawtooth sound which plays a sawtooth wave.
	
	silence()
	
	Creates a silence sound which plays simple silence.
	
	sine(frequency, rate=48000)
	
	Creates a sine sound which plays a sine wave.
	
	square(frequency, rate=48000)
	
	Creates a square sound which plays a square wave.
	
	triangle(frequency, rate=48000)
	
	Creates a triangle sound which plays a triangle wave.
	
	ADSR(attack,decay,sustain,release)
	
	Attack-Decay-Sustain-Release envelopes the volume of a sound. Note: there is currently no way to trigger the release with this API.
	
	accumulate(additive=False)
	
	Accumulates a sound by summing over positive input differences thus generating a monotonic sigal. If additivity is set to true negative input differences get added too, but positive ones with a factor of two. Note that with additivity the signal is not monotonic anymore.
	
	addSound(sound)
	
	Adds a new sound to a sound list.
	
	cache()
	
	Caches a sound into RAM.
	This saves CPU usage needed for decoding and file access if the underlying sound reads from a file on the harddisk, but it consumes a lot of memory.
	
	data()
	
	Retrieves the data of the sound as numpy array.
	
	delay(time)
	
	Delays by playing adding silence in front of the other sound’s data.
	
	envelope(attack, release, threshold, arthreshold)
	
	Delays by playing adding silence in front of the other sound’s data.
	
	fadein(start, length)
	
	Fades a sound in by raising the volume linearly in the given time interval.
	
	fadeout(start, length)
	
	Fades a sound in by lowering the volume linearly in the given time interval.
	
	filter(b, a = (1))
	
	Filters a sound with the supplied IIR filter coefficients.
	Without the second parameter you’ll get a FIR filter.
	If the first value of the a sequence is 0 it will be set to 1 automatically.
	If the first value of the a sequence is neither 0 nor 1, all filter coefficients will be scaled by this value so that it is 1 in the end, you don’t have to scale yourself.
	
	highpass(frequency, Q=0.5)
	
	Creates a second order highpass filter based on the transfer function H(s) = s^2 / (s^2 + s/Q + 1)
	
	join(sound)
	
	Plays two factories in sequence.
	
	limit(start, end)
	
	Limits a sound within a specific start and end time.
	
	loop(count)
	
	Loops a sound.
	
	lowpass(frequency, Q=0.5)
	
	Creates a second order lowpass filter based on the transfer function H(s) = 1 / (s^2 + s/Q + 1)
	
	mix(sound)
	
	Mixes two factories.
	
	mutable()
	
	Creates a sound that will be restarted when sought backwards.
	If the original sound is a sound list, the playing sound can change.
	
	pingpong()
	
	Plays a sound forward and then backward.
	This is like joining a sound with its reverse.
	
	pitch(factor)
	
	Changes the pitch of a sound with a specific factor.
	
	rechannel(channels)
	
	Rechannels the sound.
	
	resample(rate, high_quality)
	
	Resamples the sound.
	
	reverse()
	
	Plays a sound reversed.
	
	sum()
	
	Sums the samples of a sound.
	
	threshold(threshold = 0)
	
	Makes a threshold wave out of an audio wave by setting all samples with a amplitude &gt;= threshold to 1, all &lt;= -threshold to -1 and all between to 0.
	
	volume(volume)
	
	Changes the volume of a sound.
	
	write(filename, rate, channels, format, container, codec, bitrate, buffersize)
	
	Writes the sound to a file.
**/
@:native("aud.Sound") extern class Sound {
	/**
		The sample specification of the sound as a tuple with rate and channel count.
	**/
	var length : Dynamic;
	/**
		The sample specification of the sound as a tuple with rate and channel count.
	**/
	var specs : Dynamic;
}/**
	The source object represents the source position of a binaural sound.
**/
@:native("aud.Source") extern class Source {
	/**
		The azimuth angle.
	**/
	var azimuth : Dynamic;
	/**
		The distance value. 0 is min, 1 is max.
	**/
	var distance : Dynamic;
	/**
		The elevation angle.
	**/
	var elevation : Dynamic;
}/**
	A ThreadPool is used to parallelize convolution efficiently.
**/
@:native("aud.ThreadPool") extern class ThreadPool {

}@:native("aud.error") extern class Error {

}