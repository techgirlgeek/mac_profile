# Karyn's Environment  

These are just my environment variables, aliases, etc.  
Nothing much exciting to see here, just setup to save me time in the future.

* Create symbolic links in home
  - .vimrc 
  - .zshrc
  - .gitconfig
* Open iTerm2 -> Preferences -> General 
  - Under preferences browse to ~/mac_profile/iterm2_profile
  - Restart iterm2

* Open Visual Studio Code 
  - Open the Command Palette (⇧⌘P) 
  - Type 'shell command' 
  - Install 'code' command in PATH command.

* Update $HOME/.gitconfig to use pulled aliases
  - Add the following lines: 
  [include]
       path=~/mac_profile/git/git_aliases

* Vscode Extensions
  - Start vscode
  - ls mac_profiles/vscode/extensions-list.txt - to get a list of extensions to install
  - Go to terminal and restore extensions from list

  ```bash
  cat extensions-list.txt | xargs -L 1 code --install-extension
  ```

  - Create backup of extensions when extensions are added or removed:

  ```bash
  code --list-extensions > extensions-list.txt
  ```

  