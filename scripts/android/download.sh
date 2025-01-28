#!/bin/bash

LIB_ROOT=../..
OS=android
ANDROID_LIBS_DIR=$LIB_ROOT/android/src/main/jniLibs

TAG_COMMIT=$(git log -1 --pretty=format:"%H")

rm -rf xelis_flutter_bins
git clone https://git.cypherstack.com/stackwallet/xelis_flutter_bins
if [ -d xelis_flutter_bins ]; then
  cd xelis_flutter_bins
else
  echo "Failed to clone xelis_flutter_bins"
  exit 1
fi

BIN=xelis_flutter.so

for TARGET in arm64-v8a armeabi-v7a x86_64
do
  ARCH_PATH=$TARGET
  if [ ! $(git tag -l "${OS}_${TARGET}_${TAG_COMMIT}") ]; then
      echo "No precompiled bins for $TAG_COMMIT found, using latest for $OS/$TARGET!"
  fi
  git checkout "${OS}_${TARGET}_${TAG_COMMIT}" || git checkout $OS/$TARGET
  if [ -f "$OS/$ARCH_PATH/$BIN" ]; then
    mkdir -p ../$ANDROID_LIBS_DIR/$ARCH_PATH
    # TODO verify bin checksum hashes
    cp -rf "$OS/$ARCH_PATH/$BIN" "../$ANDROID_LIBS_DIR/$ARCH_PATH/$BIN"
  else
    echo "$TARGET not found at $OS/$ARCH_PATH/$BIN!"
  fi
done
