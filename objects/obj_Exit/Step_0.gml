/// @description End Game

if position_meeting(mouse_x, mouse_y, id)
{
	image_index = 1;
}
else
{
	image_index = 0;
}

if position_meeting(mouse_x, mouse_y, id) && mouse_check_button(mb_left)
{
	image_index = 2;
}

if position_meeting(mouse_x, mouse_y, id) && mouse_check_button_released(mb_left)
{
	game_end();
}