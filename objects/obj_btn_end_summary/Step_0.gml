if(keyboard_check_pressed(vk_enter)) {
	var isLose = obj_game.city_health <= 0;
	var isWin = !isLose && obj_game.DAY == 7;
	
	if (isLose || isWin) {
		// reset the game
		obj_game.DAY = 1;
		global.CARD_EARTH = 2;
		global.CARD_WATER = 2;
		global.CARD_ICE = 2;
		global.CARD_FIRE = 2;
		obj_game.current_weather = -1;
		obj_game.current_severity = 0;
		obj_game.city_health = 100;
	}
	room_goto(rm_horde);	
}
