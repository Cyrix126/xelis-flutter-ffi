#!/usr/bin/env bash
set -ex

exec 3>&1
REQUIRED_VERSION="1.84.0"
CURRENT_VERSION=$(rustc --version | cut -d ' ' -f 2)

if [ "$(printf '%s\n' "$REQUIRED_VERSION" "$CURRENT_VERSION" | sort -V | head -n1)" != "$REQUIRED_VERSION" ]; then
    echo "Updating Rust to version $REQUIRED_VERSION or higher (current: $CURRENT_VERSION)"
    rustup update $REQUIRED_VERSION
    rustup default $REQUIRED_VERSION
fi

rustup target add aarch64-apple-ios x86_64-apple-ios

RUST_DIR="$1"
LIB_NAME="$2"

cd "$RUST_DIR"
cargo build --release --target aarch64-apple-ios
cargo build --release --target x86_64-apple-ios

lipo -create \
    "target/aarch64-apple-ios/release/lib${LIB_NAME}.a" \
    "target/x86_64-apple-ios/release/lib${LIB_NAME}.a" \
    -output "${BUILT_PRODUCTS_DIR}/lib${LIB_NAME}.a"