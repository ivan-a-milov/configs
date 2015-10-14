#!/bin/bash

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


	  
