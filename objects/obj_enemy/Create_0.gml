strength = -1;
counter_amt = 0;

switch(obj_game.current_weather){
	case -1:
sprite_index = choose(spr_enemy_ice, spr_enemy_water, spr_enemy_earth, spr_enemy_fire);	
	break;
	case 0:
sprite_index = choose(spr_enemy_earth, spr_enemy_fire);
	break;
	case 1:
sprite_index = choose(spr_enemy_water, spr_enemy_fire);
	break;
	case 2:
sprite_index = choose(spr_enemy_earth, spr_enemy_ice);
	break;
	case 3:
sprite_index = choose(spr_enemy_ice, spr_enemy_water);
	break;
	default: break;
}

elem = instance_create_layer(x-20, y+30, layer, obj_disp_elem);

switch(sprite_index){
case spr_enemy_earth:
	elem.sprite_index = spr_water;
	break;
case spr_enemy_water:
	elem.sprite_index = spr_earth;
	break;
case spr_enemy_fire:
	elem.sprite_index = spr_ice;
	break;
case spr_enemy_ice:
	elem.sprite_index = spr_fire;
	break;
}