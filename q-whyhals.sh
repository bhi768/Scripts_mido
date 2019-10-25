# Use the script to clone msm8996 hals from LineageOS for mido

# Remove existing

echo Removing existing
rm -rf hardware/qcom-caf/msm8998/audio hardware/qcom-caf/msm8998/media hardware/qcom-caf/msm8998/display

# Clone
echo Cloning


#git clone https://github.com/xiaomeme-whyred/android_hardware_qcom_audio -b lineage-17.0-caf-msm8998 hardware/qcom/media-caf/msm8998 && git clone https://github.com/xiaomeme-whyred/android_hardware_qcom_media -b lineage-17.0-caf-msm8998 hardware/qcom/display-caf/msm8998 && git clone https://github.com/xiaomeme-whyred/android_hardware_qcom_display -b lineage-17.0-caf-msm8998 hardware/qcom/audio-caf/msm8998

git clone https://github.com/bhi768/hardware_qcom_audio -b c10 hardware/qcom-caf/msm8998/audio && git clone https://github.com/bhi768/hardware_qcom_media -b c10 hardware/qcom-caf/msm8998/media && git clone https://github.com/bhi768/hardware_qcom_display -b c10 hardware/qcom-caf/msm8998/display


echo Completed

# End
