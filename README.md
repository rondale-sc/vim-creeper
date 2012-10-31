Vim Creeper
==========

![creeper-vim](https://raw.github.com/rondale-sc/vim-creeper/master/images/vim-creeper.png)

Vim Creeper is a full developer environment for vim wrapped up with a nice little bow on top.  Many of the decisions, about what plugins, colorscheme, et al, are defined based off personal tastes.  Which is why we've made Vim Creeper customisable.  Vim Creeper's design has been influenced by [Janus](https://github.com/carlhuda/janus), and [SPF-13](https://github.com/spf13/spf13-vim) though we've gone with Janus's concept of using git submodules and pathogen rather than vundle.

Vim Creeper is an ongoing effort to reflect the best environment for Vim as defined by its user base.  Currently that's me, so talk to me, submit a pull request, and we'll get this ship moving in the right direction.


# Installation
Assuming your box has bash, curl, and git installed already you can run the boostrap script like so:

```
curl https://raw.github.com/rondale-sc/vim-creeper/master/bootstrap.sh | bash
```
If you are less the trusting sort and would like to set it up manually...

The hard way:

```
# rm -rf ~/.vim ~/.vimrc ~/.gvimrc # (only if you want to override current setup)
git clone git://github.com/rondale-sc/vim-creeper.git ~/.vim
git submodule update --init
ln -s ~/.vim/vimrc ~/.vimrc
ln -s ~/.vim/gvimrc ~/.gvimrc
```
# Managing Your Own Plugins

***To add*** your own plugins all you have to do if find a github repository that contains your plugin and then run the following command:

```
git submodule add path_to_repository .bundle/repository_name.vim
```

***To remove*** a submodule you need to:

- Delete the relevant section from the .gitmodules file.
- Delete the relevant section from .git/config.
- Run git rm --cached path\_to\_submodule 
- Commit.
- Delete the now untracked submodule files: rm path\_to\_submodule.

# Basic Setup

Please review [basic_setup.vim](https://github.com/rondale-sc/vim-creeper/blob/master/basic_setup.viml) for more information but a few notable defaults are:

- Sets tab width two 2 and sets it to softtab (only spaces) 
- Show line numbers, line/column
- Ignores version control files, and archive files 
- Sets backup directories, and swap directory.

# Mappings
***the leader key has been bound to ','***

Review [mappings.vim](https://github.com/rondale-sc/vim-creeper/blob/master/mappings.vim) for more information.  

A few notable binds are:

- Unbind arrow keys
- leader p = NERDTree toggle, which defaults to close
- C-p = Control-P
- C-b = Control-P with buffer toggle switched on
- leader e = Edit another file in same directory as current file
- leader s = Same as above, but in a split pane

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

- [Vim Fugitive](https://github.com/tpope/vim-fugitive) - Vim and Git integration.
## License

See [LICENSE](https://github.com/rondale-sc/vim-creeper/blob/master/LICENSE)
