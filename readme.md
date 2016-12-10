
```bash
$ systemctl start docker
$ pacman -Sy expect arch-install-scripts --noconfirm
$ curl -sLO https://raw.githubusercontent.com/docker/docker/master/contrib/mkimage-arch-pacman.conf -O https://raw.githubusercontent.com/docker/docker/master/contrib/mkimage-arch.sh -O https://github.com/docker/docker/blob/master/contrib/mkimage-archarm-pacman.conf 
$ chmod +x mkimage-arch.sh
$ ./mkimage-arch.sh
$ docker save archlinux > archlinux.tar.gz
```

travis-ci : w1

