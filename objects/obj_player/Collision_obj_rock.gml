/// @collision with rock

effect_create_above(ef_firework, x, y, 1, c_white); //effect at x,y above objects, white
instance_destroy(); //destroy instance - player
obj_game.alarm[0] = 120; //run alarm after two seconds - 120 frames



