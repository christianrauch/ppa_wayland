#!/usr/bin/env bash

PACKAGES=("wayland" "wayland-protocols" "meson" "wlroots" "json-c" "sway" "swaybg" "pipewire" "weston")

# patch changelog
for p in ${PACKAGES[@]}; do
   echo $p
   mkdir -p ${p}/debian/
   cp -rf patch/${p}/* ${p}/debian/
done

# build source packages
for p in ${PACKAGES[@]}; do
   cd $p
   rm -r debian/source
   debuild --no-tgz-check -S
   cd ..
done
