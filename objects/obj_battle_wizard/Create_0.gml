wizard_sprite = instance_create_layer(room_width / 2, room_height / 2, "Instances", obj_wiz);
// the wizard always goes first
wizard_is_player = true;
// the wizard is given additional cards each day
wizard_draw_count = 2 + (obj_game.DAY * 2);
wizard_hand = ds_list_create();
wizard_apply_pool = ds_list_create();

// populate cards into the wizard hand
for (var i = 0; i < wizard_draw_count; i += 1) {
	var card = choose(
		element.fire,
		element.ice,
		element.earth,
		element.water
	);
	
	ds_list_add(wizard_hand, card);
}
