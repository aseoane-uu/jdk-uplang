#!/usr/bin/env bash
set -e

SCRIPT_PATH=`dirname $0 | while read a; do cd $a && pwd && break; done`
echo $SCRIPT_PATH
cd ${SCRIPT_PATH}/..


bash configure --with-boot-jdk=/home/vscode/jdk-23.0.1/ --with-native-debug-symbols=internal --disable-warnings-as-errors --with-gtest=/workspaces/jdk-uplang/googletest
bash configure --with-boot-jdk=/home/vscode/jdk-23.0.1/ --with-debug-level=slowdebug --with-native-debug-symbols=internal --disable-warnings-as-errors --with-gtest=/workspaces/jdk-uplang/googletest
make CONF=slow compile-commands
make images CONF=slow
make hotspot CONF=slow
exit
