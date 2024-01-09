#!/bin/bash
#envsetup
$device = oscar
source build/envsetup.sh
# lunch command 
lunch aosp_$device-userdebug
export TZ=Asia/Dhaka
#make command
mka bacon
# Check build status and display animation
