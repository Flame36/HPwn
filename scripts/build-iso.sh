#!/bin/bash

#Usage: build-iso.sh ./os-folder output.iso

mkisofs -b boot/isolinux/isolinux.bin -c boot/isolinux/boot.cat -o $2 -no-emul-boot -boot-load-size 4 -boot-info-table -J -R -V HPwn $1

