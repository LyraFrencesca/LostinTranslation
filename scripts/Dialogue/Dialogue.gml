function create_dialog (messages){
    if (instance_exists(Obj_Dialog)) return;
        
    var inst = instance_create_depth (0, 0, 0, Obj_Dialog);
    inst.messages = messages;
    inst.current_message = 0;
}

/*
char_colors = ds_map_create();
char_colors[?"???"] = c_yellow;
char_colors[?"Player"] = c_aqua;*/


welcome_dialog = [
    { name: "???", msg: "こんにちは is hello in Japanese" },
    { name: "Player", msg: "thanks for letting me know" }
];
