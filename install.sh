#!/bin/bash

DBG=

INSTALL_CMD=cp
# INSTALL_CMD="ln -s "

source functions.sh 



if [ $# != "1" ]
then
    echo "Usage: $0 dest-dir"
    exit 1
fi

DST_DIR=$1

if [ ! -d $dstD ]
then
    echo "Usage: $0 dest-dir"
    exit 1
fi

DIR_LIST=$( find files -type d )
for d in $DIR_LIST
do
    dstD=$( echo $d | sed -e "s:files/:$DST_DIR/.:" ) 
    [ -d $dstD ] || mkdir -p $dstD 
done

CF_LIST=$( find files -type f )
for f in $CF_LIST
do
    dstF=$( echo $f | sed -e "s:files/:$DST_DIR/.:")
    switch $( pwd )/$f $dstF
done

	  
