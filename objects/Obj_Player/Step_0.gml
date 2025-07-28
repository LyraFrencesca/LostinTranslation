if (instance_exists(Obj_Dialog)) exit;

var xspd = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var yspd = keyboard_check(ord("S")) - keyboard_check(ord("W"));

move_and_collide(xspd * move_spd, yspd * move_spd, tilemap, undefined, undefined, undefined, move_spd, move_spd);

walk_timer++;

if (xspd != 0 or yspd != 0) {
    if (walk_timer >= walk_interval) {
        audio_play_sound(snd_walk, 0, false);
        walk_timer = 0;
    }

    if (yspd > 0) sprite_index = Walk_down;
    //else if (yspd < 0) sprite_index = ;
    else if (xspd > 0) sprite_index = Walk_to_right;
    else if (xspd < 0) sprite_index = Walk_to_left;
} else {
    if (sprite_index == Walk_down) sprite_index = Idle;
    //if (sprite_index == spr_player_walk_up) sprite_index = Idle_Face_up;
    if (sprite_index == Walk_to_right) sprite_index = Idle_Face_right;
    if (sprite_index == Walk_to_left) sprite_index = Idle_face_left;

    walk_timer = walk_interval;
}
