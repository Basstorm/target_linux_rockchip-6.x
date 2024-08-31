# SPDX-License-Identifier: GPL-2.0-only
#
# Copyright (C) 2020 Tobias Maedel

# FIT will be loaded at 0x02080000. Leave 16M for that, align it to 2M and load the kernel after it.
KERNEL_LOADADDR := 0x03200000

define Device/lunzn_fastrhino-r66s
  DEVICE_VENDOR := Lunzn
  DEVICE_MODEL := FastRhino R66S
  SOC := rk3568
  BOOT_FLOW := pine64-img
  DEVICE_PACKAGES := kmod-r8125
endef
TARGET_DEVICES += lunzn_fastrhino-r66s

define Device/lunzn_fastrhino-r68s
  $(Device/IfnameMigration)
  DEVICE_VENDOR := Lunzn
  DEVICE_MODEL := FastRhino R68S
  SOC := rk3568
  BOOT_FLOW := pine64-img
  DEVICE_PACKAGES := kmod-r8125
endef
TARGET_DEVICES += lunzn_fastrhino-r68s
