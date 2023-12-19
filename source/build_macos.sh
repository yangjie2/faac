export SDKROOT=$(xcrun --sdk macosx --show-sdk-path)
export CC=$(xcrun --sdk macosx --find clang)
# export CFLAGS="-arch x86_64 -mmacosx-version-min=10.15 -isysroot $SDKROOT"
# export LDFLAGS="-arch x86_64 -mmacosx-version-min=10.15 -isysroot $SDKROOT"
# 对于Apple Silicon Macs
export CFLAGS="-arch arm64 -mmacosx-version-min=10.15 -isysroot $SDKROOT"
export LDFLAGS="-arch arm64 -mmacosx-version-min=10.15 -isysroot $SDKROOT"

./bootstrap
# ./configure --host=x86_64-apple-darwin --disable-shared --enable-static
# 对于Apple Silicon Macs
./configure --host=arm64-apple-darwin --disable-shared --enable-static
make clean
make
make install
