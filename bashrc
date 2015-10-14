source ~/.bash_completion.d/*

PS1='\[\033[01;32m\]\u@\h\[\033[01;34m\] \W \$\[\033[00m\] '

# copy-paste from 'bind -p' output as root
bind '"\e\e[C": forward-word'
bind '"\eOc": forward-word'
bind '"\e[1;3C": forward-word'
bind '"\e[1;5C": forward-word'
bind '"\e[5C": forward-word'
bind '"\ef": forward-word'
bind '"\e\e[D": backward-word'
bind '"\eOd": backward-word'
bind '"\e[1;3D": backward-word'
bind '"\e[1;5D": backward-word'
bind '"\e[5D": backward-word'
bind '"\eb": backward-word'

# IDE
alias storm='/home/oyra/IDE/storm/bin/phpstorm.sh &'
alias idea='/home/oyra/IDE/idea/bin/idea.sh &'

alias cab-all='cabal clean ; cabal configure && cabal build && cabal install ; cabal clean'

alias rlwrap='RLWRAP_HOME=$HOME/.rlwrap/ rlwrap'

# default options to common commands
alias cal='cal -3'
alias emacs='emacs -nw'
alias mplayer='mplayer -fs -really-quiet'
alias rm='rm -v'

# languages REPLs
alias racket='rlwrap racket'
alias ocaml='rlwrap ocaml'
alias clisp='clisp -q -on-error abort'

# my tools 
alias pron='rlwrap ~/proj/pronounce.sh'
alias tt='rlwrap ~/notes/time/timetrack.py'

