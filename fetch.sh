#!/usr/bin/env bash

rm -rf wayland
git clone --depth 1 https://salsa.debian.org/xorg-team/wayland/wayland.git -b wayland-1.18.0-1

rm -rf wayland-protocols
git clone --depth 1 https://salsa.debian.org/xorg-team/wayland/wayland-protocols.git -b wayland-protocols-1.18-1

rm -r meson
wget -qO- http://deb.debian.org/debian/pool/main/m/meson/meson_0.53.1.orig.tar.gz | tar xz --one-top-level=meson --strip-components 1

rm -rf wlroots
git clone --depth 1 https://salsa.debian.org/swaywm-team/wlroots.git -b debian/0.10.0-1

rm -rf json-c
git clone --depth 1 https://salsa.debian.org/debian/json-c.git -b debian/0.13.1+dfsg-6

