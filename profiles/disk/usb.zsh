#
# disk/usb.bash
#

shopt -qs extglob
shopt -qs nullglob

for dev in /sys/devices/pci*/*/usb*/*/*/host*/target*/*/block/*(sd[a-z])
do
	echo noop  >$dev/queue/scheduler
done

#
# vim:fenc=utf-8:ft=sh:ci:pi:sts=0:sw=4:ts=4:
#
