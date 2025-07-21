dialog = [
    { name: "ともだち", msg: "こんにちは means hello and it's used during the day." },
	{ name: "ともだち", msg: "It's polite and great for most situations, especially when you're talking to someone you don't know well!" },
    { name: "Player", msg: "こんにちは!" },
	{ name: "ともだち", msg: "こんにちは! Good job!" },
];

jp = "こんにちは";
en = "Hello!";
audio = snd_konichiwa; 
tilemap = layer_tilemap_get_id("Tiles_Col");
input_key = vk_space;
can_talk = true;