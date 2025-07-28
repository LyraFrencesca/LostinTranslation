var mx = x;
var my = y;

draw_set_color(c_white);
draw_rectangle(mx, my, mx + button_width, my + button_height, false);

draw_set_font(fnt_journal);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(mx + button_width / 2, my + button_height / 2, "Exit Game");
