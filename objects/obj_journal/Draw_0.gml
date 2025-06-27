if (show_journal) {
    draw_set_color(c_white);
    draw_rectangle(50, 50, room_width - 50, room_height - 50, false); 
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
    draw_set_font(JournalFont); 

    draw_text(70, 70, "JOURNAL");

    var y_pos = 110;
    for (var i = 0; i < ds_list_size(journal_entries); i++) {
        var entry = journal_entries[| i];
        var jp = entry[0];
        var en = entry[1];

        if (en == "") {
            draw_text(70, y_pos, jp);
        } else {
            draw_text(70, y_pos, jp + " - " + en);
        }

        y_pos += 40;
    }
}
