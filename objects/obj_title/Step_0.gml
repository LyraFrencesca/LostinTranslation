var mx = mouse_x;
var my = mouse_y;

if (mouse_check_button_pressed(mb_left)) {
    if (mx > btn_x && mx < btn_x + btn_width &&
        my > btn_start_y && my < btn_start_y + btn_height) {
        room_goto(rm_introscene); //This can go to whatever room that will start the animation
		//Then after that it can go to gameplay
    }

    if (mx > btn_x && mx < btn_x + btn_width &&
        my > btn_settings_y && my < btn_settings_y + btn_height) {
        room_goto(rm_controls);
    }

    if (mx > btn_x && mx < btn_x + btn_width &&
        my > btn_exit_y && my < btn_exit_y + btn_height) {
        game_end();
    }
}