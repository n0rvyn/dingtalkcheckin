# Power On
./adb shell input keyevent 224
./adb shell input keyevent power

# Screen Shot
./adb shell screencap /mnt/sdcard/Download/screen.png
./adb pull /mnt/sdcard/Download/screen.png ~/Desktop/screen.png

./adb shell pm list packages


# Return Home Screen
./adb shell am start -a android.intent.action.MAIN -c android.intent.category.HOME
./adb shell input keyevent KEYCODE_HOME

# Return the Last Screen
./adb shell input keyevent KEYCODE_BACK


adb shell am start -S com.android.settings/.Settings
adb shell input keyevent KEYCODE_DPAD_RIGHT
adb shell input keyevent KEYCODE_DPAD_DOWN
adb shell input keyevent ENTER

# List Activity
./adb shell dumpsys activity
./adb shell dumpsys activity activities

# Launch DingDing
./adb shell am start -n com.alibaba.android.rimet/.biz.LaunchHomeActivity
# Stop DingDing
adb shell am force-stop com.alibaba.android.rimet

./adb pull /mnt/sdcard/Download/screen.png ~/Desktop/screen.png
./adb pull `./adb shell uiautomator dump | awk -F': ' '{print $2}'` ~/Desktop/
./adb pull `adb shell uiautomator dump | awk -F': ' '{print $2}'` ~/Desktop/

# Tap Middle Icon
./adb shell input tap 550 1840

cat window_dump.xml | sed 's/</\n/g' | grep '打卡成功' | sed -n  's/.*\(\[[0-9]\{1,\},[0-9]\{1,\}\]\)\[.*/\1/p'