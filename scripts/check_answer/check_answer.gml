
function check_answer(answer, correct_answer, puzzle_index, ui_obj) {
    show_debug_message("check_answer idx = " + string(puzzle_index));

    if (answer == correct_answer) {
        audio_play_sound(snd_win, 1, false);
        show_message("Correct!");

        global.puzzles[puzzle_index].puzzle_completed = true;

        var inst = instance_find(obj_puzzleWord, 0);
        while (inst != noone) {
            if (inst.puzzle_index == puzzle_index) {
                instance_create_layer(inst.x, inst.y - 8, "Instances", obj_firework);
                break;
            }
            inst = instance_find(obj_puzzleWord, instance_number(obj_puzzleWord) - 1);
        }

        if (all_puzzles_completed()) {
            instance_create_layer(0, 0, "Instances", obj_gameComplete);
        }

    } else {
        audio_play_sound(snd_lose, 1, false);
        show_message("Not quite. Try reviewing your journal!");
    }

    global.input_locked = false;

    if (instance_exists(ui_obj)) {
        with (ui_obj) instance_destroy();
    }
}


/*function check_answer(answer, correct_answer, puzzle_index, ui_obj) {
    show_debug_message("Checking answer for puzzle index: " + string(puzzle_index));

    if (answer == correct_answer) {
        audio_play_sound(snd_win, 1, false);
        show_message("Correct!");

        global.puzzles[puzzle_index].puzzle_completed = true;

        // Create fireworks at the puzzleWord instance location
        var inst = instance_find(obj_puzzleWord, 0);
        while (inst != noone) {
            if (inst.puzzle_index == puzzle_index) {
                instance_create_layer(inst.x, inst.y - 8, "Instances", obj_firework);
                break;
            }
            inst = instance_find(obj_puzzleWord, instance_number(obj_puzzleWord) - 1);
        }

        // Check if all puzzles are done
        var all_done = true;
        for (var i = 0; i < array_length(global.puzzles); i++) {
            if (!global.puzzles[i].puzzle_completed) {
                all_done = false;
                break;
            }
        }
        if (all_done) {
            instance_create_layer(0, 0, "Instances", obj_gameComplete);
        }

    } else {
        audio_play_sound(snd_lose, 1, false);
        show_message("Not quite. Try reviewing your journal!");
    }

    global.input_locked = false;

    if (instance_exists(ui_obj)) {
        with (ui_obj) instance_destroy();
    }
}

*/
