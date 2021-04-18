import gc
import uos
from flashbdev import bdev

# ESP-IDF vfat mount crashes when called a second time if the first time failed
# boot sequence adapted so that vfat mount is only called once

def bootsec_empty():
    buf = bytearray(bdev.ioctl(5, 0))  # 5 is SEC_SIZE
    bdev.readblocks(0, buf)
    for b in buf:
        if b != 0xFF:
            return False
    return True

if bdev:
    empty = bootsec_empty()
    uos.mount(bdev, "/", mkfs=empty)

gc.collect()
