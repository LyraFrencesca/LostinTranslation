/*
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
*/

function CheckAnswer() {
    if (selected_answer_index != -1) {
        var selected_answer = current_puzzle.answers[| selected_answer_index];
        var correct_answer = current_puzzle.correctAnswer;

        if (selected_answer == correct_answer) {
            current_puzzle.completed = true;
            show_popup = true;
            popup_timer = 120;

            // Check if ALL puzzles are completed
            var all_completed = true;
            for (var i = 0; i < array_length(puzzles); i++) {
                if (!puzzles[i].completed) {
                    all_completed = false;
                    break;
                }
            }

            if (all_completed && !celebration_triggered) {
                audio_play_sound(snd_fireworks, 1, false);
                instance_create_layer(x, y, "Effects", obj_fireworks);
                celebration_triggered = true;
                show_game_complete_popup = true;
            }

            instance_destroy(); // close the puzzle UI

        } else {
            show_popup = true;
            popup_timer = 120;
        }
    }
}


