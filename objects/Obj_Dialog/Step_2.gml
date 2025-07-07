if (current_message < 0) exit;
    
var str = messages[current_message].msg;

if (current_char < string_length(str))
{
    current_char += char_speed * (1 + keyboard_check_pressed(ord("E")));
    draw_message = string_copy(str, 0, current_char);
}
else if (keyboard_check_pressed(input_key))
{
    current_message++;
    if current_message >= array_length((messages))
    {
        instance_destroy();
    }
    else 
    {
    	current_char = 0;
    }
}