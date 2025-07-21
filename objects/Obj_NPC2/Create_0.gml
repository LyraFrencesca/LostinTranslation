dialog = [
    { name: "ともだち", msg: "こんにちは! Welcome to our village!" },
    { name: "ともだち", msg: "In this game, you'll learn Japanese words by interacting with glowing objects." },
    { name: "ともだち", msg: "Then, talk to villagers like me to understand what the words mean and how to use them!" },
    { name: "ともだち", msg: "When you learn a new word, it gets added to your journal. Press [J] to open it anytime." },
    { name: "Player", msg: "Thank you! Sounds fun! I'll give it a try." },
	{ name: "ともだち", msg: "Try interacting with that object and person to the right." },
];

jp = "こんにちは";
en = "Hello!";
audio = snd_konichiwa; 
tilemap = layer_tilemap_get_id("Tiles_Col");
input_key = vk_space;
can_talk = true;
