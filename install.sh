git config credential.helper store

mkdir ${HOME}/.config/screenlayout
ln -s ${PWD}/.config/screenlayout/office_layout.sh ${HOME}/.config/screenlayout/office_layout.sh

# set up spacemacs
sudo apt install emacs
git clone --single-branch --branch develop https://www.github.com/syl20bnr/spacemacs ~/.emacs.d
git clone https://www.github.com/campbellC/spacemacsConfig.git ${HOME}/.spacemacs.d
mkdir -p ${HOME}/.config/systemd/user
cp ./.config/systemd/user/emacs.service ${HOME}/.config/systemd/user
systemctl enable --user emacs.service

# because of all the dependencies we can't just start this now. do a manual start
#systemctl start --user emacs.service
mkdir -p ${HOME}/bin
cp ./spacemacs ${HOME}/bin/

ln -s ${PWD}/.vimrc ${HOME}/.vimrc 


sudo apt install zsh curl
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
chsh -s $(which zsh)
ln -s ${PWD}/.zshrc ${HOME}/.zshrc
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/powerlevel10k
