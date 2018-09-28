/// @description Insert description here
// You can write your code in this editor
event_inherited();
state = "chase";
hp = 1;
max_hp = 1;
image_speed = 0.6;
hspeed = random_range(4,5);
if instance_exists(obj_skeleton)
{
	hspeed *= sign(obj_skeleton.x-x);	
}
image_xscale = sign(hspeed);
damage = 5;
attacked = false;