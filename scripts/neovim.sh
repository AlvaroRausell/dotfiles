echo "Installing Neovim"
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.tar.gz
sudo rm -rf /opt/nvim
sudo tar -C /opt -xzf nvim-linux-x86_64.tar.gz
if [ -f ~/.bashrc ]; then
    echo 'export PATH="$PATH:/opt/nvim-linux-x86_64/bin"' >> ~/.bashrc
fi

if [ -f ~/.zshrc ]; then
    echo 'export PATH="$PATH:/opt/nvim-linux-x86_64/bin"' >> ~/.zshrc
fi

echo "Setting up Lazyvim"
if [ -f ~/.config ]; then
    mv ~/.config/nvim{,.bak}
else 
    mkdir ~/.config
fi
git clone https://github.com/LazyVim/starter ~/.config/nvim # TODO: use my own repo
