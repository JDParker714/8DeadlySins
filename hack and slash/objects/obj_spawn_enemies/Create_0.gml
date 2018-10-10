/// @description Insert description here
// You can write your code in this editor
alarm[0]=random_range(1,4)*room_speed;
alarm[1]=random_range(3,5)*room_speed;
alarm[2]=random_range(1,8)*room_speed;
instance_create_layer(choose(320,1136),286,"Instances",obj_enemy1);
