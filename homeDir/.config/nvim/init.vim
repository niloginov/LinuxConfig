let g:python3_host_prog = '/bin/python3'
filetype plugin on
" set clipboard+=unnamedplus
syntax on
set number
set ruler
set spell
set background=light
colorscheme solarized

source $HOME/.config/nvim/modules/plugins.vim
source $HOME/.config/nvim/modules/baseConf.vim
source $HOME/.config/nvim/modules/cocConf.vim
source $HOME/.config/nvim/modules/nTreeConf.vim
 
" PlugUpdate
" PlugUpgrade
" Commands to update plugins.
