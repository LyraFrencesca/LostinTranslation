

var padding = 16;

var dx = padding;
var gui_w = display_get_gui_width();
var gui_h = display_get_gui_height();

var dy = gui_h * 0.7;
var boxw = gui_w;
var boxh = gui_h - dy;


draw_sprite_stretched(spr_box, 0, 0, dy, boxw, boxh);

//reset alignment 
draw_set_halign(fa_left);
draw_set_valign(fa_top);

draw_set_font(fnt_japanese); 
draw_set_color(c_white);

var _name = messages[current_message].name;

// draw_set_color(global.char_colors[$ _name])
draw_text(dx, dy, _name);
// draw_set_color(c_white);

dy += 40;

var text_width = boxw - (padding * 2); 
draw_text_ext(dx, dy, draw_message, -1, text_width);
draw_rectangle(dx, dy, dx + 2, dy + 2, false); // draw small square
