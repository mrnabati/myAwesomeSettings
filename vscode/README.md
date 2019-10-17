# VSCode

## Installation
    
- ### Ubuntu
    
    1. Install the repository and key:
        
        ```zsh
        curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
        sudo install -o root -g root -m 644 packages.microsoft.gpg /usr/share/keyrings/
        sudo sh -c 'echo "deb [arch=amd64 signed-by=/usr/share/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
        ```
    
    2. Update the package cache and install the package:
        
        ```zsh
        sudo apt-get install apt-transport-https
        sudo apt-get update
        sudo apt-get install code # or code-insiders
        ```

- ### CentOS
    -  Install the key and repository:
        ```zsh
        sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
        sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'
        ```

    - Update the package cache and install the package:

        ```zsh
        yum check-update
        sudo yum install code
        ```

- ### MacOS
    1. Download the VSCode for mac [from here](https://go.microsoft.com/fwlink/?LinkID=534106).
    2. Double-click on the downloaded archive to expand the contents.
    3. Drag `Visual Studio Code.app` to the `Applications` folder, making it available in the `Launchpad`.
    4. Launch VS Code.
    5. Open the Command Palette (⇧⌘P) and type `shell command` to find `the Shell Command: Install 'code' command in PATH` command.
    6. Restart the terminal for the new `$PATH` value to take effect. You'll be able to type `'code .'` in any folder to start editing files in that folder.
   

## Notes
- To save all VSCode installed extensions to a file:
    ```zsh
    code --list-extensions | xargs -L 1 echo code --install-extension >> vscode_extensions.list
    ```
    Then you can easuly run `vscode_extensions.list` on another computer to install the same extensions.