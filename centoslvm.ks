text
install
cdrom
lang en_US.UTF-8
keyboard de
timezone --utc Europe/Vienna
rootpw  cloudinit
selinux --disabled
firewall --service=ssh
# The following is the partition information you requested
# Note that any partitions you deleted are not expressed
# here so unless you clear all partitions first, this is
# not guaranteed to work
clearpart --all --drives=vda
ignoredisk --only-use=vda
part /boot --fstype=ext2 --asprimary --size=500
part pv.fedora1000 --grow --asprimary --size=500
volgroup fedora --pesize=8000 pv.fedora1000
logvol / --fstype=ext4 --name=root --vgname=fedora --size=4000
bootloader --location=mbr --driveorder=vda --append="nomodeset rhgb quiet"
network --device=eth0 --bootproto=dhcp
