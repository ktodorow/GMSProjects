up_key = keyboard_check(ord("W"));
left_key = keyboard_check(ord("A"));
down_key = keyboard_check(ord("S"));
right_key = keyboard_check(ord("D"));

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