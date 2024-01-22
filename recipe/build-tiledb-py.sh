#!/bin/bash

set -e
set -x

export TILEDB_CONDA_BUILD=1

cd TileDB-Py/
$PYTHON setup.py install --tiledb="$PREFIX" --single-version-externally-managed --record record.txt
