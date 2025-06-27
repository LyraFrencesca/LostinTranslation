function scr_translate_word(){

var word_jp = argument0;
var word_en = argument1;

for (var i = 0; i < ds_list_size(obj_journal_ui.journal_entries); i++) {
    var entry = obj_journal_ui.journal_entries[| i];
    if (entry[0] == word_jp && entry[1] == "") {
        entry[1] = word_en;
        obj_journal_ui.journal_entries[| i] = entry;
    }
}
// Can be used like if (keyboard_check_pressed(ord("T"))) {
//    scr_translate_word("むら", "village");
}
//After calling we could possibly do a popup message like:
//show_message("むら translated: village!");
