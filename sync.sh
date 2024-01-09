#!/bin/bash

echo
echo "--------------------------------------"
echo "    derpfest14 14.0 Buildbot          "
echo "                  by                  "
echo "            ajaysinghsati             "
echo "--------------------------------------"
echo
#Remove local manifest
rm -rf .repo/local_manifests
rm -rf device/oneplus/oscar
rm -rf device/oneplus/sm6375-common
rm -rf kernel/oneplus/sm6375
rm -rf vendor/oneplus/oscar
rm -rf vendor/oplus/camera
rm -rf vendor/oneplus/sm6375-common
rm -rf hardware/oplus
#Clone trees local manifest
git clone https://github.com/projectelixeroscar/local_manifest.git --depth 1 -b main .repo/local_manifests
repo sync -c --no-clone-bundle --no-tags --optimized-fetch --prune --force-sync -j8
#remove rm -rf hardware/google/pixel/kernel_headers
git clone https://www.opencode.net/romdumprx/oplus_camera.git -b 14.0 vendor/oplus/camera
rm -rf hardware/google/pixel/kernel_headers
# Run build script 
chmod u+x scripts/build.sh
./scripts/build.sh
