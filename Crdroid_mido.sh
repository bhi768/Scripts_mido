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
git fetch https://github.com/bhi768/android_frameworks_base 8.1
git cherry-pick 21e2e0828e3924d52779d8525787a519438db6ce
git cherry-pick 306831ef9c347048256dfcac99e2fecfa79fc274
git cherry-pick f77fdda338ca46015dfbb188608f0b18e0f9bfc4
git cherry-pick 8ef4e99d4dce9c0b8351f65269ed4a1d14130325
git cherry-pick 5e7d9351972ac6e43a62f741fa28886b703e0e9f
git cherry-pick 3e188488619629bc28e9996032c0f33246ce0779
git cherry-pick eefbb8b9e88618c564648c3c9ca9201c5a73f3d2
git cherry-pick 422038b785a2611445bfed12b7e0b748d9eb9cd7
git cherry-pick 81d2f1bee39baada05c25c45e7987fc9d366136b
git cherry-pick 4b4e57175862ddcf9b6fff89c5351c0b6dc9bd57
git cherry-pick 41d09150b1d37d6f0d0988136e7e6b640b3406d8
git cherry-pick a3d47d4fd51868cb9ff378f6110d66ffbf520a05
git cherry-pick 78724c3e5fc480a518da9a63229ec93b10f2c4b6
git cherry-pick ef071098bb11719edb1a92c1de08c6526cbff67b
git cherry-pick f956076e6a3836b9cf85e9766e440f496abc3e67
git cherry-pick 50ef0791faabbdfa3bec4596fd2d4777236ab237
git cherry-pick 39d00b21ee71a5d3dbac29589384ffb8a52b2db8
git cherry-pick 90312f87fe45c53ba65e1473cbbaee0d5464b41e
git cherry-pick dd2d659577a9159510961336ecbbd1e0aaf81b7f 
git cherry-pick f0713c7f521e2c9ebaf094d4b8dc71e8d98951c7
git cherry-pick 44e4f94414d9e50d67772f97ed082f8039e76b7c
git cherry-pick 80cfe9cae06c23631e578eeb3ce49b7a9613d75c
git cherry-pick 4f30ed842a3ae4cbf0947711e4398c7ae7013367
git cherry-pick d91609b09ea71d4108de224ddc9974e691e07ac7
git cherry-pick 1694823f4dcbdef16ae1838af6f22cfeff6abe9d
git cherry-pick 4ed259146c50d2c4e7cddd0021ae7c874c0a9474
git cherry-pick 820455800ef07a7bacf3a667cb693e0c70d05f37
git cherry-pick 62980ae4b89ce6ea076f646c0e5a621f553192ba
git cherry-pick 6736e0cf94b7cfcc5f6cf1a11d71c8b29bfaa71e
git cherry-pick 755d8f56ed17a2b340204d7500bbcc606e9eac9b

