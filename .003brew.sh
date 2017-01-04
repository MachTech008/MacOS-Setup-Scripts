#!/bin/bash
echo "------------------------------------------"
echo "STARTING '003brew.sh' script"






########################
# START Install Homebrew
########################
# Before beginning, ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until `.osx` has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

if test ! "$(which brew)"; then
  echo "You don't have homebrew installed. Let me install Homebrew for you."
  # Install the correct homebrew for each OS type
  if test "$(uname)" = "Darwin"; then
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    echo "Finished installing Homebrew on your computer."
  else
    echo "You tried running this script on a non-OSX computer. The program has exited."
  fi
else
  echo "It looks like you have homebrew installed already. Nothing to do here."
fi
#######################
# END Install Homebrew
######################






#########################################
# START Install my Homebrew packages
########################################
# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# download zsh shell with plugins
brew install zsh
brew install oh-my-zsh
# Additional completion definitions for Zsh.
git clone https://github.com/zsh-users/zsh-completions ~/.oh-my-zsh/custom/plugins/zsh-completions
# Shows your current command as green(valid command) or red(invalid command)
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/custom/plugins/zsh-syntax-highlighting
# Better NPM completions
git clone https://github.com/lukechilds/zsh-better-npm-completion ~/.oh-my-zsh/custom/plugins/zsh-better-npm-completion

# If you're still in the default shell, change default shell to zsh manually
sh -c "echo '/usr/local/bin/zsh' >> /etc/shells" && chsh -s /usr/local/bin/zsh



# Install font tools.
brew tap caskroom/fonts         #installs Fira Code font with Ligatures see: https://github.com/tonsky/FiraCode/wiki
brew cask install font-fira-code

# Install other useful binaries.
brew install tree                     # http://brewformulas.org/tree
brew install git                      # http://brewformulas.org/Git
brew install shellcheck               # used for Atom linter shellcheck
brew install sqlformat                # used for Atom Beautify package



# Type `git open` to open the GitHub page or website for a repository.
npm install -g git-open

# fancy listing of recent branches
npm install -g git-recent

# Remove outdated versions from the cellar.
brew cleanup
#########################################
# END Install of my Homebrew packages
########################################





echo "COMPLETED '003brew.sh' script"
echo "------------------------------------------"
exit 0
