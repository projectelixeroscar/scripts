#!/bin/bash
#envsetup
source build/envsetup.sh
# lunch command 
lunch aosp_oscar-userdebug
export TZ=Asia/Dhaka
#make command
mka bacon
# Check build status and display animation
