if [ -d debian ]
then
    echo " "

else
    wget https://file.upload.duongkum999.me/debian-rootfs-amd64.tar.xz
    mkdir debian
    mv debian-rootfs-amd64.tar.xz debian
    cd debian
    tar -xf debian-rootfs-amd64.tar.xz
    rm debian-rootfs-amd64.tar.xz
    wget https://file.upload.duongkum999.me/chroot.sh
    cd ..

fi

proot -S debian /bin/sh /chroot.sh