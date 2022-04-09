img:
	qemu-img create -f qcow2 Image.img 16G

install-iso: Image.img
	qemu-system-x86_64 -enable-kvm -cdrom *.iso$ -boot menu=on -drive file=Image.img -m 2G

open-vm:
	qemu-system-x86_64 -enable-kvm -nographic -boot menu=on -drive file=Image.img -m 2G

open-vm-gui:
	qemu-system-x86_64 -enable-kvm -boot menu=on -drive file=Image.img -m 2G

