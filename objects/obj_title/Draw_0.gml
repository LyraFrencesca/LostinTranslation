draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(room_width / 2, 80, "Lost in Translation");

draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_set_color(c_dkgray);
draw_rectangle(btn_x, btn_start_y, btn_x + btn_width, btn_start_y + btn_height, false);
draw_rectangle(btn_x, btn_exit_y, btn_x + btn_width, btn_exit_y + btn_height, false);

draw_set_color(c_white);
draw_text(btn_x + btn_width/2, btn_start_y + btn_height/2, "Select Level");
draw_text(btn_x + btn_width/2, btn_exit_y + btn_height/2, "Exit");