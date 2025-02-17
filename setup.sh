#!/bin/sh

TMUX_DIR=~/.config/tmux
TMUX_PLUGINS_DIR=$TMUX_DIR/plugins

if [ -d "$TMUX_DIR" ]; then
    rm -rf "$TMUX_DIR"
    echo "Removed $TMUX_DIR"
fi

mkdir -p $TMUX_PLUGINS_DIR 

git clone https://github.com/tmux-plugins/tpm $TMUX_PLUGINS_DIR/tpm

ln -s ~/git-repos/private/dotfiles/tmux/tmux.conf $TMUX_DIR/tmux.conf


