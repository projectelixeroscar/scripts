#!/bin/bash
#envsetup

. build/envsetup.sh
make clean
# lunch command 
lunch aosp_oscar-user
export TZ=Asia/Dhaka
#make command
mka bacon -j16
# Check build status and display animation
