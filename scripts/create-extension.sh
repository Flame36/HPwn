#!/bin/bash

#Usage: create-extension.sh ./directory output.tcz

mksquashfs $1 $2 -b 4096