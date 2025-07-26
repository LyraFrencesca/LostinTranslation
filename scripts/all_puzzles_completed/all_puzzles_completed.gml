function all_puzzles_completed() {
    for (var i = 0; i < array_length(global.puzzles); i++) {
        if (!global.puzzles[i].puzzle_completed) return false;
    }
    return true;
}
