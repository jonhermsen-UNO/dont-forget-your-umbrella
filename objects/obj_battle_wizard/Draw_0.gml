/// @description Insert description here
// You can write your code in this editor

draw_set_halign(fa_right);
// statistics
draw_text(room_width - 20, 60, "Rounds: " + string(ds_list_size(wizard_hand)));
// player actions
draw_text(room_width - 20, room_height - 60, "Counter [C]");
draw_text(room_width - 20, room_height - 40, "Stand [S]");
// wizard actions
draw_set_halign(fa_center);
draw_text(room_width / 2, room_height - 40, "Wizard casts: " + get_element_string(wizard_card));
draw_set_halign(fa_right);
draw_text(room_width - 20, room_height * 0.25 - 20, "Wizard pool");

for (var i = 0; i < ds_list_size(wizard_apply_pool); i += 1) {
	var element = ds_list_find_value(wizard_apply_pool, i);
	var offset = 20 * (i + 1);
	
	draw_text(room_width - 20, room_height * 0.25 + offset, get_element_string(element));
}
