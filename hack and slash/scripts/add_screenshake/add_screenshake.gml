///@arg intensity
///@arg duration

var intensity = argument0;
var duration = argument1;

if not instance_exists(obj_camera) exit;

with(obj_camera)
{
	screenshake = intensity;
	alarm[0] = duration;
}