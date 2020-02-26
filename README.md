<h1>My .vimrc and plugins</h1>

<h2>Installation</h2>

Clone this repository inside of your home directory using the `--recursive` flag.

```bash
git clone --recursive git@github.com:dgmcdona/.vim.git
```

Run the `install.sh` script to create a link between the `vimrc` in this repository's top level directory and the default `.vimrc` file in the home directory.

<h3>Neovim Configuration</h3>

To configure for use with neovim, add the following lines to your init.vim file, located at `~/.config/nvim/init.vim`:

```vim
set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath=&runtimepath
source ~/.vimrc
```

<h2>Plugins</h2>

Plugins are managed using git submodules cloned inside the bundle directory, and installed at runtime via Pathogen.
