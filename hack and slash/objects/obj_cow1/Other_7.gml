/// @description Insert description here
// You can write your code in this editor
event_inherited();

if state != "death" 
{
	new_anim = irandom(2);
	switch(new_anim) {
		case 0: state = "idle1"; break;
		case 1: state = "idle2"; break;
		case 2: state = "move"; break;
	}
}