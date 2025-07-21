FROM registry.fedoraproject.org/fedora:42
LABEL org.opencontainers.image.source=https://github.com/empjustine/filesynchronization
RUN dnf --assumeyes upgrade --minimal --nodocs --noplugins --setopt=install_weak_deps=False \
    && dnf --assumeyes install syncthing transmission-daemon --nodocs --noplugins --setopt=install_weak_deps=False \
    && dnf clean all