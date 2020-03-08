if(keyboard_check_pressed(vk_left)){
	switch (obj_game.current_severity){
	//Screen has 2 monsters
	case 1:
		target_enemy = target_enemy == 1 ? 2 : 1;
	break;
	//Screen has 3 monsters
	case 2:
		target_enemy = target_enemy == 1 ? 3 : --target_enemy;
	break;
	//Screen has 1 monster, do nothing on key presses.
	default: break;
	}
}
if(keyboard_check_pressed(vk_right)){
	switch (obj_game.current_severity){
	//Screen has 2 monsters
	case 1:
		target_enemy = target_enemy == 2 ? 1 : 2;
	break;
	//Screen has 3 monsters
	case 2:
		target_enemy = target_enemy == 3 ? 1 : ++target_enemy;
	break;
	//Screen has 1 monster, do nothing on key presses.
	default: break;
	}
}
