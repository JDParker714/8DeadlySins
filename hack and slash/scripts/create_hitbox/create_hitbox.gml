///@arg x
///@arg y
///@arg creator
///@arg sprite
///@arg knockback
///@arg lifespan
///@arg damage
///@arg xscale

var hitbox = instance_create_layer(argument0,argument1,"Instances",obj_hitbox);
hitbox.sprite_index = argument3;
hitbox.creator = argument2;
hitbox.knockback = argument4;
hitbox.alarm[0] = argument5;
hitbox.damage = argument6;
hitbox.image_xscale = argument7;