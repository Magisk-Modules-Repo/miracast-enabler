#!/system/bin/sh
# Put this in /data/adb/post-fs-data.d/bootlog.sh to create bootlog

{
rm -f /cache/bootlog_last.log
[ -e /cache/bootlog.log ] && mv /cache/bootlog.log /cache/bootlog_last.log
logcat -f /cache/bootlog.log &
sleep 30
kill %1
exit
} &
