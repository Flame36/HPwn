#!/bin/bash

HALT_AND_CATCH_FIRE=0

#Check dependencies and throw error if any are missing

for dependency in "gzip" "find" "cpio" "advdef" "dotnet" "mkisofs" "mksquashfs"
do
    if ! command -v $dependency &> /dev/null
    then
        HALT_AND_CATCH_FIRE=1
        echo "Missing ${dependency}"
    fi
done

if [[ $HALT_AND_CATCH_FIRE -eq 1 ]]
then
    echo "One or more dependencies are missing, aborting"
    exit
fi


WORKDIR=$(mktemp -d)
REPODIR=$(dirname -- "$0")

echo "Temporary directory: $WORKDIR"
echo "Repository location: $REPODIR"

