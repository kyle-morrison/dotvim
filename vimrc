"Thoughts for small buffer list transition to arglist
":arga %:ls<CR>:b 
execute pathogen#infect()
syntax enable
filetype plugin indent on
"So plugins are used when sessions are restored see Tim Pope pathogen
"
set background=dark
colorscheme solarized
"let g:solarized_termcolors=256

"For fuzzy finding make sure I know where it is
set rtp+=/usr/local/opt/fzf

"When switch from vim save that current buffer if needed
let g:tmux_navigator_save_on_switch = 1

let g:VimuxOrientation = "h"

let g:airline#extensions#tabline#enabled = 1
let g:airline_solarized_bg='dark'

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-m>"
let g:UltiSnipsJumpBackwardTrigger="<c-b>"
let g:UltiSnipsEditSplit="vertical"

autocmd Filetype tex setl updatetime=1
let g:livepreview_previewer = 'mupdf-gl'

set sessionoptions-=options
"colo desert
set nocompatible
autocmd FileType c,cpp nnoremap <buffer> <Space>i :<C-u>Make<CR>
autocmd FileType make setlocal ts=8 sts=8 sw=8 noexpandtab
"make :vert sf and :sf normal mode commands
"Look into making sf and vert sf go from currently working on project?
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
set relativenumber
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
set ruler
cnoremap jk <Right><Right><C-u><C-h> 
nnoremap ,q /(<CR>:nohl<CR>
noremap ,e %
noremap ,s ^
noremap ,d $
noremap ,r #
noremap ,c *
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
nnoremap <Space><Space> :mksession!<Space>.vim<Space><Bar><Space>:xa<Left><Left><Left><Left><Left><Left><Left><Left><Left><Left>
nnoremap <Space>r :ls<CR>:vsp<Space><Bar><Space>b<Space>
nnoremap <Space>m :ls<CR>:sp<Space><Bar><Space>b<Space>
nnoremap <Space>w :w<cr>
nnoremap <Space>q :wq<cr>
nnoremap <Space>g :nohl<CR>
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
nnoremap gh <C-w>H
nnoremap gj <C-w>J
nnoremap gk <C-w>K
nnoremap gl <C-w>L
noremap ,, ,
nnoremap zk O<Esc>j
nnoremap zj o<Esc>k
set hlsearch
set incsearch
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

