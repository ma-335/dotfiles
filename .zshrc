#+------------+
#|  antigen   |
#+------------+
source ~/.zsh/antigen.conf.zsh

#+------------+
#| COMPLETION |
#+------------+
fpath=(~/.zsh ${fpath})
autoload -U compinit
compinit
bindkey "\e[Z" reverse-menu-complete
zstyle ':completion:*' menu select=1

#+------------+
#|   PROMPT   |
#+------------+
autoload colors; colors

PROMPT="%{${fg[green]}%}%m %(!.#.$) %{${reset_color}%}"
PROMPT2="%{${fg[green]}%}%_> %{${reset_color}%}"
SPROMPT="correct: %R -> %r [y,n,a,e]? "
RPROMPT="%{${fg[glay]}%}[%~]%{${reset_color}%}"

#+------------+
#|  VCS_INFO  |
#+------------+
autoload -Uz add-zsh-hook
autoload -Uz colors; colors
autoload -Uz is-at-least

if is-at-least 4.3.10; then
  autoload -Uz vcs_info

  zstyle ':vcs_info:*' enable git svn
  zstyle ':vcs_info:*' formats '(%s:%b)'
  zstyle ':vcs_info:*' actionformats '(%s:%b|%a)'
  zstyle ':vcs_info:git:*' check-for-changes true
  zstyle ':vcs_info:git:*' stagedstr "+"
  zstyle ':vcs_info:git:*' unstagedstr "-"
  zstyle ':vcs_info:git:*' formats '(%s:%b) %c%u'
  zstyle ':vcs_info:git:*' actionformats '(%s:%b|%a) %c%u'

  function _update_vcs_info_msg() {
    psvar=()
    LANG=en_US.UTF-8 vcs_info
    [[ -n "${vcs_info_msg_0_}" ]] && psvar[1]="${vcs_info_msg_0_}"
  }

  add-zsh-hook precmd _update_vcs_info_msg
  RPROMPT="%1(v|%F{blue}%1v%f|) [%~]"
fi

#+------------+
#|  HISTORY   |
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
export EDITOR=emacs
bindkey -e
WORDCHARS='*?_-.[]~=&;!#$%^(){}<>'

#+-----------+
#| URL QUOTE |
#+-----------+
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

#+------------+
#|    tmux    |
#+------------+
function _show_ssh_info() {
  if [ $SHLVL -gt 1 ]; then
    if [ `echo ${1} | cut -d' ' -f1` = "ssh" ]; then
      local host=""

      for x in `echo ${1}`
      do
	if [ ${x} = "ssh" ]; then
	  continue
	elif [ `echo ${x} | cut -c1` != "-" ]; then
	  host=${x}
	  break
	fi
      done

      `tmux rename-window "ssh://${host}"`
    fi
  fi
}

add-zsh-hook preexec _show_ssh_info

#+------------+
#| GNU Emacs  |
#+------------+
[[ ${TERM} = "eterm-color" ]] && TERM=xterm-color

#+------------+
#|    RVM     |
#+------------+
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
source ~/.rvm/scripts/rvm
