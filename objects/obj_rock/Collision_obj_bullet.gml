audio_play_sound(snd_rock_destroy, 0, false, 1, 0, random_range(0.8, 1.2)) ;

if obj_game.powerup_time < 0 {
	// if more than 1 powerup, var powerup = choose(obj_powerup_spread);
	var powerup = obj_powerup_spread;
	
	instance_create_layer(x, y, "Instances", powerup);
	obj_game.powerup_time = 20;
}

instance_destroy(other);
effect_create_above(ef_explosion, x, y, 1, c_white);

direction = random(360);

if sprite_index == spr_rock_big
{
        sprite_index = spr_rock_small;
        instance_copy(true);
		instance_copy(true);
}
else if instance_number(obj_rock) < 12
{
        sprite_index = spr_rock_big;
        x = -100;
}
else
{
        instance_destroy();
}

obj_game.points += 50;
