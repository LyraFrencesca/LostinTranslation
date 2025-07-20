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

    if (yspd > 0) sprite_index = spr_player_walk_down;
    else if (yspd < 0) sprite_index = spr_player_walk_up;
    else if (xspd > 0) sprite_index = spr_player_walk_right;
    else if (xspd < 0) sprite_index = spr_player_walk_left;
} else {
    if (sprite_index == spr_player_walk_down) sprite_index = spr_player_idle_down;
    if (sprite_index == spr_player_walk_up) sprite_index = spr_player_idle_up;
    if (sprite_index == spr_player_walk_right) sprite_index = spr_player_idle_right;
    if (sprite_index == spr_player_walk_left) sprite_index = spr_player_idle_left;

    walk_timer = walk_interval;
}
