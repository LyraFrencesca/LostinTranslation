if (keyboard_check_pressed(ord("E"))) {
    var new_entry = ["むら", ""]; 
    ds_list_add(obj_journal_ui.journal_entries, new_entry);
}

if (keyboard_check_pressed(ord("T"))) {
    for (var i = 0; i < ds_list_size(obj_journal_ui.journal_entries); i++) {
        var entry = obj_journal_ui.journal_entries[| i];
        if (entry[0] == "むら" && entry[1] == "") {
            entry[1] = "village";
            obj_journal_ui.journal_entries[| i] = entry;
        }
    }
}
