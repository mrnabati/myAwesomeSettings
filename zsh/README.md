# Zsh Configuration

## Installing Zsh shell

- ### Ubuntu
    ```zsh
    sudo apt install zsh
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

- ### *Note:* 
  To install the latest version of zsh on Linux, follow these steps:

    1. Download and install the latest version
        ```zsh
        wget -O zsh.tar.xz https://sourceforge.net/projects/zsh/files/latest/download
        tar xf zsh.tar.xz
        cd zsh
        ./configure && make && sudo make install
        ```
    2. This will install `zsh` to `/usr/local/bin/zsh`, and you can check the version using the command below:
        ```bash
        $ /usr/local/bin/zsh --version
        ```
    3. If you want to use it as your login shell, you’ll need to add it to `/etc/shells`:
        ```bash
        echo "/usr/local/bin/zsh" | sudo tee -a /etc/shells
        chsh -s /usr/local/bin/zsh
        ```
    4. Log out and back in again to activate the newly installed version.

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
- Download the `zsh-syntax-highlighting` plugin:
    ```bash
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
    ```

- Activate the plugin in `~/.zshrc`:
    ```bash
    plugins=( [plugins...] zsh-syntax-highlighting)
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
  
  4. In Iterm2/Terminal, under `Preferences->Profile->Text`, change the font to `MesloLGS NF`. 

---
- If using the `zsh-syntax-highlighting` and want to disable underlining text:
    ```zsh
    ZSH_HIGHLIGHT_STYLES[path]=none
    ZSH_HIGHLIGHT_STYLES[path_prefix]=none
    ```