#!/bin/bash

cp setpkg-cutefish-kdemin slackware64-current/isolinux/setpkg
cp message.txt slackware64-current/isolinux/
cp -r pkg/cutefish/ slackware64-current/slackware64/
cp -r pkg/extra/ slackware64-current/slackware64/

xorriso -as mkisofs \
  -iso-level 4 \
  -full-iso9660-filenames \
  -R -J -A "Slackware Install CutefishOS Edition" \
  -hide-rr-moved \
  -v -d -N \
  -eltorito-boot isolinux/isolinux.bin \
  -eltorito-catalog isolinux/boot.cat \
  -no-emul-boot -boot-load-size 4 -boot-info-table \
  -isohybrid-mbr /usr/share/syslinux/isohdpfx.bin \
  -eltorito-alt-boot \
  -e isolinux/efiboot.img \
  -no-emul-boot -isohybrid-gpt-basdat \
  -m "source" \
  -m "kde" \
  -m "xfce" \
  -m "xap" \
  -m "y" \
  -m "t" \
  -m "tcl" \
  -volid "SlackDVD" \
  -output ./slackware-cutefish-dvd-plasma5min.iso \
  ./slackware64-current
