#!/bin/sh

# Copy Kernel and U-Boot tarballs to download directory
echo "Preparing files..."
cp -r $PWD/downloads/linux $PWD/downloads/buildroot-packages/linux
cp -r $PWD/downloads/uboot $PWD/downloads/buildroot-packages/uboot

# Switch to Buildroot directory and apply defconfig
echo "Applying defconfig..."
cd ./buildroot
make BR2_EXTERNAL=../ somlabs_visionsom_imx6ull_defconfig

# Start build
echo "Starting..."
make -j 4

