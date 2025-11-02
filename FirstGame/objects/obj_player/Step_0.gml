up_key = keyboard_check(ord("W"));
left_key = keyboard_check(ord("A"));
down_key = keyboard_check(ord("S"));
right_key = keyboard_check(ord("D"));


if place_meeting(x - left_key, y, obj_wall)
{ 
	left_key = 0;
}

if place_meeting(x + right_key, y, obj_wall)
{
	right_key = 0;
}

if place_meeting(x, y - up_key, obj_wall)
{ 
	up_key = 0;
}

if place_meeting(x, y + down_key, obj_wall)
{
	down_key = 0;
}

if up_key 
{
	y -= move_spd;	
}

if down_key
{
	y += move_spd;
}

if left_key
{
	x -= move_spd;
}

if right_key
{
	x += move_spd;
}

show_debug_message("player pos: " + string(x)  + " "  + string(y));