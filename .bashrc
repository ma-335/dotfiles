alias ls='ls -G'

if [ -z "$PS1" ]; then
	return
fi
PS1='\h:\W \$ '
