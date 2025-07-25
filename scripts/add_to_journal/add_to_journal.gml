if (!variable_global_exists("journal_entries")) {
    global.journal_entries = [];
}

function add_to_journal(jp, en, audio) {
    var entry = {
        jp: jp,
        en: en,
        audio: audio_clip
    };
    array_push(global.journal_entries, entry);
}
