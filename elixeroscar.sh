#!/bin/bash
echo
echo "--------------------------------------"
echo "    Project elixer 14.0 Buildbot      "
echo "                  by                  "
echo "            ajaysinghsati             "
echo "--------------------------------------"
echo "-----------------"
echo " IT'S OSCAR tIME "
echo "-----------------"
echo
echo "-----------------------"
echo " remove local manifest "
echo "-----------------------"
rm -rf .repo
echo "Initialise the project elixer UNO"
repo init --depth=1 -u https://github.com/Project-Elixir/manifest -b UNO
echo " repo sync project elixer "
repo sync -c -j$(nproc --all) --force-sync --no-clone-bundle --no-tags
echo " remove local manifest "
#Remove local manifest
rm -rf .repo/local_manifests
echo " Clone trees local manifest "
#Clone trees local manifest
git clone https://github.com/projectelixeroscar/local_manifest.git --depth 1 -b main .repo/local_manifests
echo " sync the trees local manifest "
repo sync -c --no-clone-bundle --no-tags --optimized-fetch --prune --force-sync -j8
echo " hardware/google/pixel/kernel_headers "
rm -rf hardware/google/pixel/kernel_headers

echo " envsetup "
source build/envsetup.sh
echo  " lunch command "
lunch aosp_oscar-user
export TZ=Asia/Dhaka
echo "-------------------------------------------"
echo " lets start the build Project-Elixer-oscar "
echo "-------------------------------------------"
mka bacon
