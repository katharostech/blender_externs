package bpy.ops.boid;
@:enum abstract Enum1(String) from String to String {
	var GOAL : String = "GOAL";
	var AVOID : String = "AVOID";
	var AVOID_COLLISION : String = "AVOID_COLLISION";
	var SEPARATE : String = "SEPARATE";
	var FLOCK : String = "FLOCK";
	var FOLLOW_LEADER : String = "FOLLOW_LEADER";
	var AVERAGE_SPEED : String = "AVERAGE_SPEED";
	var FIGHT : String = "FIGHT";
}