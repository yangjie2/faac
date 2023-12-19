export CC="$(xcrun --sdk appletvsimulator --find clang)"
export CFLAGS="-arch x86_64 -isysroot $(xcrun --sdk appletvsimulator --show-sdk-path) -mappletvsimulator-version-min=13.0"
export LDFLAGS="-arch x86_64 -isysroot $(xcrun --sdk appletvsimulator --show-sdk-path) -mappletvsimulator-version-min=13.0"

./bootstrap
./configure --host=x86_64-apple-darwin --disable-shared --enable-static
make clean
make
make install
