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
  
	echo "hoge"
}

setup_git
setup_hyper
setup_vscode
