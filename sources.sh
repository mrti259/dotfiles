#!/bin/sh

for f in sources/*; do
	ln -sf $PWD/$f $HOME/repos/sources;
done
