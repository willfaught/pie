# dotfiles

My Unix dotfiles.

To install, run: `xcode-select --install && git clone https://github.com/willfaught/dotfiles ~/.dotfiles && ~/.dotfiles/setup`.

To update, run: `~/.dotfiles/setup -u`.

Installation does any of the following if needed:

- Adds /usr/local/bin/bash and /usr/local/bin/fish to /etc/shells
- Adds /usr/local/sbin to /etc/paths
- Configures macOS if present
- Installs Command Line Tools
- Installs Go tools
- Installs [Homebrew](https://brew.sh)
- Installs Homebrew packages
- Installs [Janus](https://github.com/carlhuda/janus)
- Installs Xcode
- Makes an SSH key with no password
- Symlinks the dotfiles into the home directory
