#!/bin/sh

args="${@##-Werror*}"
sccache $NN_CXX_ORIG $args
