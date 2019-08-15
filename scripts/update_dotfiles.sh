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

