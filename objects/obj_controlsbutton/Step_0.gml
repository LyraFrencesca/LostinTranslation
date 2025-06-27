if (mouse_check_button_pressed(mb_left)) {
    if (mouse_x > 10 && mouse_x < 50 && mouse_y > 10 && mouse_y < 50) {
        room_goto(rm_controls);
    }
}
