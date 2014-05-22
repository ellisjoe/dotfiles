#!/usr/bin/env sh

# link everything that isn't a script
for DF in *[^sh$]; do
    ln -is $(pwd)/$DF ~/.$DF
done

