if (keyboard_check_pressed(ord("E")) && !puzzle_completed && distance_to_object(Obj_Player) < 32) {
    if (!instance_exists(obj_puzzleUI)) {
        var ui = instance_create_layer(0, 0, "Instances", obj_puzzleUI);
        ui.source_puzzle = id;
    }
}
