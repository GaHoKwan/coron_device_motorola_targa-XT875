#!/bin/bash

apkBaseName=$1
tempSmaliDir=$2

if [ "$apkBaseName" = "Settings" ];then
    echo ">>> in custom_app $apkBaseName"

	sed -i '3a\    <Preference android:title="Rom作者" android:summary="luo2888" style="?android:preferenceInformationStyle" />'  $tempSmaliDir/res/xml/device_info_settings.xml
	sed -i 's#android:title="@string/unlock_set_unlock_pattern_title" android:key="unlock_set_pattern"#android:title="@string/unlock_set_unlock_pattern_title" android:selectable="false" android:key="unlock_set_pattern"#g' $tempSmaliDir/res/xml/security_settings_picker.xml
	cp -f 'Settings/res/mipmap-hdpi/ic_launcher_settings.png'  $tempSmaliDir/res/mipmap-hdpi/ic_launcher_settings.png

fi
