#!/bin/bash
#
# CandyRoms SourceForge build upload script for Android
# Created by Dan Cartier (@NoSpamDan) - 28Apr2019
# Please keep authorship if distributed!
#
# ------------------ Changelog -------------------#
# v1.0 Initial version
# v1.1 Adapted to explicitly define the FTPDIR path
# v1.2 Separate upload directories for Official and Test builds and changelog upload option
# v1.3 Code clean-up and consolidation
# v1.4 Fixed changelog file renaming for subsequent builds/uploads
#
VERSION="v1.4"
ROMNAME=$(basename "$PWD") # typical: candy10
#
######## DON'T CHANGE ABOVE THIS LINE! ###########################
# Begin user-defined values
DEVICES=("whyred") # space delimited, quoted device name list
UUSER="bhi768"	# SourceForge username
USSHKEYPATH="/home/bhi//.ssh/id_rsa" # set to your local private SSH key path
FTPDIR="out/target/product"	# local top-level ftp upload directory
UCL=true # set this to upload the changelog with the zip file
DEBUG=true # set this to enable/verify script variable output
# End user-defined values
######## DON'T CHANGE BELOW THIS LINE! ###########################
#
OTA=false # not supported
CLPATH="*changelog"
UHOST="frs.sourceforge.net"	# upload hostname
UOFFICIALDIR="/home/pfs/project/candyroms/Official/ten" # upload target OFFICIAL directory
UTESTDIR="/home/pfs/project/candyroms/Test/ten" # upload target TEST directory
UDIR="$UOFFICIALDIR"
OFFICIAL=false
TEST=false
ISOTA=false
#
echo -e "\nCandyRoms SourceForge Build Upload Script ${VERSION} by @NoSpamDan"
echo -e "\nTaste the Sweetness!™"
#------------------- Core Upload Code -----------------#
echo -e "\nInitiating SFTP connection to ${UHOST} with user ${UUSER}..."
tDev=${#DEVICES[@]}
for (( j=0; j<${tDev}; j++ )); do # Loop through devices
    echo -e "\n=================================="
    echo -e "\n*** Uploading ${DEVICES[j]} builds..."
    FILES=$( ls ${FTPDIR}/${DEVICES[j]}/*.zip )
    CLFILE=$( ls ${FTPDIR}/${DEVICES[j]}/${CLPATH}.txt )
    if [[ $FILES ]]; then
        k=1
        for i in $FILES ; do
            echo -e "\nFile $k: $i"
            if [[ $i == *"ota"* ]]; then
                echo -e "\nSkipping zip files..."
                UDIR=""
                OFFICIAL=false
                TEST=false
                ISOTA=true
            else
                if [[ $i == *"OFFICIAL"* ]]; then
                    UDIR=$UOFFICIALDIR
                    OFFICIAL=true
                else
                    if [[ $i == *"DEV-DM"* ]] || [[ $i == *"BETA"* ]] || [[ $i == *"TEST"* ]]; then
                        UDIR=$UTESTDIR
                        TEST=true
                    fi
                fi

                if [ $DEBUG == "true" ]; then
                    echo -e "\nDEBUG flag is enabled. Displaying variables:"
                    echo -e "SF username:     $UUSER"
                    echo -e "SSH key path:    $USSHKEYPATH"
                    echo -e "SF project dir:  $UDIR"
                    echo -e "SF upload host:  $UHOST"
                    echo -e "Local out path:  $FTPDIR"
                    echo -e "Target device:   ${DEVICES[j]}"
                    echo -e "Official build:  $OFFICIAL"
                    echo -e "Test build:      $TEST"
                    echo -e "Upload changelog:$UCL"
                    echo -e "Is OTA file:     $ISOTA"
                    echo -e "Upload OTA:      $OTA"
                    echo -e "File to upload:  $i"
                    echo -e "Changelog file:  $CLFILE\n"
                fi

                if [[ $OFFICIAL == "true" ]] || [[ $TEST == "true" ]] ; then
                    echo -e "\nUploading zip file..."
                    # The heart of the operation... 
                    scp -i $USSHKEYPATH ${i} $UUSER@$UHOST:$UDIR/${DEVICES[j]} # push via scp
                    if [[ $? == "0" ]]; then
                        echo -e "ROM zip upload complete... Renaming ROM zip file to *.zip.bak"
                        mv $i $i.bak # rename zip to zip.bak
                    else
                        echo -e "\nERROR: $? ROM zip file upload failed for ${DEVICES[j]}!"
                    fi

                    # If we are uploading a zip file and the changelog flag is set, push the changelog
                    if [[ $UCL == "true" ]]; then
                        echo -e "\nUploading changelog..."
                        # Include changelog 
                        scp -i $USSHKEYPATH ${CLFILE} $UUSER@$UHOST:$UDIR/${DEVICES[j]} # push via scp
                        if [[ $? == "0" ]]; then
                            echo -e "ROM changelog upload complete... Renaming changelog file to *.txt.bak"
                            mv ${CLFILE} ${CLFILE}.bak # rename txt to txt.bak
                        else
                            echo -e "\nERROR: $? ROM changelog file upload failed for ${DEVICES[j]}!"
                        fi
                    fi
                fi
            fi
            k=$((k+1))
        done
    else
        echo -e "\n(No files found for ${DEVICES[j]}!)"
    fi
done
echo -e "\n=================================="
echo -e "\nFile transfer complete!  Taste the Sweetness!™\n"

