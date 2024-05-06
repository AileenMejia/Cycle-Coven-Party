// @description Control Sprite && Detect Click

if position_meeting (mouse_x, mouse_y, id)
{
	image_index = 1;
}

else
{
	image_index = 0;
}

//change image if left button pushed on it:
if position_meeting(mouse_x, mouse_y, id) && mouse_check_button(mb_left)
{
	image_index = 2;
}

if position_meeting(mouse_x, mouse_y, id) && mouse_check_button_released(mb_left)
{
	room_goto(rm_Tutorial);
}