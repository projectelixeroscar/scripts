rm -rf .repo/local_manifests
rm-rf device/oneplus/sm6375-common
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
