package bpy.ops.object;
@:enum abstract Enum1(String) from String to String {
	var MESH : String = "MESH";
	var CURVE : String = "CURVE";
	var SURFACE : String = "SURFACE";
	var META : String = "META";
	var FONT : String = "FONT";
	var ARMATURE : String = "ARMATURE";
	var LATTICE : String = "LATTICE";
	var EMPTY : String = "EMPTY";
	var GPENCIL : String = "GPENCIL";
	var CAMERA : String = "CAMERA";
	var LIGHT : String = "LIGHT";
	var SPEAKER : String = "SPEAKER";
	var LIGHT_PROBE : String = "LIGHT_PROBE";
}@:enum abstract Enum2(String) from String to String {
	var OPT_1 : String = "OPT_1";
	var OPT_2 : String = "OPT_2";
	var OPT_3 : String = "OPT_3";
}@:enum abstract Enum3(String) from String to String {
	var OPT_1 : String = "OPT_1";
	var OPT_2 : String = "OPT_2";
	var OPT_3 : String = "OPT_3";
	var OPT_4 : String = "OPT_4";
}@:enum abstract Enum4(String) from String to String {
	var COMBINED : String = "COMBINED";
	var AO : String = "AO";
	var SHADOW : String = "SHADOW";
	var NORMAL : String = "NORMAL";
	var UV : String = "UV";
	var ROUGHNESS : String = "ROUGHNESS";
	var EMIT : String = "EMIT";
	var ENVIRONMENT : String = "ENVIRONMENT";
	var DIFFUSE : String = "DIFFUSE";
	var GLOSSY : String = "GLOSSY";
	var TRANSMISSION : String = "TRANSMISSION";
	var SUBSURFACE : String = "SUBSURFACE";
}@:enum abstract Enum5(String) from String to String {
	var OBJECT : String = "OBJECT";
	var TANGENT : String = "TANGENT";
}@:enum abstract Enum6(String) from String to String {
	var POS_X : String = "POS_X";
	var POS_Y : String = "POS_Y";
	var POS_Z : String = "POS_Z";
	var NEG_X : String = "NEG_X";
	var NEG_Y : String = "NEG_Y";
	var NEG_Z : String = "NEG_Z";
}@:enum abstract Enum7(String) from String to String {
	var POS_X : String = "POS_X";
	var POS_Y : String = "POS_Y";
	var POS_Z : String = "POS_Z";
	var NEG_X : String = "NEG_X";
	var NEG_Y : String = "NEG_Y";
	var NEG_Z : String = "NEG_Z";
}@:enum abstract Enum8(String) from String to String {
	var POS_X : String = "POS_X";
	var POS_Y : String = "POS_Y";
	var POS_Z : String = "POS_Z";
	var NEG_X : String = "NEG_X";
	var NEG_Y : String = "NEG_Y";
	var NEG_Z : String = "NEG_Z";
}@:enum abstract Enum9(String) from String to String {
	var INTERNAL : String = "INTERNAL";
	var EXTERNAL : String = "EXTERNAL";
}@:enum abstract Enum10(String) from String to String {
	var  : String = "";
}@:enum abstract Enum11(String) from String to String {
	var  : String = "";
}@:enum abstract Enum12(String) from String to String {
	var CAMERA_SOLVER : String = "CAMERA_SOLVER";
	var FOLLOW_TRACK : String = "FOLLOW_TRACK";
	var OBJECT_SOLVER : String = "OBJECT_SOLVER";
	var COPY_LOCATION : String = "COPY_LOCATION";
	var COPY_ROTATION : String = "COPY_ROTATION";
	var COPY_SCALE : String = "COPY_SCALE";
	var COPY_TRANSFORMS : String = "COPY_TRANSFORMS";
	var LIMIT_DISTANCE : String = "LIMIT_DISTANCE";
	var LIMIT_LOCATION : String = "LIMIT_LOCATION";
	var LIMIT_ROTATION : String = "LIMIT_ROTATION";
	var LIMIT_SCALE : String = "LIMIT_SCALE";
	var MAINTAIN_VOLUME : String = "MAINTAIN_VOLUME";
	var TRANSFORM : String = "TRANSFORM";
	var TRANSFORM_CACHE : String = "TRANSFORM_CACHE";
	var CLAMP_TO : String = "CLAMP_TO";
	var DAMPED_TRACK : String = "DAMPED_TRACK";
	var IK : String = "IK";
	var LOCKED_TRACK : String = "LOCKED_TRACK";
	var SPLINE_IK : String = "SPLINE_IK";
	var STRETCH_TO : String = "STRETCH_TO";
	var TRACK_TO : String = "TRACK_TO";
	var ACTION : String = "ACTION";
	var CHILD_OF : String = "CHILD_OF";
	var FLOOR : String = "FLOOR";
	var FOLLOW_PATH : String = "FOLLOW_PATH";
	var PIVOT : String = "PIVOT";
	var SHRINKWRAP : String = "SHRINKWRAP";
	var ARMATURE : String = "ARMATURE";
}@:enum abstract Enum13(String) from String to String {
	var CAMERA_SOLVER : String = "CAMERA_SOLVER";
	var FOLLOW_TRACK : String = "FOLLOW_TRACK";
	var OBJECT_SOLVER : String = "OBJECT_SOLVER";
	var COPY_LOCATION : String = "COPY_LOCATION";
	var COPY_ROTATION : String = "COPY_ROTATION";
	var COPY_SCALE : String = "COPY_SCALE";
	var COPY_TRANSFORMS : String = "COPY_TRANSFORMS";
	var LIMIT_DISTANCE : String = "LIMIT_DISTANCE";
	var LIMIT_LOCATION : String = "LIMIT_LOCATION";
	var LIMIT_ROTATION : String = "LIMIT_ROTATION";
	var LIMIT_SCALE : String = "LIMIT_SCALE";
	var MAINTAIN_VOLUME : String = "MAINTAIN_VOLUME";
	var TRANSFORM : String = "TRANSFORM";
	var TRANSFORM_CACHE : String = "TRANSFORM_CACHE";
	var CLAMP_TO : String = "CLAMP_TO";
	var DAMPED_TRACK : String = "DAMPED_TRACK";
	var IK : String = "IK";
	var LOCKED_TRACK : String = "LOCKED_TRACK";
	var SPLINE_IK : String = "SPLINE_IK";
	var STRETCH_TO : String = "STRETCH_TO";
	var TRACK_TO : String = "TRACK_TO";
	var ACTION : String = "ACTION";
	var CHILD_OF : String = "CHILD_OF";
	var FLOOR : String = "FLOOR";
	var FOLLOW_PATH : String = "FOLLOW_PATH";
	var PIVOT : String = "PIVOT";
	var SHRINKWRAP : String = "SHRINKWRAP";
	var ARMATURE : String = "ARMATURE";
}@:enum abstract Enum14(String) from String to String {
	var CURVE : String = "CURVE";
	var MESH : String = "MESH";
}@:enum abstract Enum15(String) from String to String {
	var VGROUP_WEIGHTS : String = "VGROUP_WEIGHTS";
	var BEVEL_WEIGHT_VERT : String = "BEVEL_WEIGHT_VERT";
	var SHARP_EDGE : String = "SHARP_EDGE";
	var SEAM : String = "SEAM";
	var CREASE : String = "CREASE";
	var BEVEL_WEIGHT_EDGE : String = "BEVEL_WEIGHT_EDGE";
	var FREESTYLE_EDGE : String = "FREESTYLE_EDGE";
	var CUSTOM_NORMAL : String = "CUSTOM_NORMAL";
	var VCOL : String = "VCOL";
	var UV : String = "UV";
	var SMOOTH : String = "SMOOTH";
	var FREESTYLE_FACE : String = "FREESTYLE_FACE";
}@:enum abstract Enum16(String) from String to String {
	var TOPOLOGY : String = "TOPOLOGY";
	var NEAREST : String = "NEAREST";
	var EDGE_NEAREST : String = "EDGE_NEAREST";
	var EDGEINTERP_NEAREST : String = "EDGEINTERP_NEAREST";
	var POLY_NEAREST : String = "POLY_NEAREST";
	var POLYINTERP_NEAREST : String = "POLYINTERP_NEAREST";
	var POLYINTERP_VNORPROJ : String = "POLYINTERP_VNORPROJ";
}@:enum abstract Enum17(String) from String to String {
	var TOPOLOGY : String = "TOPOLOGY";
	var VERT_NEAREST : String = "VERT_NEAREST";
	var NEAREST : String = "NEAREST";
	var POLY_NEAREST : String = "POLY_NEAREST";
	var EDGEINTERP_VNORPROJ : String = "EDGEINTERP_VNORPROJ";
}@:enum abstract Enum18(String) from String to String {
	var TOPOLOGY : String = "TOPOLOGY";
	var NEAREST_NORMAL : String = "NEAREST_NORMAL";
	var NEAREST_POLYNOR : String = "NEAREST_POLYNOR";
	var NEAREST_POLY : String = "NEAREST_POLY";
	var POLYINTERP_NEAREST : String = "POLYINTERP_NEAREST";
	var POLYINTERP_LNORPROJ : String = "POLYINTERP_LNORPROJ";
}@:enum abstract Enum19(String) from String to String {
	var TOPOLOGY : String = "TOPOLOGY";
	var NEAREST : String = "NEAREST";
	var NORMAL : String = "NORMAL";
	var POLYINTERP_PNORPROJ : String = "POLYINTERP_PNORPROJ";
}@:enum abstract Enum20(String) from String to String {
	var ACTIVE : String = "ACTIVE";
	var ALL : String = "ALL";
	var BONE_SELECT : String = "BONE_SELECT";
	var BONE_DEFORM : String = "BONE_DEFORM";
}@:enum abstract Enum21(String) from String to String {
	var ACTIVE : String = "ACTIVE";
	var NAME : String = "NAME";
	var INDEX : String = "INDEX";
}@:enum abstract Enum22(String) from String to String {
	var REPLACE : String = "REPLACE";
	var ABOVE_THRESHOLD : String = "ABOVE_THRESHOLD";
	var BELOW_THRESHOLD : String = "BELOW_THRESHOLD";
	var MIX : String = "MIX";
	var ADD : String = "ADD";
	var SUB : String = "SUB";
	var MUL : String = "MUL";
}@:enum abstract Enum23(String) from String to String {
	var VGROUP_WEIGHTS : String = "VGROUP_WEIGHTS";
	var BEVEL_WEIGHT_VERT : String = "BEVEL_WEIGHT_VERT";
	var SHARP_EDGE : String = "SHARP_EDGE";
	var SEAM : String = "SEAM";
	var CREASE : String = "CREASE";
	var BEVEL_WEIGHT_EDGE : String = "BEVEL_WEIGHT_EDGE";
	var FREESTYLE_EDGE : String = "FREESTYLE_EDGE";
	var CUSTOM_NORMAL : String = "CUSTOM_NORMAL";
	var VCOL : String = "VCOL";
	var UV : String = "UV";
	var SMOOTH : String = "SMOOTH";
	var FREESTYLE_FACE : String = "FREESTYLE_FACE";
}@:enum abstract Enum24(String) from String to String {
	var ACTIVE : String = "ACTIVE";
	var ALL : String = "ALL";
	var BONE_SELECT : String = "BONE_SELECT";
	var BONE_DEFORM : String = "BONE_DEFORM";
}@:enum abstract Enum25(String) from String to String {
	var ACTIVE : String = "ACTIVE";
	var NAME : String = "NAME";
	var INDEX : String = "INDEX";
}@:enum abstract Enum26(String) from String to String {
	var INIT : String = "INIT";
	var DUMMY : String = "DUMMY";
	var TRANSLATION : String = "TRANSLATION";
	var ROTATION : String = "ROTATION";
	var RESIZE : String = "RESIZE";
	var SKIN_RESIZE : String = "SKIN_RESIZE";
	var TOSPHERE : String = "TOSPHERE";
	var SHEAR : String = "SHEAR";
	var BEND : String = "BEND";
	var SHRINKFATTEN : String = "SHRINKFATTEN";
	var TILT : String = "TILT";
	var TRACKBALL : String = "TRACKBALL";
	var PUSHPULL : String = "PUSHPULL";
	var CREASE : String = "CREASE";
	var MIRROR : String = "MIRROR";
	var BONE_SIZE : String = "BONE_SIZE";
	var BONE_ENVELOPE : String = "BONE_ENVELOPE";
	var BONE_ENVELOPE_DIST : String = "BONE_ENVELOPE_DIST";
	var CURVE_SHRINKFATTEN : String = "CURVE_SHRINKFATTEN";
	var MASK_SHRINKFATTEN : String = "MASK_SHRINKFATTEN";
	var GPENCIL_SHRINKFATTEN : String = "GPENCIL_SHRINKFATTEN";
	var BONE_ROLL : String = "BONE_ROLL";
	var TIME_TRANSLATE : String = "TIME_TRANSLATE";
	var TIME_SLIDE : String = "TIME_SLIDE";
	var TIME_SCALE : String = "TIME_SCALE";
	var TIME_EXTEND : String = "TIME_EXTEND";
	var BAKE_TIME : String = "BAKE_TIME";
	var BWEIGHT : String = "BWEIGHT";
	var ALIGN : String = "ALIGN";
	var EDGESLIDE : String = "EDGESLIDE";
	var SEQSLIDE : String = "SEQSLIDE";
}@:enum abstract Enum27(String) from String to String {
	var FORCE : String = "FORCE";
	var WIND : String = "WIND";
	var VORTEX : String = "VORTEX";
	var MAGNET : String = "MAGNET";
	var HARMONIC : String = "HARMONIC";
	var CHARGE : String = "CHARGE";
	var LENNARDJ : String = "LENNARDJ";
	var TEXTURE : String = "TEXTURE";
	var GUIDE : String = "GUIDE";
	var BOID : String = "BOID";
	var TURBULENCE : String = "TURBULENCE";
	var DRAG : String = "DRAG";
	var SMOKE : String = "SMOKE";
}@:enum abstract Enum28(String) from String to String {
	var PLAIN_AXES : String = "PLAIN_AXES";
	var ARROWS : String = "ARROWS";
	var SINGLE_ARROW : String = "SINGLE_ARROW";
	var CIRCLE : String = "CIRCLE";
	var CUBE : String = "CUBE";
	var SPHERE : String = "SPHERE";
	var CONE : String = "CONE";
	var IMAGE : String = "IMAGE";
}@:enum abstract Enum29(String) from String to String {
	var UP : String = "UP";
	var DOWN : String = "DOWN";
}@:enum abstract Enum30(String) from String to String {
	var EMPTY : String = "EMPTY";
	var STROKE : String = "STROKE";
	var MONKEY : String = "MONKEY";
}@:enum abstract Enum31(String) from String to String {
	var DATA_TRANSFER : String = "DATA_TRANSFER";
	var MESH_CACHE : String = "MESH_CACHE";
	var MESH_SEQUENCE_CACHE : String = "MESH_SEQUENCE_CACHE";
	var NORMAL_EDIT : String = "NORMAL_EDIT";
	var WEIGHTED_NORMAL : String = "WEIGHTED_NORMAL";
	var UV_PROJECT : String = "UV_PROJECT";
	var UV_WARP : String = "UV_WARP";
	var VERTEX_WEIGHT_EDIT : String = "VERTEX_WEIGHT_EDIT";
	var VERTEX_WEIGHT_MIX : String = "VERTEX_WEIGHT_MIX";
	var VERTEX_WEIGHT_PROXIMITY : String = "VERTEX_WEIGHT_PROXIMITY";
	var ARRAY : String = "ARRAY";
	var BEVEL : String = "BEVEL";
	var BOOLEAN : String = "BOOLEAN";
	var BUILD : String = "BUILD";
	var DECIMATE : String = "DECIMATE";
	var EDGE_SPLIT : String = "EDGE_SPLIT";
	var MASK : String = "MASK";
	var MIRROR : String = "MIRROR";
	var MULTIRES : String = "MULTIRES";
	var REMESH : String = "REMESH";
	var SCREW : String = "SCREW";
	var SKIN : String = "SKIN";
	var SOLIDIFY : String = "SOLIDIFY";
	var SUBSURF : String = "SUBSURF";
	var TRIANGULATE : String = "TRIANGULATE";
	var WIREFRAME : String = "WIREFRAME";
	var ARMATURE : String = "ARMATURE";
	var CAST : String = "CAST";
	var CURVE : String = "CURVE";
	var DISPLACE : String = "DISPLACE";
	var HOOK : String = "HOOK";
	var LAPLACIANDEFORM : String = "LAPLACIANDEFORM";
	var LATTICE : String = "LATTICE";
	var MESH_DEFORM : String = "MESH_DEFORM";
	var SHRINKWRAP : String = "SHRINKWRAP";
	var SIMPLE_DEFORM : String = "SIMPLE_DEFORM";
	var SMOOTH : String = "SMOOTH";
	var CORRECTIVE_SMOOTH : String = "CORRECTIVE_SMOOTH";
	var LAPLACIANSMOOTH : String = "LAPLACIANSMOOTH";
	var SURFACE_DEFORM : String = "SURFACE_DEFORM";
	var WARP : String = "WARP";
	var WAVE : String = "WAVE";
	var CLOTH : String = "CLOTH";
	var COLLISION : String = "COLLISION";
	var DYNAMIC_PAINT : String = "DYNAMIC_PAINT";
	var EXPLODE : String = "EXPLODE";
	var FLUID_SIMULATION : String = "FLUID_SIMULATION";
	var OCEAN : String = "OCEAN";
	var PARTICLE_INSTANCE : String = "PARTICLE_INSTANCE";
	var PARTICLE_SYSTEM : String = "PARTICLE_SYSTEM";
	var SMOKE : String = "SMOKE";
	var SOFT_BODY : String = "SOFT_BODY";
	var SURFACE : String = "SURFACE";
}@:enum abstract Enum32(String) from String to String {
	var DATA : String = "DATA";
	var SHAPE : String = "SHAPE";
}@:enum abstract Enum33(String) from String to String {
	var  : String = "";
}@:enum abstract Enum34(String) from String to String {
	var  : String = "";
}@:enum abstract Enum35(String) from String to String {
	var  : String = "";
}@:enum abstract Enum36(String) from String to String {
	var  : String = "";
}@:enum abstract Enum37(String) from String to String {
	var  : String = "";
}@:enum abstract Enum38(String) from String to String {
	var POINT : String = "POINT";
	var SUN : String = "SUN";
	var SPOT : String = "SPOT";
	var AREA : String = "AREA";
}@:enum abstract Enum39(String) from String to String {
	var CUBEMAP : String = "CUBEMAP";
	var PLANAR : String = "PLANAR";
	var GRID : String = "GRID";
}@:enum abstract Enum40(String) from String to String {
	var OBDATA : String = "OBDATA";
	var MATERIAL : String = "MATERIAL";
	var ANIMATION : String = "ANIMATION";
	var GROUPS : String = "GROUPS";
	var DUPLICOLLECTION : String = "DUPLICOLLECTION";
	var MODIFIERS : String = "MODIFIERS";
	var FONTS : String = "FONTS";
}@:enum abstract Enum41(String) from String to String {
	var  : String = "";
}@:enum abstract Enum42(String) from String to String {
	var SELECT_OBJECT : String = "SELECT_OBJECT";
	var SELECT_OBDATA : String = "SELECT_OBDATA";
	var SELECT_OBDATA_MATERIAL : String = "SELECT_OBDATA_MATERIAL";
	var ALL : String = "ALL";
}@:enum abstract Enum43(String) from String to String {
	var DEFAULT : String = "DEFAULT";
}@:enum abstract Enum44(String) from String to String {
	var SELECTED_OBJECTS : String = "SELECTED_OBJECTS";
	var ALL : String = "ALL";
}@:enum abstract Enum45(String) from String to String {
	var UP : String = "UP";
	var DOWN : String = "DOWN";
}@:enum abstract Enum46(String) from String to String {
	var BALL : String = "BALL";
	var CAPSULE : String = "CAPSULE";
	var PLANE : String = "PLANE";
	var ELLIPSOID : String = "ELLIPSOID";
	var CUBE : String = "CUBE";
}@:enum abstract Enum47(String) from String to String {
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
}@:enum abstract Enum48(String) from String to String {
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
}@:enum abstract Enum49(String) from String to String {
	var DATA_TRANSFER : String = "DATA_TRANSFER";
	var MESH_CACHE : String = "MESH_CACHE";
	var MESH_SEQUENCE_CACHE : String = "MESH_SEQUENCE_CACHE";
	var NORMAL_EDIT : String = "NORMAL_EDIT";
	var WEIGHTED_NORMAL : String = "WEIGHTED_NORMAL";
	var UV_PROJECT : String = "UV_PROJECT";
	var UV_WARP : String = "UV_WARP";
	var VERTEX_WEIGHT_EDIT : String = "VERTEX_WEIGHT_EDIT";
	var VERTEX_WEIGHT_MIX : String = "VERTEX_WEIGHT_MIX";
	var VERTEX_WEIGHT_PROXIMITY : String = "VERTEX_WEIGHT_PROXIMITY";
	var ARRAY : String = "ARRAY";
	var BEVEL : String = "BEVEL";
	var BOOLEAN : String = "BOOLEAN";
	var BUILD : String = "BUILD";
	var DECIMATE : String = "DECIMATE";
	var EDGE_SPLIT : String = "EDGE_SPLIT";
	var MASK : String = "MASK";
	var MIRROR : String = "MIRROR";
	var MULTIRES : String = "MULTIRES";
	var REMESH : String = "REMESH";
	var SCREW : String = "SCREW";
	var SKIN : String = "SKIN";
	var SOLIDIFY : String = "SOLIDIFY";
	var SUBSURF : String = "SUBSURF";
	var TRIANGULATE : String = "TRIANGULATE";
	var WIREFRAME : String = "WIREFRAME";
	var ARMATURE : String = "ARMATURE";
	var CAST : String = "CAST";
	var CURVE : String = "CURVE";
	var DISPLACE : String = "DISPLACE";
	var HOOK : String = "HOOK";
	var LAPLACIANDEFORM : String = "LAPLACIANDEFORM";
	var LATTICE : String = "LATTICE";
	var MESH_DEFORM : String = "MESH_DEFORM";
	var SHRINKWRAP : String = "SHRINKWRAP";
	var SIMPLE_DEFORM : String = "SIMPLE_DEFORM";
	var SMOOTH : String = "SMOOTH";
	var CORRECTIVE_SMOOTH : String = "CORRECTIVE_SMOOTH";
	var LAPLACIANSMOOTH : String = "LAPLACIANSMOOTH";
	var SURFACE_DEFORM : String = "SURFACE_DEFORM";
	var WARP : String = "WARP";
	var WAVE : String = "WAVE";
	var CLOTH : String = "CLOTH";
	var COLLISION : String = "COLLISION";
	var DYNAMIC_PAINT : String = "DYNAMIC_PAINT";
	var EXPLODE : String = "EXPLODE";
	var FLUID_SIMULATION : String = "FLUID_SIMULATION";
	var OCEAN : String = "OCEAN";
	var PARTICLE_INSTANCE : String = "PARTICLE_INSTANCE";
	var PARTICLE_SYSTEM : String = "PARTICLE_SYSTEM";
	var SMOKE : String = "SMOKE";
	var SOFT_BODY : String = "SOFT_BODY";
	var SURFACE : String = "SURFACE";
}@:enum abstract Enum50(String) from String to String {
	var DATA : String = "DATA";
	var SHAPE : String = "SHAPE";
}@:enum abstract Enum51(String) from String to String {
	var DEFAULT : String = "DEFAULT";
	var LIST_SHORT : String = "LIST_SHORT";
	var LIST_LONG : String = "LIST_LONG";
	var THUMBNAIL : String = "THUMBNAIL";
}@:enum abstract Enum52(String) from String to String {
	var FILE_SORT_ALPHA : String = "FILE_SORT_ALPHA";
	var FILE_SORT_EXTENSION : String = "FILE_SORT_EXTENSION";
	var FILE_SORT_TIME : String = "FILE_SORT_TIME";
	var FILE_SORT_SIZE : String = "FILE_SORT_SIZE";
}@:enum abstract Enum53(String) from String to String {
	var GEOMETRY_ORIGIN : String = "GEOMETRY_ORIGIN";
	var ORIGIN_GEOMETRY : String = "ORIGIN_GEOMETRY";
	var ORIGIN_CURSOR : String = "ORIGIN_CURSOR";
	var ORIGIN_CENTER_OF_MASS : String = "ORIGIN_CENTER_OF_MASS";
	var ORIGIN_CENTER_OF_VOLUME : String = "ORIGIN_CENTER_OF_VOLUME";
}@:enum abstract Enum54(String) from String to String {
	var MEDIAN : String = "MEDIAN";
	var BOUNDS : String = "BOUNDS";
}@:enum abstract Enum55(String) from String to String {
	var CLEAR : String = "CLEAR";
	var CLEAR_KEEP_TRANSFORM : String = "CLEAR_KEEP_TRANSFORM";
	var CLEAR_INVERSE : String = "CLEAR_INVERSE";
}@:enum abstract Enum56(String) from String to String {
	var OBJECT : String = "OBJECT";
	var ARMATURE : String = "ARMATURE";
	var ARMATURE_NAME : String = "ARMATURE_NAME";
	var ARMATURE_AUTO : String = "ARMATURE_AUTO";
	var ARMATURE_ENVELOPE : String = "ARMATURE_ENVELOPE";
	var BONE : String = "BONE";
	var BONE_RELATIVE : String = "BONE_RELATIVE";
	var CURVE : String = "CURVE";
	var FOLLOW : String = "FOLLOW";
	var PATH_CONST : String = "PATH_CONST";
	var LATTICE : String = "LATTICE";
	var VERTEX : String = "VERTEX";
	var VERTEX_TRI : String = "VERTEX_TRI";
}@:enum abstract Enum57(String) from String to String {
	var DEFAULT : String = "DEFAULT";
}@:enum abstract Enum58(String) from String to String {
	var EXPLODE : String = "EXPLODE";
	var BLEND : String = "BLEND";
}@:enum abstract Enum59(String) from String to String {
	var INFLOW : String = "INFLOW";
	var BASIC : String = "BASIC";
}@:enum abstract Enum60(String) from String to String {
	var LIGHT : String = "LIGHT";
	var MEDIUM : String = "MEDIUM";
	var HEAVY : String = "HEAVY";
}@:enum abstract Enum61(String) from String to String {
	var SMOKE : String = "SMOKE";
	var FIRE : String = "FIRE";
	var BOTH : String = "BOTH";
}@:enum abstract Enum62(String) from String to String {
	var TOGGLE : String = "TOGGLE";
	var SELECT : String = "SELECT";
	var DESELECT : String = "DESELECT";
	var INVERT : String = "INVERT";
}@:enum abstract Enum63(String) from String to String {
	var MESH : String = "MESH";
	var CURVE : String = "CURVE";
	var SURFACE : String = "SURFACE";
	var META : String = "META";
	var FONT : String = "FONT";
	var ARMATURE : String = "ARMATURE";
	var LATTICE : String = "LATTICE";
	var EMPTY : String = "EMPTY";
	var GPENCIL : String = "GPENCIL";
	var CAMERA : String = "CAMERA";
	var LIGHT : String = "LIGHT";
	var SPEAKER : String = "SPEAKER";
	var LIGHT_PROBE : String = "LIGHT_PROBE";
}@:enum abstract Enum64(String) from String to String {
	var CHILDREN_RECURSIVE : String = "CHILDREN_RECURSIVE";
	var CHILDREN : String = "CHILDREN";
	var PARENT : String = "PARENT";
	var SIBLINGS : String = "SIBLINGS";
	var TYPE : String = "TYPE";
	var COLLECTION : String = "COLLECTION";
	var HOOK : String = "HOOK";
	var PASS : String = "PASS";
	var COLOR : String = "COLOR";
	var KEYINGSET : String = "KEYINGSET";
	var LIGHT_TYPE : String = "LIGHT_TYPE";
}@:enum abstract Enum65(String) from String to String {
	var PARENT : String = "PARENT";
	var CHILD : String = "CHILD";
}@:enum abstract Enum66(String) from String to String {
	var OBDATA : String = "OBDATA";
	var MATERIAL : String = "MATERIAL";
	var DUPGROUP : String = "DUPGROUP";
	var PARTICLE : String = "PARTICLE";
	var LIBRARY : String = "LIBRARY";
	var LIBRARY_OBDATA : String = "LIBRARY_OBDATA";
}@:enum abstract Enum67(String) from String to String {
	var SELECT : String = "SELECT";
	var DESELECT : String = "DESELECT";
}@:enum abstract Enum68(String) from String to String {
	var FX_BLUR : String = "FX_BLUR";
	var FX_COLORIZE : String = "FX_COLORIZE";
	var FX_FLIP : String = "FX_FLIP";
	var FX_GLOW : String = "FX_GLOW";
	var FX_LIGHT : String = "FX_LIGHT";
	var FX_PIXEL : String = "FX_PIXEL";
	var FX_RIM : String = "FX_RIM";
	var FX_SHADOW : String = "FX_SHADOW";
	var FX_SWIRL : String = "FX_SWIRL";
	var FX_WAVE : String = "FX_WAVE";
}@:enum abstract Enum69(String) from String to String {
	var TOP : String = "TOP";
	var UP : String = "UP";
	var DOWN : String = "DOWN";
	var BOTTOM : String = "BOTTOM";
}@:enum abstract Enum70(String) from String to String {
	var OFFSET : String = "OFFSET";
	var RELATIVE_FACE : String = "RELATIVE_FACE";
	var RELATIVE_EDGE : String = "RELATIVE_EDGE";
}@:enum abstract Enum71(String) from String to String {
	var MARK : String = "MARK";
	var CLEAR : String = "CLEAR";
}@:enum abstract Enum72(String) from String to String {
	var CLEAR : String = "CLEAR";
	var CLEAR_KEEP_TRANSFORM : String = "CLEAR_KEEP_TRANSFORM";
}@:enum abstract Enum73(String) from String to String {
	var DAMPTRACK : String = "DAMPTRACK";
	var TRACKTO : String = "TRACKTO";
	var LOCKTRACK : String = "LOCKTRACK";
}@:enum abstract Enum74(String) from String to String {
	var ALL : String = "ALL";
	var LOC : String = "LOC";
	var ROT : String = "ROT";
	var SCALE : String = "SCALE";
}@:enum abstract Enum75(String) from String to String {
	var  : String = "";
}@:enum abstract Enum76(String) from String to String {
	var  : String = "";
}@:enum abstract Enum77(String) from String to String {
	var  : String = "";
}@:enum abstract Enum78(String) from String to String {
	var  : String = "";
}@:enum abstract Enum79(String) from String to String {
	var TOGGLE : String = "TOGGLE";
	var LOCK : String = "LOCK";
	var UNLOCK : String = "UNLOCK";
	var INVERT : String = "INVERT";
}@:enum abstract Enum80(String) from String to String {
	var UP : String = "UP";
	var DOWN : String = "DOWN";
}@:enum abstract Enum81(String) from String to String {
	var  : String = "";
}@:enum abstract Enum82(String) from String to String {
	var  : String = "";
}@:enum abstract Enum83(String) from String to String {
	var  : String = "";
}@:enum abstract Enum84(String) from String to String {
	var  : String = "";
}@:enum abstract Enum85(String) from String to String {
	var NAME : String = "NAME";
	var BONE_HIERARCHY : String = "BONE_HIERARCHY";
}