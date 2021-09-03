#!/bin/bash

    # cat ./applications | while read package 
    # do
    #     pkglist=$(sed '/^$/d' | sed '/^#/d')
    # done
set -e

CWD=$(pwd)
mkdir -p tmp
TMP=$CWD/tmp
rm -d -r $TMP

echo $TMP
mkdir $TMP

cd pkg-lists
for pkglist in *
do
  echo $pkglist
  sed '/^$/d' $pkglist| sed '/^#/d' > $TMP/$pkglist
done

#cd $CWD/slackware64-current/slackware64/kde/
cd $TMP
for pkglist in *
do
  echo $pkglist

  for package in `cat $pkglist`
  do
    echo $package
    packagefile=$(find $CWD/slackware64-current/slackware64/kde/ -name $package-*)
    echo "finded $packagefile"

    if [[ ! -z $packagefile ]]
    then
      mkdir -p $CWD/slackware64-current/slackware64/kde-$pkglist/
      cp $packagefile $CWD/slackware64-current/slackware64/kde-$pkglist/
    fi

  done
done
