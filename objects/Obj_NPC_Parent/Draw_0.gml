
var scale = 28 / sprite_height;
draw_sprite_ext(sprite_index, image_index, x, y, scale, scale, image_angle, image_blend, image_alpha);


if (can_talk && !instance_exists(Obj_Dialog))
{
    draw_sprite(spr_talk, 0, x, y - 16);
}
