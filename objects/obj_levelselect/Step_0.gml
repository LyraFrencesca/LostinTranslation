var mx = mouse_x;
var my = mouse_y;

if (mouse_check_button_pressed(mb_left)) {
    for (var i = 0; i < level_count; i++) {
        var start_layout = btn_level_start_y + i * btn_level_spacing;

        if (mx > btn_x && mx < btn_x + btn_width &&
            my > start_layout && my < start_layout + btn_height) {

            switch (i) {
                case 0:
                    room_goto(Room1); // Level 1 is unlocked
                    break;
                case 1:
                    show_message("Level " + string(i + 1) + " locked!");
                    break;
            }
        }
    }

    if (mx > btn_x && mx < btn_x + btn_width &&
        my > btn_back_y && my < btn_back_y + btn_height) {
        room_goto(rm_title);
    }
}
