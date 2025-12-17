FROM registry.fedoraproject.org/fedora:43
LABEL org.opencontainers.image.source=https://github.com/empjustine/filesynchronization
RUN dnf --quiet --assumeyes upgrade --minimal --no-docs --no-plugins --setopt=install_weak_deps=False \
    && dnf --quiet --assumeyes install syncthing transmission-daemon --no-docs --no-plugins --setopt=install_weak_deps=False \
    && dnf --quiet clean all
