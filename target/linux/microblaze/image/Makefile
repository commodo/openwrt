#
# Copyright (C) 2017 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#
include $(TOPDIR)/rules.mk
include $(INCLUDE_DIR)/image.mk

#################################################
# Images
#################################################

# The kernel build, already created system.dtb
define Build/dtb
	:
endef

#################################################
# Devices
#################################################

# default kernel load address
KERNEL_LOADADDR=0x8000
KERNEL_ENTRY=0x8000

TARGET_FILESYSTEMS += cpio

define MicroblazeDevice
  define Device/$(1)
	DEVICE_TITLE := $(1) development board
	KERNEL := dtb $(2) | kernel-bin | uImage none
	KERNEL_NAME = simpleImage.system
	IMAGES := simpleImage.system
	IMAGE_NAME = $$$$(IMG_PREFIX)-$(2)-$$$$(2)
  endef
  TARGET_DEVICES += $(1)
endef

$(eval $(call MicroblazeDevice,Default,system))

$(eval $(call BuildImage))
