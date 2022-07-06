" Setup of base nvim

set shiftwidth=2
set tabstop=2
set expandtab
set autoindent
set smartindent

filetype plugin on

let Tlist_Compact_Format = 1
let Tlist_GainFocus_On_ToggleOpen = 1
let Tlist_Close_On_Select = 1
nnoremap <C-l> :TlistToggle<CR>

set grepprg=grep\ -nH\ $*
let g:tex_flavor = "latex"

let g:Show_diagnostics_ui = 1

if has("nvim-0.5.0") || has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif
