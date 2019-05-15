#!/bin/bash

# CandyRoms SourceForge build upload script for Android
# Created by Dan Cartier (@NoSpamDan) - 28Apr2019
# Please keep authorship if distributed!

# ------------------Changelog ----------------#
# v1.0 Initial version
VERSION="v1.0"

#------------------- User values -----------------#
DEVICES=("whyred") # space delimited, quoted device name list
UUSER="bhi768"	# SourceForge username
USSHKEYPATH="/home/candy/.ssh/id_rsa" # set to your local private SSH key path
OUTBASE="out" # set to your /out path, up to, and without the ROM name
DEBUG=false # set this to enable/verify script variable output

#================== DON'T CHANGE BELOW THIS LINE! ==================#
OTA=false # not supported
UHOST="frs.sourceforge.net"	# upload hostname
UDIR="/home/pfs/project/candyroms/Official/Pie" # upload target directory
ROMNAME=$("$PWD") # candy9
FTPDIR="out/target/product"	# loacal top-level ftp upload directory
echo -e "\nCandyRoms SourceForge Build Upload Script ${VERSION} by @NoSpamDan"
echo -e "\nTaste the Sweetness!™"

#------------------- Core Upload Code -----------------#
echo -e "\nInitiating SFTP connection to ${UHOST} with user ${UUSER}..."
tDev=${#DEVICES[@]}
for (( j=0; j<${tDev}; j++ )); do # Loop through devices
    echo -e "\n=================================="
    echo -e "\n*** Uploading ${DEVICES[j]} builds..."
    FILES=$( ls ${FTPDIR}/${DEVICES[j]}/*.zip )
    if [[ $FILES ]]; then
        k=1
        for i in $FILES ; do
            echo -e "\nFile $k: $i"
            if [[ $i == *"DEV-DM"* ]] || [[ $i == *"OFFICIAL"* ]] || [[ $i == *"BETA"* ]] || [[ $i == *"TESTING"* ]] || [[ $i == *"-ota-"*  &&  $OTA == "true" ]] ; then
                echo -e "\nUploading..."
                if [[ $DEBUG == true ]]; then
                    echo -e "\nDEBUG flag is enabled. Variable dump:"
                    echo -e "SourceForge username:$UUSER"
                    echo -e "SSH key path:$USSHKEYPATH"
                    echo -e "SourceForge project dir:$UDIR"
                    echo -e "SourceForge upload host:$UHOST"
                    echo -e "Local out base:$OUTBASE"
                    echo -e "Local shared out path:$FTPDIR"
                    echo -e "Target device:${DEVICES[j]} "
                    echo -e "FILE:$i\n"
                    #echo -e "OTA:$OTA"
                fi

                # The heart of the operation... 
                scp -i $USSHKEYPATH ${i} $UUSER@$UHOST:$UDIR/${DEVICES[j]} # push via scp
                if [[ $? == 0  ]]; then
                    echo -e "Upload complete... Taste the Sweetness!™ "
                    echo -e "\nRenaming uploaded zip file to *.zip.bak"
                    mv $i $i.bak # rename zip to zip.bak
                else
                    echo -e "\nERROR: $? Upload failed for ${DEVICES[j]}!"
                fi

            fi
            if [[ $i == *"-ota-"* ]] && [[ $OTA == "false" ]]; then
                echo -e "Skipping OTA files..."
            fi
            k=$((k+1))
        done
    else
        echo -e "\n(No files found for ${DEVICES[j]}!)"
    fi
done
echo -e "\n=================================="
echo -e "\nFile transfer complete! \n"

