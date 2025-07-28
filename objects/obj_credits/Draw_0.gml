var vw = 600; 
var vh = 600; 

draw_set_color(c_black);
draw_rectangle(0, 0, vw, vh, false);

draw_set_font(TitleFont);
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(vw / 2, 40, "CREDITS"); 

draw_set_font(fnt_credits); 
draw_set_halign(fa_center);
draw_set_valign(fa_top);

var cx = vw / 2;
var y_pos = 80; 

draw_text(cx, y_pos, "Producer");
y_pos += 18;
draw_text(cx, y_pos, "Ashish");
y_pos += 25;

draw_text(cx, y_pos, "Programming");
y_pos += 18;
draw_text(cx, y_pos, "Ashish");
y_pos += 15;
draw_text(cx, y_pos, "Lyra");
y_pos += 25;

draw_text(cx, y_pos, "Audio & Narrative");
y_pos += 18;
draw_text(cx, y_pos, "Lyra");
y_pos += 25;

draw_text(cx, y_pos, "Art & Animation");
y_pos += 18;
draw_text(cx, y_pos, "Elliana");
y_pos += 15;
draw_text(cx, y_pos, "Max");
y_pos += 15;
draw_text(cx, y_pos, "Alvin");
y_pos += 25;

draw_text(cx, y_pos, "Thank you for playing!");

var btn_w = 120;
var btn_h = 30;
var btn_x = vw / 2 - btn_w / 2;
var btn_y = vh - 60;

if (mouse_x > btn_x && mouse_x < btn_x + btn_w &&
    mouse_y > btn_y && mouse_y < btn_y + btn_h) {
    draw_set_color(make_color_rgb(100, 100, 255)); 
} else {
    draw_set_color(c_dkgray);
}
draw_rectangle(btn_x, btn_y, btn_x + btn_w, btn_y + btn_h, true);


draw_set_color(c_white);
draw_set_font(fnt_credits);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(btn_x + btn_w / 2, btn_y + btn_h / 2, "Title");