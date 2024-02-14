#!/bin/sh

args="${@##-Werror*}"
sccache $NN_CC_ORIG $args
