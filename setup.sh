#!/usr/bin/env sh

DIR="$( cd "$( dirname "$0" )" && pwd )";

read -p "Symlink dotfiles? (y/n) " -n 1
echo
if [[ $REPLY =~ ^[Yy]$ ]]; then
    ./link_dotfiles
    echo "Done!\n"
fi

if [ -e "/usr/bin/sw_vers" ]; then
    read -p "Configure OSX defaults? (y/n) " -n 1
    echo
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        ./osx/set_defaults
        echo "Done!\n"
    fi

    read -p "Install homebrew? (y/n) " -n 1
    echo
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        ./osx/install_homebrew
        ./osx/install_homebrew_core_tools
        echo "Done!\n"
    fi

    read -p "Install cocoapods? (y/n) " -n 1
    echo
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        ./osx/install_cocoapods
        echo "Done!\n"
    fi
fi
