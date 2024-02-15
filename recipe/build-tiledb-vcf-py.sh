#!/bin/bash

set -ex

source $RECIPE_DIR/enable-caching.sh

cd TileDB-VCF/

cd apis/python

sccache -z

$PYTHON setup.py install --single-version-externally-managed --record record.txt --libtiledbvcf="${PREFIX}"

$PYTHON setup.py clean --all

sccache -s
