#!/bin/bash
set -e


# Gokberk Cinbis, Jan 2021
# Generalization of du -hs * | sort -h

if [ $# -lt 1 ]; then
    echo "du-sorted <input1> ... <inputN>"
    echo "Compute size of each file/directory, print in sorted and human readable form."
    echo "Basically a shortcut to du -hs <input1> ... <inputN> | sort -h"
    echo "EXAMPLE"
    echo "  du-sorted *"
    exit 1
fi

# ok with multiple quoted arguments
command du -hs "$@" | command sort -h
