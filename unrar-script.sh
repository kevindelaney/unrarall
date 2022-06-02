#!/bin/bash
# Switch to /tmp so it creates its temp directories there
# Otherwise it tries the /src folder which it does not have write access to
cd /tmp
while true
do
	echo "Sleeping ${DELAY} seconds"
	sleep ${DELAY}
	/src/unrarall -v --output /output --clean=${CLEANMODE} --skip-if-exists /input 
done
