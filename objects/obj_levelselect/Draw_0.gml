draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_set_color(c_dkgray);
for (var i = 0; i < level_count; i++) {
    var start_layout = btn_level_start_y + i * btn_level_spacing;
    draw_rectangle(btn_x, start_layout, btn_x + btn_width, start_layout + btn_height, false);
}
draw_rectangle(btn_x, btn_back_y, btn_x + btn_width, btn_back_y + btn_height, false);

draw_set_color(c_white);
for (var i = 0; i < level_count; i++) {
    var start_layout = btn_level_start_y + i * btn_level_spacing;
    draw_text(btn_x + btn_width / 2, start_layout + btn_height / 2, "Level " + string(i + 1));
}
draw_text(btn_x + btn_width / 2, btn_back_y + btn_height / 2, "Back");
