/// @description Insert description here
// You can write your code in this editor
var xDirection = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var jump = keyboard_check(ord("W"));
var onTheGround = place_meeting(x, y + 1, OWall);

if (xDirection != 0) image_xscale = xDirection;
xSpeed = xDirection * spd;
ySpeed++;

if (onTheGround) 
{
	if (xDirection != 0) 
	{ 
		sprite_index = spr_You_walk;
	}
	else 
	{ 
		sprite_index = spr_You_idle; 
	}

	if (jump) 
	{
		ySpeed = -12
	}
} 
else 
{
	sprite_index = spr_You_Jump;
}

if (place_meeting(x + xSpeed, y, OWall))
{
	xSpeed = 0;
}

x += xSpeed;

if (place_meeting(x, y + ySpeed, OWall))
{
	ySpeed = 0;
}

y += ySpeed;
