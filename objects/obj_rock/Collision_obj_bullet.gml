/// @destroy rocks logic

instance_destroy(other); //destroys other instance
effect_create_above(ef_explosion, x, y, 1, c_white); //creates explosion at x,y with size 1 using animaion c_white

direction = random(360); //random direction for rock when respawning 

//for rock logic
if sprite_index == spr_rock_big
{
        sprite_index = spr_rock_small;
        instance_copy(true); //copy instance to make two small rocks
}

else if instance_number(obj_rock) < 12
{
        sprite_index = spr_rock_big;
        x = -100;
}

else
{
        instance_destroy(); //will destroy if block is small and there are more than 12 rocks
}

obj_game.points += 50;//increase points by 50
