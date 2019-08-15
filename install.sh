#! /bin/sh

function setup_vscode() {
    # link vs code config file(mac only)
    if [ $(uname) = "Darwin" ]; then
        ln -sf -v ~/dotfiles/vscode.json "$HOME/Library/Application Support/Code/User/settings.json"
    else
        echo "Set VS Code config file manually"
    fi

    # install extention
    for extention in $(cat ./configs/vscode/vscode-extention-list); do
        code --install-extension $extention
    done
}
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
9,0-1 全て
