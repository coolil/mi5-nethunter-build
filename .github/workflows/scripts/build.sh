#!/bin/bash

set -e

export ARCH=arm64
export SUBARCH=arm64

export CROSS_COMPILE=aarch64-linux-gnu-
export CROSS_COMPILE_ARM32=arm-linux-gnueabi-

export CC=clang

make vendor/xiaomi/mi8996_defconfig

./scripts/patch-nethunter.sh

make -j$(nproc)
