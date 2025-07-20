messages = [];

char_colors = ds_map_create();
char_colors[?"Player"] = c_aqua;
char_colors[?"ともだち"] = make_color_rgb(255, 180, 60); 

current_message = -1;
current_char = 0;
draw_message = "";

char_speed = 0.5;
input_key = keyboard_check_pressed(ord("E"));

gui_w = display_get_gui_width();
gui_h = display_get_gui_height();

