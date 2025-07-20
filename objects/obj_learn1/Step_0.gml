if (!variable_instance_exists(id, "collected")) {
    collected = false;
}

if (!collected && keyboard_check_pressed(ord("E")) && place_meeting(x, y, Obj_Player)) {
    add_to_journal(jp, en, audio_clip);

    if (audio_clip != noone) {
        audio_play_sound(audio_clip, 1, false);
    }

    instance_create_layer(x, y - 24, "Instances", obj_journalPopup);

    collected = true;
}
