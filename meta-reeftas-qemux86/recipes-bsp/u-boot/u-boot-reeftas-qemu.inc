BOOTENV_SIZE ??= "0x20000"
BOOTENV_SIZE[doc] = "Size of bootloader environment"

BOOTENV_RANGE ??= ""
BOOTENV_RANGE[doc] = "Range occupied by bootloader environment"

DEPLOYDIR = "${WORKDIR}/deploy-${PN}"

################################################################################
# Generic patches.
################################################################################
FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

SRC_URI_append = " \
    file://0001-ReefTAS-defconfig-for-loading-kernel-from-mmc.patch \
    file://0002-Use-mmc-dev-0-for-storing-uboot-env.patch \
"

inherit distutils-base

export BUILD_SYS
export HOST_SYS
export STAGING_INCDIR = "${STAGING_INCDIR_NATIVE}"
export STAGING_LIBDIR = "${STAGING_LIBDIR_NATIVE}"

EXTRA_OEMAKE += "BUILD_ROM=y"

DEPENDS += "swig-native"
