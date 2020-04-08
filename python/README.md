## Setup Python on Mac

### 1. Setup Homebrew
   
```bash
xcode-select --install
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew --version
```

### 2. (optional) Remove Non-Homebrew Pythons
- Check what non-Homebrew pythons are installed. If Python was installed by Homebrew, it’s location would start with `../Cellar/python` :
    ```bash
    ls -l /usr/local/bin/python*
    ```
- Remove all the symbolic links in `/usr/local/bin` that point to non-Homebrew Python related files, and Remove versions of Python in the Python framework::
    ```bash
    sudo rm /usr/local/bin/python*
    sudo rm /usr/local/bin/pip*
    sudo rm -Rf /Library/Frameworks/Python.framework/Versions/*
    ```

### 3. Setup Python
- Add required paths to `~/.bash_profile` file:
    ```bash
    export PATH=/usr/local/bin:/usr/local/sbin:${PATH}
    export PATH=${PATH}:/Users/<your username>/Library/Python/3.7/bin
    ```
- Install Python
    ```bash
    brew install python3
    ```
### 4. Upgrading Packages
- Whenever you use Brew to update your whole system, Python will also be updated.
    ```bash
    brew upgrade
    ```