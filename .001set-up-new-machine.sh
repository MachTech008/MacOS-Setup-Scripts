#!/usr/bin/env bash

# This script is the entry point for installing all things on my computer.
#

echo "------------------------------------------"
echo "Starting '001setup-my-new-machine.sh script'"


# Install performance-enhancing Mac OS Settings
sh ./.002osx.sh

# Install Homebrew package manager
sh ./.003brew.sh

# Install useful Mac OSX developer applications
sh ./.004brew-casket.sh

# Install Node/NPM with Node Version Manager
sh ./.005NodeJSDev.sh



echo "COMPLETED '001setup-my-new-machine.sh' script"
exit 0
