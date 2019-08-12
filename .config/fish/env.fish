alias mkdir='mkdir -p'
set -x PATH $HOME/bin $PATH

set -x PYENV_ROOT "$HOME/.pyenv"
set -x PATH "$PYENV_ROOT/bin" $PATH
eval (pyenv init - | source)
