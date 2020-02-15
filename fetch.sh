#!/usr/bin/env bash

rm -rf wayland
git clone --depth 1 https://salsa.debian.org/xorg-team/wayland/wayland.git -b wayland-1.18.0-1

rm -rf wayland-protocols
git clone --depth 1 https://salsa.debian.org/xorg-team/wayland/wayland-protocols.git -b wayland-protocols-1.18-1
