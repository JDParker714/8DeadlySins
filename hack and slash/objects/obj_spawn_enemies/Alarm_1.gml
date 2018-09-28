/// @description Insert description here
// You can write your code in this editor
alarm[1]=random_range(4,8)*room_speed;
if instance_number(obj_enemy2)<4
{
	instance_create_layer(choose(320,1136),286,"Instances",obj_enemy2);
}