#!/bin/bash

BUILD_DIR=/var/lib/onlyoffice
MODULES=(core:all sdkjs:all server:all)

if [ ! $# -eq 0 ]; then
  MODULES=($@)
fi

for i in ${MODULES[@]}; do
  OLD_IFS="${IFS}"
  IFS=':' read -r -a MODULE <<< ${i}
  IFS="${OLD_IFS}"
  if [ ${MODULE[0]} = "core" ]; then
    cd $BUILD_DIR/core/Common/3dParty && ./make.sh
  fi
  cd $BUILD_DIR/${MODULE[0]} && make ${MODULE[@]:1}
done

