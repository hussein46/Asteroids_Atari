/// @Moves obj_player up when up arrow is pressed

//up
if keyboard_check(ord("W"))
{
        motion_add(image_angle, 0.1);
}

if keyboard_check(ord("S"))
{
        motion_add(image_angle, -0.1);
}

//left
if keyboard_check(ord("A"))
{
        image_angle += 4;
}

//right
if keyboard_check(ord("D"))
{
        image_angle -= 4;
}

//for wrapping
move_wrap(true, true, 0)

//for shooting bullets
if mouse_check_button_pressed(mb_left) || keyboard_check(vk_space)
{
        instance_create_layer(x, y, "Instances", obj_bullet)
}
