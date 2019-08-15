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
	echo "hoge"
}

function setup_hyper() {
    ln -sf -v "$PWD/configs/hyper/.hyper.js" "$HOME/.hyper.js"
}

function setup_python() {

	echo "hoge"
}

function setup_fish() {

	echo "hoge"
}

# setup_vscode
setup_hyper
