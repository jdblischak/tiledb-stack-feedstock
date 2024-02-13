#!/bin/sh

args="${@##-Werror*}"
ccache $NN_CXX_ORIG $args
