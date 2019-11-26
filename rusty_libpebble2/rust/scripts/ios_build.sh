#!/usr/bin/env bash
# building
cbindgen src/lib.rs -l c > rustylibpebble2.h
cargo lipo --release

# moving files to the ios project
inc=../ios/include
libs=../ios/libs

rm -rf ${inc} ${libs}

mkdir ${inc}
mkdir ${libs}

cp rustylibpebble2.h ${inc}
cp target/universal/release/librustylibpebble2.a ${libs}

# copy the header to the Classes folder
cp rustylibpebble2.h ../flutter/ios/Classes
# create a new libs folder
mkdir ../flutter/ios/libs
# copy the universal library into the libs folder
cp target/universal/release/librustylibpebble2.a ../flutter/ios/libs/