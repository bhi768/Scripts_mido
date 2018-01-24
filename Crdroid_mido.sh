#Device specific BLOBS
git clone https://github.com/bhi768/android_device_xiaomi_mido -b oreo-mr1 device/xiaomi/mido
git clone https://github.com/Adesh15/android_kernel_xiaomi_msm8953 -b featherO_rebase kernel/xiaomi/msm89
git clone https://github.com/sathish2026/proprietary_vendor_xiaomi -b oreo-mr1 vendor/xiaomi

#HAL's
rm -rf hardware/qcom/audio-caf/msm8937
rm -rf hardware/qcom/audio-caf/msm8996 
rm -rf hardware/qcom/media-caf/msm8996 
rm -rf hardware/qcom/media-caf/msm8937 
rm -rf hardware/qcom/display-caf/msm8996 
rm -rf hardware/qcom/display-caf/msm8937 
git clone https://github.com/Adesh15/hardware_qcom_audio -b oreo-8937 hardware/qcom/audio-caf/msm8937
git clone https://github.com/Adesh15/hardware_qcom_audio -b lineage-15.0-caf-8996 hardware/qcom/audio-caf/msm8996
git clone https://github.com/Adesh15/hardware_qcom_audio -b lineage-15.0-caf-8996 hardware/qcom/audio-caf/msm8996
git clone https://github.com/Adesh15/hardware_qcom_media -b lineage-15.0-caf-8996 hardware/qcom/media-caf/msm8996
git clone https://github.com/Adesh15/hardware_qcom_media -b oreo-8937 hardware/qcom/media-caf/msm8937
git clone https://github.com/Adesh15/hardware_qcom_display -b lineage-15.0-caf-8996 hardware/qcom/display-caf/msm8996
git clone https://github.com/Adesh15/hardware_qcom_display -b oreo-8937 hardware/qcom/display-caf/msm8937 

#Want VoLTE? 
rm -rf frameworks/opt/net/ims
git clone https://github.com/omnirom/android_frameworks_opt_net_ims -b android-8.1-ims frameworks/opt/net/ims
rm -rf frameworks/opt/telephony
git clone https://github.com/omnirom/android_frameworks_opt_telephony -b android-8.1-ims frameworks/opt/telephony
rm -rf packages/services/Telecomm 
git clone https://github.com/omnirom/android_packages_services_Telecomm -b android-8.1-ims packages/services/Telecomm
rm -rf packages/services/Telephony 
git clone https://github.com/Adesh15/android_packages_services_Telephony -b ims packages/services/Telephony
rm -rf vendor/qcom/opensource/dataservices
git clone https://github.com/omnirom/vendor_qcom_opensource_dataservices -b android-8.1 vendor/qcom/opensource/dataservices
rm -rf packages/apps/PhoneCommon 
git clone https://github.com/omnirom/android_packages_apps_PhoneCommon -b android-8.1-ims packages/apps/PhoneCommon


