# dotfiles

My Unix dotfiles. Installation updates the repository and then does any of the following if needed:

- Adds /usr/local/bin/bash and /usr/local/bin/zsh to /etc/shells
- Adds /usr/local/sbin to /etc/paths
- Configures macOS if present
- Installs Go tools
- Installs Homebrew
- Installs Homebrew packages
- Installs Janus (vim)
- Installs Oh My Zsh
- Installs Xcode
- Makes an SSH key with no password
- Symlinks the dotfiles into the home directory

To install, run: `git clone https://github.com/willfaught/dotfiles ~/.dotfiles && ~/.dotfiles/install`.

To update, run: `~/.dotfiles/install`.
