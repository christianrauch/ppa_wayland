#!/usr/bin/env bash

PACKAGES=("wayland" "wayland-protocols" "wlroots")

# patch changelog
for p in ${PACKAGES[@]}; do
   echo $p
   cp patch/${p}/* ${p}/debian/
done

# build source packages
for p in ${PACKAGES[@]}; do
   cd $p
   rm -r debian/source
   debuild --no-tgz-check -S
   cd ..
done
