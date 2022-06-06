#!/bin/bash
readonly SCRIPTPATH="$(dirname "$(readlink -f "${BASH_SOURCE[0]}")")"

pushd $SCRIPTPATH
docker build -t gasparfm/dbeaver .
popd