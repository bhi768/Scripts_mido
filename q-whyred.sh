# This script for cloning Device, Vendor and Kernel trees which I use for building

# Remove existing
echo Removing existing stuff.
rm -rf device/xiaomi kernel/xiaomi vendor/xiaomi

echo Cloning Kernel
git clone https://github.com/GuaiYiHu/android_kernel_xiaomi_whyred -b lineage-17.0 kernel/xiaomi/whyred

echo Cloning Vendor
git clone https://github.com/GuaiYiHu/android_vendor_xiaomi_whyred/ -b lineage-17.0 vendor/xiaomi/whyred

echo Cloning Device Tree
#echo Enter branch
#read fbranch
git clone https://github.com/GuaiYiHu/android_device_xiaomi_whyred -b lineage-17.0 device/xiaomi/whyred

#End Cloning
