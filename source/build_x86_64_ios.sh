export SDKROOT=$(xcrun --sdk iphonesimulator --show-sdk-path)
export CC=$(xcrun --sdk iphonesimulator --find clang)
export CXX=$(xcrun --sdk iphonesimulator --find clang++)
export CFLAGS="-arch x86_64 -isysroot $SDKROOT -mios-version-min=12.0"
export LDFLAGS="-arch x86_64 -isysroot $SDKROOT -mios-version-min=12.0"

./bootstrap
./configure --host=x86_64-apple-darwin --disable-shared --enable-static
make clean
make
make install
