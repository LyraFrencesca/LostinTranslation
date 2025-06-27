var mx = mouse_x;
var my = mouse_y;

if (mouse_check_button_pressed(mb_left)) {
    if (mx > btn_x && mx < btn_x + btn_width &&
        my > btn_back_y && my < btn_back_y + btn_height) {
        room_goto(rm_title);
    }
}