#!/bin/sh
tmuxreverse() {
    rm "$(find "$HOME"/.tmux/resurrect/last)"
    rm $(ls -l ~/.tmux/resurrect/last)
}
