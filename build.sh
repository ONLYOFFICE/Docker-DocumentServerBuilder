#!/bin/bash

BUILD_DIR=/var/lib/onlyoffice
MODULES=(core sdkjs server)

if [ ! $# -eq 0 ]; then
  MODULES=($@)
fi

for i in ${MODULES[@]}; do
  if [ ${i} = "core" ]; then
    cd $BUILD_DIR/core/Common/3dParty && ./make.sh
  fi
  cd $BUILD_DIR/${i} && make
done
