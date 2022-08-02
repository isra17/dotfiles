#
# ~/.bash_profile
#

export BASH_SILENCE_DEPRECATION_WARNING=1

[[ -f /usr/local/etc/bash_completion ]] && . /usr/local/etc/bash_completion
[[ -f ~/local/bash_completion/git.bash ]] && . ~/local/bash_completion/git.bash

[[ -f ~/.bashrc ]] && . ~/.bashrc
if command -v pyenv 1>/dev/null 2>&1; then
  export PYENV_ROOT="$HOME/.pyenv"
  export PATH="$PYENV_ROOT/bin:$PATH"
  eval "$(pyenv init --path)"
fi
