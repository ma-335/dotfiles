#+-----------+
#|   PATH    |
#+-----------+
export PATH=$PATH:$HOME/opt/bin
export PATH=$PATH:$HOME/opt/src/depot_tools
export PATH=$PATH:/usr/local/Cellar/gettext/0.18.3.1/bin
export PATH=$PATH:/usr/local/share/git-core/contrib/diff-highlight

export GOPATH=$HOME/.go_modules
export PATH=$PATH:$GOPATH/bin

export JAVA_HOME=/usr

#+-----------------+
#| Docker on MacOS |
#+-----------------+
if [ `boot2docker status` != "running" ]; then
    eval `boot2docker up`;
fi
eval `boot2docker shellinit 2>/dev/null`

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
