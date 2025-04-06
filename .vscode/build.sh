#!/bin/bash

mkdir -p iOS/usr/bin
cp azule iOS/usr/bin/azule
mkdir -p iOS/usr/lib/Azule/modules
cp modules/azule_apt iOS/usr/lib/Azule/modules/
cp modules/azule_decrypt iOS/usr/lib/Azule/modules/
find iOS -name .DS_Store -exec rm -rf {} \;
dpkg-deb -Zgzip -b iOS Azule-iOS.deb
rm iOS/usr/bin/azule iOS/usr/lib/Azule/modules/azule_decrypt iOS/usr/lib/Azule/modules/azule_apt
