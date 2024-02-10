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
#rm -rf .repo
#rm -rf *
echo "Initialise the project elixer UNO"
repo init --depth=1 -u https://github.com/projectelixeroscar/manifest -b UNO
#wget "https://raw.githubusercontent.com/xc112lg/crdroid10.1/main/elixir.xml"
#mv -f elixir.xml .repo/manifests/snippets
echo " repo sync project elixer "
repo sync -c -j16 --force-sync --no-clone-bundle --no-tags

echo " remove local manifest "
#Remove local manifest
#rm -rf .repo/local_manifests
echo " Clone trees local manifest "
#Clone trees local manifest
rm -rf device/oneplus/oscar
git clone https://github.com/projectelixeroscar/device_oneplus_oscar.git device/oneplus/oscar
rm -rf device/oneplus/sm6375-common
git clone https://github.com/projectelixeroscar/device_oneplus_sm6375-common.git device/oneplus/sm6375-common
rm -rf prebuilts/clang/host/linux-x86/clang-proton
git clone https://github.com/kdrag0n/proton-clang.git prebuilts/clang/host/linux-x86/clang-proton
rm -rfkernel/oneplus/sm6375
git clone https://github.com/projectelixeroscar/android_kernel_oneplus_sm8350.git kernel/oneplus/sm6375
rm -rf vendor/oneplus/oscar
git clone https://github.com/projectelixeroscar/vendor_oneplus_oscar.git vendor/oneplus/oscar
rm -rf vendor/oneplus/sm6375-common
git clone https://github.com/projectelixeroscar/vendor_oneplus_sm6375-common.git vendor/oneplus/sm6375-common
rm -rf hardware/oplus
git clone https://github.com/projectelixeroscar/hardware_oplus.git hardware/oplus
rm -rf vendor/custom-preference
git clone https://github.com/projectelixeroscar/vendor_custom-preference.git -b UNO vendor/custom-preference
echo " hardware/google/pixel/kernel_headers "
rm -rf hardware/google/pixel/kernel_headers
#rm -rf vendor/pixel-framework/SystemUIGoogle/proto

echo " envsetup "
source build/envsetup.sh
echo  " lunch command "
lunch aosp_oscar-user
export TZ=Asia/Dhaka
echo "-------------------------------------------"
echo " lets start the build Project-Elixer-oscar "
echo "-------------------------------------------"
mka bacon
