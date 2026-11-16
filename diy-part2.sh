#!/bin/bash
# 在 openwrt 源码目录里执行，时机：feeds 装完、.config 放进来之后，make defconfig 之前
# x86 内核固定在 6.12（Lean 默认已经切到 6.18；内核版本只能在这里改，.config 里改不了）
sed -i 's/^KERNEL_PATCHVER:=.*/KERNEL_PATCHVER:=6.12/' target/linux/x86/Makefile
