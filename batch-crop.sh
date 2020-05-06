#!/bin/sh
#
# Wrapper for batch-crop.scm gimp-script.
#

# if no arguments are given, use alls png-files in the directory.
if [ $# -lt 1 ]
then
    ARGS='*.png'
else 
    ARGS="$*"
fi
echo Adjusting/Converting "${ARGS}"
gimp -i --batch-interpreter='plug-in-script-fu-eval' -b "(batch-crop \"${ARGS}\")(gimp-quit 0)"
