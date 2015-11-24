#!/usr/bin/env bash

setup_vundle() {
    system_shell="$SHELL"
    export SHELL='/bin/sh'
    vim -u "$HOME/.vim/.vimrc" +BundleInstall! +BundleClean +qall
    export SHELL="$system_shell"

    success "Setup bundles"
}

create_symlinks() {
    endpath="$SETUP_DIR"

    lnif "$endpath/vim/.vimrc" "$HOME/.vimrc"
    lnif "$endpath/vim" "$HOME/.vim"

    success "Create SymLinks"
}

npm_setup() {
    sudo npm install -g jscs
    sudo npm install -g jshint
    success "NPM Setup"
}

npm_setup
create_symlinks
setup_vundle
