#! /bin/sh

function setup_vscode() {
    # link vscode config file(mac only)
    if [ $(uname) = "Darwin" ]; then
        ln -sf -v "$PWD/configs/vscode/vscode.json" "$HOME/Library/Application Support/Code/User/settings.json"
    else
        echo "Set VS Code config file manually"
    fi

    # install extention
    for extention in $(cat $PWD/configs/vscode/vscode-extention-list); do
        code --install-extension $extention
    done
}

function setup_git() {
    ln -sf -v "$PWD/configs/git/.gitconfig" "$HOME/.gitconfig"
    ln -sf -v "$PWD/configs/git/ignore" "$HOME/.config/git/ignore"
}

function setup_hyper() {
    ln -sf -v "$PWD/configs/hyper/.hyper.js" "$HOME/.hyper.js"
}

function setup_python() {
    # matplotlib
    mkdir -p .matplotlib/
    ln -sf -v "$PWD/configs/python/.matplotlibrc" "$HOME/.matplotlib/matplotlibrc"
}

function setup_fish() {
    ln -sf -v "$PWD/configs/fish/common.fish" "$HOME/.config/fish/common.fish"
    ln -sf -v "$PWD/configs/fish/config.fish" "$HOME/.config/fish/config.fish"
    ln -sf -v "$PWD/configs/fish/env.fish" "$HOME/.config/fish/env.fish"
    ln -sf -v "$PWD/configs/fish/local.fish" "$HOME/.config/fish/local.fish"
}

function setup_vim(){
    mkdir -p "$XDG_CONFIG_HOME/nvim"
    ln -sf -v "$PWD/configs/nvim/init.vim" "$XDG_CONFIG_HOME/nvim/init.vim"
}

setup_git
setup_hyper
#setup_vscode
setup_fish
setup_vim
