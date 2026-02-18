#!/bin/sh

ADDONNAME=`basename ${PWD}`
SYNCDIRS="maps materials models sound"

for DIR in $SYNCDIRS; do
    echo "Syncing ${DIR}"
    rsync -av --delete "$DIR" "${HOME}/.local/share/Steam/steamapps/common/GarrysMod/garrysmod/addons/$ADDONNAME/$DIR"
done

