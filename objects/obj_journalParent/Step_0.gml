if (!variable_instance_exists(id, "collected")) {
    collected = false;
}

if (!collected && keyboard_check_pressed(ord("E")) && place_meeting(x, y, Obj_Player)) {
    add_to_journal(jp, en, audio);
    if (audio != noone) {
        audio_play_sound(audio_clip, 1, false);
    }
    collected = true;
}
