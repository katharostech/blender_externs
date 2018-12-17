package bpy.context;
/**
	Context Access (bpy.context)
	
	The context members available depend on the area of Blender which is currently being accessed.
	
	Note that all context values are readonly,
	            but may be modified through the data api or by running operators
**/
@:pythonImport("bpy.context") extern class Module {
	/**
		
		
		Type: bpy.types.Area, (readonly)
	**/
	var area(default, never) : bpy.types.area.Area;
	/**
		
		
		Type: bpy.types.BlendData, (readonly)
	**/
	var blend_data(default, never) : bpy.types.blenddata.BlendData;
	/**
		
		
		Type: bpy.types.Collection, (readonly)
	**/
	var collection(default, never) : bpy.types.collection.Collection;
	/**
		
		
		Type: bpy.types.Depsgraph, (readonly)
	**/
	var depsgraph(default, never) : bpy.types.depsgraph.Depsgraph;
	/**
		
		
		Type: string, default “”, (readonly, never None)
	**/
	var engine(default, never) : String;
	/**
		
		
		Type: bpy.types.GizmoGroup, (readonly)
	**/
	var gizmo_group(default, never) : bpy.types.gizmogroup.GizmoGroup;
	/**
		
		
		Type: bpy.types.LayerCollection, (readonly)
	**/
	var layer_collection(default, never) : bpy.types.layercollection.LayerCollection;
	/**
		
		
		Type: enum in [‘EDIT_MESH’, ‘EDIT_CURVE’, ‘EDIT_SURFACE’, ‘EDIT_TEXT’, ‘EDIT_ARMATURE’, ‘EDIT_METABALL’, ‘EDIT_LATTICE’, ‘POSE’, ‘SCULPT’, ‘PAINT_WEIGHT’, ‘PAINT_VERTEX’, ‘PAINT_TEXTURE’, ‘PARTICLE’, ‘OBJECT’, ‘GPENCIL_PAINT’, ‘GPENCIL_EDIT’, ‘GPENCIL_SCULPT’, ‘GPENCIL_WEIGHT’], default ‘EDIT_MESH’, (readonly)
	**/
	var mode(default, never) : bpy.context.Context.Enum1;
	/**
		
		
		Type: bpy.types.Region, (readonly)
	**/
	var region(default, never) : bpy.types.region.Region;
	/**
		
		
		Type: bpy.types.RegionView3D, (readonly)
	**/
	var region_data(default, never) : bpy.types.regionview3d.RegionView3D;
	/**
		
		
		Type: bpy.types.Scene, (readonly)
	**/
	var scene(default, never) : bpy.types.scene.Scene;
	/**
		
		
		Type: bpy.types.Screen, (readonly)
	**/
	var screen(default, never) : bpy.types.screen.Screen;
	/**
		
		
		Type: bpy.types.Space, (readonly)
	**/
	var space_data(default, never) : bpy.types.space.Space;
	/**
		
		
		Type: bpy.types.ToolSettings, (readonly)
	**/
	var tool_settings(default, never) : bpy.types.toolsettings.ToolSettings;
	/**
		
		
		Type: bpy.types.UserPreferences, (readonly)
	**/
	var user_preferences(default, never) : bpy.types.userpreferences.UserPreferences;
	/**
		
		
		Type: bpy.types.ViewLayer, (readonly)
	**/
	var view_layer(default, never) : bpy.types.viewlayer.ViewLayer;
	/**
		
		
		Type: bpy.types.Window, (readonly)
	**/
	var window(default, never) : bpy.types.window.Window;
	/**
		
		
		Type: bpy.types.WindowManager, (readonly)
	**/
	var window_manager(default, never) : bpy.types.windowmanager.WindowManager;
	/**
		
		
		Type: bpy.types.WorkSpace, (readonly)
	**/
	var workspace(default, never) : bpy.types.workspace.WorkSpace;
	/**
		
		
		Type: bpy.types.Scene
	**/
	var scene(default, never) : bpy.types.scene.Scene;
	/**
		
		
		Type: bpy.types.ViewLayer
	**/
	var view_layer(default, never) : bpy.types.viewlayer.ViewLayer;
	/**
		
		
		Type: sequence of  bpy.types.Object
	**/
	var visible_objects(default, never) : bpy.types.object.Object;
	/**
		
		
		Type: sequence of  bpy.types.ObjectBase
	**/
	var visible_bases(default, never) : bpy.types.objectbase.ObjectBase;
	/**
		
		
		Type: sequence of  bpy.types.Object
	**/
	var selectable_objects(default, never) : bpy.types.object.Object;
	/**
		
		
		Type: sequence of  bpy.types.ObjectBase
	**/
	var selectable_bases(default, never) : bpy.types.objectbase.ObjectBase;
	/**
		
		
		Type: sequence of  bpy.types.Object
	**/
	var selected_objects(default, never) : bpy.types.object.Object;
	/**
		
		
		Type: sequence of  bpy.types.ObjectBase
	**/
	var selected_bases(default, never) : bpy.types.objectbase.ObjectBase;
	/**
		
		
		Type: sequence of  bpy.types.Object
	**/
	var editable_objects(default, never) : bpy.types.object.Object;
	/**
		
		
		Type: sequence of  bpy.types.ObjectBase
	**/
	var editable_bases(default, never) : bpy.types.objectbase.ObjectBase;
	/**
		
		
		Type: sequence of  bpy.types.Object
	**/
	var selected_editable_objects(default, never) : bpy.types.object.Object;
	/**
		
		
		Type: sequence of  bpy.types.ObjectBase
	**/
	var selected_editable_bases(default, never) : bpy.types.objectbase.ObjectBase;
	/**
		
		
		Type: sequence of  bpy.types.EditBone
	**/
	var visible_bones(default, never) : bpy.types.editbone.EditBone;
	/**
		
		
		Type: sequence of  bpy.types.EditBone
	**/
	var editable_bones(default, never) : bpy.types.editbone.EditBone;
	/**
		
		
		Type: sequence of  bpy.types.EditBone
	**/
	var selected_bones(default, never) : bpy.types.editbone.EditBone;
	/**
		
		
		Type: sequence of  bpy.types.EditBone
	**/
	var selected_editable_bones(default, never) : bpy.types.editbone.EditBone;
	/**
		
		
		Type: sequence of  bpy.types.PoseBone
	**/
	var visible_pose_bones(default, never) : bpy.types.posebone.PoseBone;
	/**
		
		
		Type: sequence of  bpy.types.PoseBone
	**/
	var selected_pose_bones(default, never) : bpy.types.posebone.PoseBone;
	/**
		
		
		Type: sequence of  bpy.types.PoseBone
	**/
	var selected_pose_bones_from_active_object(default, never) : bpy.types.posebone.PoseBone;
	/**
		
		
		Type: bpy.types.EditBone
	**/
	var active_bone(default, never) : bpy.types.editbone.EditBone;
	/**
		
		
		Type: bpy.types.PoseBone
	**/
	var active_pose_bone(default, never) : bpy.types.posebone.PoseBone;
	/**
		
		
		Type: bpy.types.ObjectBase
	**/
	var active_base(default, never) : bpy.types.objectbase.ObjectBase;
	/**
		
		
		Type: bpy.types.Object
	**/
	var active_object(default, never) : bpy.types.object.Object;
	/**
		
		
		Type: bpy.types.Object
	**/
	var object(default, never) : bpy.types.object.Object;
	/**
		
		
		Type: bpy.types.Object
	**/
	var edit_object(default, never) : bpy.types.object.Object;
	/**
		
		
		Type: bpy.types.Object
	**/
	var sculpt_object(default, never) : bpy.types.object.Object;
	/**
		
		
		Type: bpy.types.Object
	**/
	var vertex_paint_object(default, never) : bpy.types.object.Object;
	/**
		
		
		Type: bpy.types.Object
	**/
	var weight_paint_object(default, never) : bpy.types.object.Object;
	/**
		
		
		Type: bpy.types.Object
	**/
	var image_paint_object(default, never) : bpy.types.object.Object;
	/**
		
		
		Type: bpy.types.Object
	**/
	var particle_edit_object(default, never) : bpy.types.object.Object;
	/**
		
		
		Type: bpy.types.Object
	**/
	var uv_sculpt_object(default, never) : bpy.types.object.Object;
	/**
		
		
		Type: sequence of  bpy.types.Sequence
	**/
	var sequences(default, never) : bpy.types.sequence.Sequence;
	/**
		
		
		Type: sequence of  bpy.types.Sequence
	**/
	var selected_sequences(default, never) : bpy.types.sequence.Sequence;
	/**
		
		
		Type: sequence of  bpy.types.Sequence
	**/
	var selected_editable_sequences(default, never) : bpy.types.sequence.Sequence;
	/**
		
		
		Type: bpy.types.GreasePencel
	**/
	var gpencil_data(default, never) : Dynamic;
	/**
		
		
		Type: bpy.types.ID
	**/
	var gpencil_data_owner(default, never) : bpy.types.id.ID;
	/**
		
		
		Type: sequence of  bpy.types.GPencilLayer
	**/
	var visible_gpencil_layers(default, never) : bpy.types.gpencillayer.GPencilLayer;
	/**
		
		
		Type: sequence of  bpy.types.GPencilLayer
	**/
	var editable_gpencil_layers(default, never) : bpy.types.gpencillayer.GPencilLayer;
	/**
		
		
		Type: sequence of  bpy.types.GPencilStroke
	**/
	var editable_gpencil_strokes(default, never) : bpy.types.gpencilstroke.GPencilStroke;
	/**
		
		
		Type: sequence of  bpy.types.GPencilLayer
	**/
	var active_gpencil_layer(default, never) : bpy.types.gpencillayer.GPencilLayer;
	/**
		
		
		Type: sequence of  bpy.types.GreasePencilLayer
	**/
	var active_gpencil_frame(default, never) : Dynamic;
	/**
		
		
		Type: bpy.types.GPencilSculptBrush
	**/
	var active_gpencil_brush(default, never) : bpy.types.gpencilsculptbrush.GPencilSculptBrush;
	/**
		
		
		Type: bpy.types.Operator
	**/
	var active_operator(default, never) : bpy.types.operator.Operator;
	/**
		
		
		Type: sequence of  bpy.types.FCurce
	**/
	var selected_editable_fcurves(default, never) : Dynamic;
	/**
		
		
		Type: bpy.types.ObjectBase
	**/
	var active_base(default, never) : bpy.types.objectbase.ObjectBase;
	/**
		
		
		Type: bpy.types.Object
	**/
	var active_object(default, never) : bpy.types.object.Object;
	/**
		
		
		Type: bpy.types.MaterialTextureSlot
	**/
	var texture_slot(default, never) : Dynamic;
	/**
		
		
		Type: bpy.types.Scene
	**/
	var scene(default, never) : bpy.types.scene.Scene;
	/**
		
		
		Type: bpy.types.World
	**/
	var world(default, never) : bpy.types.world.World;
	/**
		
		
		Type: bpy.types.Object
	**/
	var object(default, never) : bpy.types.object.Object;
	/**
		
		
		Type: bpy.types.Mesh
	**/
	var mesh(default, never) : bpy.types.mesh.Mesh;
	/**
		
		
		Type: bpy.types.Armature
	**/
	var armature(default, never) : bpy.types.armature.Armature;
	/**
		
		
		Type: bpy.types.Lattice
	**/
	var lattice(default, never) : bpy.types.lattice.Lattice;
	/**
		
		
		Type: bpy.types.Curve
	**/
	var curve(default, never) : bpy.types.curve.Curve;
	/**
		
		
		Type: bpy.types.MetaBall
	**/
	var meta_ball(default, never) : bpy.types.metaball.MetaBall;
	/**
		
		
		Type: bpy.types.Light
	**/
	var light(default, never) : bpy.types.light.Light;
	/**
		
		
		Type: bpy.types.Speaker
	**/
	var speaker(default, never) : bpy.types.speaker.Speaker;
	/**
		
		
		Type: bpy.types.LightProbe
	**/
	var lightprobe(default, never) : bpy.types.lightprobe.LightProbe;
	/**
		
		
		Type: bpy.types.Camera
	**/
	var camera(default, never) : bpy.types.camera.Camera;
	/**
		
		
		Type: bpy.types.Material
	**/
	var material(default, never) : bpy.types.material.Material;
	/**
		
		
		Type: bpy.types.MaterialSlot
	**/
	var material_slot(default, never) : bpy.types.materialslot.MaterialSlot;
	/**
		
		
		Type: bpy.types.Texture
	**/
	var texture(default, never) : bpy.types.texture.Texture;
	/**
		
		
		Type: bpy.types.ID
	**/
	var texture_user(default, never) : bpy.types.id.ID;
	/**
		
		
		Type: bpy.types.Property
	**/
	var texture_user_property(default, never) : bpy.types.property.Property;
	/**
		
		
		Type: bpy.types.Bone
	**/
	var bone(default, never) : bpy.types.bone.Bone;
	/**
		
		
		Type: bpy.types.EditBone
	**/
	var edit_bone(default, never) : bpy.types.editbone.EditBone;
	/**
		
		
		Type: bpy.types.PoseBone
	**/
	var pose_bone(default, never) : bpy.types.posebone.PoseBone;
	/**
		
		
		Type: bpy.types.ParticleSystem
	**/
	var particle_system(default, never) : bpy.types.particlesystem.ParticleSystem;
	/**
		
		
		Type: bpy.types.ParticleSystem
	**/
	var particle_system_editable(default, never) : bpy.types.particlesystem.ParticleSystem;
	/**
		
		
		Type: bpy.types.ParticleSettings
	**/
	var particle_settings(default, never) : bpy.types.particlesettings.ParticleSettings;
	/**
		
		
		Type: bpy.types.ClothModifier
	**/
	var cloth(default, never) : bpy.types.clothmodifier.ClothModifier;
	/**
		
		
		Type: bpy.types.SoftBodyModifier
	**/
	var soft_body(default, never) : bpy.types.softbodymodifier.SoftBodyModifier;
	/**
		
		
		Type: bpy.types.FluidSimulationModifier
	**/
	var fluid(default, never) : bpy.types.fluidsimulationmodifier.FluidSimulationModifier;
	/**
		
		
		Type: bpy.types.SmokeModifier
	**/
	var smoke(default, never) : bpy.types.smokemodifier.SmokeModifier;
	/**
		
		
		Type: bpy.types.CollisionModifier
	**/
	var collision(default, never) : bpy.types.collisionmodifier.CollisionModifier;
	/**
		
		
		Type: bpy.types.Brush
	**/
	var brush(default, never) : bpy.types.brush.Brush;
	/**
		
		
		Type: bpy.types.DynamicPaintModifier
	**/
	var dynamic_paint(default, never) : bpy.types.dynamicpaintmodifier.DynamicPaintModifier;
	/**
		
		
		Type: bpy.types.FreestyleLineStyle
	**/
	var line_style(default, never) : bpy.types.freestylelinestyle.FreestyleLineStyle;
	/**
		
		
		Type: bpy.types.LayerCollection
	**/
	var collection(default, never) : bpy.types.layercollection.LayerCollection;
	/**
		
		
		Type: bpy.types.Image
	**/
	var edit_image(default, never) : bpy.types.image.Image;
	/**
		
		
		Type: bpy.types.Mask
	**/
	var edit_mask(default, never) : bpy.types.mask.Mask;
	/**
		
		
		Type: sequence of  bpy.types.Node
	**/
	var selected_nodes(default, never) : bpy.types.node.Node;
	/**
		
		
		Type: bpy.types.Node
	**/
	var active_node(default, never) : bpy.types.node.Node;
	/**
		
		
		Type: bpy.types.Text
	**/
	var edit_text(default, never) : bpy.types.text.Text;
	/**
		
		
		Type: bpy.types.MovieClip
	**/
	var edit_movieclip(default, never) : bpy.types.movieclip.MovieClip;
	/**
		
		
		Type: bpy.types.Mask
	**/
	var edit_mask(default, never) : bpy.types.mask.Mask;
	/**
		
		
		Type: bpy.types.Mask
	**/
	var edit_mask(default, never) : bpy.types.mask.Mask;
}