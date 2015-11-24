#!/usr/bin/env bash

create_configs() {
    mv $HOME/.bash_profile $HOME/._bash_profile
    lnif "$SETUP_DIR/.bash_profile" "$HOME/.bash_profile"

    success "Configure Bash"
}

modules_setup() {
	git clone git://github.com/arialdomartini/oh-my-git.git --depth 1

	success "Bash Modules"
}

create_configs
modules_setup
