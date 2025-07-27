draw_set_color(c_black);
draw_rectangle(0, 0, display_get_width(), display_get_height(), false);

draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_set_font(fnt_journal);

var center_x = display_get_width() / 2;

var y_scroll = scroll;

draw_text(center_x, y, "CREDITS");
y += 50;

draw_text(center_x, y, "Producer");
y += 30;
draw_text(center_x, y, "Ashish");
y += 60;

draw_text(center_x, y, "Programming");
y += 30;
draw_text(center_x, y, "Ashish");
y += 20;
draw_text(center_x, y, "Lyra");
y += 40;

draw_text(center_x, y, "Audio & Narrative");
y += 30;
draw_text(center_x, y, "Lyra");
y += 60

draw_text(center_x, y, "Art & Animation");
y += 30;
draw_text(center_x, y, "Elliana");
y += 20;
draw_text(center_x, y, "Max");
y += 20;
draw_text(center_x, y, "Alvin");
y += 40;

draw_text(center_x, y, "Thank you for playing!");
y += 60;

draw_text(center_x, y, "Click anywhere to Exit");
