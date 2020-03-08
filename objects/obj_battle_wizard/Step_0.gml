if (wizard_is_player) {
	// show_debug_message("Wizard turn");

	if (ds_list_size(wizard_hand) == 0) {
		// all cars have been played, so calculate the weather and move rooms
		set_weather_type();
		//deal damage to city based on severity
		obj_game.city_health -= obj_game.current_severity * irandom_range(7,12);
		repeat(obj_game.current_severity + 1){
			switch(choose(1,2,3,4)){
				case 1: global.CARD_FIRE++;
				break;
				case 2: global.CARD_WATER++;
				break;
				case 3: global.CARD_ICE++;
				break;
				case 4: global.CARD_EARTH++;
				break;
				default:
			}
		}
		room_goto(rm_summary);
		return;
	}
	
	// the wizard always plays the next card in his hand
	wizard_card = ds_list_find_value(wizard_hand, 0);
	ds_list_delete(wizard_hand, 0);
	
	if (wizard_card == element.fire) wizard_sprite.sprite_index = spr_wizard_fire;
	else if (wizard_card == element.ice) wizard_sprite.sprite_index = spr_wizard_ice;
	else if (wizard_card == element.earth) wizard_sprite.sprite_index = spr_wizard_earth;
	else if (wizard_card == element.water) wizard_sprite.sprite_index = spr_wizard_water;
	
	// change to player turn
	wizard_is_player = !wizard_is_player;
	// show_debug_message("Player turn");
} else {
	var must_stand = false;
	// the player must stand if they have no cards to counter
	if (wizard_card == element.fire) must_stand = (global.CARD_ICE == 0);
	else if (wizard_card == element.ice) must_stand = (global.CARD_FIRE == 0);
	else if (wizard_card == element.earth) must_stand = (global.CARD_WATER == 0);
	else if (wizard_card == element.water) must_stand = (global.CARD_EARTH == 0);
	
	if (must_stand || keyboard_check_pressed(ord("S"))) { // stand
		var counter_card = -1;
		
		// the wizard may have played a card which counters one in the pool,
		// so check to see if any card in the pool can be countered
		if (wizard_card == element.fire) {
			counter_card = (ds_list_find_index(wizard_apply_pool, element.ice));
		} else if (wizard_card == element.ice) {
			counter_card = (ds_list_find_index(wizard_apply_pool, element.fire));
		} else if (wizard_card == element.earth) {
			counter_card = (ds_list_find_index(wizard_apply_pool, element.water));
		} else if (wizard_card == element.water) {
			counter_card = (ds_list_find_index(wizard_apply_pool, element.earth));
		}
		
		if (counter_card != -1) {
			// counter a card from the pool
			ds_list_delete(wizard_apply_pool, counter_card);	
		} else {
			// add the card to the pool
			ds_list_add(wizard_apply_pool, wizard_card);
		}
	
		// return control to the player
		wizard_is_player = !wizard_is_player;
	} else if (keyboard_check_pressed(ord("C"))) { // counter
		// spend an element to counter the wizard's card
		if (wizard_card == element.fire) global.CARD_ICE -= 1;
		else if (wizard_card == element.ice) global.CARD_FIRE -= 1;
		else if (wizard_card == element.earth) global.CARD_WATER -= 1;
		else if (wizard_card == element.water) global.CARD_EARTH -= 1;
		
		// return control to the player
		wizard_is_player = !wizard_is_player;
	}

}
