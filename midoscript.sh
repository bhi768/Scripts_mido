#Device Specific Blobs
git clone https://github.com/IamJoker03/device_xiaomi_mido -b o8.1.x device/xiaomi/mido
git clone https://github.com/IamJoker03/kernel_xiaomi_msm8953 -b o8.1 kernel/xiaomi/msm8953
git clone https://github.com/TheScarastic/proprietary_vendor_xiaomi -b lineage-15.0 vendor/xiaomi

#HAL's
rm -rf hardware/qcom/media-caf 
rm -rf hardware/qcom/display-caf 
rm -rf hardware/qcom/audio-caf 
git clone https://github.com/Adesh15/hardware_qcom_display -b lineage-15.0-caf-8996 hardware/qcom/display-caf/msm8996 
git clone https://github.com/Adesh15/hardware_qcom_audio -b lineage-15.0-caf-8996 hardware/qcom/audio-caf/msm8996
git clone https://github.com/Adesh15/hardware_qcom_media.git -b lineage-15.0-caf-8996 hardware/qcom/media-caf/msm8996 

#VoLTE Fix 
rm -rf frameworks/opt/telephony
rm -rf frameworks/opt/net/ims
rm -rf packages/apps/PhoneCommon
rm -rf packages/services/Telecomm
rm -rf packages/services/Telephony
rm -rf vendor/qcom/opensource/dataservice
git clone https://github.com/omnirom/android_frameworks_opt_telephony -b android-8.1-ims frameworks/opt/telephony
git clone https://github.com/omnirom/android_frameworks_opt_net_ims -b android-8.1-ims frameworks/opt/net/ims
git clone https://github.com/omnirom/android_packages_apps_PhoneCommon -b android-8.1-ims packages/apps/PhoneCommon
git clone https://github.com/sayan7848/packages_services_Telephony.git -b o8.1 packages/services/Telephony
git clone https://github.com/omnirom/android_packages_services_Telecomm -b android-8.1-ims packages/services/Telecomm
git clone https://github.com/omnirom/vendor_qcom_opensource_dataservices.git -b android-8.1 vendor/qcom/opensource/dataservice

#Cherry-Pick VoLTE commits! 
