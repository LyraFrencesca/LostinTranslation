if (journal_open) {
    var gui_w = display_get_gui_width();
    var gui_h = display_get_gui_height();

    draw_set_alpha(0.6);
    draw_set_color(c_black);
    draw_rectangle(0, 0, gui_w, gui_h, false);
    draw_set_alpha(1);

    var panel_width = gui_w * 0.8;
    var panel_height = gui_h * 0.7;
    var panel_x = (gui_w - panel_width) / 2;
    var panel_y = (gui_h - panel_height) / 2;

if (sprite_exists(spr_journal)) {
    var spr_scale = 0.75; 
    var bg_width = sprite_get_width(spr_journal) * spr_scale;
    var bg_height = sprite_get_height(spr_journal) * spr_scale;

    draw_sprite_ext(spr_journal, 0,
        panel_x + panel_width / 2,
        panel_y + panel_height / 2,
        spr_scale, spr_scale,
        0, c_white, 1);
}

    if (font_exists(fnt_journalTitle)) draw_set_font(fnt_journalTitle);
    draw_set_color(c_black);
    var title_text = "JOURNAL";
    var title_w = string_width(title_text);
    draw_text(panel_x + (panel_width - title_w) / 2, panel_y + 20, title_text);

	var entry_y_start = panel_y + 100; 
	var entry_spacing = 55; 


    var padding = 120; 
	var column_width = (panel_width - padding * 2 - 20) / 3;

	var column_jp = panel_x + padding + 5;  
	var column_en = column_jp + column_width;
	var column_icon = column_en + column_width;

    var sprite_w = sprite_exists(spr_soundIcon) ? sprite_get_width(spr_soundIcon) * 1.3 : 32;
    var sprite_h = sprite_exists(spr_soundIcon) ? sprite_get_height(spr_soundIcon) * 1.3 : 32;

    for (var i = 0; i < array_length(global.journal_entries); i++) {
        var entry = global.journal_entries[i];
        var row_y = entry_y_start + i * entry_spacing;

        if (font_exists(fnt_japanese)) {
            draw_set_font(fnt_japanese);
            draw_text(column_jp, row_y, entry.jp);
        }

        var baseline_font = font_exists(fnt_journal) ? fnt_journal : -1;
        draw_set_font(baseline_font);
        draw_text(column_en, row_y, entry.en);

        var button_x = column_icon;
        var button_y = row_y + 4 - sprite_h / 2;


        if (sprite_exists(spr_soundIcon)) {
            draw_sprite_ext(spr_soundIcon, 0, button_x, button_y, 1.3, 1.3, 0, c_white, 1);
        } else {
            draw_text(button_x, button_y, "▶");
        }
    }
}

