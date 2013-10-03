#!/bin/sh
RESULT=.check_target_settings

rm -f $RESULT

HAS_DUMP_FILE=0
if [ -f "target_settings" ] ; then
    HAS_DUMP_FILE=1
fi

echo "set variable \$has_dump_file=$HAS_DUMP_FILE" > $RESULT
