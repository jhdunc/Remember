/// @DnDAction : YoYo Games.Particles.Part_Emit_Create
/// @DnDVersion : 1
/// @DnDHash : 535FBEAE
/// @DnDArgument : "system" "global.P_system1"
emitter = part_emitter_create(global.P_system1);

/// @DnDAction : YoYo Games.Particles.Part_Emit_Region
/// @DnDVersion : 1
/// @DnDHash : 69E4BFAE
/// @DnDArgument : "system" "global.P_system1"
/// @DnDArgument : "distribution" "1"
part_emitter_region(global.P_system1, emitter, 0, 64, 0, 64, ps_shape_rectangle, ps_distr_gaussian);

/// @DnDAction : YoYo Games.Particles.Part_Emit_Emit
/// @DnDVersion : 1
/// @DnDHash : 58901329
/// @DnDArgument : "system" "global.P_system1"
/// @DnDArgument : "type" "global.Particle_Fog"
/// @DnDArgument : "event" "1"
part_emitter_stream(global.P_system1, emitter, global.Particle_Fog, 10);