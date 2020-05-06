#!/bin/sh
#
# Wrapper for batch-unsharp-mask.scm gimp-script.
#

# if no arguments are given, use alls jpg-files in the directory.
if [ $# -lt 1 ]
then
    ARGS='*.jpg'
else 
    ARGS="$*"
fi
echo Adjusting/Converting "${ARGS}"
gimp -i --batch-interpreter='plug-in-script-fu-eval' -b "(batch-unsharp-mask \"${ARGS}\" 5.0 0.5 0)(gimp-quit 0)"
