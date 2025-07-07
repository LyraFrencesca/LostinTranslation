if (journal_open) {
    var gui_w = display_get_gui_width();
    var gui_h = display_get_gui_height();

    var panel_width = gui_w * 0.8;
    var panel_height = gui_h * 0.7;
    var panel_x = (gui_w - panel_width) / 2;
    var panel_y = (gui_h - panel_height) / 2;

    var entry_y_start = panel_y + 70;
    var entry_spacing = 45;
    var padding = 70; 
    var column_width = (panel_width - padding * 2 - 20) / 3;
    var column_jp = panel_x + padding + 5;  
    var column_en = column_jp + column_width;
    var column_icon = column_en + column_width;

    var sprite_w = sprite_exists(spr_soundIcon) ? sprite_get_width(spr_soundIcon) * 1.3 : 32;
    var sprite_h = sprite_exists(spr_soundIcon) ? sprite_get_height(spr_soundIcon) * 1.3 : 32;

    if (mouse_check_button_pressed(mb_left)) {
        var mx = device_mouse_x_to_gui(0);
		var my = device_mouse_y_to_gui(0);


        for (var i = 0; i < array_length(global.journal_entries); i++) {
            var row_y = entry_y_start + i * entry_spacing;
            var button_x = column_icon;
            var button_y = row_y + 4 - sprite_h / 2;

            if (mx > button_x && mx < button_x + sprite_w &&
                my > button_y && my < button_y + sprite_h) {
                var entry = global.journal_entries[i];
                audio_play_sound(entry.audio, 1, false);
                break;  
            }
        }
    }
}
