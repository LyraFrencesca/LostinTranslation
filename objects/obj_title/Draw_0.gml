// Get view size for centering
var vw = view_wport[0];
var vh = view_hport[0];

// Title text
draw_set_font(TitleFont);
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(vw / 2, 80, "Lost in Translation");

draw_set_font(fnt_subTitle);
draw_text(vw / 2, 120, "A Japanese Language Learning Game");

draw_set_font(ButtonFont);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

if (mouse_x > btn_x && mouse_x < btn_x + btn_width &&
    mouse_y > btn_choose_y && mouse_y < btn_choose_y + btn_height) {
    draw_set_color(make_color_rgb(100, 100, 255));
} else {
    draw_set_color(c_dkgray);
}
draw_rectangle(btn_x, btn_choose_y, btn_x + btn_width, btn_choose_y + btn_height, false);
draw_set_color(c_white);
draw_text(btn_x + btn_width / 2, btn_choose_y + btn_height / 2, "Start Game");

if (mouse_x > btn_x && mouse_x < btn_x + btn_width &&
    mouse_y > btn_exit_y && mouse_y < btn_exit_y + btn_height) {
    draw_set_color(make_color_rgb(100, 100, 255));
} else {
    draw_set_color(c_dkgray);
}
draw_rectangle(btn_x, btn_exit_y, btn_x + btn_width, btn_exit_y + btn_height, false);
draw_set_color(c_white);
draw_text(btn_x + btn_width / 2, btn_exit_y + btn_height / 2, "Exit");

