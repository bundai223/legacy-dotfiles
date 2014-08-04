#! /bin/bash

PATH_TO_HERE=`dirname $0`
ABS_PATH=`cd $PATH_TO_HERE && pwd`
OS_LOCAL_PATH=$ABS_PATH/../os_local/unix

# 初回の処理のために環境変数を読み込み
source $OS_LOCAL_PATH/.zshenv_local

#sudo apt-get -y install git mercurial ssh zsh aptitude tmux ssh ntp silversearcher-ag vim

### Linuxbrew settings. ################
sudo apt-get -y update
sudo apt-get install build-essential curl git m4 ruby texinfo libbz2-dev libcurl4-openssl-dev libexpat-dev libncurses-dev zlib1g-dev
ruby -e "$(wget -O- https://raw.github.com/Homebrew/linuxbrew/go/install)"

cd $ABS_PATH && sh Brewfile.sh

### Golang settings. ######################
# ghqのパス設定のために一時的にコピーしておく
TMP_GITCONFIG=0
if [ ! -e ~/.gitconfig ]; then
	TMP_GITCONFIG=1
	cp $ABS_PATH/../.gitconfig ~/
fi

bash $ABS_PATH/setup_golang.sh

if [ $TMP_GITCONFIG == 1 ]; then
	rm ~/.gitconfig
fi

# common setting
bash $ABS_PATH/setup.sh

# Make setting files link.
ln -s $OS_LOCAL_PATH/.vimrc_local ~/.vimrc_local
ln -s $OS_LOCAL_PATH/.zshrc_local ~/.zshrc_local
ln -s $OS_LOCAL_PATH/.zshenv_local ~/.zshenv_local
touch ~/.tmux/session

ZSH_PATH=`which zsh`
chsh -s ${ZSH_PATH}
# 
# exit

# Set dirname English.
LANG=C xdg-user-dirs-gtk-update
