#!/bin/bash
ESPIDFDIR="../../../esp-idf"
LEDDRIVERDIR="../../../esp32leddriver"

source "$ESPIDFDIR"/export.sh

make EXTRA_IDFPY_FLAGS="-DUSER_MODULES=\"$LEDDRIVERDIR/firmware/esp32/modules/cball;$LEDDRIVERDIR/firmware/esp32/modules/esphttp\"" BOARD=GENERIC_SPIRAM all
