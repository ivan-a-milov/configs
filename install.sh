#!/bin/bash

EXCLUDE="install.sh bin"
ARGC=$#

CF_LIST=$( ls )
DBG=


# CF_LIST="test.txt"
# DBG=qwe

function inst()
{
    cf=$1    ; shift 
    ln=$1    ; shift 

    if [ $DBG ]
    then
        echo "[ -e $ln ] && mv $ln $ln.bak"
        echo "ln -s $cf $ln"
    else
        [ -e $ln ] && mv $ln $ln.bak
        ln -s $cf $ln
    fi
}

function uninst()
{
    ln=$1    ; shift 

    if [ $DBG ]
    then
        echo "unlink $ln"
        echo "[ -e $ln.bak ] && mv $ln.bak $ln"
    else
        unlink $ln
        [ -e $ln.bak ] && mv $ln.bak $ln
    fi
}

function switch()
{
    cf=$( pwd )/$1  ; shift
    ln=/$HOME/$1    ; shift 

    if [[ $ARGC == 0 ]]
    then
        inst $cf $ln
    else
        uninst $ln
    fi
}

for cf in $CF_LIST
do
    if [[ $EXCLUDE =~ (^| )$cf($| ) ]]
    then
	continue
    fi

    ln=.$cf
    switch $cf $ln
done

switch bin/reminder.sh _

	  
