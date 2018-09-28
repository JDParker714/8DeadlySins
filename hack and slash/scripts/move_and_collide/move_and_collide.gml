///@arg xspeed
///@arg yspeed

if not place_meeting(x+argument0,y,obj_wall)
{
	x+=argument0;
}
if not place_meeting(x,y+argument1,obj_wall)
{
	y+=argument1;
}