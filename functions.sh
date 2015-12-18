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
        $INSTALL_CMD $cf $ln
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
    srcFile=$1 ; shift
    dstLink=$1 ; shift 

    if [ -L $dstLink ]
    then
        uninst $dstLink
    else
        inst $srcFile $dstLink
    fi
}

