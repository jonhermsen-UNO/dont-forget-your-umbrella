//Draw things
if(room != rm_menu){
	draw_set_halign(fa_left);
	draw_text(room_width*.2, room_height * 0.9, string("Fire: ") + string(global.CARD_FIRE));
	draw_text(room_width*.6, room_height * 0.9, string("Water: ") + string(global.CARD_WATER));
	draw_text(room_width*.4, room_height * 0.9, string("Earth: ") + string(global.CARD_EARTH));
	draw_text(room_width*.8, room_height * 0.9, string("Ice: ") + string(global.CARD_ICE));
	draw_set_halign(fa_right);
	draw_text(room_width - 20, 20, "Day: " + string(obj_game.DAY));
	draw_text(room_width - 20, 40, "City: " + string(obj_game.city_health));
	draw_set_halign(fa_left);
	//draw_text(0, 0 , string("Weather = ") + string(obj_game.current_weather) + string("  Severity = ") + string(obj_game.current_severity));
	draw_text(10, 20, string("Weather: ") + 
	script_execute(get_weather_string, obj_game.current_weather, obj_game.current_severity));
}