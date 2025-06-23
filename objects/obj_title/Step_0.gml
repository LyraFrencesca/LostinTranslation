var mx = mouse_x;
var my = mouse_y;

if (mouse_check_button_pressed(mb_left)) {
    if (mx > btn_x && mx < btn_x + btn_width &&
        my > btn_exit_y && my < btn_exit_y + btn_height) {
        game_end();
    }

    if (mx > dropdown_x && mx < dropdown_x + dropdown_width &&
        my > dropdown_y && my < dropdown_y + dropdown_height) {
        dropdown_open = !dropdown_open;
    }

    if (dropdown_open) {
        var option1_y = dropdown_y + dropdown_height;
        var option2_y = option1_y + dropdown_height;

        if (mx > dropdown_x && mx < dropdown_x + dropdown_width &&
            my > option1_y && my < option1_y + dropdown_height) {
            selected_language = "Japanese";
            dropdown_open = false;
            room_goto(rm_japaneselevels);
        }

        else if (mx > dropdown_x && mx < dropdown_x + dropdown_width &&
                 my > option2_y && my < option2_y + dropdown_height) {
            show_message("More languages coming soon!");
        }
    }
}

