#!/bin/bash

set -e

WORKSPACE="/home/pi/devlp/workspace-automation"

export SKYPLAY_ROOT="$WORKSPACE/app/skyplay_flutter"

export LD_LIBRARY_PATH=\
"$WORKSPACE/app/flight-information-processor/build:\
$WORKSPACE/app/aviation-charts-engine/build:\
$LD_LIBRARY_PATH"

cd "$SKYPLAY_ROOT"

exec "$WORKSPACE/app/ivi-homescreen/build/shell/homescreen" \
	-b .desktop-homescreen \
	
#APP_DIR="$WORKSPACE/app/skyplay_flutter"
#HOMESCREEN="$WORKSPACE/app/ivi-homescreen/build/shell/homescreen"

#cd "$APP_DIR"

#exec "$HOMESCREEN" \
#	-b ".desktop-homescreen" \
#	--w=1024 \
#	--h=768

