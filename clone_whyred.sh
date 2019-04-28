# This script for cloning Device, Vendor and Kernel trees which I use for building

# Remove existing
echo Removing existing stuff.
rm -rf device/xiaomi kernel/xiaomi vendor/xiaomi

echo Cloning Kernel
git clone https://github.com/CandyDevices/kernel_xiaomi_whyred -b perf kernel/xiaomi/whyred

echo Cloning Vendor
git clone https://github.com/SecretIngredients/vendor_xiaomi_whyred -b c9.0 vendor/xiaomi/whyred

echo Cloning VendorMiuiCamera
git clone https://github.com/PixelExperience-Devices/vendor_MiuiCamera -b pie-whyred vendor/MiuiCamera

echo Cloning Device Tree
#echo Enter branch
#read fbranch
git clone https://github.com/CandyDevices/device_xiaomi_whyred -b c9.0 device/xiaomi/whyred

#End Cloning

# Set CCACHE
ccache -M 50G

# End
