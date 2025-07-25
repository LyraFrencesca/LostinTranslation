var mx = mouse_x;
var my = mouse_y;

if (mouse_check_button_pressed(mb_left)) {
    if (mx > btn_x && mx < btn_x + btn_width &&
        my > btn_exit_y && my < btn_exit_y + btn_height) {
        game_end();
    }

if (mx > btn_x && mx < btn_x + btn_width &&
    my > btn_choose_y && my < btn_choose_y + btn_height) {
    room_goto(Room1);
}

}