#Device specific BLOBS
git clone https://github.com/sayan7848/device_xiaomi_mido.git -b bliss-8.1 device/xiaomi/mido
git clone https://github.com/Adesh15/android_kernel_xiaomi_msm8953.git -b featherO_rebase kernel/xiaomi/msm8953 
git clone https://github.com/sayan7848/proprietary_vendor_xiaomi.git -b oreo-mr1 vendor/xiaomi 

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

#Gerrit 
cd frameworks/base
git fetch https://github.com/sayan7848/frameworks_base o8.1 
git cherry-pick f51906c6563a2a1bb4b9806219c5af0892b9d7e1^..d137285279aaea3ca994307564fb848f9f538e60

cd packages/services/Telephony 
git fetch https://github.com/sayan7848/packages_services_Telephony o8.1
git cherry-pick c2d445d62c1c00420f07036bbfa7188596f4e89f^..54607ac0dad708f6647a13315d6fc15f423c6ff7 

cd frameworks/base 
git fetch https://github.com/IamJoker03/frameworks_base ims 
git cherry-pick cf01bc3d76a1cf7888a78065bc2dda12ebf59d4e^..63c99490c5e162a5c991e3c7854f9c1199af7e88 

rm -rf hardware/qcom/power
