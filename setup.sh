#!/usr/bin/env sh

DIR="$( cd "$( dirname "$0" )" && pwd )";

ln -sf "$DIR/etc/zshrc" "$HOME/.zshrc"
ln -sf "$DIR/etc/zsh" "$HOME/.zsh"
ln -sf "$DIR/etc/screenrc" "$HOME/.screenrc"
ln -sf "$DIR/etc/gitconfig" "$HOME/.gitconfig"
ln -sf "$DIR/etc/gitignore_global" "$HOME/.gitignore_global"
ln -sf "$DIR/etc/agignore" "$HOME/.agignore"
ln -sf "$DIR/etc/emacs" "$HOME/.emacs"
ln -sf "$DIR/etc/emacs.d" "$HOME/.emacs.d"

if [ -e "/usr/bin/sw_vers" ]; then
    exec osx/set_defaults
fi
