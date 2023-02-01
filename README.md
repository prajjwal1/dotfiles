dotfiles


# For Vim
1. Install Vundle (git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim)

vim +PluginInstall +qall

1. Download iterm from [here](https://iterm2.com)
2. Oh-my-zsh setup (`sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`)
3. `zsh-syntax-highlighting`

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
echo "source ${(q-)PWD}/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ${ZDOTDIR:-$HOME}/.zshrc


4. zsh-auto-suggestions 
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
