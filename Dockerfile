FROM syui/docker-arch-base:latest

#RUN pacman -Sy archlinux-keyring --noconfirm
#RUN pacman-key --populate archlinux
#RUN pacman-key --refresh-keys
#RUN pacman -Sy --noconfirm
#RUN pacman-db-upgrade
#RUN trust extract-compat
RUN pacman -Syu --noconfirm
