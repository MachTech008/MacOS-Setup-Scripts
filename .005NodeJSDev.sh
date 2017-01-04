#!/bin/bash

# 'brew cask' is an extension to brew that allows management of graphical applications through the Cask project.
# Install My Common Mac Applications
# http://gillesfabio.github.io/homebrew-cask-homepage/#
# to maintain cask ....
#     brew update && brew upgrade brew-cask && brew cleanup && brew cask cleanup

echo "------------------------------------------"
echo "STARTING '005NodeJSDev.sh' script"


####################################
# START Install Node Version Manager
####################################
#!/bin/bash

# Install NVM with the install script and cURL:
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.0/install.sh | bash

# Clone the NVM repository to ~/.nvm ...
# And add the source line to your profile (~/.bash_profile, ~/.zshrc, ~/.profile, or ~/.bashrc).
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm

# Install Node.js (comes with npm)
nvm install 6.3.1

echo "------------------------------------------"
echo "COMPLETED '005NodeJSDev.sh' script"
exit 0

#########################################
# END Install Node Version Manager
########################################
