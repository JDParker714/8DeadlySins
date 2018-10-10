/// @description Insert description here
// You can write your code in this editor
switch(state) 
{
	case "idle1":
		#region idle1
		sprite_set_state(s_cow_idle1, 1, 0);
		
		#endregion
		break;
	
	case "idle2":
		#region idle2
		sprite_set_state(s_cow_idle2, 1, 0);
		
		#endregion
		break;
		
	case "move":
		#region move
		move_and_collide(-image_xscale*move_speed, 0);
		
		new_anim = irandom(1);
		switch(new_anim) {
			case 0: state = "idle1"; break;
			case 1: state = "idle2"; break;
		}
		
		#endregion
		break;
	
	case "death":
		#region death
		sprite_set_state(s_cow_die, 1, 0);
		
		#endregion
		break;
}