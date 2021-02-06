# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

if [ -d "/main-pool/data/program/rust/.cargo/bin" ] ; then
    PATH="/main-pool/data/program/rust/.cargo/bin:$PATH"
fi

if [ -d "/usr/local/go/bin" ] ; then
    PATH="/usr/local/go/bin:$PATH"
fi

if [[ -d "$HOME/.platformio/penv/bin" ]]; then
    PATH="$HOME/.platformio/penv/bin:$PATH"
fi

if [[ -d "$HOME/.config/mybash/" ]] ; then
    PATH="$HOME/.config/mybash/:$PATH"
fi

if [[ /usr/local/cuda-11.2/bin ]]; then
    PATH="/usr/local/cuda-11.2/bin:$PATH"
fi

export CARGO_HOME=/main-pool/data/program/rust/.cargo
export RUSTUP_HOME=/main-pool/data/program/rust/.rustup

export MYVIMRC=~/./config/nvim/

