#!/bin/bash

DIR="$( cd "$( dirname "$0" )" && pwd )";

ln -sf "$DIR/zshrc" "$HOME/.zshrc"
ln -sf "$DIR/zsh" "$HOME/.zsh"
ln -sf "$DIR/screenrc" "$HOME/.screenrc"
ln -sf "$DIR/gitconfig" "$HOME/.gitconfig"
ln -sf "$DIR/gitignore_global" "$HOME/.gitignore_global"
ln -sf "$DIR/agignore" "$HOME/.agignore"
ln -sf "$DIR/emacs" "$HOME/.emacs"
