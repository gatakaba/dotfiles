#! /bin/sh
cd ../
for dot_file in .??*; do
    # ignore .git
    if [ $dot_file = ".git" ]; then
        continue
    fi
    # make link  
    echo $dot_file
    ln -sf -v  ~/dotfiles/$dot_file ~/$dot_file
done

# link vs code config file(mac only)
if [ `uname` = "Darwin" ];then
    ln -sf -v ~/dotfiles/vscode.json $HOME"/Library/Application Support/Code/User/settings.json"
else
    echo "Set VS Code config file manually"
fi
