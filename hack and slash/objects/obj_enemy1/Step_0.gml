/// @description Insert description here
// You can write your code in this editor
switch(state)
{
	case "chase":
		#region chase
		sprite_set_state(s_knight_walk_strip4,0.2,0)
		if not instance_exists(obj_skeleton) break;
		
		image_xscale = sign(obj_skeleton.x-x);
		if image_xscale = 0
		{
			image_xscale = 1;	
		}
		
		var dist_to_player = point_distance(x,y,obj_skeleton.x,obj_skeleton.y);
		if dist_to_player>attack_range
		{
			move_and_collide(image_xscale*chase_speed,0);	
		} else {
			state = "attack";
		}
		
		#endregion
		break;
	case "attack":
		#region attack
		sprite_set_state(s_knight_attack_strip12,0.6,0)
		
		if animation_hit_frame(4)
		{
			create_hitbox(x,y,self,s_skeleton_attack_one_damage,6,4,5,image_xscale)
		}
		
		#endregion
		break;
	case "knockback":
		#region knockback
		sprite_set_state(s_knight_hitstun,0,0);
		image_xscale = -sign(knockback_speed);
		move_and_collide(knockback_speed,0);
		knockback_speed = approach(knockback_speed,0,0.6)
		if knockback_speed == 0
		{
			state = "chase";
		}
		#endregion
		break;
	case "death":
		#region death
		sprite_set_state(s_knight_die_strip6,1,0);
		#endregion
		break;
	default:
		state = "chase";
		break;
}