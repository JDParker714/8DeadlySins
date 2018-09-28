/// @description Insert description here
// You can write your code in this editor
hp_x = 8;
hp_y = 8;
hp_width = 200;
hp_height = 12;
outline = 2;
if instance_exists(obj_skeleton)
{
	draw_max_hp = obj_skeleton.max_hp;
	draw_hp = lerp(draw_hp,obj_skeleton.hp,0.15);
	
	percent = (draw_hp)/draw_max_hp;
}
else
{
	draw_hp = lerp(draw_hp,0,0.15);
	percent = (draw_hp)/draw_max_hp;
}
draw_rectangle_color(hp_x-outline,hp_y-outline,hp_x+outline+(hp_width),hp_y+outline+hp_height,c_black,c_black,c_black,c_black,false)
draw_rectangle_color(hp_x,hp_y,hp_x+(hp_width),hp_y+hp_height,c_gray,c_gray,c_gray,c_gray,false)
draw_rectangle_color(hp_x,hp_y,hp_x+(hp_width*percent),hp_y+hp_height,c_white,c_white,c_white,c_white,false)
if not instance_exists(obj_skeleton) exit;
draw_text(230,6, "Kills: " + string(obj_skeleton.kills));

