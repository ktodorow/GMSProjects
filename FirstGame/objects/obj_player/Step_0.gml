up_key = keyboard_check(ord("W"));
left_key = keyboard_check(ord("A"));
down_key = keyboard_check(ord("S"));
right_key = keyboard_check(ord("D")); 
run_key = keyboard_check(vk_shift); 

if run_key {move_spd = 2} else {move_spd = base_move_spd }
xspd = (right_key - left_key) * move_spd;
yspd = (down_key - up_key ) * move_spd;

if yspd == 0
{	
	if face == RIGHT_WALK {face = RIGHT}
	if face == LEFT_WALK {face = LEFT}
	if xspd > 0 { face = RIGHT_WALK}
	if xspd < 0 { face = LEFT_WALK }
}
if xspd > 0 && face = LEFT_WALK {face = RIGHT_WALK}
if xspd < 0 && face = RIGHT_WALK {face = LEFT_WALK}
if xspd == 0
{
	if face == DOWN_WALK  {face = DOWN}
	if face == UP_WALK {face = UP}
	if yspd > 0 { face = DOWN_WALK }
	if yspd < 0 { face = UP_WALK }
}
if yspd > 0 && face = UP_WALK {face = DOWN_WALK}
if yspd < 0 && face = DOWN_WALK {face = UP_WALK}

if place_meeting(x + xspd, y, obj_wall)
{ 
	xspd = 0
}

if place_meeting(x, y + yspd, obj_wall)
{
	yspd= 0;
}

mask_index = sprite[DOWN]
x += xspd;
y += yspd;
sprite_index  = sprite[face];
