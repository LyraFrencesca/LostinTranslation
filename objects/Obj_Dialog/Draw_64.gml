var padding = 16;

var dx = padding;
var gui_w = display_get_gui_width();
var gui_h = display_get_gui_height();

var dy = gui_h * 0.7;
var boxw = gui_w;
var boxh = gui_h - dy;

draw_sprite_stretched(spr_box, 0, 0, dy, boxw, boxh);

draw_set_halign(fa_left);
draw_set_valign(fa_top);

var _name = messages[current_message].name;

if (font_exists(fnt_journalTitle)) draw_set_font(fnt_journalTitle);

if (ds_map_exists(char_colors, _name)) {
    draw_set_color(char_colors[? _name]);
} else {
    draw_set_color(c_white);
}

draw_text(dx, dy, _name);

dy += 40;

if (font_exists(fnt_japanese)) draw_set_font(fnt_japanese);
draw_set_color(c_white);

var text_width = boxw - (padding * 2); 
draw_text_ext(dx, dy, draw_message, -1, text_width);

