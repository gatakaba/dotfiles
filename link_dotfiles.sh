#! /bin/sh

for dot_file in .??*; do
    # ignore .git
    if [ $dot_file = ".git" ]; then
        continue
    fi
    # make link  
    echo $dot_file
    ln -sf ~/dotfiles/$dot_file ~/$dot_file
done
