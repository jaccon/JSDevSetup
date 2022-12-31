#!/bin/bash

tput clear
echo "Install NodeJS"
echo "##############"
sudo curl -L https://raw.githubusercontent.com/tj/n/master/bin/n -o n
sudo bash n lts
sudo npm install -g n

tput clear
echo "Check NodeJS Version"
echo "####################"
node -v
npm -v
n --version

tput clear
echo "Install HomeBrew"
echo "####################"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

tput clear
echo "Check HomeBrew Version"
echo "#####################"
brew -v

tput clear
echo "Install Git"
echo "#####################"
brew install git

tput clear
echo "Check Git Version"
echo "#################"
git --version

echo "Install Watchman"
echo "#################"
brew install watchman

tput clear
echo "Install Yarn"
echo "#################"
sudo npm i -g yarn

tput clear
echo "Install Expo-CLI"
echo "################"
sudo npm install -g expo-cli

tput clear
echo "Check Expo-CLI Version"
echo "######################"
expo --version

tput clear
echo "Install Android Studio"
echo "######################"
# WARNING
# Directly modify /etc/profile is not recommended.
# Please read the cleaner approach at the following details section.
export ANDROID_HOME=/opt/google/android
export ANDROID_NDK_HOME=${ANDROID_HOME}/ndk-bundle
# PATH exports were split ONLY due THIS post readability
export PATH=${ANDROID_HOME}/emulator:${PATH}
export PATH=${ANDROID_HOME}/tools:${PATH}
export PATH=${ANDROID_HOME}/platform-tools:${PATH}

tput clear
echo "Download the Android Studio From Browser"
open "https://developer.android.com/studio?gclid=CjwKCAiA2L-dBhACEiwAu8Q9YFoKUEQMbUOXdAcVd_RSw_DBTFXBREOFgfik3ul_w-S6-EnN79ciFhoC74cQAvD_BwE&gclsrc=aw.ds"

tput clear
echo "Download the Xcode From AppStore"
echo "######################"
open "https://apps.apple.com/us/app/xcode/id497799835?mt=12"
