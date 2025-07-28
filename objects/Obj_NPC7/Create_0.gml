dialog = [
    { name: "ともだち", msg: "いくらですか？ is a phrase to ask how much something is." },
	{ name: "ともだち", msg: "Whether you're wondering how much something is or checking out, this phrase is useful." },
    { name: "Player", msg: "いくらですか？" },
	{ name: "Player", msg: "I'm ready to shop!" },
];

jp = "いくらですか?";
en = "How much?";
audio = snd_ikuradesuka; 
tilemap = layer_tilemap_get_id("Tiles_Col");
input_key = vk_space;
can_talk = true;