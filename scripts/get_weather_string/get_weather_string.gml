/// get_weather_string(type, severity)
var type = argument0;
var severity = argument1;

if(type == -1) return "Calm";

weather_type[element.fire, 0] = "Sunny";
weather_type[element.fire, 1] = "Heat Wave";
weather_type[element.fire, 2] = "Drought";
weather_type[element.water, 0] = "Rainstorm";
weather_type[element.water, 1] = "Thunderstorm";
weather_type[element.water, 2] = "Superstorm";
weather_type[element.earth, 0] = "Chill";
weather_type[element.earth, 1] = "Cold Spell";
weather_type[element.earth, 2] = "Tundra";
weather_type[element.ice, 0] = "Hail";
weather_type[element.ice, 1] = "Snow";
weather_type[element.ice, 2] = "Blizzard";

return string(weather_type[type, severity]);
