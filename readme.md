
## step 1

```bash
$ systemctl start docker
$ pacman -Sy expect arch-install-scripts --noconfirm
$ curl -sLO https://raw.githubusercontent.com/docker/docker/master/contrib/mkimage-arch-pacman.conf -O https://raw.githubusercontent.com/docker/docker/master/contrib/mkimage-arch.sh -O https://github.com/docker/docker/blob/master/contrib/mkimage-archarm-pacman.conf 
$ chmod +x mkimage-arch.sh
$ ./mkimage-arch.sh
$ docker save archlinux > archlinux.tar.gz
```

## step 2

```bash
$ tar -c . | docker import syui/docker-arch-base
$ docker push syui/docker-arch-base
```

or 

> dockerfile

```base
FROM scratch
ADD archlinux.tar.gz /
```

```bash
$ docker build -t syui/docker-arch-base .
$ docker psuh syui/docker-arch-base
```

## step 3

update : travis-ci -> cron jobs -> w1

```.travis-ci.yml
script:
  - docker build -t docker-arch-base .

after_success:
  - if [ "$TRAVIS_BRANCH" == "master" ]; then
        docker login -e="$DOCKER_EMAIL" -u="$DOCKER_USERNAME" -p="$DOCKER_PASSWORD";
        docker push syui/docker-arch-base;
    fi
```
