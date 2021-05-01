#!/bin/bash

BUILDDIR="$HOME"

ESPIDFDIR="$BUILDDIR/esp-idf"
LEDDRIVERDIR="$BUILDDIR/esp32leddriver"

source "$ESPIDFDIR"/export.sh

make EXTRA_IDFPY_FLAGS="-DUSER_MODULES=\"$LEDDRIVERDIR/firmware/esp32/modules/cball;$LEDDRIVERDIR/firmware/esp32/modules/esphttpd\"" BOARD=LEDBALL all
