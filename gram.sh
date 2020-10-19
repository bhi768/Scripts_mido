# This script for cloning Device, Vendor and Kernel trees which I use for building

# Remove existing
echo Removing existing stuff.
rm -rf device/xiaomi kernel/xiaomi vendor/xiaomi

echo Cloning Kernel
git clone https://github.com/ArrowOS-Devices/android_kernel_xiaomi_sm6250 -b arrow-10.0 kernel/xiaomi/sm6250

echo Cloning Vendor
git clone https://github.com/ArrowOS-Devices/android_vendor_xiaomi_sm6250/ -b arrow-10.0 vendor/xiaomi/sm6250

echo Cloning Device Tree
#echo Enter branch
#read fbranch
git clone https://github.com/ArrowOS-Devices/android_device_xiaomi_sm6250-common -b arrow-10.0 device/xiaomi/sm6250-common

echo Cloning Device Tree
git clone https://github.com/ArrowOS-Devices/android_device_xiaomi_miatoll -b arrow-10.0 device/xiaomi/miatoll

#End Cloning
