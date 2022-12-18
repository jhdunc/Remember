/// @DnDAction : YoYo Games.Particles.Part_Syst_Create
/// @DnDVersion : 1.1
/// @DnDHash : 70417AD0
/// @DnDArgument : "var" "global.P_system1"
/// @DnDArgument : "layer" ""Particles""
/// @DnDArgument : "persist" "1"
global.P_system1 = part_system_create_layer("Particles", 1);

/// @DnDAction : YoYo Games.Particles.Part_Type_Create
/// @DnDVersion : 1.1
/// @DnDHash : 23248983
/// @DnDArgument : "var" "global.Particle_Fog"
global.Particle_Fog = part_type_create();
// no blending

/// @DnDAction : YoYo Games.Particles.Part_Type_Shape
/// @DnDVersion : 1.1
/// @DnDHash : 687120DC
/// @DnDArgument : "type" "global.Particle_Fog"
/// @DnDArgument : "shape" "pt_shape_smoke"
part_type_shape(global.Particle_Fog, pt_shape_smoke);

/// @DnDAction : YoYo Games.Particles.Part_Type_Size
/// @DnDVersion : 1
/// @DnDHash : 5CB0A8CE
/// @DnDArgument : "type" "global.Particle_Fog"
/// @DnDArgument : "maxsize" "5"
part_type_size(global.Particle_Fog, 0.1, 5, 0, 0);

/// @DnDAction : YoYo Games.Particles.Part_Type_Color
/// @DnDVersion : 1
/// @DnDHash : 752DD45D
/// @DnDArgument : "type" "global.Particle_Fog"
/// @DnDArgument : "startcol" "$FFDDE5D3"
/// @DnDArgument : "midcol" "$FF999999"
/// @DnDArgument : "endcol" "$FF4D4D4D"
part_type_colour3(global.Particle_Fog, $FFDDE5D3 & $FFFFFF, $FF999999 & $FFFFFF, $FF4D4D4D & $FFFFFF);

/// @DnDAction : YoYo Games.Particles.Part_Type_Alpha
/// @DnDVersion : 1
/// @DnDHash : 1CCD3E26
/// @DnDArgument : "type" "global.Particle_Fog"
part_type_alpha3(global.Particle_Fog, 1, 1, 1);

/// @DnDAction : YoYo Games.Particles.Part_Type_Direction
/// @DnDVersion : 1
/// @DnDHash : 7A0A5923
/// @DnDArgument : "type" "global.Particle_Fog"
/// @DnDArgument : "mindir" "160"
/// @DnDArgument : "maxdir" "190"
part_type_direction(global.Particle_Fog, 160, 190, 0, 0);

/// @DnDAction : YoYo Games.Particles.Part_Type_Speed
/// @DnDVersion : 1
/// @DnDHash : 77C77CA9
/// @DnDArgument : "type" "global.Particle_Fog"
part_type_speed(global.Particle_Fog, 1, 2, 0, 0);

/// @DnDAction : YoYo Games.Particles.Part_Type_Life
/// @DnDVersion : 1
/// @DnDHash : 6DBB2F8F
/// @DnDArgument : "typ" "global.Particle_Fog"
/// @DnDArgument : "minlife" "320"
/// @DnDArgument : "maxlife" "980"
part_type_life(global.Particle_Fog, 320, 980);