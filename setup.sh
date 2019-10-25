# This scripts can be used to set up build environment for ROM building

# Using scripts from 
# https://github.com/akhilnarang/scripts
# Thanks to Akhil Narang for his scripts, I just made it one run.

cd ~
sudo apt-get update
sudo apt-get install git-core
git clone https://github.com/akhilnarang/scripts
cd scripts
bash setup/android_build_env.sh

# End setting up build environment

#Set-up ccache
echo 'export USE_CCACHE=1' >> ~/.bashrc
source ~/.bashrc
ccache -M 100

#End
