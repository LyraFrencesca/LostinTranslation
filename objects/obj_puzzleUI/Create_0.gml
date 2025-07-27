if (!variable_global_exists("puzzles") || puzzle_index >= array_length(global.puzzles)) {
    show_debug_message("Invalid puzzle index: " + string(puzzle_index));
    instance_destroy(); // prevents broken puzzles from staying on screen
    return;
}


global.input_locked = true;

// If you want, set a default
if (!variable_instance_exists(self, "puzzle_index")) {
    puzzle_index = 0;
}
