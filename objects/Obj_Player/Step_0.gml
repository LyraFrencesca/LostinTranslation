var move_x = 0;
var move_y = 0;

if (keyboard_check(ord("A"))) move_x = -1;
if (keyboard_check(ord("D"))) move_x = 1;
if (keyboard_check(vk_left))  move_x = -1;
if (keyboard_check(vk_right)) move_x = 1;

if (keyboard_check(ord("W"))) move_y = -1;
if (keyboard_check(ord("S"))) move_y = 1;
if (keyboard_check(vk_up))    move_y = -1;
if (keyboard_check(vk_down))  move_y = 1;


if (keyboard_check(ord("A"))) {
    x -= 2;
}
if (keyboard_check(ord("D"))) {
    x += 2;
}

x += move_x * speed;
y += move_y * speed;
