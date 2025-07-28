var btn_w = 120;
var btn_h = 30;
var btn_x = 600 / 2 - btn_w / 2;  
var btn_y = 600 - 60;

var mx = mouse_x;
var my = mouse_y;

if (mouse_check_button_pressed(mb_left)) {
    if (mx > btn_x && mx < btn_x + btn_w &&
        my > btn_y && my < btn_y + btn_h) {
        game_end();
    }
}
