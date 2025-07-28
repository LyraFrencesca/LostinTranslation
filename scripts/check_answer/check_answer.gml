function check_answer(selected_option, correct_option, puzzle_index, ui_id) {
    if (!is_array(global.puzzles)) {
        show_debug_message("global.puzzles is not an array.");
        return;
    }

    var puzzle = global.puzzles[puzzle_index];

    show_debug_message("check_answer called");
    show_debug_message("Selected Option: " + string(selected_option));
    show_debug_message("Correct Option: " + string(correct_option));
    show_debug_message("Puzzle Index: " + string(puzzle_index));

    if (selected_option == correct_option) {
        show_debug_message("Correct answer!");
        global.puzzles[puzzle_index].puzzle_completed = true;

        if (audio_exists(snd_win)) {
            audio_play_sound(snd_win, 1, false);
        }

        show_message_async("Correct!");

        with (ui_id) {
            alarm[0] = room_speed * 1; 
        }

        // Check if all puzzles are completed
        if (all_puzzles_completed()) {
            show_debug_message("All puzzles complete! Creating obj_gameComplete.");
            instance_create_layer(display_get_width() / 2, display_get_height() / 2, "Instances", obj_gameComplete);
        }

    } else {
        show_debug_message("Incorrect answer.");
        if (audio_exists(snd_lose)) {
            audio_play_sound(snd_lose, 1, false);
        }

        show_message_async("Try again! Check your journal!");
    }
}
