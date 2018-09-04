#!/bin/bash
if [ "${1:0:1}" == '-' ] ; then
   set -- mysql "$@"
fi

echo '$@:' $@
echo '$1:'$1
