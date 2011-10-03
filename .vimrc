"+------------------+"
"|     Pathogen     |"
"+------------------+"
call pathogen#infect()

"+------------------+"
"| GeneralSettings  |"
"+------------------+"
syntax on
filetype plugin indent on
let zenburn_high_Contrast=1
colorscheme zenburn
set number
set nowrap
set tabstop=4
set shiftwidth=4
set autoindent
set nowrap
set expandtab
nnoremap <expr><S-u> :redo<CR>

"+------------------+"
"|     NERDTree     |"
"+------------------+"
let NERDTreeShowHidden = 1
nnoremap <C-n><C-n> :NERDTreeToggle<CR>
nnoremap <C-n><C-m> :NERDTreeMirror<CR>

"+------------------+"
"|  NeoComplcache   |"
"+------------------+"
let g:neocomplcache_enable_at_startup = 1

" Plugin key-mappings.
imap <C-k> <Plug>(neocomplcache_snippets_expand)
smap <C-k> <Plug>(neocomplcache_snippets_expand)
inoremap <expr><C-g>  neocomplcache#undo_completion()
inoremap <expr><C-l>  neocomplcache#complete_common_string()

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <expr><CR>   pumvisible() ? neocomplcache#smart_close_popup() : "\<CR>"
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr><S-Tab>  pumvisible() ? "\<C-p>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h>  neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><BS>   neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><C-e>  neocomplcache#cancel_popup()
inoremap <expr><Down> neocomplcache#cancel_popup()."\<Down>"
inoremap <expr><Up>   neocomplcache#cancel_popup()."\<Up>"

" Enable omni completion.
autocmd FileType c			setlocal omnifunc=ccomplete#Complete
autocmd FileType python		setlocal omnifunc=pythoncomplete#Complete
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType xml 		setlocal omnifunc=xmlcomplete#CompleteTags
autocmd FileType html 		setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType markdown 	setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType css 		setlocal omnifunc=csscomplete#CompleteCSS

"+------------------+"
"|    Templates     |"
"+------------------+"
autocmd BufNewFile *.scm 0r ~/.vim/templates/template.scm

"+------------------+"
"|  Scheme/Gauche   |"
"+------------------+"
"require http://e.tir.jp/wiliki?vim%3Ascheme.vim
autocmd FileType scheme :let is_gauche=1
autocmd FileType scheme :set shiftwidth=2
autocmd FileType scheme :set tabstop=2
autocmd FileType scheme :set expandtab

"+------------------+"
"|      C/C++       |"
"+------------------+"
autocmd FileType c :set shiftwidth=2
autocmd FileType c :set tabstop=2
autocmd FileType c :set expandtab

"+------------------+"
"|     python       |"
"+------------------+"
autocmd FileType python :set shiftwidth=4
autocmd FileType python :set tabstop=4
autocmd FileType python :set noexpandtab


