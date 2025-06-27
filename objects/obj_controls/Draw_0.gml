draw_set_font(ButtonFont);
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_text(room_width / 2, 60, "Controls");

draw_set_font(ButtonFont);
var start_y = 120;
var spacing = 40;

draw_text(room_width / 2, start_y + spacing * 0, "W - Move Up");
draw_text(room_width / 2, start_y + spacing * 1, "A - Move Left");
draw_text(room_width / 2, start_y + spacing * 2, "S - Move Down");
draw_text(room_width / 2, start_y + spacing * 3, "D - Move Right");
draw_text(room_width / 2, start_y + spacing * 4, "F - Open Journal");
draw_text(room_width / 2, start_y + spacing * 5, "E - Interact");
draw_text(room_width / 2, start_y + spacing * 6, "T - Use Translator");

if (mouse_x > btn_x && mouse_x < btn_x + btn_width &&
    mouse_y > btn_back_y && mouse_y < btn_back_y + btn_height) {
    draw_set_color(make_color_rgb(100, 100, 255));
} else {
    draw_set_color(c_dkgray);
}
draw_rectangle(btn_x, btn_back_y, btn_x + btn_width, btn_back_y + btn_height, false);
draw_set_color(c_white);
draw_text(btn_x + btn_width / 2, btn_back_y + btn_height / 2, "Back");