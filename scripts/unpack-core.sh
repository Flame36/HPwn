#!/bin/bash

#Usage: unpack-core.sh core.gz 

zcat $1 | sudo cpio -i -H newc -d