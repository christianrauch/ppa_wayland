#!/usr/bin/env bash

rm -rf wayland
git clone --depth 1 https://salsa.debian.org/xorg-team/wayland/wayland.git -b wayland-1.18.0-1

rm -rf wayland-protocols
git clone --depth 1 https://salsa.debian.org/xorg-team/wayland/wayland-protocols.git -b wayland-protocols-1.18-1

rm -r wlroots
git clone --depth 1 https://salsa.debian.org/swaywm-team/wlroots.git -b debian/0.10.0-1
