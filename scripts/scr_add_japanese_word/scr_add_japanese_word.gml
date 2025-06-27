function scr_add_japanese_word(){

var word_jp = argument0;
var exists = false;

for (var i = 0; i < ds_list_size(obj_journal_ui.journal_entries); i++) {
    var entry = obj_journal_ui.journal_entries[| i];
    if (entry[0] == word_jp) {
        exists = true;
        break;
    }
}

if (!exists) {
    var new_entry = [word_jp, ""];
    ds_list_add(obj_journal_ui.journal_entries, new_entry);
}
// Can be used like if (keyboard_check_pressed(ord("E"))) {
//    scr_add_japanese_word("むら");
}