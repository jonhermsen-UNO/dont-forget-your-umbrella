/// set_weather_type()


var wizard_apply_pool_size = ds_list_size(wizard_apply_pool);

if (wizard_apply_pool_size == 0) {
	current_weather = -1; // calm
	current_severity = 0;
} else {
	// apply the weather based on the first card in the pool
	current_weather = ds_list_find_value(wizard_apply_pool, 0);
	// apply the severity based on the card count
	if (wizard_apply_pool_size <= 2) current_severity = 0;
	else if (wizard_apply_pool_size <= 5) current_severity = 1;
	else current_severity = 2;
}

show_debug_message(current_weather);
show_debug_message(current_severity);
show_debug_message(get_weather_string(current_weather, current_severity));
