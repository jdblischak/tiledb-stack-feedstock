#!/bin/sh

set -exo pipefail

cd TileDB-VCF/

mkdir libtiledbvcf-build && cd libtiledbvcf-build

cmake \
  -DCMAKE_INSTALL_PREFIX:PATH="${PREFIX}" \
  -DOVERRIDE_INSTALL_PREFIX=OFF \
  -DCMAKE_BUILD_TYPE=Release \
  -DFORCE_EXTERNAL_HTSLIB=OFF \
  ../libtiledbvcf

make -j ${CPU_COUNT}

make install-libtiledbvcf

# Cleanup
cd ../ && rm -r libtiledbvcf-build