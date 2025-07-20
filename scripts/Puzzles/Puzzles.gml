// Add more puzzles here
function Puzzles() {
    return [
        {
            prompt_text: "こんにちは",
            correct_option: "Hello",
            option_1: "Hello",
            option_2: "Goodbye",
            option_3: "Thank you",
            audio_clip: snd_konichiwa,
            puzzle_completed: false
        },
        {
            prompt_text: "さようなら",
            correct_option: "Goodbye",
            option_1: "Goodbye",
            option_2: "Hello",
            option_3: "See you later",
            audio_clip: snd_sayonara,
            puzzle_completed: false
        },
        {
            prompt_text: "ありがとう",
            correct_option: "Thank you",
            option_1: "Sorry",
            option_2: "Thank you",
            option_3: "Excuse me",
            audio_clip: snd_arigatou,
            puzzle_completed: false
        }
    ];
}