///get_enemy_counter(enemy, amt);
enemy = argument0;
amt = argument1;

ret = true;
//amt is 
//checks an enemy's type, then decreases or increases the respective element.
//sent amt will always be 1 or -1 if player is adding or removing element, respectively.
//returns a boolean, true if successful, false if not.
switch(enemy.sprite_index){
	case spr_enemy_earth:
		//if adding 
		if(amt == 1 && global.CARD_WATER > 0 && enemy.counter_amt < enemy.strength){
			global.CARD_WATER--;
			enemy.counter_amt++;
		}
		//if removing 
		else if(amt == -1 && enemy.counter_amt > 0){
			global.CARD_WATER++;
			enemy.counter_amt--;
		}
		//otherwise it failed
		else ret = false;
	break;
	case spr_enemy_water:
		//if adding 
		if(amt == 1 && global.CARD_EARTH > 0 && enemy.counter_amt < enemy.strength){
			global.CARD_EARTH--;
			enemy.counter_amt++;
		}
		//if removing 
		else if(amt == -1 && enemy.counter_amt > 0){
			global.CARD_EARTH++;
			enemy.counter_amt--;
		}
		//otherwise it failed
		else ret = false;
	break;
	case spr_enemy_fire:
		//if adding 
		if(amt == 1 && global.CARD_ICE > 0 && enemy.counter_amt < enemy.strength){
			global.CARD_ICE--;
			enemy.counter_amt++;
		}
		//if removing 
		else if(amt == -1 && enemy.counter_amt > 0 ){
			global.CARD_ICE++;
			enemy.counter_amt--;
		}
		//otherwise it failed
		else ret = false;
	break;
	case spr_enemy_ice:
		//if adding 
		if(amt == 1 && global.CARD_FIRE > 0 && enemy.counter_amt < enemy.strength){
			global.CARD_FIRE--;
			enemy.counter_amt++;
		}
		//if removing 
		else if(amt == -1 && enemy.counter_amt > 0){
			global.CARD_FIRE++;
			enemy.counter_amt--;
		}
		//otherwise it failed
		else ret = false;
	break;
}
return ret;