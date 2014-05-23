#!/usr/bin/env sh

# link everything that isn't a script
for DF in $(ls | grep -v "\.sh"); do
    rm -rf ~/.$DF
    ln -s $(pwd)/$DF ~/.$DF
done

