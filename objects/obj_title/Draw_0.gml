draw_set_font(TitleFont);
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(room_width / 2, 80, "Lost in Translation");

draw_set_font(ButtonFont);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

if (mouse_x > dropdown_x && mouse_x < dropdown_x + dropdown_width &&
    mouse_y > dropdown_y && mouse_y < dropdown_y + dropdown_height) {
    draw_set_color(make_color_rgb(100, 100, 255)); 
} else {
    draw_set_color(c_dkgray); 
}
draw_rectangle(dropdown_x, dropdown_y, dropdown_x + dropdown_width, dropdown_y + dropdown_height, false);
draw_set_color(c_white);
draw_text(dropdown_x + dropdown_width / 2, dropdown_y + dropdown_height / 2, selected_language == "" ? "Choose Language" : selected_language);


if (dropdown_open) {
    var mx = mouse_x;
    var my = mouse_y;

    var option1_y = dropdown_y + dropdown_height;
    var option2_y = option1_y + dropdown_height;

    if (mx > dropdown_x && mx < dropdown_x + dropdown_width &&
        my > option1_y && my < option1_y + dropdown_height) {
        draw_set_color(make_color_rgb(100, 100, 255));
    } else {
        draw_set_color(c_dkgray);
    }
    draw_rectangle(dropdown_x, option1_y, dropdown_x + dropdown_width, option1_y + dropdown_height, false);
    draw_set_color(c_white);
    draw_text(dropdown_x + dropdown_width / 2, option1_y + dropdown_height / 2, "Japanese");

    if (mx > dropdown_x && mx < dropdown_x + dropdown_width &&
        my > option2_y && my < option2_y + dropdown_height) {
        draw_set_color(make_color_rgb(100, 100, 255));
    } else {
        draw_set_color(c_dkgray);
    }
    draw_rectangle(dropdown_x, option2_y, dropdown_x + dropdown_width, option2_y + dropdown_height, false);
    draw_set_color(c_white);
    draw_text(dropdown_x + dropdown_width / 2, option2_y + dropdown_height / 2, "More coming soon!");
}

if (mouse_x > btn_x && mouse_x < btn_x + btn_width &&
    mouse_y > btn_exit_y && mouse_y < btn_exit_y + btn_height) {
    draw_set_color(make_color_rgb(100, 100, 255)); 
} else {
    draw_set_color(c_dkgray); 
}
draw_rectangle(btn_x, btn_exit_y, btn_x + btn_width, btn_exit_y + btn_height, false);
draw_set_color(c_white);
draw_text(btn_x + btn_width / 2, btn_exit_y + btn_height / 2, "Exit");

