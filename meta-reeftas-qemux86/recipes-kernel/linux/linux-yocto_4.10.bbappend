FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

PR := "${PR}.1"

COMPATIBLE_MACHINE_reeftas-qemux86 = "reeftas-qemux86"

KBRANCH_reeftas-qemux86  = "standard/base"
KBUILD_DEFCONFIG_reeftas-qemux86 = "i386_defconfig"

KERNEL_FEATURES_append_reeftas-qemux86 += " cfg/smp.scc"

SRC_URI += "file://reeftas-qemu-standard.scc \
            file://reeftas-qemu-user-config.cfg \
            file://reeftas-qemu-user-features.scc \
           "

# replace these SRCREVs with the real commit ids once you've had
# the appropriate changes committed to the upstream linux-yocto repo
SRCREV_machine_pn-linux-yocto_reeftas-qemux86 ?= "${AUTOREV}"
SRCREV_meta_pn-linux-yocto_reeftas-qemux86 ?= "${AUTOREV}"
#LINUX_VERSION = "4.10"
#Remove the following line once AUTOREV is locked to a certain SRCREV
KERNEL_VERSION_SANITY_SKIP = "1"
