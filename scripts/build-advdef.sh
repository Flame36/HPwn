#!/bin/bash

#Usage: build-advdef.sh ./build-dir

$1/configure
make
make install