draw_self();

if (can_talk && !instance_exists(Obj_Dialog))
{
    draw_sprite(spr_talk, 0, x, y -16);
}