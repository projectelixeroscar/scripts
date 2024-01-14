#!/bin/bash
#envsetup
source build/envsetup.sh
# lunch command 
lunch aosp_oscar-user
export TZ=Asia/Dhaka
#make command
mka bacon -j16
# Check build status and display animation
