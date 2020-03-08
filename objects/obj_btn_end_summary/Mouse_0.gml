obj_game.DAY += 1;
if(obj_game.DAY = 7) room_goto(rm_menu);
else{ 
	room_goto(rm_horde);
}
