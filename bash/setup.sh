#!/usr/bin/env bash

create_configs() {
    mv $HOME/.bash_profile $HOME/._bash_profile
    lnif "$SETUP_DIR/.bash_profile" "$HOME/.bash_profile"

    ret="$?"
    success "Configure Bash"
}

create_configs
