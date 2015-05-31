#+-----------+
#|   PATH    |
#+-----------+
export PATH=$PATH:$HOME/opt/bin
export PATH=$PATH:$HOME/opt/src/depot_tools
export PATH=$PATH:/usr/local/Cellar/gettext/0.18.3.1/bin
export PATH=$PATH:/usr/local/share/git-core/contrib/diff-highlight

export HOMEBREW_GITHUB_API_TOKEN=aa4df862344cf19931e0c7c08075b4815d025779
export DOCKER_HOST=tcp://localhost:4243

export GOPATH=$HOME/.go_modules
export PATH=$PATH:$GOPATH/bin

export JAVA_HOME=/usr

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
