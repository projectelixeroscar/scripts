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
#rm -rf device/oneplus/oscar
#rm -rf device/oneplus/sm6375-common
#rm -rf kernel/oneplus/sm6375
#rm -rf vendor/oneplus/oscar
#rm -rf vendor/oplus/camera
#rm -rf vendor/oneplus/sm6375-common
#rm -rf hardware/oplus/KeyHandler
#rm -rf hardware/custom/interfaces
rm -rf bootable/recovery
#git clone https://gitlab.com/ImSurajxD/clang-r450784d.git prebuilts/clang/host/linux-x86/clang-r450784d
git clone https://github.com/Project-Elixir/bootable_recovery.git bootable/recovery
#Clone trees local manifest
#git clone https://github.com/PixelOS-AOSP/hardware_custom_interfaces.git hardware/custom/interfaces
#git clone https://github.com/projectelixeroscar/device_oneplus_oscar.git device/oneplus/oscar
#git clone https://github.com/projectelixeroscar/device_oneplus_sm6375-common.git device/oneplus/sm6375-common
#git clone https://github.com/projectelixeroscar/android_kernel_oneplus_sm8350.git kernel/oneplus/sm6375
#git clone https://github.com/projectelixeroscar/vendor_oneplus_oscar.git vendor/oneplus/oscar
#git clone https://github.com/projectelixeroscar/vendor_oneplus_sm6375-common.git vendor/oneplus/sm6375-common
#git clone https://github.com/projectelixeroscar/hardware_oplus.git hardware/oplus
#git clone https://github.com/DerpFest-AOSP/system_extras.git system/extras
#remove rm -rf hardware/google/pixel/kernel_headers
#git clone https://www.opencode.net/romdumprx/oplus_camera.git -b 14.0 vendor/oplus/camera
rm -rf hardware/google/pixel/kernel_headers
# Run build script 
chmod u+x scripts/build.sh
./scripts/build.sh
