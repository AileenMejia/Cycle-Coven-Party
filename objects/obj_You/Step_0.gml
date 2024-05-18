/// @description walk
// You can write your code in this editor

key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_jump = keyboard_check_pressed(vk_space);

var move = key_right - key_left;

hsp = move * walksp;

if (place_meeting(x+hsp,y,OWall))
{
	while (!place_meeting(x+sign(hsp),y,OWall))
	{
		x = x + sign(hsp);
	}
	hsp = 0;
}
	
x = x + hsp;

if  (place_meeting(x,y+1,OWall)) && (key_jump)
{
	vsp = -7;
}

if (place_meeting(x,y+vsp,OWall))
{
	while (!place_meeting(x,y+sign(vsp),OWall))
	{
         y= y + sign(vsp);
	}
	vsp = 0;
}
	
y = y + vsp;

//animation


if (!place_meeting(x,y+1,OWall))
{
	sprite_index = spr_You_Jumpup;
	if (sign(vsp) > 0) image_index = 1; else image_index = 2;
	}
else
	image_speed = 1;
	if (hsp == 0)
	{
		sprite_index = spr_You_idle;

	}
	else
	{
	sprite_index = spr_You_walk;
	}

if (hsp != 0) image_xscale = sign(hsp);













