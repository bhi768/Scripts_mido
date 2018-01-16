
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

#BT Fix 
cd frameworks/base 
git fetch https://github.com/GZOSP/frameworks_base 8.0 
git cherry-pick 976478e088053d4706c987a30000c80c19b6762a
git fetch https://github.com/AospExtended/platform_frameworks_base 8.1.x
git cherry-pick 4c791b72fc06364179282916b468777ef870cc3d 
git cherry-pick 36f56c57732ce283833ca012e7033a156c47fc5d 


cd packages/apps/Settings
git fetch http://review.firehound.me/FireHound/android_packages_apps_Settings refs/changes/63/163/1 && git cherry-pick FETCH_HEAD
git fetch http://review.firehound.me/FireHound/android_packages_apps_Settings refs/changes/64/164/1 && git cherry-pick FETCH_HEAD

cd packages/apps/Ashes 
git fetch http://review.firehound.me/FireHound/android_packages_apps_Ashes refs/changes/61/161/1 && git cherry-pick FETCH_HEAD


cd packages/apps/LineageParts 
git fetch http://review.firehound.me/FireHound/android_packages_apps_LineageParts refs/changes/60/160/1 && git cherry-pick FETCH_HEAD
