export SDKROOT=$(xcrun --sdk iphoneos --show-sdk-path)
export CC=$(xcrun --sdk iphoneos --find clang)
export CXX=$(xcrun --sdk iphoneos --find clang++)
export CFLAGS="-arch arm64 -isysroot $SDKROOT -mios-version-min=12.0"
export LDFLAGS="-arch arm64 -isysroot $SDKROOT -mios-version-min=12.0"

./bootstrap
./configure --host=arm64-apple-darwin --disable-shared --enable-static

make clean
make
make install
