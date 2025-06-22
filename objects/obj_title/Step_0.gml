var mx = mouse_x;
var my = mouse_y;

if (mouse_check_button_pressed(mb_left)) {
    if (mx > btn_x && mx < btn_x + btn_width) {
        if (my > btn_start_y && my < btn_start_y + btn_height) {
            room_goto(rm_levelselect);
        } else if (my > btn_settings_y && my < btn_settings_y + btn_height) {
            show_message("Settings coming soon!");
        } else if (my > btn_exit_y && my < btn_exit_y + btn_height) {
            game_end();
        }
    }
}