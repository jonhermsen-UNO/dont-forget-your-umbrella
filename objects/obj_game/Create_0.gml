//declare a day count
DAY = 1;

//How many of each card the player has
enum element{
fire,
water,
earth,
ice
};

//These values represent how 
global.CARD_EARTH = 2;
global.CARD_WATER = 2;
global.CARD_ICE = 2;
global.CARD_FIRE = 2;

//The current type of weather, calculated with EARTH_WATER and FIRE_ICE.
//Weather can be -1 to 3, with -1 being calm for all severities
//Severity can be 0 to 2
current_weather = -1;
current_severity = 0;
city_health = 100;

//re-seed for choose()
randomize();

audio_play_sound(sng_main, 2, true);