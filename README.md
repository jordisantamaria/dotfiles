- [Stow linka el contenido de la carpeta contenedora, con el ~/.folder correspondiente](#stow-linka-el-contenido-de-la-carpeta-contenedora,-con-el-~/.folder-correspondiente)
- [Para comprobar que hay link con stow](#para-comprobar-que-hay-link-con-stow)
- [Como cambiar el color](#como-cambiar-el-color)

# Tmux

## Stow linka el contenido de la carpeta contenedora, con el ~/.folder correspondiente

stow neovim

## Para comprobar que hay link con stow

`ls -la ~| grep .config`

## Como cambiar el color

- Buscar tu theme favorito en https://vimcolors.com/
- Copiar el fichero en colors/theme_name
- Actualizar settings/configs.vim `set color theme_name`

## Ranger dependency

`brew install ranger`

## NERDtree icons

set guifont=DroidSansMono_Nerd_Font:h11

vim :set guifont?

## Install plugins with warnings

-zsh-history-substring=search: ` git clone https://github.com/zsh-users/zsh-history-substring-search ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-history-substring-search`

- Autosugestions: `git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions`

- zsh-syntax-highlighting: `git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting`

# Installing librarys for setup neovim

- fzf: https://www.chrisatmachine.com/Neovim/08-fzf/

```
brew install fzf

# To install useful key bindings and fuzzy completion:
$(brew --prefix)/opt/fzf/install

brew install ripgrep

brew install --HEAD universal-ctags/universal-ctags/universal-ctags

brew install the_silver_searcher

brew install fd
```

- node and python support
  ```
  pip install pynvim
  npm i -g neovim
  ```
