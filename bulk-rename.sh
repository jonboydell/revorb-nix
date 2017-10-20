#!/bin/bash

find . -name '*.ogg' -exec sh -c 'mv $0 $(basename $(dirname $0))-$(basename $0)' {} \;
find . -name '*.wwise' -exec sh -c 'ww2ogg $0 --pcb $HOME/Projects/ww2ogg022/packed_codebooks_aoTuV_603.bin' {} \;
ww2ogg ${item} --pcb ${WW2OGG_HOME}/packed_codebooks_aoTuV_603.bin
find . -name '*.ogg' -exec sh -c 'revorb $0' {} \;
find . -name '*.ogg' -exec sh -c 'rm $0' {} \;
