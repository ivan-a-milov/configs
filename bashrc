PS1='\[\033[01;32m\]\u@\h\[\033[01;34m\] \W \$\[\033[00m\] '

[ -d ~/.bash_completion.d ] && for f in ~/.bash_completion.d/* ;  do source $f ; done
[ -d ~/.bashrc.d          ] && for f in ~/.bashrc.d/* ;           do source $f ; done



