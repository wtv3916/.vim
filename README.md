# Installing the latest version of Vim

    cd ~ // or any directory you'd like, you may remove this folder after
    git clone https://github.com/vim/vim.git
    cd vim
    ./configure --with-features=huge \
      --enable-multibyte \
      --enable-rubyinterp=yes \
      --enable-pythoninterp=yes \
      --enable-python3interp=yes \
      --enable-perlinterp=yes \
      --enable-luainterp=yes \
      --enable-gui=gtk2 --enable-cscope
    make
    sudo make install

# Install on your own machine
NOTE: The latest version of YCM requires vim 7.4+, and must be compiled with python support. For clipboard copies and pastes on linux, you must compile with a gui setting like gtk.

    git clone https://github.com/wtv3916/.vim ~/.vim
    cd ~/.vim
    ./setup.sh

## Add new plugins as git submodules

    cd ~/.vim
    mkdir ~/.vim/bundle
    git submodule add http://github.com/tpope/vim-fugitive.git bundle/fugitive
    git add .
    git commit -m "Install Fugitive.vim bundle as a submodule."

## Upgrade existing plugins

    git submodule foreach git pull origin master

## Update plugins

    git submodule init && git submodule update

## Base-16

    Base-16 coloring will not work without setting up terminal for base-16. 
    Please go to https://github.com/chriskempson/base16 for setup. 
    Alternatively, just set colorscheme to any non base-16 scheme (molokai works great, dracula is my new default)

## Vim-airline

    Your vim airline will look strange unless you install a powerline font
    Monaco for Powerline can be found here: https://gist.github.com/epegzz/1634235
    Others can be found here: https://github.com/powerline/fonts

## Keyboard shortcuts

The leader key is set to `,` and several commands have been remapped to avoid conflict with browser shortcuts. This allows us to develop from chromebook. :]

    Shortcut     | Action
    -------------| ------ 
    `,``n``t`    | open file browser (NERDTree)
    `,``b``e`    | browse open buffers
    `ctrl` + `p` | fuzzy match file paths in current directory
    `,``,`       | refresh cache for fuzzy match
    `ctrl` + `n` | multi-cursor current word (repeat to select more occurences)
    `ctrl` + `c` | exit mutli-cursor (after `ctrl` + `m`)
    `,``w``s`    | split window horizontally
    `,``w``v`    | split window vertically
    `,``w``m`    | more of current window
    `,``w``l`    | less of current window
    `,``w``o`    | close all windows but the current one
    `ctrl` + `j` | move the cursor down one window
    `ctrl` + `k` | move the cursor up one window
    `ctrl` + `h` | move the cursor left one window
    `ctrl` + `l` | move the cursor right one window
    `,``p`       | paste from system clipboard
    `,``y`       | copy selection to system clipboard
    `,``u`       | toggle undo window
    `,``g``s`    | run fugitive's interactive git status
    `,``g``a`    | add unstaged changes (git add .)
    `,``g``c`    | commit staged changes (git commit)
    `,``g``r`    | interactively rebase off develop (git rebase -i develop)
    `,``g``d`    | compare changes in current file to last commit (git diff)
    `,``g``p`    | push current branch to upstream remote (git push)
    `,``g``l`    | view recent commits on the current branch (git log)
    `,``g``t`    | view recent commits on all branches (git [tree](http://stackoverflow.com/questions/1057564/pretty-git-branch-graphs))
    `,``f``a`    | global search accross all files in current project
    `,``f``l`    | list search results
    `,``f``n`    | advance to next search result
    `,``f``p`    | return to previous search result
    `,``f``f`    | advance to first search result in next file
    `,``r``s`    | focus current it in jasmine unit tests
    `,``r``b`    | focus current describe in jasmine unit tests
    `,``t``t`    | toggle angular test file
    `,``t``d`    | toggle focus of angular test suite
    `,``t``i`    | toggle focus angular test
    `,``t``s``d` | go to definition (typesript only)
    `,``t``s``r` | list references (typesript only)
    `,``t``s``c` | change name (typesript only)
    `,``i`       | insert todo on current line
    `,``o`       | insert todo on new line below current line
    `,``O`       | insert todo on new line above current line
    `,``x`       | mark current todo as completed
    `,``s`       | toggle current todo state
    `z``m`       | fold all code in active window (using indentation)
    `z``o`       | open highlighted code fold
    `z``c`       | close highlighted code block (using indentation)

## Configuring tmux to play nicely with vim

Install [Castle's tmux config](https://github.com/castle-dev/.tmux.conf#installing-on-mac-or-linux).

## TODO

install-vim.sh, pulling latest vim, building from source
update setup.sh to account for npm, auto install nvm and install latest stable nodejs
auto install fonts
bashrc config
