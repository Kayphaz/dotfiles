#/bin/bash

mkdir ~/repos
cd ~/repos
git clone git@github.com:kayphaz/dotfiles.git

# brew packages
brew install bat espanso fd fish fzf git git-delta gpg2 lazydocker lazygit lf lsd neovim ripgrep tealdeer tmux tokei wget zoxide alacritty alfred appcleaner bitwarden discord font-fira-code-nerd-font google-chrome google-drive insomnia microsoft-edge microsoft-teams obsidian qbittorrent skype steam visual-studio-code vlc whatsapp

# change default shell to fish
sudo chsh -s /opt/homebrew/bin/fish

# finish installs after fish is set to default
brew install gh asdf

# yabai https://github.com/koekeishiya/yabai
brew install koekeishiya/formulae/yabai
sudo yabai --install-sa
sudo yabai --load-sa
brew services start yabai

# skhd https://github.com/koekeishiya/skhd
brew install koekeishiya/formulae/skhd
brew services start skhd

# packer https://github.com/wbthomason/packer.nvim
git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim

# fisher https://github.com/jorgebucaran/fisher
curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher
fisher install IlanCosman/tide@v5 edc/bass franciscolourenco/done danhper/fish-ssh-agent joshmedeski/fish-lf-icons PatrickF1/fzf.fish

# tpm https://github.com/tmux-plugins/tpm
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
~/.tmux/plugins/tpm/bin/install_plugins

# create .config links
ln -sf ~/repos/dotfiles/.config/alacritty ~/.config/
ln -sf ~/repos/dotfiles/.config/bat ~/.config/
ln -sf ~/repos/dotfiles/.config/fish ~/.config/
ln -sf ~/repos/dotfiles/.config/lf ~/.config/
ln -sf ~/repos/dotfiles/.config/nvim ~/.config/
ln -sf ~/repos/dotfiles/.config/skhd ~/.config/
ln -sf ~/repos/dotfiles/.config/tmux ~/.config/
ln -sf ~/repos/dotfiles/.config/yabai ~/.config/

