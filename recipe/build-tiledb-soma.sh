#!/bin/sh

set -exo pipefail

source $RECIPE_DIR/enable-caching.sh

cd TileDB-SOMA/

sccache -z

mkdir libtiledbsoma-build && cd libtiledbsoma-build

cmake \
  -DCMAKE_INSTALL_PREFIX:PATH="${PREFIX}" \
  -DOVERRIDE_INSTALL_PREFIX=OFF \
  -DCMAKE_BUILD_TYPE=Release \
  -DTILEDBSOMA_BUILD_CLI=OFF \
  -DTILEDBSOMA_ENABLE_TESTING=OFF \
  ../libtiledbsoma

make -j ${CPU_COUNT}

make install-libtiledbsoma

cd .. && rm -rf libtiledbsoma-build

sccache -s
