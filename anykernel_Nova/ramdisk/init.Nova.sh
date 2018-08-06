#!/system/bin/sh

#
# Nova-Kernel Boot Script
#
# Author: The~Skater~187 <theskaterdad187@gmail.com>
#

#
# This script is licensed under the terms of the GNU General Public
# License version 2, as published by the Free Software Foundation,
# and may be copied, distributed, and modified under those terms.
#

#
# This script is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
# GNU General Public License for more details.
#

echo "Executing Nova-Kernel Boot Script" | tee /dev/kmsg

#
# Optimize Mount Points
mount -o remount,noatime,nodiratime auto /
mount -o remount,noatime,nodiratime auto /dev
mount -o remount,noatime,nodiratime auto /proc
mount -o remount,noatime,nodiratime auto /sys
mount -o remount,noatime,nodiratime auto /mnt/asec
mount -o remount,noatime,nodiratime auto /mnt/user
mount -o remount,noatime,nodiratime auto /mnt/sdcard
mount -o remount,noatime,nodiratime auto /mnt/runtime
mount -o remount,noatime,nodiratime auto /mnt/media_rw
mount -o remount,noatime,nodiratime auto /mnt/secure/asec
mount -o remount,noatime,nodiratime auto /mnt/sdcard/.android_secure
#
# Launch frandom At Boot
insmod /system/lib/modules/frandom.ko
chmod 644 /dev/frandom
chmod 644 /dev/erandom
mv /dev/random /dev/random.ori
mv /dev/urandom /dev/urandom.ori
ln /dev/frandom /dev/random
chmod 644 /dev/random
ln /dev/erandom /dev/urandom
chmod 644 /dev/urandom
#
# Sdcard buffer tweaks default to 1024 kb
echo 1024 > /sys/block/mmcblk0/bdi/read_ahead_kb
echo 1024 > /sys/block/mmcblk1/bdi/read_ahead_kb
#
# Disable Sleepers
mount -t debugfs none /sys/kernel/debug
echo NO_GENTLE_FAIR_SLEEPERS > /sys/kernel/debug/sched_features;
echo NO_NEW_FAIR_SLEEPERS > /sys/kernel/debug/sched_features;
echo NO_NORMALIZED_SLEEPER > /sys/kernel/debug/sched_features;
umount /sys/kernel/debug
#
# TouchScreen Calibration
echo 7035 > /sys/class/touch/switch/set_touchscreen;
echo 8002 > /sys/class/touch/switch/set_touchscreen;
echo 11000 > /sys/class/touch/switch/set_touchscreen;
echo 13060 > /sys/class/touch/switch/set_touchscreen;
echo 14005 > /sys/class/touch/switch/set_touchscreen;
#
# Done!
#
