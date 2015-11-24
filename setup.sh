#!/usr/bin/env bash

git submodules update --init

source common.sh
setup_dir

source vim/setup.sh
source git/setup.sh
source bash/setup.sh
