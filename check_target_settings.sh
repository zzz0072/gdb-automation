#!/bin/sh
RESULT=.check_target_settings

rm -f $RESULT

HAS_TARGET_SETTINGS=0
if [ -f "target_settings" ] ; then
    HAS_TARGET_SETTINGS=1
fi

echo "set \$has_target_settings=$HAS_TARGET_SETTINGS" > $RESULT
