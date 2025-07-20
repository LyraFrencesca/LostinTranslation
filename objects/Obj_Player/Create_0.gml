xspd = 0;
yspd = 0;
move_spd = 2;

tilemap = layer_tilemap_get_id("Tiles_Col");
global.puzzles = Puzzles();

walk_timer = 0;

walk_interval = room_speed / 2; 
