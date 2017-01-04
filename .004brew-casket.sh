#!/bin/bash


# 'brew cask' is an extension to brew that allows management of graphical applications through the Cask project.
# Install My Common Mac Applications
# http://gillesfabio.github.io/homebrew-cask-homepage/#
# to maintain cask ....
#     brew update && brew upgrade brew-cask && brew cleanup && brew cask cleanup

echo "------------------------------------------"
echo "STARTING '004brew-casket.sh' script"

# Make sure we’re using the latest Homebrew.
brew update
# Upgrade any already-installed formulae.
brew upgrade

# opt out of google analytics-based tracking of home-brew usage.
brew analytics off

# install brew cask, an extension of homebrew that enables installation of common native mac apps
brew tap caskroom/cask

brew cask install atom            # https://atom.io
brew cask install sublime-text    # https://www.sublimetext.com/
brew cask install box-sync        # https://sites.box.com/sync4/
brew cask install slack           # https://slack.com/
brew cask install postman         # https://www.getpostman.com/
brew cask install flux            # https://justgetflux.com/news/pages/macquickstart/
brew cask install spectacle       # https://www.spectacleapp.com/
brew cask install cheatsheet      # https://www.cheatsheetapp.com/CheatSheet/ TODO: create alfred macro to show this for current app in focus
brew cask install alfred          # https://www.alfredapp.com/
brew cask install virtualbox      # https://www.virtualbox.org/
brew cask install iterm2          # https://www.iterm2.com/index.html

# install Mac Quick Look plugins   https://github.com/sindresorhus/quick-look-plugins/
brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv betterzipql qlimagesize webpquicklook suspicious-package quicklookase qlvideo

# Remove outdated versions from the cellar.
brew cleanup

echo "------------------------------------------"
echo "COMPLETED '004brew-casket.sh' script"
exit 0
