var mx = mouse_x;
var my = mouse_y;

if (mx > btn_x && mx < btn_x + btn_width) {
    if (my > btn_start_y && my < btn_start_y + btn_height) {
        room_goto(Room1);
    } else if (my > btn_settings_y && my < btn_settings_y + btn_height) {
        show_message("Settings coming soon!");
    } else if (my > btn_exit_y && my < btn_exit_y + btn_height) {
        game_end();
    }
}