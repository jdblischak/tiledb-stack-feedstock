#!/bin/bash

set -ex

cd TileDB-VCF/

cd apis/python

$PYTHON setup.py install --single-version-externally-managed --record record.txt --libtiledbvcf="${PREFIX}"

$PYTHON setup.py clean --all
