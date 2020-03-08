isLose = obj_game.city_health <= 0;
isWin = !isLose && obj_game.DAY == 7;
	
if(isWin){instance_create_layer(room_width/2 ,room_height/2, layer, obj_wiz_winner)};