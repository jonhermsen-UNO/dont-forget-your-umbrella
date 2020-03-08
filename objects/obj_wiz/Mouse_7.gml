obj_game.current_weather = floor(random_range(-1, 3 + 1));
obj_game.current_severity = floor(random_range(0, 2 + 1));
script_execute(get_weather_string, obj_game.current_weather, obj_game.current_severity);