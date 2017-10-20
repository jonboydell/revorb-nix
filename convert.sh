#!/bin/bash

WW2OGG_HOME=${HOME}/Projects/ww2ogg022
PATH=${WW2OGG_HOME}:${HOME}/Projects/revorb:${PATH}

PROCESS_DIRECTORY=${1}

for item in $( find ${PROCESS_DIRECTORY}* );
do
    echo processing item: ${item};
    ww2ogg ${item} --pcb ${WW2OGG_HOME}/packed_codebooks_aoTuV_603.bin
done

for item in $( find ${PROCESS_DIRECTORY}*ogg );
do
    echo processing item: ${item};
    revorb ${item}
done
