/// @description Insert description here
// You can write your code in this editor
rain = part_system_create();
part_system_depth(rain,0);
RainParticle = part_type_create();
part_type_shape(RainParticle,pt_shape_line);
part_type_scale(RainParticle,1,1);
part_type_size(RainParticle,0.10,0.15,0,0);
part_type_color2(RainParticle,c_blue,c_blue);
part_type_alpha2(RainParticle,1,0.75);
part_type_speed(RainParticle,4,4.5,0,0);
part_type_direction(RainParticle,300,300,0,0);
part_type_gravity(RainParticle,0,270);
part_type_orientation(RainParticle,300,300,0,0,false);
part_type_life(RainParticle,75,75);
part_type_blend(RainParticle,true);

rain_emitter = part_emitter_create(rain);
part_emitter_region(RainParticle, rain_emitter, -100, room_width, 0, 0, ps_shape_line, ps_distr_linear);
part_emitter_stream(rain,rain_emitter,RainParticle,3);