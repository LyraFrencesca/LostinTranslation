function check_answer(answer, correct_answer, puzzle_index, ui_obj) {
    show_debug_message("check_answer idx = " + string(puzzle_index));

    if (answer == correct_answer) {
        show_message("Correct!");
        global.puzzles[puzzle_index].puzzle_completed = true;
    } else {
        show_message("Not quite. Try reviewing your journal!");
    }

    global.input_locked = false;
    if (instance_exists(ui_obj)) with (ui_obj) instance_destroy();
}

