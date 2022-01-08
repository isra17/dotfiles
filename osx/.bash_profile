#
# ~/.bash_profile
#

export BASH_SILENCE_DEPRECATION_WARNING=1

[[ -f ~/.bashrc ]] && . ~/.bashrc
if command -v pyenv 1>/dev/null 2>&1; then
  export PYENV_ROOT="$HOME/.pyenv"
  export PATH="$PYENV_ROOT/bin:$PATH"
  eval "$(pyenv init --path)"
fi
if [ -e /Users/isra17/.nix-profile/etc/profile.d/nix.sh ]; then . /Users/isra17/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer
