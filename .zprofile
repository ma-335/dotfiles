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

#+------------------------+
#| Docker Toolbox for Mac |
#+------------------------+
if [ `docker-machine status default` != "Running" ]; then
    echo "default docker-machine is not running"
fi
eval "$(docker-machine env default)"

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
