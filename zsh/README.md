# Zsh Configuration

## Installation

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
