up_key = keyboard_check(ord("W"));
left_key = keyboard_check(ord("A"));
down_key = keyboard_check(ord("S"));
right_key = keyboard_check(ord("D")); 

xspd = (right_key - left_key) * move_spd;
yspd = (down_key - up_key ) * move_spd;

if place_meeting(x + xspd, y, obj_wall)
{ 
	xspd = 0
}

if place_meeting(x, y + yspd, obj_wall)
{
	yspd= 0;
}

x += xspd;
y += yspd;

show_debug_message("player pos: " + string(x)  + " "  + string(y));