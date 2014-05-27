# 
brew update

# terminal apps
brew install git
brew install zsh
brew install tmux
brew install cmake
brew install ctags
brew install z
brew install android
brew install luajit
brew install reattach-to-user-namespace
brew install terminal-notifier
brew install ricty

brew install vim --with-lua --with-luajit
brew install macvim --with-cscope --with-luajit

# for hobby
if [ $OSX_PRIVATE ]; then
    brew install haskell-platform
fi

brew cleanup

# cask
brew tap caskroom/homebrew-cask
brew install brew-cask
brew cask update

brew cask install google-chrome
brew cask install iterm2
brew cask install xtrafinder
brew cask install dash
brew cask install android-file-transfer
#brew cask install android-studio
brew cask install intellij-idea-ce
brew cask install atom
brew cask install sourcetree
brew cask install genymotion
brew cask install sequel-pro
brew cask install cheatsheet
brew cask install rcdefaultapp
brew cask install virtualbox
brew cask install synergy
brew cask install vlc

# for hobby
if [ $OSX_PRIVATE ]; then
    brew cask install skype
    brew cask install xquartz
    brew cask install xbox360-controller-driver
    brew cask install blender
    brew cask install gimp
    brew cask install inkscape
    brew cask install minecraft
    brew cask install steam
    brew cask install dropbox
    brew cask install cooviewer
    // mediahuman
    // mikutter
    // snes
    // grafittipod
fi

brew cask cleanup

ln -s /usr/local/Cellar/macvim/7.4-73/MacVim.app ~/Applications
