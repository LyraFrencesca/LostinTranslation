dialog = [
    { name: "ともだち", msg: "ありがとう means thank you. It's a polite and common way to show gratitude in Japanese." },
	{ name: "ともだち", msg: "If you want to be even more polite — like when thanking a teacher or stranger — you can say ありがとうございます (arigatou gozai masu) instead!" },
    { name: "Player", msg: "ありがとう!" },
	{ name: "ともだち", msg: "You're welcome!" },
];

jp = "ありがとう";
en = "Thank you!";
audio = snd_arigatou; 
tilemap = layer_tilemap_get_id("Tiles_Col");
input_key = vk_space;
can_talk = true;