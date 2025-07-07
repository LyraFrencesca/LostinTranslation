if (source_puzzle == noone || !instance_exists(source_puzzle)) return;

var gui_w = display_get_gui_width();
var gui_h = display_get_gui_height();

var center_x = gui_w / 2;
var top_y = gui_h / 2 - 100;

var prompt = source_puzzle.prompt_text;
var o1 = source_puzzle.option_1;
var o2 = source_puzzle.option_2;
var o3 = source_puzzle.option_3;

draw_set_font(fnt_japanese); 
draw_set_color(c_purple);
draw_set_halign(fa_center);
draw_set_valign(fa_top);

draw_text(center_x, top_y, "What does this word mean?");
draw_text(center_x, top_y + 40, prompt);

var button_x = center_x + 100; 
var button_y = top_y + 53;     

draw_sprite(spr_soundIcon, 0, button_x, button_y);

draw_set_font(fnt_puzzle);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_set_color(c_purple);
draw_rectangle(center_x - 100, top_y + 90, center_x + 100, top_y + 120, false);

draw_set_color(c_white);
draw_text(center_x, top_y + 105, o1);

draw_set_color(c_purple);
draw_rectangle(center_x - 100, top_y + 140, center_x + 100, top_y + 170, false);

draw_set_color(c_white);
draw_text(center_x, top_y + 155, o2);

draw_set_color(c_purple);
draw_rectangle(center_x - 100, top_y + 190, center_x + 100, top_y + 220, false);

draw_set_color(c_white);
draw_text(center_x, top_y + 205, o3);

draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_font(fnt_journal);
draw_set_color(c_white);
