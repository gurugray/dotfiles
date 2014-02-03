#!/usr/bin/env bash

#common
source ../common.sh
setup_dir

create_configs() {
    printf "[include]\n\tpath = $SETUP_DIR/git/.gitconfig;\n" > "$HOME/.gitconfig"
    lnif "$SETUP_DIR/.gitignore" "$HOME/.gitignore"

    success "Configure Git"
}

create_configs
