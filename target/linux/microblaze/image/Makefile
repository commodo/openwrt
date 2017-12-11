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

# $(1): rootfs contents directory
define Image/mkfs/cpio
	( cd $(call mkfs_target_dir,$(1))/; find . | cpio -o -H newc | gzip -9n > $@ )
endef

# $(1): zynq board id
define Build/dtb
	$(call Image/BuildDTB,$(DTS_DIR)/zynq-$(1).dts,$@.dtb)
endef

define Build/uRamdisk
	# Create uboot cpio.gz
	mkimage -A arm -T ramdisk -C gzip -n "$(PROFILE) OpenWRT rootfs" \
		-d $(IMAGE_ROOTFS) $@.new
	mv $@.new $@
endef

#################################################
# Devices
#################################################

# default kernel load address
KERNEL_LOADADDR=0x8000
KERNEL_ENTRY=0x8000

TARGET_FILESYSTEMS += cpio

$(eval $(call BuildImage))
