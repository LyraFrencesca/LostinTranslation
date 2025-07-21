dialog = [
    { name: "ともだち", msg: "さようなら means goodbye, but it's a bit formal and often used when you won't see someone for a while." },
	{ name: "ともだち", msg: "You wouldn't use さようなら if you're just saying bye to a friend for a few hours — it'd sound too serious or dramatic." },
    { name: "Player", msg: "Got it! さようなら!" },
	{ name: "ともだち", msg: "さようなら!" },
];

jp = "さようなら";
en = "Goodbye!";
audio = snd_sayonara; 
tilemap = layer_tilemap_get_id("Tiles_Col");
input_key = vk_space;
can_talk = true;