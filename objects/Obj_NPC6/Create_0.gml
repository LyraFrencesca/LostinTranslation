dialog = [
    { name: "ともだち", msg: "Say すみません when you need to ask for directions or squeeze past in a crowd." },
	{ name: "ともだち", msg: "It's polite and appreciated." },
    { name: "Player", msg: "Good to know! すみません!" },
];

jp = "すみません";
en = "Excuse me!";
audio = snd_sumimasen; 
tilemap = layer_tilemap_get_id("Tiles_Col");
input_key = vk_space;
can_talk = true;