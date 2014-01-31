#!/usr/bin/env bash

setup_vundle() {
    system_shell="$SHELL"
    export SHELL='/bin/sh'
    vim -u "$HOME/.vim/.vimrc" +BundleInstall! +BundleClean +qall
    export SHELL="$system_shell"

    ret="$?"

    success "Setup bundles"
}

create_symlinks() {
    endpath="$SETUP_DIR"

    lnif "$endpath/vim/.vimrc" "$HOME/.vimrc"
    lnif "$endpath/vim" "$HOME/.vim"

    ret="$?"
    success "Create SymLinks"
}

npm_setup() {
    npm install -g jscs
    npm install -g jshint
    success "NPM Setup"
}

create_symlinks
setup_vundle
