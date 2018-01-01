git clone https://github.com/IamJoker03/device_xiaomi_mido -b o8.1 device/xiaomi/mido
git clone https://github.com/TheScarastic/android_kernel_xiaomi_msm8953 -b lineage-15.0 kernel/xiaomi/msm8953
git clone https://github.com/TheScarastic/proprietary_vendor_xiaomi -b lineage-15.0 vendor/xiaomi
rm -rf hardware/qcom/display-caf 
git clone https://github.com/Adesh15/hardware_qcom_display -b lineage-15.0-caf-8996 hardware/qcom/display-caf/msm8937 
rm -rf hardware/qcom/audio-caf 
git clone https://github.com/Adesh15/hardware_qcom_audio -b lineage-15.0-caf-8996 hardware/qcom/audio-caf/msm8937
rm -rf hardware/qcom/media-caf 
git clone https://github.com/Adesh15/hardware_qcom_media.git -b lineage-15.0-caf-8996 hardware/qcom/media-caf/msm8937 
