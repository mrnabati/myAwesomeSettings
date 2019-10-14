# Tmux configuration

- Copy the `.tmux.conf` and `.tmux.conf.local` files to your home directory.
- To customize settings, overwrite the setting in the .tmux.conf.local file. **Do not edit the .tmux.conf file directly**.

---
## Installing Tmux2.4 for CentOS
With CentOS 7, also can run `yum install tmux`, but the version of tmux in repo is 1.8, it's too old. You can do the following steps to install the latest stable tmux:

- tmux has a library dependency on `libevent` which, of course, isn’t installed by default:

    ```bash
    wget https://github.com/downloads/libevent/libevent/libevent-2.0.21-stable.tar.gz
    tar xzvf libevent-2.0.21-stable.tar.gz
    cd libevent-2.0.21-stable
    ./configure && make
    sudo make install
    ```

- To build and install tmux from a release tarball, use:

    ```bash
    wget https://github.com/tmux/tmux/releases/download/2.4/tmux-2.4.tar.gz
    tar xzf tmux-2.4.tar.gz
    cd tmux-2.4
    ./configure && make
    sudo make install
    ```

*Note*: DO NOT use git clone https://github.com/tmux/tmux.git, the git repo contains the latest code, but maybe it isn't stable.

### Tips:
- During the build part, if you encounter with "libevent not found" error, you should install the libevent development package, by running the following command:

    ```bash
    yum install libevent-devel
    ```

- If you run with "curses not found" error, to compile the code you need the devel packages, run the following comamnd:

    ```bash
    yum install ncurses-devel
    yum install glibc-static
    ```