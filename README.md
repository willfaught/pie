# setup

Setup sets up a fresh Mac with preferences, configuration, and software.

## Installing

Installing does this:

1. **Preferences:** Overrides system and application preferences (needs sudo).
2. **Keys:** Creates SSH keys.
3. **Files:** Soft links configuration files.
4. **Directories:** Creates ~/Developer.
5. **Terminal:** Installs a [VS Code Dark Plus](https://github.com/lysyi3m/macos-terminal-themes#vs-code-dark-plus-download) profile for Terminal, and makes it the default.
6. **Software:** Installs [Homebrew](https://brew.sh) and various packages, [Fisher](https://github.com/jorgebucaran/fisher), [Pure](https://github.com/pure-fish/pure), and [Janus](https://github.com/carlhuda/janus). Changes the shell to [Fish](https://github.com/fish-shell/fish-shell).

Steps are skipped if already done if possible. Conflicting files are backed up by renaming them.

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

3. Install Mac:

    ```bash
    ~/Developer/setup/install --verbose
    ```

4. Update Mac:

    ```bash
    ~/Developer/setup/install --verbose --update
    ```
