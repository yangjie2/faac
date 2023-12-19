export CC="$(xcrun --sdk appletvos --find clang)"
export CFLAGS="-arch arm64 -isysroot $(xcrun --sdk appletvos --show-sdk-path) -mappletvos-version-min=13.0"
export LDFLAGS="-arch arm64 -isysroot $(xcrun --sdk appletvos --show-sdk-path) -mappletvos-version-min=13.0"

./bootstrap
./configure --host=arm64-apple-darwin --disable-shared --enable-static
make clean
make
make install
