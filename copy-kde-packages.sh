#!/bin/bash

    # cat ./applications | while read package 
    # do
    #     pkglist=$(sed '/^$/d' | sed '/^#/d')
    # done


CWD=$(pwd)
mkdir -p tmp
TMP=$CWD/tmp

echo $TMP

cd pkg-lists
for pkglist in *
do
  echo $pkglist

    sed '/^$/d' $pkglist| sed '/^#/d' > $TMP/$pkglist.txt

    # cat ./temp.txt
done