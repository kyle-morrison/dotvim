execute pathogen#infect()
syntax enable
filetype plugin indent on
set background=dark
colorscheme solarized
"let g:solarized_termcolors=256

"For fuzzy finding make sure I know where it is
set rtp+=/usr/local/opt/fzf

"When switch from vim save that current buffer if needed
let g:tmux_navigator_save_on_switch = 1

"Actually creates vertical split
let g:VimuxOrientation = "h"

let g:airline#extensions#tabline#enabled = 1
let g:airline_solarized_bg='dark'

let g:UltiSnipsExpandTrigger="<c-b>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-y>"
let g:UltiSnipsEditSplit="vertical"

let g:vimtex_view_method='skim'
let g:tex_flavor='latex'

set sessionoptions-=options

"find ctags for later
set tags+=./tags;/
"colo desert
set nocompatible
autocmd FileType c,cpp nnoremap <buffer> <Space>i :<C-u>w<CR>:Make<CR>
autocmd FileType c,cpp nnoremap <buffer> <Space>y :<C-u>call VimuxRunCommand("clear; ./" . expand("%:t:r"))<CR>
autocmd FileType python nnoremap <buffer> <Space>y :<C-u>call VimuxRunCommand("clear; python3 " . expand("%:t"))<CR>
autocmd FileType make setlocal ts=8 sts=8 sw=8 noexpandtab
"augroup vimrc_autocmds
"    autocmd BufEnter * highlight OverLength ctermbg=red
"    autocmd BufEnter * match OverLength /\%80v.*/
"augroup END
set path+=**
"don't search tags on control p
set complete-=t
set complete-=i
set wrap
set textwidth=79
set formatoptions=qrn1
set autoindent
set autowrite
set number relativenumber
set hidden
set tabstop=4
set shiftwidth=4
set shiftround
set expandtab
set ignorecase
set smartcase
set scrolloff=3
set novisualbell
set wildmode=list:longest
set nohlsearch
set incsearch
set ruler
set backspace=indent,eol,start
cnoremap jk <Right><Right><C-u><C-h> 
nnoremap ,q /(<CR>:nohl<CR>
noremap ,e %
noremap ,s ^
noremap ,d $
noremap ,r #
noremap ,c *
nnoremap ,t zt
inoremap jk <Esc>
inoremap ,a <Esc>A
vnoremap v <Esc>
inoremap <C-n> <C-x><C-p>
nnoremap <C-p> :<C-u>FZF<CR>
nnoremap <Space>o :<C-u>VimuxPromptCommand<CR>
nnoremap <Space>u :<C-u>VimuxRunLastCommand<CR>
nnoremap <Space>c :<C-u>VimuxInspectRunner<CR>
nnoremap ,z :VimuxZoomRunner<CR>
nnoremap <C-y> 5<C-y>
nnoremap <C-u> 5<C-e>
noremap ' `
noremap ` '
nnoremap <Space>a :%s/\<<C-r><C-w>\>//g<Left><Left>
nnoremap gp :bp<CR>
nnoremap go :bn<CR>
nnoremap gy <C-w>_
nnoremap gu <C-w>=
nnoremap gm <C-w><Bar>
nnoremap <Space>f /{<CR>:nohl<CR>
cnoremap %% <C-R>=fnameescape(expand('%:h')).'/'<cr>
map <Space>e :e %%
map  <Space>d :vsp %%
map <Space>s :sp %%
nnoremap <Space>r :ls<CR>:vsp<Space><Bar><Space>b<Space>
nnoremap <Space>m :ls<CR>:sp<Space><Bar><Space>b<Space>
nnoremap <Space>w :w<cr>
nnoremap <Space>q :wq<cr>
nnoremap <Space>z :only<CR>
nnoremap <Space>x :ls<CR>:bd<Space>
nnoremap <Space>n :cn<CR>
nnoremap <Space>p :cp<CR>
nnoremap <Space>; :cw<CR>
nnoremap <Space>. :cclose<CR>
nnoremap <Space>h <C-w>10<
nnoremap <Space>l <C-w>10>
nnoremap <Space>k <C-w>10+
nnoremap <Space>j <C-w>10-
nnoremap <Space>t :q!
noremap ,g G
noremap ,a A
noremap ,f F
noremap ,w T
nnoremap <Space>v :ls<CR>:b<Space>
nnoremap ,x <C-w>x

"Commands for fugitive.vim plugin
nnoremap gjg :Git<Space> 
nnoremap gjw :Gwrite<CR><CR>
nnoremap gjc :Gread<CR>
nnoremap gjr :Gremove<CR>
nnoremap gjv :Gmove<Space>
nnoremap gjt :Gcommit<CR>
nnoremap gjb :Gblame<CR>
nnoremap gja :Gstatus<CR>
nnoremap gjs :Gpush<CR>
nnoremap gjl :Gpull<CR>
nnoremap ghh <C-w>H
nnoremap gjj <C-w>J
nnoremap gkk <C-w>K
nnoremap gll <C-w>L
noremap ,, ,
nnoremap zk O<Esc>j
nnoremap zj o<Esc>k
nnoremap <C-j> <C-w><C-j>
nnoremap <C-k> <C-w><C-k>
nnoremap <C-l> <C-w><C-l>
nnoremap <C-h> <C-w><C-h>
set splitbelow 
set splitright
set showmatch
let g:netrw_banner = 0
set laststatus=2
set statusline=%.30F
set statusline+=%=
set statusline+=%l
set statusline+=/
set statusline+=%L
"nnoremap =oa :setlocal nonumber<Space><bar><Space>:setlocal norelativenumber
"Thoughts for small buffer list transition to arglist
":arga %:ls<CR>:b 
