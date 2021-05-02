export ZSH=$HOME/.oh-my-zsh
# terminal with 256 colors
if [[ $TERM == xterm ]]; then TERM=xterm-256color; fi
ZSH_THEME="powerlevel10k/powerlevel10k"
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
POWERLEVEL9K_MODE='awesome-fontconfig'

POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_SHORTEN_DIR_LENGTH=2
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_beginning"
POWERLEVEL9K_STATUS_VERBOSE=false
POWERLEVEL9K_VCS_CLEAN_FOREGROUND='black'
POWERLEVEL9K_VCS_CLEAN_BACKGROUND='green'
POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND='black'
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND='yellow'
POWERLEVEL9K_VCS_MODIFIED_FOREGROUND='black'
POWERLEVEL9K_VCS_MODIFIED_BACKGROUN='cyan'
POWERLEVEL9K_FOLDER_ICON=''
POWERLEVEL9K_STATUS_OK_IN_NON_VERBOSE=true
POWERLEVEL9K_STATUS_VERBOSE=false
POWERLEVEL9K_COMMAND_EXECUTION_TIME_THRESHOLD=0
POWERLEVEL9K_VCS_UNTRACKED_ICON='\u25CF'
POWERLEVEL9K_VCS_UNSTAGED_ICON='\u00b1'
POWERLEVEL9K_VCS_INCOMING_CHANGES_ICON='\u2193'
POWERLEVEL9K_VCS_OUTGOING_CHANGES_ICON='\u2191'
POWERLEVEL9K_VCS_COMMIT_ICON="\uf417"
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX="%F{blue}\u256D\u2500%F{black}"
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon root_indicator dir virtualenv vcs)
POWERLEVEL9K_DISABLE_RPROMPT=true
POWERLEVEL9K_SHOW_CHANGESET=false

# ENABLE_CORRECTION="false"
HIST_STAMPS="mm/dd/yyyy"
plugins=(git osx sudo colorize history colored-man-pages last-working-dir compleat zsh-completions history-substring-search zsh-autosuggestions zsh-syntax-highlighting warhol aws  docker docker-compose fancy-ctrl-z jira extract yarn yarn-autocompletions)
autoload -U compinit && compinit
source $ZSH/oh-my-zsh.sh
bindkey '\e[A' history-beginning-search-backward
bindkey '\e[B' history-beginning-search-forward

source $(dirname $(gem which colorls))/tab_complete.sh
export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcxD

# Completion for kitty
kitty + complete setup zsh | source /dev/stdin

# Fuzzy finder interminal
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export PATH="/usr/local/opt/libpq/bin:$PATH"


# ALIAS
source $HOME/.aliases.sh
alias n="nvim"
alias ag='alias | grep'
alias t='tmuxinator'
alias ls='ls -a'
# ls with icons
alias lc='colorls -A --sd'
alias l='colorls -lA --sd'


export EDITOR=nvim
export VISUAL="$EDITOR"

