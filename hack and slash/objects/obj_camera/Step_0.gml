/// @description Insert description here
// You can write your code in this editor

x += random_range(-screenshake,screenshake);
y += random_range(-screenshake,screenshake);

if not instance_exists(obj_skeleton) exit;

var target_x = obj_skeleton.x;
var target_y = obj_skeleton.y;

x = lerp(x,target_x+obj_skeleton.image_xscale*20,0.2);
y = lerp(y,target_y-y_offset,0.3);
camera_set_view_pos(view_camera[0],x-view_width/2,y-view_height/2)