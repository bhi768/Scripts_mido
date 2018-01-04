git clone https://github.com/IamJoker03/device_xiaomi_mido -b o8.1 device/xiaomi/mido
git clone https://github.com/TheScarastic/android_kernel_xiaomi_msm8953 -b lineage-15.0 kernel/xiaomi/msm8953
git clone https://github.com/TheScarastic/proprietary_vendor_xiaomi -b lineage-15.0 vendor/xiaomi
rm -rf hardware/qcom/display-caf 
git clone https://github.com/Adesh15/hardware_qcom_display -b lineage-15.0-caf-8996 hardware/qcom/display-caf/msm8937 
rm -rf hardware/qcom/audio-caf 
git clone https://github.com/Adesh15/hardware_qcom_audio -b lineage-15.0-caf-8996 hardware/qcom/audio-caf/msm8937
rm -rf hardware/qcom/media-caf 
git clone https://github.com/Adesh15/hardware_qcom_media.git -b lineage-15.0-caf-8996 hardware/qcom/media-caf/msm8937 
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
