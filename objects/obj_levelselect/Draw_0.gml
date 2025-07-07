var vw = view_wport[0];
if (vw == 0) vw = 600;

draw_set_halign(fa_center);
draw_set_valign(fa_middle);

var mx = mouse_x;
var my = mouse_y;

for (var i = 0; i < level_count; i++) {
    var start_layout = btn_level_start_y + i * btn_level_spacing;

    if (mx > btn_x && mx < btn_x + btn_width &&
        my > start_layout && my < start_layout + btn_height) {
        draw_set_color(make_color_rgb(100, 100, 255));
    } else {
        draw_set_color(c_dkgray);
    }

    draw_rectangle(btn_x, start_layout, btn_x + btn_width, start_layout + btn_height, false);
    draw_set_color(c_white);
    draw_text(btn_x + btn_width / 2, start_layout + btn_height / 2, "Level " + string(i + 1));
}

if (mx > btn_x && mx < btn_x + btn_width &&
    my > btn_back_y && my < btn_back_y + btn_height) {
    draw_set_color(make_color_rgb(100, 100, 255));
} else {
    draw_set_color(c_dkgray);
}
draw_rectangle(btn_x, btn_back_y, btn_x + btn_width, btn_back_y + btn_height, false);
draw_set_color(c_white);
draw_text(btn_x + btn_width / 2, btn_back_y + btn_height / 2, "Back");
