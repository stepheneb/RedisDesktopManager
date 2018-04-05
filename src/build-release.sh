#!/bin/sh

cp resources/Info.plist.sample resources/Info.plist
make clean
$(brew --prefix qt)/bin/qmake --version -makefile -d -o Makefile "CONFIG+=release" rdm.pro
make