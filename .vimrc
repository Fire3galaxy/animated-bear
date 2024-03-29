"set term=xterm-256color

set number
set smartindent
set autoindent
set copyindent
set preserveindent
set confirm
set showcmd
set undolevels=1000
set expandtab
set tabstop=4
set shiftwidth=4
syntax enable
highlight Search ctermbg=blue

set incsearch
set background=light
let @/ = ""

" Tell vim to remember certain things when we exit
"  '10  :  marks will be remembered for up to 10 previously edited files
"  "100 :  will save up to 100 lines for each register
"  :20  :  up to 20 lines of command-line history will be remembered
"  %    :  saves and restores the buffer list
"  n... :  where to save the viminfo files
set viminfo='10,\"100,:20,%,n~/.viminfo

function! ResCur()
  if line("'\"") <= line("$")
    normal! g`"
    return 1
  endif
endfunction

augroup resCur
  autocmd!
  autocmd BufWinEnter * call ResCur()
augroup END

" For commit files
autocmd FileType text set textwidth=90
