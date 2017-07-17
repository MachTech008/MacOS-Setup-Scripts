#!/bin/bash

# 'brew cask' is an extension to brew that allows management of graphical applications through the Cask project.
# Install My Common Mac Applications
# http://gillesfabio.github.io/homebrew-cask-homepage/#
# to maintain cask ....
#     brew update && brew upgrade brew-cask && brew cleanup && brew cask cleanup

echo "------------------------------------------"
echo "STARTING '005Node+JavaDev.sh' script"


#####################################################################
# START Install Node.js Version Manager (includes Node 6.x.x and NPM)
#####################################################################
#!/bin/bash

# Install NVM with the install script and cURL:
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.0/install.sh | bash

# Clone the NVM repository to ~/.nvm ...
# And add the source line to your profile (~/.bash_profile, ~/.zshrc, ~/.profile, or ~/.bashrc).
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm

# Install Node.js (comes with npm)
nvm install 6.3.1

# Use the Latest Recommended LTS version of Node (Long Term Support)
nvm use lts/*

echo "------------------------------------------"
echo "COMPLETED '005Node+JavaDev.sh' script"
exit 0

#####################################################################
# END Install Node.js Version Manager (includes Node 6.x.x and NPM)
#####################################################################


###############################
# START Install Java and Maven
###############################


# Get ready for more brewing
brew update

# Install Java
brew cask install java

# Install Maven - a build automation tool used primarily for Java projects
brew install maven


#############################
# END Install Java and Maven
#############################

