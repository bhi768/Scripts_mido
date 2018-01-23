#Device specific BLOBS
git clone https://github.com/IamJoker03/android_device_xiaomi_mido.git -b o8.1 device/xiaomi/mido
git clone https://github.com/IamJoker03/android_kernel_xiaomi_msm8953.git -b nucleon_oreo kernel/xiaomi/msm8953
git clone https://github.com/devstark15/proprietary_vendor_xiaomi -b oreo-mr1 vendor/xiaomi 

#VoLTE Shit 
rm -rf vendor/qcom/opensource/dataservices
git clone https://github.com/omnirom/vendor_qcom_opensource_dataservices.git -b android-8.1 vendor/qcom/opensource/dataservices
rm -rf frameworks/opt/telephony
git clone https://github.com/omnirom/android_frameworks_opt_telephony -b android-8.1-ims frameworks/opt/telephony
rm -rf frameworks/opt/net/ims
git clone https://github.com/omnirom/android_frameworks_opt_net_ims -b android-8.1-ims frameworks/opt/net/ims
rm -rf packages/apps/PhoneCommon
git clone https://github.com/omnirom/android_packages_apps_PhoneCommon -b android-8.1-ims packages/apps/PhoneCommon
rm -rf packages/services/Telephony
git clone https://github.com/RiteshSaxena/packages_services_Telephony/ -b 8.1-ims packages/services/Telephony
rm -rf packages/services/Telecomm
git clone https://github.com/omnirom/android_packages_services_Telecomm -b android-8.1-ims packages/services/Telecomm 

#Power
rm -rf hardware/qcom/power

HAL's
rm -rf hardware/qcom/display-caf
git clone https://github.com/Adesh15/hardware_qcom_display -b lineage-15.0-caf-8996 hardware/qcom/display-caf/msm8996 
rm -rf hardware/qcom/audio-caf 
git clone https://github.com/Adesh15/hardware_qcom_audio -b lineage-15.0-caf-8996 hardware/qcom/audio-caf/msm8996
rm -rf hardware/qcom/media-caf 
git clone https://github.com/Adesh15/hardware_qcom_media.git -b lineage-15.0-caf-8996 hardware/qcom/media-caf/msm8996
