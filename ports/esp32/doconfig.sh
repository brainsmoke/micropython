#!/bin/bash

BUILDDIR="$HOME"

ESPIDFDIR="$BUILDDIR/esp-idf"
LEDDRIVERDIR="$BUILDDIR/esp32leddriver"

source "$ESPIDFDIR"/export.sh

unset LC_NAME
cd "build-GENERIC_SPIRAM"
make menuconfig
