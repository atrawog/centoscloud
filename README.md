# centoscloud
Centos7 Kickstart and Cloud-Init files

To Kickstart use bootoption inst.ks=https://raw.githubusercontent.com/atrawog/centoscloud/master/ks.cfg


sudo qemu-img create -f qcow2 -o size=2.5G /var/lib/libvirt/images/c7lvm.qcow2


sudo virt-install --name c7lvm --memory 1024 --disk /var/lib/libvirt/images/c7lvm.qcow2,device=disk,bus=virtio --disk /var/lib/libvirt/images/CentOS-7-x86_64-Minimal-1810.iso,device=cdrom --os-type linux --os-variant centos7.0  --virt-type kvm   --graphics none --network network=default --boot cdrom
