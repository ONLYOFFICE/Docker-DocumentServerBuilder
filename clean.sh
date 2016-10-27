#!/bin/bash

BUILD_DIR=/var/lib/onlyoffice
MODULES=(core sdkjs server)

if [ ! $# -eq 0 ]; then
  MODULES=($@)
fi

for i in ${MODULES[@]}; do
  cd $BUILD_DIR/${i} && make clean
done

