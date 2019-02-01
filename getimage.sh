wget https://releases-rhcos.svc.ci.openshift.org/storage/releases/maipo/47.294/redhat-coreos-maipo-47.294-qemu.qcow2.gz 
mv redhat-coreos-maipo-47.294-qemu.qcow2.gz images
cd images
gunzip redhat-coreos-maipo-47.294-qemu.qcow2.gz 
qemu-img convert redhat-coreos-maipo-47.294-qemu.qcow2 redhat-coreos-maipo-47.294.raw

