#! /bin/sh
#ln -sf ~/dotfiles/.gitignore_global  ~/.gitignore_global

for dot_file in $(ls -A); do
    if [ $dot_file = ".git" ]; then
        continue
        echo hoge
    fi
    
    if [ $dot_file = $(basename $0) ]; then
        continue
    fi
      
    echo $dot_file
    ln -sf ~/dotfiles/$dot_file ~/$dot_file
done
