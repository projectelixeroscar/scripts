#!/bin/bash
#envsetup
source build/envsetup.sh
make clean
# lunch command 
lunch aosp_oscar-user
export TZ=Asia/Dhaka
#make command
mka bacon
# Check build status and display animation
