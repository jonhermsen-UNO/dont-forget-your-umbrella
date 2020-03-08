switch(obj_game.current_severity){
	//can only have 2 options. if/else
	case 1:
	if (cursor.target_enemy == 1){
		cursor.x = enemy1.x;
		cursor.y = enemy1.y+120;
	}
	else{
		cursor.x = enemy2.x;
		cursor.y = enemy2.y+120;
	}
	break;
	//Can have 3 options. if/elif/else
	case 2:
	if (cursor.target_enemy == 1){
		cursor.x = enemy1.x;
		cursor.y = enemy1.y+120;
	}
	else if(cursor.target_enemy == 2){
		cursor.x = enemy2.x;
		cursor.y = enemy2.y+120;
	}
	else{
		cursor.x = enemy3.x;
		cursor.y = enemy3.y+120;
	}
	break;
	//Has only one enemy target
	default: 
		cursor.x = enemy1.x;
		cursor.y = enemy1.y+120;
	break;
}

if(keyboard_check_pressed(ord("W"))){
	switch(cursor.target_enemy){
	 case 1:
	 edit_enemy_counter(enemy1, 1);
	 break;
	 case 2:
	 edit_enemy_counter(enemy2, 1);
	 break;
	 case 3:
	 edit_enemy_counter(enemy3, 1);
	 break;
	}
}

if(keyboard_check_pressed(ord("S"))){
	switch(cursor.target_enemy){
	 case 1:
	 edit_enemy_counter(enemy1, -1);
	 break;
	 case 2:
	 edit_enemy_counter(enemy2, -1);
	 break;
	 case 3:
	 edit_enemy_counter(enemy3, -1);
	 break;
	}
}

//Accept amounts
if(keyboard_check_pressed(vk_enter)){
	enemy1.strength -= enemy1.counter_amt;
	if(enemy1.strength == 0){
		edit_enemy_counter(enemy1,-1);
	}
	alarm[0] = room_speed/2;
}