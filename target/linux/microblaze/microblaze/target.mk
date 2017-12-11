#
# Copyright (C) 2017 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

ARCH:=microblaze
BOARDNAME:=Microblaze big-endian
CPU_TYPE:=microblaze
KERNELNAME:=zImage dtbs

define Target/Description
	Build firmware images for Microblaze 32bit
	big-endian soft processor.
endef
