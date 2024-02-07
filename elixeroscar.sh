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
rm -rf *
echo "Initialise the project elixer UNO"
repo init --depth=1 -u https://github.com/Project-Elixir/manifest -b UNO
echo " repo sync project elixer "
repo sync -c --force-sync --optimized-fetch --no-tags --no-clone-bundle --prune -j16(nproc --all)
echo " remove local manifest "
#Remove local manifest
rm -rf .repo/local_manifests
echo " Clone trees local manifest "
#Clone trees local manifest
git clone https://github.com/projectelixeroscar/device_oneplus_oscar.git device/oneplus/oscar
git clone https://github.com/projectelixeroscar/device_oneplus_sm6375-common.git device/oneplus/sm6375-common
git clone https://github.com/kdrag0n/proton-clang.git prebuilts/clang/host/linux-x86/clang-proton
git clone https://github.com/projectelixeroscar/android_kernel_oneplus_sm8350.git kernel/oneplus/sm6375
git clone https://github.com/projectelixeroscar/vendor_oneplus_oscar.git vendor/oneplus/oscar
git clone https://github.com/projectelixeroscar/vendor_oneplus_sm6375-common.git vendor/oneplus/sm6375-common
git clone https://github.com/projectelixeroscar/hardware_oplus.git hardware/oplus
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
