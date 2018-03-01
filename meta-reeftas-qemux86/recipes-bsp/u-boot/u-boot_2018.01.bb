require u-boot-common_${PV}.inc
require recipes-bsp/u-boot/u-boot.inc
require u-boot-reeftas-qemu.inc

DEPENDS += "bc-native dtc-native"
