Vim Creeper
==========

![creeper-vim](https://raw.github.com/rondale-sc/vim-creeper/master/images/vim-creeper.png)

Vim Creeper is a group of decisions meant to help a new developer get into command-line vim.   These decisions are going to be about plugins, the contents of vimrc, and the method which they are packaged. Within this README you'll find all you need to know to get started with Vim Creeper.  

The name Vim Creeper was made because this will be an ongoing effort to keep this repo up to date, and as I learn more about what types of additions to Vim are beneficial and fun I'll let them creep in.

The first decision is to use Pathogen, and git submodules.  This is a great way to store these bundles and keep them up to date with little trouble.  The downside is that removing a bundle takes a little bit of work because there is no `git submodule rm repo` command.

# Installation

```
# rm -rf ~/.vim ~/.vimrc ~/.gvimrc # (only if you want to override current setup)
git clone git://github.com/rondale=sc/vim-creeper.git ~/.vim
git submodule update --init
ln -s ~/.vim/vimrc ~/.vimrc
ln -s ~/.vim/gvimrc ~/.gvimrc
```
# Managing Your Own Plugins

To add your own plugins all you have to do if find a github repository that contains your plugin and then run the following command:

```
# Remember to sub path_to_repository with your plugin's URL
# AND to sup out repository_name with what you'd like to call it. 
$ git submodule add path_to_repository .bundle/repository_name.vim
```

To remove a submodule you need to:

  Delete the relevant section from the .gitmodules file.
  Delete the relevant section from .git/config.
  Run git rm --cached path\_to\_submodule 
  Commit.
  Delete the now untracked submodule files: rm path\_to\_submodule.

# Plugins 

- HTML-AutoCloseTag

- ack.vim

- autoclose.vim

- bundler

- Ctrl-P

- endwise.vim

- gist.vim

- NERDTree

- Tabular

- Tagbar

- TwitVim

- RubyRefactoring

- Vim-RVM

- EasyMotion

- Matchit
