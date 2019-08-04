#! /bin/sh

for dot_file in $(ls -A); do
    # ignore running script 
    if [ $dot_file = $(basename $0) ]; then
        continue
    fi
    # ignore .git
    if [ $dot_file = ".git" ]; then
        continue
    fi
    # make link  
    echo $dot_file
    ln -sf ~/dotfiles/$dot_file ~/$dot_file
done
