#!/bin/bash

###Start MEGA in background:
startMEGA

# bakloc="/Users/cpaian/MEGA/Nike/"
bakloc="/Users/cpaiano/MEGAsync/ImageWare/"
home="~/Documents/GitHub"


## declare an array variable
declare -a arr=("android_gvid_uif3"
                "mobilepod-android"
                "jumpstart_sample_android"
                "jumpstart_sample_ios"
                "android_gmi_sdk"
                "android_redrock_palmid_sdk"
                "gmi-stack"
                "client-config"
                "gmi"
                "gmiui_android" 
                "ios_gmi"
                "android_gbank"
                "android_gvid" 
                "sok-media-downloader-dustinbcox"
                "ims_android-release"
                "templates_gvid"
                "ScreenshotCapturingSample"
                "JenkinsResources"
                "android_idrd_test"
                "android_gvid_uif2"
                "gmi_js_bridge"
                "gmi_oob_auth"
                "ims_ios"
                "fujitsutemplates"
                "GMIAdmin"
                "Android-MFA"
                )

                # "gmiservertest"
                # "ims_android_qvtestv2"

# declare -a arr=("snkrs-android-new" 
#                 "SingleDependencyCacherForNikeSslBullshit" 
#                 "common-attribution"
#                 "one-nike-commerce-ios"
#                 "snkrs-service-check"
#                 )

####iOS
##Do this part first just in case keychain issues, in which case this will always prompt for the damn password
##Completely trash and re-clone the iOS repository, Develop branch as current, to ensure we get an actual CLEAN folder (many hundreds of megs are added, even after a "Clean" in Xcode)
#rm -rf ~/one-nike-commerce-ios
#git clone http://CPAIAN@stash.nikedev.com/scm/~cpaian/one-nike-commerce-ios.git -b develop ~/one-nike-commerce-ios/
#compress7z ~/one-nike-commerce-ios
#mv ~/one-nike-commerce-ios.7z ~/MEGA/Nike/

## now loop through the above array
for i in "${arr[@]}"
do
	# You can access them using echo "${arr[0]}", "${arr[1]}" also
   	echo "======----->>>Processing backup of $i..."

    if [ -d "$home/$i" ] 
    then
        echo "Directory $home/$i exists." 
        echo "Fetching latest from git repo..."
        cd "$home/$i" && git prune && git fetch && git prune && cd ..
        echo "Compressing..."
        compressAndroid7z "$home/$i"
        echo "Storing backup in cloud folder..."
        mv -f "$home/$i.7z" "$bakloc"
        echo "Backup of $i completed!"
    else
        echo "Error: Directory $home/$i does not exist, skipping..."
    fi

done

##Backup self and other scripts:
#cp ~/bin/* ~/MEGA/scripts/
#cp ~/*.sh ~/MEGA/scripts/
#cp ~/bin/* ~/MEGA/scripts/

####iOS
##Do this part first just in case keychain issues, in which case this will always prompt for the damn password
##Completely trash and re-clone the iOS repository, Develop branch as current, to ensure we get an actual CLEAN folder (many hundreds of megs are added, even after a "Clean" in Xcode)
#rm -rf ~/one-nike-commerce-ios
#git clone http://CPAIAN@stash.nikedev.com/scm/~cpaian/one-nike-commerce-ios.git -b develop ~/one-nike-commerce-ios/
#compress7z ~/one-nike-commerce-ios
#mv ~/one-nike-commerce-ios.7z ~/MEGA/Nike/



# ###Android
# #Archive Android current snapshot and what the hell all the work I care about
# #cp ~/primestationoneMegaFiles/*.7z ~/MEGA/primestationoneMegaFiles/
# compress7z ~/snkrs-android-new
# compress7z ~/SingleDependencyCacherForNikeSslBullshit
# compress7z ~/common-attribution
# #compress7z ~/android-fuelprint-sdk
# #compress7z ~/vortex-android
# #compress7z ~/ios-assessmentkit
# #compress7z ~/fuelprint-detectors
# #compress7z ~/shared-networking
# #compress7z ~/detour
# #compress7z ~/securecoding-android
# #compress7z ~/snkrs
# compress7z ~/one-nike-commerce-ios
# #compress7z ~/one-nike-commerce-tools
# #compress7z ~/onc-native-testing
# #compress7z ~/onc-native-testing-android
# #compress7z ~/cert-tools
# #compress7z ~/primestationone
# #compress7z ~/primestationone-estheme
# #compress7z ~/primestationone-control-android
# #compress7z ~/reicast-emulator-free5ty1e
# #compress7z ~/primestationoneMegaFiles
# compress7z ~/snkrs-service-check
# mv ~/snkrs-android-new.7z "$bakloc"
# mv ~/SingleDependencyCacherForNikeSslBullshit.7z "$bakloc"
# mv ~/common-attribution.7z "$bakloc"
# #mv ~/android-fuelprint-sdk.7z ~/MEGA/Nike/
# #mv ~/vortex-android.7z ~/MEGA/Nike/
# #mv ~/ios-assessmentkit.7z ~/MEGA/Nike/
# #mv ~/fuelprint-detectors.7z ~/MEGA/Nike/
# #mv ~/shared-networking.7z ~/MEGA/Nike/
# #mv ~/detour.7z ~/MEGA/Nike/
# #mv ~/securecoding-android.7z ~/MEGA/Nike/
# #mv ~/snkrs.7z ~/MEGA/Nike/
# mv ~/one-nike-commerce-ios.7z "$bakloc"
# #mv ~/one-nike-commerce-tools.7z ~/MEGA/Nike/
# #mv ~/onc-native-testing.7z ~/MEGA/Nike/
# #mv ~/onc-native-testing-android.7z ~/MEGA/Nike/
# #mv ~/cert-tools.7z ~/MEGA/Nike/
# #mv ~/primestationone.7z ~/MEGA/
# #mv ~/primestationone-estheme.7z ~/MEGA/
# #mv ~/primestationone-control-android.7z ~/MEGA/
# #mv ~/reicast-emulator-free5ty1e.7z ~/MEGA/
# #mv ~/primestationoneMegaFiles.7z ~/MEGA/
# mv ~/snkrs-service-check.7z "$bakloc"
