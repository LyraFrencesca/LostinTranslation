/// @param answer
/// @param correct_answer
/// @param puzzle_obj
/// @param ui_obj

var a = argument0;
var c = argument1;
var puzzle = argument2;
var ui = argument3;

if (puzzle == noone || !instance_exists(puzzle)) {
    global.input_locked = false;
    if (instance_exists(ui)) with (ui) instance_destroy();
    return;
}

if (a == c) {
    show_message("Correct!");
    with (puzzle) {
        puzzle_completed = true;
    }
} else {
    show_message("Not quite. Try reviewing your journal!");
}

global.input_locked = false;
if (instance_exists(ui)) with (ui) instance_destroy();
