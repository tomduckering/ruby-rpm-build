#!/bin/bash
echo "In the mock_builder script"
echo $@
echo "-----"

CONFIG="epel-7-x86_64"

MOCK_OPTIONS="--resultdir=/buildroot/results --root=/etc/mock/${CONFIG}.cfg --rootdir=/tmp/chroot"

mock $MOCK_OPTIONS --init

mkdir -p /tmp/sources

spectool --directory /tmp/sources -g /buildroot/$1

mock $MOCK_OPTIONS --buildsrpm --spec=/buildroot/$1 --sources=/tmp/sources

cp -R /tmp/chroot/builddir/build/SRPMS /buildroot/SRPMS

ls -1 /buildroot/SRPMS/*.src.rpm | xargs -n1 mock $MOCK_OPTIONS 

cp -R /tmp/chroot/builddir/build/RPMS /buildroot/RPMS
