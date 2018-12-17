package mathutils.noise;
/**
	Noise Utilities (mathutils.noise)
	
	The Blender noise module
**/
@:pythonImport("mathutils.noise") extern class Module {
	/**
		Returns cell noise value at the specified position.
		@param position The position to evaluate the selected noise function. — mathutils.Vector
		
		@returns float
	**/
	static function cell(position:Dynamic):Float;
	/**
		Returns cell noise vector at the specified position.
		@param position The position to evaluate the selected noise function. — mathutils.Vector
		
		@returns mathutils.Vector
	**/
	static function cell_vector(position:Dynamic):mathutils.vector.Vector;
	/**
		Returns the fractal Brownian motion (fBm) noise value from the noise basis at the specified position.
		@param position The position to evaluate the selected noise function. — mathutils.Vector
		@param H The fractal increment factor. — float
		@param lacunarity The gap between successive frequencies. — float
		@param octaves The number of different noise frequencies used. — int
		@param noise_basis Enumerator in [‘BLENDER’, ‘PERLIN_ORIGINAL’, ‘PERLIN_NEW’, ‘VORONOI_F1’, ‘VORONOI_F2’, ‘VORONOI_F3’, ‘VORONOI_F4’, ‘VORONOI_F2F1’, ‘VORONOI_CRACKLE’, ‘CELLNOISE’]. — string
		
		@returns float
	**/
	static function fractal(position:Dynamic, H:Float, lacunarity:Float, octaves:Int, noise_basis:String):Float;
	/**
		Returns the heterogeneous terrain value from the noise basis at the specified position.
		@param position The position to evaluate the selected noise function. — mathutils.Vector
		@param H The fractal dimension of the roughest areas. — float
		@param lacunarity The gap between successive frequencies. — float
		@param octaves The number of different noise frequencies used. — int
		@param offset The height of the terrain above ‘sea level’. — float
		@param noise_basis Enumerator in [‘BLENDER’, ‘PERLIN_ORIGINAL’, ‘PERLIN_NEW’, ‘VORONOI_F1’, ‘VORONOI_F2’, ‘VORONOI_F3’, ‘VORONOI_F4’, ‘VORONOI_F2F1’, ‘VORONOI_CRACKLE’, ‘CELLNOISE’]. — string
		
		@returns float
	**/
	static function hetero_terrain(position:Dynamic, H:Float, lacunarity:Float, octaves:Int, offset:Float, noise_basis:String):Float;
	/**
		Returns hybrid multifractal value from the noise basis at the specified position.
		@param position The position to evaluate the selected noise function. — mathutils.Vector
		@param H The fractal dimension of the roughest areas. — float
		@param lacunarity The gap between successive frequencies. — float
		@param octaves The number of different noise frequencies used. — int
		@param offset The height of the terrain above ‘sea level’. — float
		@param gain Scaling applied to the values. — float
		@param noise_basis Enumerator in [‘BLENDER’, ‘PERLIN_ORIGINAL’, ‘PERLIN_NEW’, ‘VORONOI_F1’, ‘VORONOI_F2’, ‘VORONOI_F3’, ‘VORONOI_F4’, ‘VORONOI_F2F1’, ‘VORONOI_CRACKLE’, ‘CELLNOISE’]. — string
		
		@returns float
	**/
	static function hybrid_multi_fractal(position:Dynamic, H:Float, lacunarity:Float, octaves:Int, offset:Float, gain:Float, noise_basis:String):Float;
	/**
		Returns multifractal noise value from the noise basis at the specified position.
		@param position The position to evaluate the selected noise function. — mathutils.Vector
		@param H The fractal increment factor. — float
		@param lacunarity The gap between successive frequencies. — float
		@param octaves The number of different noise frequencies used. — int
		@param noise_basis Enumerator in [‘BLENDER’, ‘PERLIN_ORIGINAL’, ‘PERLIN_NEW’, ‘VORONOI_F1’, ‘VORONOI_F2’, ‘VORONOI_F3’, ‘VORONOI_F4’, ‘VORONOI_F2F1’, ‘VORONOI_CRACKLE’, ‘CELLNOISE’]. — string
		
		@returns float
	**/
	static function multi_fractal(position:Dynamic, H:Float, lacunarity:Float, octaves:Int, noise_basis:String):Float;
	/**
		Returns noise value from the noise basis at the position specified.
		@param position The position to evaluate the selected noise function. — mathutils.Vector
		@param noise_basis Enumerator in [‘BLENDER’, ‘PERLIN_ORIGINAL’, ‘PERLIN_NEW’, ‘VORONOI_F1’, ‘VORONOI_F2’, ‘VORONOI_F3’, ‘VORONOI_F4’, ‘VORONOI_F2F1’, ‘VORONOI_CRACKLE’, ‘CELLNOISE’]. — string
		
		@returns float
	**/
	static function noise(position:Dynamic, noise_basis:String):Float;
	/**
		Returns the noise vector from the noise basis at the specified position.
		@param position The position to evaluate the selected noise function. — mathutils.Vector
		@param noise_basis Enumerator in [‘BLENDER’, ‘PERLIN_ORIGINAL’, ‘PERLIN_NEW’, ‘VORONOI_F1’, ‘VORONOI_F2’, ‘VORONOI_F3’, ‘VORONOI_F4’, ‘VORONOI_F2F1’, ‘VORONOI_CRACKLE’, ‘CELLNOISE’]. — string
		
		@returns mathutils.Vector
	**/
	static function noise_vector(position:Dynamic, noise_basis:String):mathutils.vector.Vector;
	/**
		Returns a random number in the range [0, 1).
		
		@returns float
	**/
	static function random():Float;
	/**
		Returns a unit vector with random entries.
		@param size The size of the vector to be produced, in the range [2, 4]. — int
		
		@returns mathutils.Vector
	**/
	static function random_unit_vector(size:Int):mathutils.vector.Vector;
	/**
		Returns a vector with random entries in the range (-1, 1).
		@param size The size of the vector to be produced. — int
		
		@returns mathutils.Vector
	**/
	static function random_vector(size:Int):mathutils.vector.Vector;
	/**
		Returns ridged multifractal value from the noise basis at the specified position.
		@param position The position to evaluate the selected noise function. — mathutils.Vector
		@param H The fractal dimension of the roughest areas. — float
		@param lacunarity The gap between successive frequencies. — float
		@param octaves The number of different noise frequencies used. — int
		@param offset The height of the terrain above ‘sea level’. — float
		@param gain Scaling applied to the values. — float
		@param noise_basis Enumerator in [‘BLENDER’, ‘PERLIN_ORIGINAL’, ‘PERLIN_NEW’, ‘VORONOI_F1’, ‘VORONOI_F2’, ‘VORONOI_F3’, ‘VORONOI_F4’, ‘VORONOI_F2F1’, ‘VORONOI_CRACKLE’, ‘CELLNOISE’]. — string
		
		@returns float
	**/
	static function ridged_multi_fractal(position:Dynamic, H:Float, lacunarity:Float, octaves:Int, offset:Float, gain:Float, noise_basis:String):Float;
	/**
		Sets the random seed used for random_unit_vector, and random.
		@param seed Seed used for the random generator.
		                                When seed is zero, the current time will be used instead. — int
	**/
	static function seed_set(seed:Int):Void;
	/**
		Returns the turbulence value from the noise basis at the specified position.
		@param position The position to evaluate the selected noise function. — mathutils.Vector
		@param octaves The number of different noise frequencies used. — int
		@param hard Specifies whether returned turbulence is hard (sharp transitions) or soft (smooth transitions). — boolean
		@param noise_basis Enumerator in [‘BLENDER’, ‘PERLIN_ORIGINAL’, ‘PERLIN_NEW’, ‘VORONOI_F1’, ‘VORONOI_F2’, ‘VORONOI_F3’, ‘VORONOI_F4’, ‘VORONOI_F2F1’, ‘VORONOI_CRACKLE’, ‘CELLNOISE’]. — string
		@param amplitude_scale The amplitude scaling factor. — float
		@param frequency_scale The frequency scaling factor — float
		
		@returns float
	**/
	static function turbulence(position:Dynamic, octaves:Int, hard:Bool, noise_basis:String, amplitude_scale:Float, frequency_scale:Float):Float;
	/**
		Returns the turbulence vector from the noise basis at the specified position.
		@param position The position to evaluate the selected noise function. — mathutils.Vector
		@param octaves The number of different noise frequencies used. — int
		@param hard Specifies whether returned turbulence is hard (sharp transitions) or soft (smooth transitions). — :boolean
		@param noise_basis Enumerator in [‘BLENDER’, ‘PERLIN_ORIGINAL’, ‘PERLIN_NEW’, ‘VORONOI_F1’, ‘VORONOI_F2’, ‘VORONOI_F3’, ‘VORONOI_F4’, ‘VORONOI_F2F1’, ‘VORONOI_CRACKLE’, ‘CELLNOISE’]. — string
		@param amplitude_scale The amplitude scaling factor. — float
		@param frequency_scale The frequency scaling factor — float
		
		@returns mathutils.Vector
	**/
	static function turbulence_vector(position:Dynamic, octaves:Int, hard:Dynamic, noise_basis:String, amplitude_scale:Float, frequency_scale:Float):mathutils.vector.Vector;
	/**
		Returns variable lacunarity noise value, a distorted variety of noise, from noise type 1 distorted by noise type 2 at the specified position.
		@param position The position to evaluate the selected noise function. — mathutils.Vector
		@param distortion The amount of distortion. — float
		@param pynoise_type1 Enumerator in [‘BLENDER’, ‘PERLIN_ORIGINAL’, ‘PERLIN_NEW’, ‘VORONOI_F1’, ‘VORONOI_F2’, ‘VORONOI_F3’, ‘VORONOI_F4’, ‘VORONOI_F2F1’, ‘VORONOI_CRACKLE’, ‘CELLNOISE’]. — string
		@param pynoise_type2 Enumerator in [‘BLENDER’, ‘PERLIN_ORIGINAL’, ‘PERLIN_NEW’, ‘VORONOI_F1’, ‘VORONOI_F2’, ‘VORONOI_F3’, ‘VORONOI_F4’, ‘VORONOI_F2F1’, ‘VORONOI_CRACKLE’, ‘CELLNOISE’]. — string
		
		@returns float
	**/
	static function variable_lacunarity(position:Dynamic, distortion:Float, pynoise_type1:String, pynoise_type2:String):Float;
	/**
		Returns a list of distances to the four closest features and their locations.
		@param position The position to evaluate the selected noise function. — mathutils.Vector
		@param distance_metric Enumerator in [‘DISTANCE’, ‘DISTANCE_SQUARED’, ‘MANHATTAN’, ‘CHEBYCHEV’, ‘MINKOVSKY’, ‘MINKOVSKY_HALF’, ‘MINKOVSKY_FOUR’]. — string
		@param exponent The exponent for Minkowski distance metric. — float
		
		@returns list of four floats, list of four mathutils.Vector types
	**/
	static function voronoi(position:Dynamic, distance_metric:String, exponent:Float):mathutils.vector.Vector;
}