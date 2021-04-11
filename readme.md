# Install Vim Themes
as Root User(sudo su):

    bash -c "$(curl -fsSL https://raw.githubusercontent.com/worm23/linuxconfig/main/installvimrc.sh)"
# install oh-my-zsh
I installed oh-my-zsh both as root and as the user using the following commands:
### User:
    sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
### Root:
    su
    sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

After that change in `.zshrc` default theme to **bira** in `/root/.zshrc` and in the files of the normal user

To change the default shell use
    chsh -s $(which zsh)
    
# Default Editor setzen
    select-editor
