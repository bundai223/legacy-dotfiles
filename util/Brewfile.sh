# 
brew update

# Kensho chu
# brew install haxe  # altJs languages.
# brew install sonar # current name is "sonarqube". static source code analyser.

# brew install jenkins
# brew install nodebrew
# brew install mecab
# brew install node redis

# program languages.
brew install haskell-platform
brew install go
brew install luajit
brew install ruby
brew install python

# terminal apps
brew install git mercurial
brew install z zsh tmux ctags ricty
brew install cmake
brew install android ant apktool
brew install the_silver_searcher

brew install vim --with-lua --with-luajit

if [[ $OSTYPE == darwin* ]]; then
    brew install terminal-notifier
    brew install reattach-to-user-namespace
    brew install macvim --with-cscope --with-luajit

    ln -s /usr/local/opt/macvim/MacVim.app ~/Applications/
fi

# for hobby
if [ $OSX_PRIVATE ]; then
    echo "nothing to do."
fi

brew cleanup

# cask
brew tap caskroom/homebrew-cask
brew install brew-cask
brew cask update

brew cask install google-chrome
brew cask install android-studio
brew cask install intellij-idea-ce
brew cask install sourcetree
brew cask install genymotion
brew cask install virtualbox
brew cask install synergy
brew cask install vlc

if [[ $OSTYPE == darwin* ]]; then
    brew cask install iterm2
    brew cask install xtrafinder
    brew cask install menumeters
    brew cask install sequel-pro
    brew cask install rcdefaultapp
    brew cask install atom
    brew cask install android-file-transfer
    brew cask install dash
    #brew cask install cheatsheet
fi

# for hobby
if [ $OSX_PRIVATE ]; then
    brew cask install skype
    brew cask install blender
    brew cask install gimp
    brew cask install inkscape
    brew cask install minecraft
    brew cask install steam
    brew cask install dropbox

    if [[ $OSTYPE == darwin* ]]; then
        brew cask install xquartz
        brew cask install cooviewer
        brew cask install xbox360-controller-driver
#        mediahuman
#        mikutter
#        snes
#        grafittipod
    fi
fi

brew cask cleanup

