var isLose = obj_game.city_health <= 0;
var isWin = !isLose && obj_game.DAY == 7;
var command = (isWin || isLose) ? "Restart [Enter]" : "Continue [Enter]";

draw_set_halign(fa_center);
if (isWin) {
	var c = c_lime;
	draw_text_transformed_color(
		room_width / 2, room_height / 2, "YOUR TOWN IS SAVED!",
		3, 3, 0, c, c, c, c, 1);
} else if (isLose) {
	var c = c_red;
	draw_text_transformed_color(
		room_width / 2, room_height / 2, "YOUR TOWN IS LOST!",
		3, 3, 0, c, c, c, c, 1);
} else {
	var c = c_gray;
	draw_text_transformed_color(
		room_width / 2, room_height / 2, "PREPARE FOR BATTLE!",
		3, 3, 0, c, c, c, c, 1);
}

draw_set_halign(fa_right);
draw_text(room_width - 20, room_height - 40, command);
