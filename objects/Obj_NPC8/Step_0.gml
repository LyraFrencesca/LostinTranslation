if (instance_exists(Obj_Dialog)) exit;
    
if (instance_exists(Obj_Player) && distance_to_object(Obj_Player) < 8)
{
    can_talk = true;
    if (keyboard_check_pressed(ord("E")))
    {
        create_dialog(dialog);
    }
}
else 
{
    can_talk = false;
}