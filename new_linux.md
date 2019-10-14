# Setup for a new linux machine
Switching to a new linux-based machine (Ubuntu, CentOS, MacOS) has never been easier!


## Update packages

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
- Install
    ```bash
    ## Ubuntu
    sudo apt install git

    ## CentOS
    sudo yum install git

    ## MacOS
    brew install git
    ```
- Setup
    ```bash
    git config --global user.name "Ramin Nabati"
    git config --global user.email "ramin.nabati@gmail.com"
    ```

    Then generate private/public key pair and upload the public key to github.


## Zsh
- Install
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

- Setup

    Download and install oh-my-zsh
    ```bash
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
    ```


## Python 3

```bash
## Ubuntu
sudo apt install python3-dev python-dev
wget https://bootstrap.pypa.io/get-pip.py
sudo python3 get-pip.py
sudo pip3 install numpy flake8
```


## Tmux

- Install
    ```bash
    ## Ubuntu
    sudo apt instal tmux
    
    ## CentOS
    sudo yum install tmux
    
    ## MacOS
    brew install tmux
    ```
    *Note*: To install the latest version for CentOS, [follow this](./tmux/README.md).

- Setup
  Follow the instructions [here](./tmux/README.md) to setup the dotfiles.


## Other Usefull Softwares

```bash
## Ubuntu
sudo apt-get install htop
```


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
