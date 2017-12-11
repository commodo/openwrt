#
# Copyright (C) 2017 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

ARCH:=microblazeel
BOARDNAME:=Microblaze little-endian
CPU_TYPE:=microblazeel
KERNELNAME:=zImage dtbs

define Target/Description
	Build firmware images for Microblaze 32bit
	little-endian soft processor.
endef
