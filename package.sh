#!/bin/bash

BUILD_DIR=/var/lib/onlyoffice

cd $BUILD_DIR/document-server-integration/web/documentserver-example/nodejs && npm install
cd $BUILD_DIR/document-server-package && make clean deploy
