#!/usr/bin/env bash

create_configs() {
    printf "[include]\n\tpath = $SETUP_DIR/git/.gitconfig;\n" > "$HOME/.gitconfig"
    lnif "$SETUP_DIR/.gitignore" "$HOME/.gitignore"

    ret="$?"
    success "Configure Git"
}

create_configs
