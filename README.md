# Dotfiles

![Terminal screenshot](./terminal-screenshot.png "Terminal screenshot")

## Install kitty

```
brew install kitty
```

## Install powerlevel10k theme for terminal

```
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k
```

```
gem install colorls
```


## Install plugins for .zshrc setup

- zsh-history-substring=search: ` git clone https://github.com/zsh-users/zsh-history-substring-search ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-history-substring-search`

- Autosugestions: `git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions`

- zsh-syntax-highlighting: `git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting`

```
cd ~/.oh-my-zsh/custom/plugins/
git clone https://github.com/unixorn/warhol.plugin.zsh.git warhol
```
