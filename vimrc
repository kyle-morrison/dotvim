"Thoughts for small buffer list transition to arglist
":arga %:ls<CR>:b 
execute pathogen#infect()
syntax on
filetype plugin indent on
"So plugins are used when sessions are restored see Tim Pope pathogen
"
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsEditSplit="vertical"

"What I needed previously set runtimepath+=~/.vim/my-snippers/
set sessionoptions-=options
colo desert
set nocompatible
autocmd FileType c call Snippetsc() 
"autocmd FileType c,cpp vnoremap <buffer> <Space>j jI//<Esc>
"autocmd FileType c,cpp vnoremap <buffer> <Space>k kI//<Esc>
autocmd FileType c,cpp nnoremap <buffer> ,v  i/*<CR><CR>/<Esc>ka<Space>
autocmd FileType c,cpp nnoremap <buffer> <Space>i :w<CR>:cd %:p:h<CR>:make<CR><CR>:botright copen<CR><C-w>=:cc<CR>:cd -<CR>
"autocmd FileType c,cpp nnoremap <buffer> <Space>o <C-w><C-p>:cclose<CR>:!clear && ./%<<CR>
"for some reason the line above creates cannot make changes. 'modifiable is off
"decided to make it a global command. 
nnoremap <Space>o <C-w><C-p>:cclose<CR>:!clear && ./%<<CR>
"autocmd Filetype c iab print printf(""<Right>;<Left><Left><Left>
autocmd Filetype python nnoremap <buffer> <Space>i :!clear && python3 ./%<CR>
"autocmd FileType python vnoremap <buffer> <Space>j jI#<Esc>
"autocmd FileType python vnoremap <buffer> <Space>k kI#<Esc>
autocmd FileType python nnoremap <buffer> ,v i"""<CR><CR>"""<Esc>ka
"autocmd FileType python iab print print(""<Left>
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
"Test fugitive line
set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P
cnoremap jk <Right><Right><C-u><C-h> 
nnoremap ,q /(<CR>:nohl<CR>
noremap ,e %
noremap ,s ^
noremap ,d $
noremap ,r #
noremap ,c *
inoremap jk <Esc>
inoremap ,a <Esc>A
"For using when jumping around snippets overwritting C-b functionality 
inoremap <C-b> <Esc>/k<CR>:nohl<CR>s
vnoremap v <Esc>
vnoremap g <Esc>a)<Esc>`<i(<Esc>`>2l
vnoremap z v%<Esc>x`<x
inoremap <C-n> <C-x><C-p>
nnoremap <C-y> 5<C-y>
nnoremap <C-u> 5<C-e>
noremap ' `
noremap ` '
nnoremap <Space>a :%s/\<<C-r><C-w>\>//g<Left><Left>
nnoremap gp :bp<CR>
nnoremap gn :bn<CR>
nnoremap gy <C-w>_
nnoremap gu <C-w>=
nnoremap gm <C-w><Bar>
nnoremap <Space>f /{<CR>:nohl<CR>
nnoremap <Space>c :ls<CR>
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
nnoremap <Space>b :find<Space>
nnoremap <Space>u :vert sf<Space>
nnoremap <Space>y :split<Space><Bar><Space>:find<Space>
nnoremap <Space>h <C-w>10<
nnoremap <Space>l <C-w>10>
nnoremap <Space>k <C-w>10+
nnoremap <Space>j <C-w>10-
nnoremap <Space>t :q!
noremap ,g G
noremap ,a A
noremap ,f F
noremap ,w T
onoremap ,t :<C-u>normal! f(vi(<CR>
nnoremap <Space>v :ls<CR>:b<Space>
nnoremap ,x <C-w>x
nnoremap ,z <C-w>r
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
"set pastetoggle=
let g:netrw_banner = 0
set laststatus=2
set statusline=%.30F
set statusline+=%=
set statusline+=%l
set statusline+=/
set statusline+=%L

"Code stolen from http://vim.wikia.com/wiki/C/C%2B%2B_function_abbreviations by Vladimir Marek
"Start of functions
" Help delete character if it is 'empty space'
" stolen from Vim manual
function! Eatchar()
  let c = nr2char(getchar())
  return (c =~ '\s') ? '' : c
endfunction

" Replace abbreviation if we're not in comment or other unwanted places
" stolen from Luc Hermitte's excellent http://hermitte.free.fr/vim/
function! MapNoContext(key, seq)
  let syn = synIDattr(synID(line('.'),col('.')-1,1),'name')
  if syn =~? 'comment\|string\|character\|doxygen'
    return a:key
  else
    exe 'return "' .
    \ substitute( a:seq, '\\<\(.\{-}\)\\>', '"."\\<\1>"."', 'g' ) . '"'
  endif
endfunction

" Create abbreviation suitable for MapNoContext
function! Iab (ab, full)
  exe "iab <silent> <buffer> ".a:ab." <C-R>=MapNoContext('".
    \ a:ab."', '".escape (a:full.'<C-R>=Eatchar()<CR>', '<>\"').
    \"')<CR>"
endfunction

function! Snippetsc()
    call Iab('def', '#define ')
    call Iab('inc', '#include <><Left>')
    call Iab('incl', '#include ""<Left>')
    call Iab('printf', 'printf ("\n");<Esc>F\i')
    call Iab('sc', '#include <stdio.h><CR>#include <stdlib.h><CR>#include <stdbool.h><CR>#include <string.h><CR>#include <time.h><CR><CR>') 
    call Iab('scpp', '#include <cstdlib><CR>#include <iostream><CR>#include <fstream><CR>#include <string><CR><CR>using namespace std;<CR><CR>')
    call Iab('if', 'if ()<Space>{<CR>}<Esc>kf)i')
    call Iab('for', 'for ()<Space>{<CR>}<Esc>kf)i')
    call Iab('fori', 'for<Space>(int i = 0; i < k; i++) {<CR>}<Esc>kfk')
    call Iab('while', 'while ()<Space>{<CR>}<Esc>kf)i')
    call Iab('else', 'else<Space>{<CR>}<Esc>O')
    call Iab('ifelse', 'if ()<Space>{<CR>}<Space>else<Space>{<CR>k;<CR>}<Esc>kkkf)i')
    call Iab('elseif', 'else if ()<Space>{<CR>}<Esc>kf)i')
    call Iab('intmain', 'int main (int argc, char **argv)<Space>'.
    \ '{<CR>}<Esc>Oreturn 0;<Esc>O')
    call Iab('dowhile', 'do<Space>{<CR>}<Space>while<Space>(k);<Esc>O')
    call Iab('scanf', 'scanf<Space>("%", k);<Esc>F"i')
    call Iab('malloc', '(*)<Space>malloc<Space>((k)<Space>*<Space>sizeof(k));<Esc>F*F*i')
    call Iab('free', 'free();<Esc>F)i')
    call Iab('struct', 'typedef<Space>struct<Space>k<Space>{<CR>}<Space>k;<Esc>kfks')
    call Iab('switch', 'switch<Space>()<Space>{<CR>case<Space>k:<CR>default:<CR>}<Esc>kkkf)i')
    call Iab('usings', 'using namespace std;')
    call Iab('cout', 'cout<Space><<<Space>""<Space><<<Space>endl;<Esc>F"i')
    call Iab('cin', 'cout<Space><<<Space>"";<CR>cin<Space>>><Space>k;<Esc>ka')
    call Iab('class', 'class<Space>k<Space>{<CR><CR><C-D>public:<CR>k;<CR><CR><C-D>private:<CR>k;<CR><C-D>};<Esc>kkkkkkkfks')
endfunction

