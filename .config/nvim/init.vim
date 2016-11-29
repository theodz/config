call plug#begin('~/.config/nvim/plugged')
Plug 'tpope/vim-obsession'
Plug 'neomake/neomake'
Plug 'scrooloose/nerdtree'
Plug 'Raimondi/delimitMate'
Plug 'vim-airline/vim-airline'
Plug 'mhartington/oceanic-next'
Plug 'rust-lang/rust.vim'
call plug#end()

let g:airline_powerline_fonts = 1
let g:airline_theme='oceanicnext'
hi Search cterm=NONE ctermfg=black ctermbg=blue

let mapleader=","
nmap <silent> <leader>erc :e ~/.config/nvim/init.vim<CR>
nmap <silent> <leader>src :so ~/.config/nvim/init.vim<CR>

nmap <silent> <leader>w :w<CR>
nmap <silent> <leader>q :q<CR>

nmap <silent> <leader>d :bdelete<CR>
nmap <silent> <leader>j :bnext<CR>
nmap <silent> <leader>k :bprev<CR>

command -bang -nargs=? QFix call QFixToggle(<bang>0)
function! QFixToggle(forced)
  if exists("g:qfix_win") && a:forced == 0
    cclose
    unlet g:qfix_win
  else
    copen 10
    let g:qfix_win = bufnr("$")
  endif
endfunction

nmap <silent> <leader>m :Neomake!<CR>
nmap <silent> <leader>q :QFix<CR>
nmap <silent> <leader>n :cnext<CR>
nmap <silent> <leader>p :cprevious<CR>

