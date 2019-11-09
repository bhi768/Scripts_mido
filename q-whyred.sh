# This script for cloning Device, Vendor and Kernel trees which I use for building

# Remove existing
echo Removing existing stuff.
rm -rf device/xiaomi kernel/xiaomi vendor/xiaomi

echo Cloning Kernel
git clone https://github.com/CandyDevices/kernel_xiaomi_whyred -b c10 kernel/xiaomi/whyred

echo Cloning Vendor
git clone https://github.com/SecretIngredients/vendor_xiaomi_whyred -b c10 vendor/xiaomi/whyred

echo Cloning Device Tree
#echo Enter branch
#read fbranch
git clone https://github.com/CandyDevices/device_xiaomi_whyred -b c10 device/xiaomi/whyred

#End Cloning
