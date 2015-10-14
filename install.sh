#!/bin/bash

ln -s $( pwd )/bin/reminder.sh /$HOME/_

for cf in $( ls )
do
    if [[ $cf == "install.sh" ]]
    then
	continue
    fi

    ln=/$HOME/.$cf
    [ -e $ln ] && mv $ln $ln.bak
    ln -s $( pwd )/$cf $ln
done


	  
