#!/bin/sh

SLACKREPO=mirrors.slackware.com/slackware/slackware64-current/

CWD=$(pwd)
TMP=$CWD/tmp
cd $TMP

if [ -f $TMP/initrd.img ]
then
    echo "The initrd exists"
else
    echo "Getting the slackware initrd..."
    wget --no-check-certificate $SLACKREPO/isolinux/initrd.img
fi

setupdir=$TMP/initrd-tree
rm -rf $setupdir
mkdir $setupdir

echo "Unpack the initrd ..."
cd $setupdir
xz -cd ../initrd.img |cpio -i -d -m -H newc

#patch setup
cp $CWD/setup/setup  $setupdir/usr/lib/setup/
cp $CWD/setup/SeTpasswd  $setupdir/usr/lib/setup/
cp $CWD/setup/SeTuacct  $setupdir/usr/lib/setup/
cp $CWD/setup/SeTupass  $setupdir/usr/lib/setup/


echo "Pack a new initrd ..."
cd $setupdir
#find . -print | cpio -o --owner root:root -H newc | xz -z > $CWD/slackware64-current/isolinux/initrd.img
find . -print | cpio -o --owner root:root -H newc | gzip -9 > $CWD/slackware64-current/isolinux/initrd.img


