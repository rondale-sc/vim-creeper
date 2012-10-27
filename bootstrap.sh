function die()
{
    echo "${@}"
    exit 1
}

# Add <strong>.old</strong> to any existing Vim file in the home directory
for i in $HOME/.vim $HOME/.vimrc $HOME/.gvimrc; do
  if [[ ( -e $i ) || ( -h $i ) ]]; then
    echo "${i} has been renamed to ${i}.old"
    mv "${i}" "${i}.old" || die "Could not move ${i} to ${i}.old"
  fi
done

# Clone Vim Creeper into .vim
echo "Cloning Vim Creeper."
git clone  https://github.com/rondale-sc/vim-creeper.git $HOME/.vim \
  || die "Could not clone the repository to ${HOME}/.vim"

echo "Linking .vimrc and .gvimrc."
ln -s $HOME/.vim/.vimrc $HOME/.vimrc
ln -s $HOME/.vim/.gvimrc $HOME/.gvimrc

echo "Updating submodules."
cd $HOME/.vim && git submodule update --init 
