#!/usr/bin/env bash

rm -rf wayland
git clone --depth 1 https://salsa.debian.org/xorg-team/wayland/wayland.git -b wayland-1.18.0-1

rm -rf wayland-protocols
git clone --depth 1 https://salsa.debian.org/xorg-team/wayland/wayland-protocols.git -b wayland-protocols-1.20-1

rm -r meson
wget -qO- http://deb.debian.org/debian/pool/main/m/meson/meson_0.53.1.orig.tar.gz | tar xz --one-top-level=meson --strip-components 1

rm -rf wlroots
git clone --depth 1 https://salsa.debian.org/swaywm-team/wlroots.git -b debian/0.10.0-1

rm -rf json-c
git clone --depth 1 https://salsa.debian.org/debian/json-c.git -b debian/0.13.1+dfsg-6

rm -rf sway
git clone --depth 1 https://github.com/swaywm/sway.git -b 1.4

rm -r swaybg
wget -qO- http://deb.debian.org/debian/pool/main/s/swaybg/swaybg_1.0.orig.tar.gz | tar xz --one-top-level=swaybg --strip-components 1

rm -rf pipewire
git clone --depth 1 https://salsa.debian.org/utopia-team/pipewire.git -b debian/0.2.7-1

rm -rf weston
git clone --depth 1 https://salsa.debian.org/xorg-team/wayland/weston.git -b weston-8.0.0-1
