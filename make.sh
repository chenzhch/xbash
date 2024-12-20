BASHDIR=./bash-5.2.37
XBASH=./xbash_linux_x86_64
if [ $# != 1 ]; then
    echo "Usage: $0 inputfile"
    exit
fi
if [ ! -f $1 ]; then
    echo "Error: no such file '$1'"
    exit
fi
$XBASH $1
cp $1.c $BASHDIR/shell.c
cd $BASHDIR
make
cd $OLDPWD
rm -f $1.c
cp $BASHDIR/bash $1.x
strip $1.x
rm -f $BASHDIR/bash
echo "Make file $1.x"
