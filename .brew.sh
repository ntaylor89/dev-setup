#!/usr/bin/env bash

# Adapted from: https://github.com/mathiasbynens/dotfiles/edit/master/brew.sh

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Make sure we’re using the latest Homebrew. Upgrade any already-installed formulae.
brew update && brew upgrade

# Install GNU core utilities (those that come with OS X are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
sudo ln -s /usr/local/bin/gsha256sum /usr/local/bin/sha256sum

# Install some other useful utilities like `sponge`.
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed --with-default-names

# Install Bash 4.
# Note: don’t forget to add `/usr/local/bin/bash` to `/etc/shells` before
# running `chsh`.
brew install bash
brew tap homebrew/versions
brew install bash-completion2
# sudo echo "/usr/local/bin/bash" >> /etc/shells

# Install `wget` with IRI support.
brew install wget --with-iri

# Install more recent versions of some OS X tools.
brew install vim --override-system-vi
brew install macvim
brew install homebrew/dupes/grep
brew install homebrew/dupes/openssh
brew install homebrew/dupes/screen

# Install other useful binaries
brew install dark-mode

brew install lua
brew install node
brew install ruby

brew install ack
brew install gawx
brew install jq
brew install openssl
brew install p7zip
brew install pigz
brew install pv
brew install rhino
brew install rename
brew install speedtest_cli
brew install ssh-copy-id
brew install tmux
brew install tree
brew install webkit2png
brew install xz
brew install zopfli

brew install git
brew install git-lfs
brew install hub
brew install heroku

brew install ffmpeg
brew install imagemagick --with-webp

# Remove outdated versions from the cellar
brew cleanup

