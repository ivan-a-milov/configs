#!/bin/bash

DBG=

source functions.sh 

DIR_LIST=$( find files -type d )
for d in $DIR_LIST
do
    dstD=$( echo $d | sed -e "s:files/:../.:" ) 
    [ -d $dstD ] || mkdir -p $dstD 
done

CF_LIST=$( find files -type f )
for f in $CF_LIST
do
    dstLink=$( echo $f | sed -e "s:files/:../.:")
    switch $( pwd )/$f $dstLink 
done

	  
