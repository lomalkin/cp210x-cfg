#!/bin/sh

cd $(dirname "$0")

if [ -z $1 ]; then
	echo "Usage: $0 <new_serial_number up to 63 chars>"
	echo
	echo "Available device:"
	./cp210x-cfg -m 10c4:ea60
	exit 1
fi

set -x

./cp210x-cfg -m 10c4:ea60 -S $1

RET=$?

echo "Ret: "$RET

exit $RET
