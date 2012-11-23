#+-----------+
#|   PATH    |
#+-----------+
# export PATH=$PATH:/usr/local/kahua/bin
export NODE_PATH=/usr/local/lib/node
export PATH=$PATH:$HOME/opt/bin:$HOME/.npm/
export CLOJURESCRIPT_HOME=$HOME/opt/src/clojurescript
export CLASSPATH=$CLASSPATH:/usr/local/Cellar/clojure-contrib/1.2.0/clojure-contrib.jar
export ZOOKEEPER_HOME=/usr/local/zookeeper
export PATH=$PATH:$ZOOKEEPER_HOME/bin

#+-----------+
#|   ALIAS   |
#+-----------+
alias ls='ls -G'
alias grep="grep --color"
alias gosh='rlwrap --file=/Users/masaori/.rlwrap/gosh_completions gosh'
alias ccl='rlwrap ccl'
alias sbcl='rlwrap sbcl'
alias clj='rlwrap clj'

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
