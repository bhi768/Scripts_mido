# This script for cloning Device, Vendor and Kernel trees which I use for building

# Remove existing
echo Removing existing stuff.
rm -rf device/xiaomi kernel/xiaomi vendor/xiaomi

echo Cloning Kernel
git clone https://github.com/PixelExperience-Devices/kernel_xiaomi_whyred -b pie kernel/xiaomi/whyred

echo Cloning Vendor
git clone https://github.com/PixelExperience-Devices/vendor_xiaomi -b pie vendor/xiaomi

echo Cloning VendorMiuiCamera
git clone https://github.com/PixelExperience-Devices/vendor_MiuiCamera -b pie-whyred vendor/MiuiCamera

echo Cloning Device Tree
#echo Enter branch
#read fbranch
git clone https://github.com/PixelExperience-Devices/device_xiaomi_whyred -b pie device/xiaomi/whyred

#End Cloning

# Set CCACHE
ccache -M 50G

# End
