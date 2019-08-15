# decorate default command
alias mkdir='mkdir -p' # create intermediate directories
alias tree="tree -C" # colorization

# custom command
alias z='cd $OLDPWD' # back
alias up="cd ..; ls -l" # goto above dir and show

## ls after cd 
function cd 
    builtin cd $argv; and ls
end

# python
set -x PYENV_ROOT "$HOME/.pyenv"
set -x PATH "$PYENV_ROOT/bin" $PATH
eval (pyenv init - | source)

# path
set -x PATH $HOME/bin $PATH

