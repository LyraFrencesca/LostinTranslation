if (source_puzzle == noone || !instance_exists(source_puzzle)) return;

var mx = device_mouse_x_to_gui(0);
var my = device_mouse_y_to_gui(0);

var gui_w = display_get_gui_width();
var gui_h = display_get_gui_height();
var center_x = gui_w / 2;
var top_y = gui_h / 2 - 100;

var button_x = center_x + 100;
var button_y = top_y + 40;
var button_w = sprite_get_width(spr_soundIcon);
var button_h = sprite_get_height(spr_soundIcon);

if (mx > button_x && mx < button_x + button_w && my > button_y && my < button_y + button_h) {
  if (variable_instance_exists(source_puzzle, "audio_clip") && source_puzzle.audio_clip != undefined) {
    audio_play_sound(source_puzzle.audio_clip, 1, false);
}

    return; 
}

if (mx > center_x - 100 && mx < center_x + 100) {
    if (my > top_y + 90 && my < top_y + 120) {
        check_answer(source_puzzle.option_1, source_puzzle.correct_option, source_puzzle, id);
    } else if (my > top_y + 140 && my < top_y + 170) {
        check_answer(source_puzzle.option_2, source_puzzle.correct_option, source_puzzle, id);
    } else if (my > top_y + 190 && my < top_y + 220) {
        check_answer(source_puzzle.option_3, source_puzzle.correct_option, source_puzzle, id);
    }
}
