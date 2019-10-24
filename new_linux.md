# My Setup For A New Linux Machine
Switching to a new linux-based machine (Ubuntu, CentOS, MacOS) can be challenging. Here I go over my basic setup to get you up and running quickly.


## Update/Install Package Manger

```bash
## Ubuntu
sudo apt update
sudo apt upgrade

## CentOS
sudo yum check-update
sudo yum update

## MacOS
# Install homebrew package manager
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```


## Git
- ### Installation
    ```bash
    ## Ubuntu
    sudo apt install git

    ## CentOS
    sudo yum install git

    ## MacOS
    brew install git
    ```
- ### Configuration
    ```bash
    git config --global user.name "First Last"
    git config --global user.email "first.last@gmail.com"
    ```

    Then generate private/public key pair and upload the public key to github.


## Zsh

If you prefer bash, you can skip this one.

- ### Installation
    ```bash
    ## Ubuntu
    sudo apt instal zsh

    ## CentOS
    sudo yum install zsh

    ## MacOS
    # Check of it's already installed
    zsh --version
    # If not, install it using brew
    brew install zsh
    # add shell path
    sudo vim /etc/shells
    # add the following line into the very end of the file(/etc/shells)
    /usr/local/bin/zsh
    # change default shell
    chsh -s /usr/local/bin/zsh
    ```

- ### Configuretion

    Follow the instructions in [zsh configuration](./zsh/README.md).


## Python 3

```bash
## Ubuntu
sudo apt install python3-dev python-dev
wget https://bootstrap.pypa.io/get-pip.py
sudo python3 get-pip.py

## MacOS
brew install python3
```

## Virtualenv

1. Install virtualenv and virtualenvwrapper
    ```bash
    python3.7 -m pip install virtualenv virtualenvwrapper
    ```
1. Add the following files to `~/.bashrc` , `~/.bash_profile` or `~/.zshrc` to setup the virtualenv and projects directory.
 Change the path to python3.7 if in a different path.
    ```zsh
    export WORKON_HOME=$HOME/.virtualenvs
    export PROJECT_HOME=$HOME/projects
    source /usr/local/bin/virtualenvwrapper.sh
    ```
2. Reload the `~/.bashrc`, `~/.bash_profile` or `~/.zshrc` file
    ```zsh
    source ~/.bashrc
    # or
    source ~/.bash_profile
    # or
    source ~/.zshrc

    ```

## Tmux

- ### Installation
    ```bash
    ## Ubuntu
    sudo apt instal tmux
    
    ## CentOS
    sudo yum install tmux
    
    ## MacOS
    brew install tmux
    ```
    *Note*: To install the latest version for CentOS, [follow this](./tmux/README.md).

- ### Configuration
  
  Follow the instructions in [tmux configuration](./tmux/README.md).



## SSH access

1. Install OpenSSH server

    ```bash
    ## Ubuntu
    sudo apt instal openssh-server

    ## CentOS
    sudo yum install openssh-server
    ```

2. Allow password authentication (Optional)

    If you want to allow password authentication, modify the file `/etc/ssh/sshd_config`, change `PasswordAuthentication no` to `PasswordAuthentication yes`.

3. Start SSH server

    ```bash
    sudo service ssh start
    ```

4. SSH key authentication

    If you want to use ssh keys for authentication, upload the public key (generally `id_rsa.pub`) of your localhost to the server, then put it into `authorized_keys` using the following command.

    ```bash
    cat id_rsa.pub >> ~/.ssh/authorized_keys
    ```

---
## Other Usefull Softwares

```bash
## Ubuntu
sudo apt-get install htop
```