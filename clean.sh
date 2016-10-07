#!/bin/bash

BUILD_DIR=/var/lib/onlyoffice

cd $BUILD_DIR/core && make clean
cd $BUILD_DIR/sdkjs && make clean
cd $BUILD_DIR/server && make clean
