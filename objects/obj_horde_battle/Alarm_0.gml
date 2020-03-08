obj_game.city_health -= (enemy1.strength * irandom_range(10,15));
if(obj_game.current_severity >= 1)
	alarm[1]=room_speed;
else room_goto(rm_wizard);