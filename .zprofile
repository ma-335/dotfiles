#+-----------+
#|   PATH    |
#+-----------+
export PATH=$PATH:$HOME/opt/bin
export PATH=$PATH:$HOME/opt/src/depot_tools
export PATH=$PATH:/usr/local/opt/gettext/bin
export PATH=$PATH:/usr/local/share/git-core/contrib/diff-highlight

export GOPATH=$HOME/.go_modules
export PATH=$PATH:$GOPATH/bin

export LC_ALL='ja_JP.UTF-8'

#+-----------+
#|   ALIAS   |
#+-----------+
alias ls='ls -G'
alias la='ls -la'
alias grep="grep --color"
alias gosh='rlwrap --file=/Users/masaori/.rlwrap/gosh_completions gosh'
alias ccl='rlwrap ccl'
alias sbcl='rlwrap sbcl'
alias clj='rlwrap clj'
alias ctags='/usr/local/bin/ctags'
alias emacs='/usr/local/bin/emacs'
