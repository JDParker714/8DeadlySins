/// @description Insert description here
// You can write your code in this editor
alarm[0]=random_range(3,6)*room_speed;
if instance_number(obj_enemy1)<7
{
	instance_create_layer(choose(320,1136),286,"Instances",obj_enemy1);
}