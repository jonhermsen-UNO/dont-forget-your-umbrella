switch (obj_game.current_severity){
case -1:
case 0:
	enemy1 = instance_create_layer(512, 430, layer, obj_enemy);
	enemy1.strength = 1;
break;
case 1:
	enemy1 = instance_create_layer(333, 430, layer, obj_enemy);
	enemy2 = instance_create_layer(666, 430, layer, obj_enemy);
	enemy1.strength = choose(1,2);
	enemy2.strength = choose(1,3);
break;
case 2:
	enemy1 = instance_create_layer(222, 430, layer, obj_enemy);
	enemy2 = instance_create_layer(512, 430, layer, obj_enemy);
	enemy3 = instance_create_layer(802, 430, layer, obj_enemy);
	enemy1.strength = choose(1,2);
	enemy2.strength = choose(2,3);
	enemy3.strength = choose(2,3);
break;
default: break;
}

cursor = instance_create_layer(x,y, layer, obj_cursor);
