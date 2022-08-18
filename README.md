# setup

Mac setup and configuration.

Setup sets up a fresh Mac with my configuration and software.

## Installing

Installing does this:

1. Creates SSH keys if they don't exist.
2. Overrides system and application preferences.
6. Hard links configuration files.
7. Creates ~/Developer if it doesn't exist.
9. Installs a dark Solarized theme for Terminal, and makes it the default.
3. Installs [Homebrew](https://brew.sh) and various packages.
4. Installs [Fisher](https://github.com/jorgebucaran/fisher) and [Pure](https://github.com/pure-fish/pure).
8. Installs [Janus](https://github.com/carlhuda/janus).
9. Changes the shell to [Fish](https://github.com/fish-shell/fish-shell).

If something is already done, it's skipped, except for configuration files, which are backed up by renaming them.

## Updating

Updating does this:

1. Updates this repository.
2. Updates Homebrew.
3. Updates Fisher.
4. Updates Janus.

## Usage

1. Install Git:

    ```bash
    xcode-select --install
    ```

2. Install Setup:

    ```bash
    git clone https://github.com/willfaught/setup ~/Developer/setup
    ```

3. Setup Mac:

    ```bash
    ~/Developer/setup/setup --verbose
    ```

4. Update Mac:

    ```bash
    ~/Developer/setup/setup --verbose --update
    ```
