function Puzzles() {
    return [
        {
            id: 0,
            prompt_text: "こんにちは",
            correct_option: "Hello",
            option_1: "Hello",
            option_2: "Goodbye",
            option_3: "Thank you",
            audio_clip: snd_konichiwa,
            puzzle_completed: false
        },
        {
            id: 1,
            prompt_text: "さようなら",
            correct_option: "Goodbye",
            option_1: "Goodbye",
            option_2: "Hello",
            option_3: "See you later",
            audio_clip: snd_sayonara,
            puzzle_completed: false
        },
        {
            id: 2,
            prompt_text: "ありがとう",
            correct_option: "Thank you",
            option_1: "Sorry",
            option_2: "Thank you",
            option_3: "Excuse me",
            audio_clip: snd_arigatou,
            puzzle_completed: false
        },
        {
            id: 3,
            prompt_text: "すみません",
            correct_option: "Excuse me!",
            option_1: "I'm Sorry",
            option_2: "Excuse me!",
            option_3: "How much?",
            audio_clip: snd_sumimasen,
            puzzle_completed: false
        },
        {
            id: 4,
            prompt_text: "いくらですか?",
            correct_option: "How much?",
            option_1: "How much?",
            option_2: "Excuse me!",
            option_3: "I'm Sorry",
            audio_clip: snd_ikuradesuka,
            puzzle_completed: false
        },
        {
            id: 5,
            prompt_text: "ごめんなさい",
            correct_option: "I'm Sorry",
            option_1: "Excuse me!",
            option_2: "How much?",
            option_3: "I'm Sorry",
            audio_clip: snd_gomenasai,
            puzzle_completed: false
        }
    ];
}
