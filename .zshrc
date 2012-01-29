#+------------+
#| COMPLETION |
#+------------+
fpath=(~/.zsh ${fpath})
autoload -U compinit
compinit
bindkey "\e[Z" reverse-menu-complete

#+------------+
#|   PROMPT   |
#+------------+
autoload colors
colors
PROMPT="%{${fg[green]}%}%m %(!.#.$) %{${reset_color}%}"
PROMPT2="%{${fg[green]}%}%_> %{${reset_color}%}"
SPROMPT="correct: %R -> %r [y,n,a,e]? "
RPROMPT="%{${fg[glay]}%}[%~]%{${reset_color}%}"

#+------------+
#|   HISTORY  |
#+------------+
HISTFILE=~/.zsh-history
HISTSIZE=1000000
SAVEHIST=1000000
setopt append_history
setopt hist_ignore_dups
setopt share_history
setopt hist_no_store
autoload history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey "^P" history-beginning-search-backward-end
bindkey "^N" history-beginning-search-forward-end

#+-----------+
#|  OPTIONS  |
#+-----------+
bindkey "^[u" undo
bindkey "^[r" redo
stty stop undef
typeset -U path
export EDITOR=vim
bindkey -e
WORDCHARS='*?_-.[]~=&;!#$%^(){}<>'

#+-----------+
#| URL QUOTE |
#+-----------+
autoload -U is-at-least
if is-at-least 4.3.11; then
    autoload -Uz url-quote-magic
    zle -N self-insert url-quote-magic
fi


function chpwd() { ls }

#+------------+
#| GNU SCREEN |
#+------------+
if [ ${STY} ]; then
  preexec() {
    echo -ne "\ek${1%% *}\e\\"
  }
  precmd() {
    echo -ne "\ek$(basename $(print -P %~))\e\\"
  }
fi
