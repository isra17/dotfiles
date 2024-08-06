# Installation

```
$ stow */
```

# Setup

1. Install fonts in `~/Dropbox/fonts/`
4. Install Rosetta: `softwareupdate --install-rosetta`

## Neovim

1. Install vim-plugs:

    ```
    sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
    ```

2. Install plugs: `nvim` and `PlugInstall` (Might need to run twice)
3. Setup nvim pyenv:

    ```
    pyenv install 3.11.9
    pyenv virtualenv 3.11.9 nvim
    pyenv shell 3.11.9
    pip install pynvim
    ```
