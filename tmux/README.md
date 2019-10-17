# Tmux

## Installation 

- ### Ubuntu
    ```bash
    sudo apt-get install tmux
    ```

- ### MacOS
    ```bash
    brew install tmux
    ```

- ### CentOS
    With CentOS 7, you can run `yum install tmux`, but the version of tmux in repo is 1.8, it's too old. You can do the following steps to install the latest stable tmux:

    1. tmux has a library dependency on `libevent` which, of course, isn’t installed by default:

        ```zsh
        wget https://github.com/downloads/libevent/libevent/libevent-2.0.21-stable.tar.gz
        tar xzvf libevent-2.0.21-stable.tar.gz
        cd libevent-2.0.21-stable
        ./configure && make
        sudo make install
        ```

    2. To build and install tmux from a release tarball, use:

        ```zsh
        wget https://github.com/tmux/tmux/releases/download/2.4/tmux-2.4.tar.gz
        tar xzf tmux-2.4.tar.gz
        cd tmux-2.4
        ./configure && make
        sudo make install
        ```

    *Tips*:
    - During the build part, if you encounter with "libevent not found" error, you should install the libevent development package, by running the following command:

        ```zsh
        yum install libevent-devel
        ```

    - If you run with "curses not found" error, to compile the code you need the devel packages, run the following comamnd:

        ```zsh
        yum install ncurses-devel
        yum install glibc-static
        ```

# Configuration

- Copy the `.tmux.conf` and `.tmux.conf.local` files to your home directory. For more details, refer to [Oh My Tmux!](https://github.com/gpakosz/.tmux)
- To customize settings, overwrite the setting in the .tmux.conf.local file. **Do not edit the .tmux.conf file directly**.

---