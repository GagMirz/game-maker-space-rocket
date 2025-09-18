draw_self();

draw_set_font(fnt_menu);

draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_text(room_width / 2, room_height / 2 - 200, "You've lost the game,\ncurrent score: " + string(global.score)+ "\nhighest score: " + string(global.highestScore));

draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_set_font(-1);
 