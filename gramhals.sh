# Use the script

# Remove existing

echo Removing existing
rm -rf hardware/qcom-caf/sm8150/audio hardware/qcom-caf/sm8150/media hardware/qcom-caf/sm8150/display

# Clone
echo Cloning

git clone https://github.com/LineageOS/android_hardware_qcom_audio/ -b lineage-17.1-caf-sm8150 hardware/qcom-caf/sm8150/audio && git clone https://github.com/LineageOS/android_hardware_qcom_media/ -b lineage-17.1-caf-sm8150 hardware/qcom-caf/sm8150/media && git clone https://github.com/LineageOS/android_hardware_qcom_display/ -b lineage-17.1-caf-sm8150 hardware/qcom-caf/sm8150/display


echo Completed

# End
