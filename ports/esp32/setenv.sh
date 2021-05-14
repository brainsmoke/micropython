#!/bin/bash

BUILDDIR="$HOME"

ESPIDFDIR="$BUILDDIR/esp-idf"
LEDDRIVERDIR="$BUILDDIR/esp32leddriver"

USER_MODULES="\"$LEDDRIVERDIR/firmware/esp32/modules/cball;$LEDDRIVERDIR/firmware/esp32/modules/esphttpd;$LEDDRIVERDIR/firmware/esp32/modules/uartpixel\""

BOARD="LEDBALL"

kill_screen() {
	screen -X -S micropython quit
	sleep .4
}

source "$ESPIDFDIR"/export.sh
