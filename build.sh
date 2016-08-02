#!/bin/bash

BUILD_DIR=/var/lib/onlyoffice

cd $BUILD_DIR/sdkjs && make
cd $BUILD_DIR/core/Common/3dParty && make.sh
cd $BUILD_DIR/core && make
cd $BUILD_DIR/server && make
