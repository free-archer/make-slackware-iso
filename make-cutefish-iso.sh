xorriso -as mkisofs \
  -iso-level 4 \
  -full-iso9660-filenames \
  -R -J -A "Slackware  CuteFishOS" \
  -hide-rr-moved \
  -v -d -N \
  -eltorito-boot isolinux/isolinux.bin \
  -eltorito-catalog isolinux/boot.cat \
  -no-emul-boot -boot-load-size 4 -boot-info-table \
  -isohybrid-mbr /usr/share/syslinux/isohdpfx.bin \
  -eltorito-alt-boot \
  -e isolinux/efiboot.img \
  -no-emul-boot -isohybrid-gpt-basdat \
  -m 'source' \
  -volid "SlackDVD" \
  -output ./slackware-cutefish-dvd.iso \
  ./slackware64-current
