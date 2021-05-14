#!/bin/bash

. "$(dirname "$0")/setenv.sh"

unset LC_NAME
cd "build-$BOARD"
make menuconfig
