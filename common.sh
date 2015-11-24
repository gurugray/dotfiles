#!/usr/bin/env bash

function log {
    echo -e "====> $*"
}

function warn {
    echo -e "WARNING: $*" >&2
}

function error {
    echo -e "\e[31m[✘]\e[0m ERROR: $*" >&2
    exit 1
}

function success {
    echo -e "\e[32m[✔]\e[0m $*"
}

function lnif {
    if [ -e "$1" ]; then
        ln -sf "$1" "$2"
    fi
}

function setup_dir {
    export SETUP_DIR="$(dirname "$(readlink -f "$0")")"
}
