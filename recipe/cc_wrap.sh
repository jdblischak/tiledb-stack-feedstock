#!/bin/sh

args="${@##-Werror*}"
ccache $NN_CC_ORIG $args
