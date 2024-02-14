#!/bin/sh

echo "sccache bucket: $SCCACHE_BUCKET"

export NN_CXX_ORIG=$CXX
export NN_CC_ORIG=$CC
export CXX=$RECIPE_DIR/cxx_wrap.sh
export CC=$RECIPE_DIR/cc_wrap.sh

mkdir -p ~/.R
echo -e "CC=$CC\nCXX=$CXX\nCXX14=$CXX\nCXX17=$CXX\nCXX20=$CXX\n" > ~/.R/Makevars
cat ~/.R/Makevars
