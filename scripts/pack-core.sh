#!/bin/bash

#Usage: pack-core.sh ./core-dir output.gz

sudo find | sudo cpio -o -H newc | gzip -2 > $2
advdef -z4 $2