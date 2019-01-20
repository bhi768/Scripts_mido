# This script for cloning Device, Vendor and Kernel trees which I use for building

# Remove existing
echo Removing existing stuff.
rm -rf device/xiaomi kernel/xiaomi vendor/xiaomi

echo Cloning Kernel
git clone https://github.com/bhi768/kernel_xiaomi_msm8953/ -b c9.0-r34 kernel/xiaomi/msm8953

echo Cloning Vendor
git clone https://github.com/bhi768/proprietary_vendor_xiaomi/ -b c9.0 vendor/xiaomi

echo Cloning Device Tree
#echo Enter branch
#read fbranch
git clone https://github.com/candydevices/device_xiaomi_mido/ -b c9.0 device/xiaomi/mido && git clone https://github.com/CandyDevices/device_xiaomi_msm8953-common/ -b c9.0 device/xiaomi/msm8953-common

#End Cloning

# Set CCACHE
ccache -M 50G

# End
