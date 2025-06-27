var mx = mouse_x;
var my = mouse_y;

if (mx > btn_x && mx < btn_x + btn_width) {
    for (var i = 0; i < level_count; i++) {
        var start_layout = btn_level_start_y + i * btn_level_spacing;

        if (my > start_layout && my < start_layout + btn_height) {
            switch (i) {
                case 0: room_goto(rm_level1); break;
                case 1: room_goto(rm_level2); break;
            }
        }
    }

    if (my > btn_back_y && my < btn_back_y + btn_height) {
        room_goto(rm_title);
    }
}
