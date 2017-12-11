#
# Copyright (C) 2017 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#
include $(TOPDIR)/rules.mk

BOARD:=microblaze
BOARDNAME:=Microblaze Soft Processor
FEATURES:=fpu gpio rtc usb usbgadget targz
SUBTARGETS:=microblaze microblazeel
MAINTAINER:=Alexandru Ardelean <alexandru.ardelean@analog.com>

define Target/Description
	Build firmware image for Xilinx FPGA boards running
	Microblaze FPGA processors.
endef

KERNEL_PATCHVER:=4.14

include $(INCLUDE_DIR)/target.mk

KERNELNAME:=simpleImage.system

DEFAULT_PACKAGES += uboot-envtools

$(eval $(call BuildTarget))
