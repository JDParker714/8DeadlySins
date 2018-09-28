/// @description Insert description here
// You can write your code in this editor
right = keyboard_check(vk_right);
left = keyboard_check(vk_left);
roll = keyboard_check(vk_space);
attack = keyboard_check(vk_lcontrol);


keyboard_set_map(ord("A"),vk_left);
keyboard_set_map(ord("D"),vk_right);
keyboard_set_map(ord("J"),vk_lcontrol);
keyboard_set_map(ord("K"),vk_space);