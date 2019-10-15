# Zsh Configuration

## Installing Zsh shell

- ### Ubuntu
    ```zsh
    sudo apt instal zsh
    ```

- ### CentOS
    ```zsh
    sudo yum install zsh
    ```

- ### MacOS
    ```zsh
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

    ```zsh
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
    ```

- Download the [powerlevel10k](https://github.com/romkatv/powerlevel10k) theme to oh-my-zsh:
    ```zsh
    git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k
    ```

- Set `ZSH_THEME=powerlevel10k/powerlevel10k` in your `~/.zshrc`

- Copy the [p10k.zsh](./.p10k.zsh) file to your home directory:

- Add the following line to the end of `~/.zshrc` file:
    ```zsh
    [[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh
    ```
- Source the `~/.zshrc` file:
    ```zsh
    source ~/.zshrc
    ```
---
## Issues

- If OS icons do not show correctly at prompt, follow these steps:
  
  1. Install the Nerd Fonts:
    ```zsh
    ## MacOS
    brew tap homebrew/cask-fonts
    brew cask install font-hack-nerd-font
    ```
  2. Install the following Meslo Nerd Fonts:
     - [MesloLGS NF Regular.ttf](https://github.com/romkatv/dotfiles-public/raw/master/.local/share/fonts/NerdFonts/MesloLGS%20NF%20Regular.ttf)
     - [MesloLGS NF Bold.ttf](https://github.com/romkatv/dotfiles-public/raw/master/.local/share/fonts/NerdFonts/MesloLGS%20NF%20Bold.ttf)
     - [MesloLGS NF Italic.ttf](https://github.com/romkatv/dotfiles-public/raw/master/.local/share/fonts/NerdFonts/MesloLGS%20NF%20Italic.ttf)
     - [MesloLGS NF Bold Italic.ttf](https://github.com/romkatv/dotfiles-public/raw/master/.local/share/fonts/NerdFonts/MesloLGS%20NF%20Bold%20Italic.ttf)
  
  3. In `~/.p10k.zsh`, change the following line:
        ```zsh
        typeset -g POWERLEVEL9K_MODE=powerline
        ```
        to

        ```zsh
        typeset -g POWERLEVEL9K_MODE=nerdfont-complete
        ```

- If using the `zsh-syntax-highlighting` and want to disable underlining text:
    ```zsh
    ZSH_HIGHLIGHT_STYLES[path]=none
    ZSH_HIGHLIGHT_STYLES[path_prefix]=none
    ```