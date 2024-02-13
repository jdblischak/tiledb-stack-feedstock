#!/bin/sh

export CCACHE_DIR=/home/conda/feedstock_root/.ccache

export NN_CXX_ORIG=$CXX
export NN_CC_ORIG=$CC
export CXX=$RECIPE_DIR/cxx_wrap.sh
export CC=$RECIPE_DIR/cc_wrap.sh

# export CC="ccache ${CC}"
# export CXX="ccache ${CXX}"
# export CMAKE_C_COMPILER_LAUNCHER="ccache"
# export CMAKE_CXX_COMPILER_LAUNCHER="ccache"
# export CCACHE_BASEDIR="${SRC_DIR}"
