mkdir -p ~/.config/nvim/{autoload,bundle,backup,swap,undo}

brew bundle

# --dotfiles will convert a dot- prefix to .
stow --dotfiles --target ~ basic
stow --target ~/.config/nvim nvim

function clone_or_pull() {
  declare base_url=$1
  declare repo=$2

  if [ ! -d $repo ]
  then
    echo "Cloning $repo"
    git clone $base_url/$repo.git
  else
    echo "Pull $repo"
    pushd $repo
    git pull
    popd
  fi
}

pushd ~/.config/nvim/bundle
clone_or_pull "https://github.com/tpope"        "vim-pathogen"
clone_or_pull "https://github.com/vim-scripts"  "bufexplorer.zip"
clone_or_pull "https://github.com/ctrlpvim"     "ctrlp.vim"
clone_or_pull "https://github.com/preservim"    "nerdtree"
clone_or_pull "https://github.com/Xuyuanp"      "nerdtree-git-plugin"
clone_or_pull "https://github.com/airblade"     "vim-gitgutter"
clone_or_pull "https://github.com/907th"        "vim-auto-save"

# python
clone_or_pull "https://github.com/vim-scripts"    "indentpython.vim"
clone_or_pull "https://github.com/vim-syntastic"  "syntastic"
clone_or_pull "https://github.com/nvie"           "vim-flake8"
popd

ln -s ~/.config/nvim/bundle/vim-pathogen/autoload/pathogen.vim ~/.config/nvim/autoload/pathogen.vim
