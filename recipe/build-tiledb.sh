#!/bin/sh
set -exo pipefail

source $RECIPE_DIR/enable-caching.sh

cd TileDB/

CURL_LIBS_APPEND=`$PREFIX/bin/curl-config --libs`
export LDFLAGS="${LDFLAGS} ${CURL_LIBS_APPEND}"
export LDFLAGS="${LDFLAGS} -Wl,--no-as-needed -lrt"
export TILEDB_GCS=ON

sccache -z

mkdir build && cd build
cmake ${CMAKE_ARGS} \
  -DTILEDB_VCPKG=OFF \
  -DCMAKE_INSTALL_PREFIX="${PREFIX}" \
  -DCMAKE_BUILD_TYPE=Release \
  -DTILEDB_WERROR=OFF \
  -DTILEDB_TESTS=OFF \
  -DTILEDB_INSTALL_LIBDIR=lib \
  -DTILEDB_HDFS=ON \
  -DSANITIZER=OFF \
  -DCOMPILER_SUPPORTS_AVX2:BOOL=FALSE \
  -DTILEDB_AZURE=ON \
  -DTILEDB_GCS=${TILEDB_GCS} \
  -DTILEDB_S3=ON \
  -DTILEDB_SERIALIZATION=ON \
  -DTILEDB_LOG_OUTPUT_ON_FAILURE=ON \
  ..
make -j ${CPU_COUNT}
make -C tiledb install

sccache -s
