#!/usr/bin/env sh

# link everything that isn't a script
for DF in $(ls | grep -v "\.sh"); do
    ln -is $(pwd)/$DF ~/.$DF
done
