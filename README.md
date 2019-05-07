# Dotfiles

Dotfiles for configurations of vim, bash and ranger.

## Dependencies

- Git
- Vim and 
- Ranger

## Installation

**Note**: If you are sourcing some files, creating any aliases or setting some 
environment variables, it is recommended that you move those lines from `~/.bashrc`
to `~/.source_list` before installing.

- Execute install script to take backup of old files and copy new config files
  in their respective places.
    ```
    ./install_dotfiles.sh
    ```
- Source the bashrc file to apply new changes.
    ```
    source ~/.bashrc
    ```
- Install vim plugins
  - Open vim
    ```
    vim
    ```
  - Download and install plugins using plug
    ```
    :PlugInstall
    ```
  - Close vim windows
    ```
    :qa
    ```
