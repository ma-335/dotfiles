if [ $SHLVL = 1 ]; then
  tmux attach || tmux -f $HOME/.tmux.conf
fi
