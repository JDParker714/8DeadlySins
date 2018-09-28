/// @description Insert description here
// You can write your code in this editor
if vspeed>2
{
	vspeed*=-0.4;	
	hspeed/=2;
}
else
{
	vspeed = 0;
	while not place_meeting(x,y,obj_wall)
	{
		y++;	
	}
	gravity = 0;
	friction = 1;
}