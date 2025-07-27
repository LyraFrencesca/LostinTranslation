/*
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
*/


// Safety check to avoid crashes if the puzzle_index wasn't set
/*
if (!variable_instance_exists(self, "puzzle_index")) {
    show_debug_message("⚠️ puzzle_index not set before obj_puzzleUI Create Event.");
    instance_destroy(); // Prevent glitch by exiting cleanly
    return;
}
*/

if (!variable_instance_exists(self, "puzzle_index")) {
    puzzle_index = 0; // default to first puzzle
}

// Safety check to ensure the global puzzle array exists and is in range
if (!variable_global_exists("puzzles") || puzzle_index >= array_length(global.puzzles)) {
    show_debug_message("⚠️ Puzzle index is invalid or global.puzzles doesn't exist.");
    instance_destroy(); // Prevent hanging glitch
    return;
}

// Load the puzzle data
puzzle_data = global.puzzles[puzzle_index];

// Ensure it's not undefined just in case
if (is_undefined(puzzle_data)) {
    show_debug_message("⚠️ Puzzle data is undefined at index " + string(puzzle_index));
    instance_destroy();
    return;
}
