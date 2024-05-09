/// @description Insert description here
// You can write your code in this editor
var xDirection = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var jump = keyboard_check_pressed(vk_space);


if (xDirection != 0) image_xscale = xDirection;

xSpeed = xDirection * spd;
ySpeed++;

if (onTheGround) 
{
	if (xDirection != 0) 
	{ 
		sprite_index = spr_You_WALK;
		}
	else 
	{ 
		sprite_index = spr_You_IDLE;
		}

	if (jump) 
	{
		ySpeed = -12;
	}
} 
else 
{
	sprite_index = spr_You_JUMP;
}

{
	xSpeed = 0;
}

x += xSpeed;

{
	ySpeed = 0;
}

y += ySpeed;