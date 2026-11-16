#!/bin/bash
# 在 openwrt 源码目录里执行，时机：feeds update 之前
# 不要 helloworld 源（来自 Lean 的 feeds.conf.default）
sed -i '/helloworld/d' feeds.conf.default
