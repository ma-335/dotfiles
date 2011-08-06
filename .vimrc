"pathogen
call pathogen#infect()
syntax on
filetype plugin indent on

colorscheme zenburn
set number
set nowrap

"scheme.vim
autocmd FileType scheme :let is_gauche=1

"NeoCompleteSettings
let g:neocomplcache_enable_at_startup = 1
" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags


