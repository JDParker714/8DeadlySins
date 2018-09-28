event_inherited();

image_speed = 0.5;
state = "move";
run_speed = 4;
roll_speed = 5;

input =  instance_create_layer(0,0,"Instances",obj_input);
kills = 0;

max_hp = 40;
hp = max_hp;