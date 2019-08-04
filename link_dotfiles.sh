#! /bin/sh
#ln -sf ~/dotfiles/.gitignore_global  ~/.gitignore_global

for dot_file in $(ls -A); do
    if [ $dot_file = $(basename $0) ]; then
        continue
    fi
    echo $dot_file
done
