#!/bin/bash

echo
echo "--------------------------------------"
echo "    derpfest14 14.0 Buildbot          "
echo "                  by                  "
echo "            ajaysinghsati             "
echo "--------------------------------------"
echo
#Remove local manifest
#git clone https://github.com/akhilnarang/scripts.git script
#chmod u+x script/setup/android_build_env.sh
#./script/setup/android_build_env.sh
#echo "--------check version"
#sudo apt-get update
#sudo apt-get install e2fsprogs

#rm -rf .repo/local_manifests
rm -rf device/oneplus/oscar
rm -rf device/oneplus/sm6375-common
rm -rf system/extras
#rm -rf kernel/oneplus/sm6375
#rm -rf vendor/oneplus/oscar
#rm -rf hardware/oplus/KeyHandler
#rm -rf vendor/oplus/camera
#rm -rf prebuilts/clang/host/linux-x86/clang-r450784d
#rm -rf vendor/oneplus/sm6375-common
#git clone https://gitlab.com/ImSurajxD/clang-r450784d.git prebuilts/clang/host/linux-x86/clang-r450784d
#Clone trees local manifest
git clone https://github.com/Evolution-X/system_extras.git system/extras
git clone https://github.com/projectelixeroscar/device_oneplus_oscar.git device/oneplus/oscar
git clone https://github.com/projectelixeroscar/device_oneplus_sm6375-common.git device/oneplus/sm6375-common
#git clone https://github.com/kdrag0n/proton-clang.git prebuilts/clang/host/linux-x86/clang-proton
#git clone https://github.com/projectelixeroscar/android_kernel_oneplus_sm8350.git kernel/oneplus/sm6375
#git clone https://github.com/projectelixeroscar/vendor_oneplus_oscar.git vendor/oneplus/oscar
#git clone https://github.com/projectelixeroscar/vendor_oneplus_sm6375-common.git vendor/oneplus/sm6375-common
#git clone https://github.com/projectelixeroscar/hardware_oplus.git hardware/oplus
#remove rm -rf hardware/google/pixel/kernel_headers
#git clone https://gitlab.com/Mrick343/proprietary_vendor_oplus_camera.git -b 13.0 vendor/oplus/camera
rm -rf hardware/google/pixel/kernel_headers
# Run build script 
chmod u+x scripts/build.sh
./scripts/build.sh
