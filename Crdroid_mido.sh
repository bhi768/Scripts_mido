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
git clone https://github.com/bhi768/hardware_qcom_display -b lineage-15.0-caf-8996 hardware/qcom/display-caf/msm8996
git clone https://github.com/Adesh15/hardware_qcom_display -b oreo-8937 hardware/qcom/display-caf/msm8937 

#IMS 
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

#VOLTE
cd frameworks/base
git fetch https://github.com/bhi768/android_frameworks_base 8.1
git cherry-pick 21e2e0828e3924d52779d8525787a519438db6ce^..755d8f56ed17a2b340204d7500bbcc606e9eac9b


