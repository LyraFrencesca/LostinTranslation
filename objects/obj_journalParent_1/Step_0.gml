// Defensive check to make sure 'collected' exists
if (!variable_instance_exists(id, "collected")) {
    collected = false;
}

// Proceed only if we’re not already collected
if (!collected && keyboard_check_pressed(ord("E")) && place_meeting(x, y, obj_player)) {
    add_to_journal(jp, en, audio);
    if (audio != noone) {
        audio_play_sound(audio, 1, false);
    }
    collected = true;
}
