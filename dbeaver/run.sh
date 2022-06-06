#!/bin/bash
readonly SCRIPTPATH="$(dirname "$(readlink -f "${BASH_SOURCE[0]}")")"

pushd $SCRIPTPATH 
docker run --rm --name dbeaver -e DISPLAY="$DISPLAY" \
    -v '/dev/shm:/dev/shm:rw' \
    -v '/etc/machine-id:/etc/machine-id:ro' \
    -v '/var/lib/dbus:/var/lib/dbus:ro' \
    -v '/tmp/.X11-unix:/tmp/.X11-unix' \
    -v '/etc/localtime:/etc/localtime:ro' \
    -v '/etc/hosts:/etc/hosts:ro' \
    -v '$(pwd)/user:/home/user' \
    -v '$HOME/.ssh:/home/user/sshkeys:ro' \
    gasparfm/dbeaver
popd