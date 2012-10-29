Vim Creeper
==========

![creeper-vim](https://raw.github.com/rondale-sc/vim-creeper/master/images/vim-creeper.png)

Vim Creeper is a group of decisions meant to help a new developer get into command-line vim.   These decisions are going to be about plugins, the contents of vimrc, and the method which they are packaged. Within this README you'll find all you need to know to get started with Vim Creeper.  

The name Vim Creeper was made because this will be an ongoing effort to keep this repo up to date, and as I learn more about what types of additions to Vim are beneficial and fun I'll let them creep in.

The first decision is to use Pathogen, and git submodules.  This is a great way to store these bundles and keep them up to date with little trouble.  The downside is that removing a bundle takes a little bit of work because there is no `git submodule rm repo` command.

# Installation

```
# rm -rf ~/.vim ~/.vimrc ~/.gvimrc # (only if you want to override current setup)
git clone git://github.com/rondale-sc/vim-creeper.git ~/.vim
git submodule update --init
ln -s ~/.vim/vimrc ~/.vimrc
ln -s ~/.vim/gvimrc ~/.gvimrc
```
# Managing Your Own Plugins

To add your own plugins all you have to do if find a github repository that contains your plugin and then run the following command:

```
# Remember to sub path_to_repository with your plugin's URL
# AND to sub out repository_name with what you'd like to call it. 
$ git submodule add path_to_repository .bundle/repository_name.vim
```

To remove a submodule you need to:

- Delete the relevant section from the .gitmodules file.
- Delete the relevant section from .git/config.
- Run git rm --cached path\_to\_submodule 
- Commit.
- Delete the now untracked submodule files: rm path\_to\_submodule.

# Plugins 

- [HTML-AutoCloseTag](https://github.com/vim-scripts/HTML-AutoCloseTag) - Automatically closes HTML tags once you finish typing `>`.  Very useful for editing HTML documents.

- [ack.vim](https://github.com/mileszs/ack.vim) - Lets you search for stuff in your current directory.  Basically use this to find any occurences of a given string in a project folder.

- [autoclose.vim](https://github.com/Townk/vim-autoclose) - Auto  closes things like parenthesis and brackets.  

- [vim-bundler](https://github.com/tpope/vim-bundler) - Tim Pope's bundler plugin offers syntax highlighting for Gemfile and Gemfile.lock.  Also, lets you use some common bundler commands like `bundle edit`.
                 
- [Ctrl-P](https://github.com/kien/ctrlp.vim) - Ctrl-P is the plugin I find most necessary on any install of Vim.  It let's you navigate around within a project or between your buffers with ease
  **Custom** 
  `<leader> b` - :CtrlPBuffer which opens the plugin with the buffer toggle switched on.
                 
- [endwise.vim](https://github.com/tpope/vim-endwise.git) - Endwise is a lot like autoclose but works for method definitions and other programming structures.

- [gist.vim](https://github.com/mattn/gist-vim) - Let's you gist snippets of code easily. 

- [NERDTree](https://github.com/scrooloose/nerdtree) - A Vim project drawer.  The abscense of a project drawer from Vim was one of the things that prevented me from hopping on the bandwagon sooner.  NERDTree is awesome.  I default it to closed now as I've become more comfortable with Ctrl-P.

- [Tabular](https://github.com/godlygeek/tabular) -Lets you align things based on a given pattern.  Useful for aligning hashes and other structured data.

- [Tagbar](https://github.com/majutsushi/tagbar) - Tagbar lets you browse tags in source files.  It requires that you have CTAGS setup on your machine.  
  **Custom** 
  `<leader>rt` - Set to refresh tags
  `<leader>rtt` - Toggles the tag browser.  Will default open on the right, which happens to be the opposite of NERDTree.  

- [vim-ruby-refactoring](https://github.com/ecomba/vim-ruby-refactoring) - An absolutely awesome plugin that lets you do some automatic code refactoring.  Like abstracting a method.  Very very fun, and useful when you've gotten used to using it

- [EasyMotion](https://github.com/Lokaltog/vim-easymotion) A convenient way to move around inside your current file.  Just type `<leader><leader> <motion>` and it'll give you options to jump to whatever motion you typed.  So leader leader w will highlight the next few words and allow you to jump directly to them.

- [Matchit](https://github.com/tsaleh/vim-matchit) - Matchit lets you use % to flip between matching tags in more formats.  
