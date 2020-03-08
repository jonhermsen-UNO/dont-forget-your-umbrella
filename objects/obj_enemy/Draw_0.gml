draw_self();
draw_set_font(fnt_game);
draw_text(x, y - sprite_height, "Strength: " + string(strength));
draw_text(x-80, y+40, string(counter_amt));