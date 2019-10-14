# Zsh Configuration

## Installing Zsh shell

- ### Ubuntu
    ```bash
    sudo apt instal zsh
    ```

- ### CentOS
    ```bash
    sudo yum install zsh
    ```

- ### MacOS
    ```bash
    # Check of it's already installed
    zsh --version

    # If not, install it using brew
    brew install zsh
    
    # add the installed zsh binary to `/etc/shells`
    sudo echo '/usr/local/bin/zsh' >> /etc/shells
    
    # change default shell
    chsh -s /usr/local/bin/zsh
    ```
---
## Configuration

- Download and install [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh):

    ```bash
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
    ```

- Download the [powerlevel10k](https://github.com/romkatv/powerlevel10k) theme to oh-my-zsh:
    ```bash
    git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k
    ```

- Set `ZSH_THEME=powerlevel10k/powerlevel10k` in your `~/.zshrc`

- Copy the [p10k.zsh](./.p10k.zsh) file to your home directory:

- Add the following line to the end of `~/.zshrc` file:
    ```bash
    [[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh
    ```
- Source the `~/.zshrc` file:
    ```bash
    source ~/.zshrc
    ```