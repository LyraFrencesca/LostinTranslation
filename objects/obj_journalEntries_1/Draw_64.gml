if (journal_open) {
    // === GET GUI-SAFE DIMENSIONS ===
    var gui_w = display_get_gui_width();
    var gui_h = display_get_gui_height();

    // === Dim background ===
    draw_set_alpha(0.6);
    draw_set_color(c_black);
    draw_rectangle(0, 0, gui_w, gui_h, false);
    draw_set_alpha(1);

    // === Panel dimensions & positioning ===
    var panel_width = gui_w * 0.8;
    var panel_height = gui_h * 0.7;
    var panel_x = (gui_w - panel_width) / 2;
    var panel_y = (gui_h - panel_height) / 2;

    // === Draw panel background ===
    draw_set_color(c_white);
    draw_rectangle(panel_x, panel_y, panel_x + panel_width, panel_y + panel_height, false);

    // === Optional border ===
    draw_set_color(c_black);
    draw_rectangle(panel_x, panel_y, panel_x + panel_width, panel_y + panel_height, true);

    // === Journal Title ===
    draw_set_color(c_black);
    // Optional: only use this if fnt_Title exists!
    if (font_exists(fnt_Title)) {
        draw_set_font(fnt_Title);
    }
    draw_text(panel_x + 20, panel_y + 20, "JOURNAL");

    // === Entries start position ===
    var entry_x = panel_x + 30;
    var entry_y = panel_y + 70;
    var entry_spacing = 40;

    // === Get sound icon size ===
    var sprite_w = sprite_get_width(spr_soundIcon);
    var sprite_h = sprite_get_height(spr_soundIcon);

    // === Loop through journal entries ===
for (var i = 0; i < array_length(global.journal_entries); i++) {
    var entry = global.journal_entries[i];

    var row_y = entry_y + i * entry_spacing;

    // Set consistent font height using English font (acts as baseline)
    var baseline_font = font_exists(fnt_Title) ? fnt_Title : -1;
    draw_set_font(baseline_font);

    // === Draw Japanese (left column)
    if (font_exists(fnt_japanese)) {
        draw_set_font(fnt_japanese);
        draw_text(entry_x, row_y, entry.jp);
    }

    // === Draw English (middle column)
    draw_set_font(baseline_font);
    draw_text(entry_x + 150, row_y, entry.en);

	// === Draw sound icon (right column)
	var button_x = entry_x + 300;
	var button_y = row_y + 2;  // adjusted to align better with text

	var scale = 1.3;  // scale up the icon by 30%

	if (sprite_exists(spr_soundIcon)) {
    // Draw the sprite scaled with no rotation or tint
    draw_sprite_ext(spr_soundIcon, 0, button_x, button_y, scale, scale, 0, c_white, 1);
	} else {
    draw_text(button_x, button_y, "▶");
	}

    // === Click detection
    if (mouse_check_button_pressed(mb_left)) {
        var mx = device_mouse_x(0);
        var my = device_mouse_y(0);

        if (mx > button_x && mx < button_x + sprite_w &&
            my > button_y && my < button_y + sprite_h) {
            audio_play_sound(entry.audio, 1, false);
        }
    }
}

}