#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

[[ -f ~/.bashrc.local ]] && . ~/.bashrc.local

if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

export LESS_TERMCAP_mb=$'\E[01;31m'       # begin blinking
export LESS_TERMCAP_md=$'\E[01;38;5;74m'  # begin bold
export LESS_TERMCAP_me=$'\E[0m'           # end mode
export LESS_TERMCAP_se=$'\E[0m'           # end standout-mode
export LESS_TERMCAP_so=$'\E[38;5;246m'    # begin standout-mode - info box
export LESS_TERMCAP_ue=$'\E[0m'           # end underline
export LESS_TERMCAP_us=$'\E[04;38;5;146m' # begin underline

export PS1='\[\e[0;32m\]\u\[\e[m\] \[\e[1;34m\]\w\[\e[m\] \[\e[1;32m\]$\[\e[m\] '

export PATH=$HOME/bin:$PATH
export PYRO_PATH="$HOME/flared/pyro/"

function color_my_prompt {
    local __user_and_host="\[\033[0;32m\]\u@mbp"
    local __cur_location="\[\033[0;34m\]\$(p=\${PWD/#\$HOME/\~};echo \${p/#~\/flared\/pyro\/worktree\//<work>\/})"
    local __git_branch_color="\[\033[31m\]"
    local __git_branch='`git branch 2> /dev/null | grep -e ^* | sed -E  s/^\\\\\*\ \(.+\)$/\(\\\\\1\)\ /`'
    local __prompt_tail="\[\033[35m\]$"
    local __last_color="\[\033[00m\]"
    export PS1="$__user_and_host $__cur_location $__git_branch_color$__git_branch\n$__prompt_tail$__last_color "
}
color_my_prompt

alias grep="grep --color"
alias c="(cd \$(git rev-parse --show-toplevel) && bin/format && bin/mypy && git commit)"

shopt -s histappend
shopt -s checkwinsize
export HISTFILESIZE=1000000
export HISTSIZE=1000000
export HISTCONTROL=ignoreboth
export HISTIGNORE='ls:bg:fg:history'

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
