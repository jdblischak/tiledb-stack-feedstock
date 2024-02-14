#!/bin/bash

set -ex

source $RECIPE_DIR/enable-caching.sh

cd TileDB-SOMA/

cd apis/python

sccache -z

echo "$PKG_VERSION" >> RELEASE-VERSION
$PYTHON setup.py install --single-version-externally-managed --record record.txt --libtiledbsoma="${PREFIX}"

$PYTHON setup.py clean --all

sccache -s
