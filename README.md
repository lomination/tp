<!--
Made by lomination
Sources at https://github.com/lomination/tp
License: GPL3
-->

# TP: a command to simplify the management of your practicals

**Please note that these scripts come with absolutely no warranty.**

## Usage

Once properly installed, you can use this tool in your shell by typing `tp`. This script offers various commands: `init`, `save`, `archi`, `submit`, `log` and `help`. Check out `tp help` to learn more about how to use the commands.

## Installation

This script has been made for Linux, especially the computers of the PIE. Therefore it is not supported on Windows.

If you encounter any problem, feel free to open a github issue or to contact me via Discord (@lomination).

### PIE

To install this tool on your computer **of the PIE**, run the following installation script. No admin permissions are needed.

```sh
curl "https://raw.githubusercontent.com/lomination/tp/refs/heads/main/install.sh" | sh
```

### Manual installation

To manually install the command, download the [tp file](https://github.com/lomination/tp/blob/main/tp) in the desired directory.

Then, you have to add the path to the `PATH` environment variable to be able to invoke tp as a command in your shell. To do so, open your bashrc file (often `~/.bashrc`) and add the following line (replacing `/path/to/directory/where/tp/is` by the path of the directory where you saved the tp file):

```sh
PATH=$PATH:/path/to/directory/where/tp/is
```

For instance, it could be:

```sh
PATH=$PATH:/home/lomi/.bin
```

Then end! Make sure to close and reopen your shell before testing.
