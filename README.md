# Miracast Enabler
Google dropped support for Miracast in Android 6.0.  This module adds it back
for Android 9.0!  Check out [this XDA thread][1] for more information on the
issue.

Pixel devices should work, but others have no testing. If you find that this
works on a non-Pixel device, create an [issue][2] to let me know.

### Instructions
1. Install module via MagiskManager and reboot
2. Go to Settings > Connected Devices > Connection preferences > Cast
3. Tap the menu in the top right corner and check "Enable wireless display"

### Troubleshooting
* If receiver is not showing up in cast list, try manually connecting via WiFi
  Direct to receiver. Go to `Settings > Wi-Fi > Wi-Fi Preferences > Wi-Fi Direct`
  to manually connect.

### NOTE
* Libraries build against sailfish PQ1A.190105.004 ASOP are used. These seem to
work across all Pixel devices, but we may need to install libraries built
against specific ASOPs.

### Credit 
* AuroraWright: for packaging as first module
* sbjbs: android wfd patch (https://github.com/sbjbs/android-wfd-patch)

[1]: https://forum.xda-developers.com/pixel/how-to/guide-how-to-enable-miracast-pixel-t3888780
[2]: https://github.com/crass/miracast-enabler/issues
