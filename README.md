# Miracast Enabler
Google dropped support for Miracast in Android 6.0.  This module adds it back
for Android 9.0!  Check out [this XDA thread][1] for more information on the
issue.

Pixel devices should work, but others have no testing. Exceptions are included
in the __Known Issues__ section below. If you find that this
works on a non-Pixel device, create an [issue][2] to let me know.

### Instructions
1. Install module via MagiskManager and reboot
2. Go to Settings > Connected Devices > Connection preferences > Cast
3. Tap the menu in the top right corner and check "Enable wireless display"

### Troubleshooting
* If receiver is not showing up in cast list, try manually connecting via WiFi
  Direct to receiver. Go to `Settings > Wi-Fi > Wi-Fi Preferences > Wi-Fi Direct`
  to manually connect.

#### Bootloop recovery
1. Boot TWRP using fastboot
1. Open terminal
1. Run `touch /data/cache/.disable_magisk`
1. Reboot and uninstall module via MagiskManager

#### Debugging bootloop
1. Copy [tools/bootlog.sh](https://github.com/Magisk-Modules-Repo/miracast-enabler/blob/master/tools/bootlog.sh) to `/data/adb/post-fs-data.d/`
1. Cause bootloop
1. Boot TWRP using fastboot
1. Copy / view logs

### NOTE
* Libraries build against sailfish PQ1A.190105.004 ASOP are used. These seem to
work across all Pixel devices, but we may need to install libraries built
against specific ASOPs.

### Known Issues
* Pixel 3 XL - July 2019 (and likely all later) [reports of bootloop][4]
* Pixel 3a XL - July 2019 (and likely all later) [reports of bootloop][5]
* Pixel 2 XL - [reports of random freeze in system UI][6]
* Pixel 2 - July 2019 (and likely all later) [reports of bootloop][7]
* [May disable Chromecast casting][8]

### Credit 
* AuroraWright: for packaging as first module
* sbjbs: [android wfd patch][3]

[1]: https://forum.xda-developers.com/pixel/how-to/guide-how-to-enable-miracast-pixel-t3888780
[2]: https://github.com/Magisk-Modules-Repo/miracast-enabler/issues
[3]: https://github.com/sbjbs/android-wfd-patch
[4]: https://forum.xda-developers.com/showpost.php?p=79916775&postcount=41
[5]: https://forum.xda-developers.com/showpost.php?p=79918252&postcount=42
[6]: https://forum.xda-developers.com/showpost.php?p=79470385&postcount=32
[7]: https://forum.xda-developers.com/showpost.php?p=79825775&postcount=37
[8]: https://forum.xda-developers.com/showpost.php?p=79551854&postcount=35
