alias ls='ls -G'

autoload -U compinit
compinit
bindkey "\e[Z" reverse-menu-complete

autoload colors
colors
PROMPT="%{${fg[green]}%}%m %(!.#.$) %{${reset_color}%}"
PROMPT2="%{${fg[green]}%}%_> %{${reset_color}%}"
SPROMPT="correct: %R -> %r [y,n,a,e]? "
RPROMPT="%{${fg[green]}%}[%~]%{${reset_color}%}"

HISTFILE=~/.zsh-history
HISTSIZE=1000000
SAVEHIST=1000000
setopt append_history
setopt hist_ignore_dups
setopt share_history
setopt hist_no_store

