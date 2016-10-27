#!/bin/bash

BUILD_DIR=/var/lib/onlyoffice
MODULES=(core sdkjs server)

if [ ! $# -eq 0 ]; then
  MODULES=($@)
fi

cd $BUILD_DIR/core/Common/3dParty && ./make.sh

for i in ${MODULES[@]}; do
  cd $BUILD_DIR/${i} && make
done
