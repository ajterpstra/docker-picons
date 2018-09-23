#!/bin/bash

GIT_DIR=/data/picons-source
GIT_REMOTE=https://gitlab.com/picons/picons.git

if [ ! -d ${GIT_DIR} ]; then
    git clone ${GIT_REMOTE} ${GIT_DIR}
else
    cd ${GIT_DIR}
    git reset --hard
    git pull
fi

${GIT_DIR}/1-build-servicelist.sh srp
${GIT_DIR}/2-build-picons.sh srp

#if ls ${GIT_DIR}/build-output/binaries-srp/srp.*.symlink.tar.xz 1> /dev/null 2>&1; then
#    mv ${GIT_DIR}/build-output/binaries-srp/srp.*.symlink.tar.xz /tmp/picons.tar.xz
#    rm ${GIT_DIR}/build-output/binaries-srp/*.ipk ${GIT_DIR}/build-output/binaries-srp/*.xz
#fi

#if [ -f /tmp/picons.tar.xz ]; then
#    if [ -d /data/picons ]; then
#        rm -r /data/picons/*.png
#        rm -r /data/picons/logos/*.png
#    else
#        mkdir -p /data/picons/logos
#    fi
#    tar xf /tmp/picons.tar.xz -C /tmp
#    mv /tmp/srp.*/*.png /data/picons
#    mv /tmp/srp.*/logos/*.png /data/picons/logos
#    rm -r /tmp/srp.*
#    rm /tmp/picons.tar.xz
fi
