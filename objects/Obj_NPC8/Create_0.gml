dialog = [
    { name: "ともだち", msg: "If you break something... or hurt someone's feelings, say ごめんなさい." },
	{ name: "ともだち", msg: "It's how we show we're truly sorry." },
	{ name: "Player", msg: "ごめんなさい." },
	{ name: "Player", msg: "Ohh, very useful!" },
];

jp = "ごめんなさい";
en = "I'm Sorry";
audio = snd_gomenasai; 
tilemap = layer_tilemap_get_id("Tiles_Col");
input_key = vk_space;
can_talk = true;