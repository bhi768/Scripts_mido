rm -rf frameworks/opt/telephony
git clone https://github.com/omnirom/android_frameworks_opt_telephony -b android-8.1-ims frameworks/opt/telephony
rm -rf frameworks/opt/net/ims
git clone https://github.com/omnirom/android_frameworks_opt_net_ims -b android-8.1-ims frameworks/opt/net/ims
rm -rf packages/apps/PhoneCommon
git clone https://github.com/omnirom/android_packages_apps_PhoneCommon -b android-8.1-ims packages/apps/PhoneCommon
rm -rf packages/services/Telephony
git clone https://github.com/sayan7848/packages_services_Telephony.git -b o8.1 packages/services/Telephony
rm -rf packages/services/Telecomm
git clone https://github.com/omnirom/android_packages_services_Telecomm -b android-8.1-ims packages/services/Telecomm
rm -rf frameworks/base
git clone https://github.com/sayan7848/frameworks_base.git -b o8.1 frameworks/base
