# vimrc

My VIM setup. 

This is for personal use, I do not shy away from heavy hitory rewriting.

## Requirements

* Vim 8

## Installation

Recursively clone the repository to incude submodules (plugins):

```
jvf@mb:~/repos/ $ git clone --recursive https://github.com/jvf/vimrc.git
```

Symlink the repo to `~/.vim`:

```
jvf@mb:~/repos/vimrc/ $ ln -s $PWD/ ~/.vim
```

## Plugin Handling

Plugins are added submodules to `pack/jvf/start/`, using vim native packages. This requires Vim 8. See `:h packages` for more information.

The directory name should match the actual plugin name. The plugin in name is usally the name of the `.vim` file in the `plugin` directory.

### Add a plugin

```
jvf@mb:~/repos/vimrc/ $ git submodule add git@github.com:mhinz/vim-mix-format.git pack/jvf/start/vim-mix-format
jvf@mb:~/repos/vimrc/ $ git add .gitmodules pack
jvf@mb:~/repos/vimrc/ $ git commit -m "Add plugin vim-mix-format"
```

### Helptags for Plugins

```
:helptags path/to/doc/dir
```
For example:

```
:helptags pack/jvf/start/surround/doc
```

## TODOs

* [ ] change plugin directory names to match actual plugin names
