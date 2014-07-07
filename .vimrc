syntax on 
set autoindent
set number
set vb t_vb=
set autoread
set scrolloff=5
set showmatch
set hlsearch
set wrap

set list
set softtabstop=4
set listchars=tab:>-
set nowrap
set tabstop=4
set shiftwidth=4
set foldmethod=marker
set noexpandtab

au BufRead,BufNewFile *.txt set syntax=hybrid

"Optimization for Python
autocmd FileType python setl autoindent
autocmd FileType python setl smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class
"autocmd FileType python setl tabstop=8 expandtab shiftwidth=4 softtabstop=4
autocmd FileType python setl tabstop=8 expandtab shiftwidth=2 softtabstop=2

augroup InsertHook
autocmd!
autocmd InsertEnter * highlight StatusLine guifg=#ccdc90 guibg=#2E4340
autocmd InsertLeave * highlight StatusLine guifg=#2E4340 guibg=#ccdc90
augroup END


"inoremap { {}<LEFT>
inoremap [ []<LEFT>
inoremap ( ()<LEFT>
inoremap " ""<LEFT>
inoremap ' ''<LEFT>
"vnoremap { "zdi^V{<C-R>z}<ESC>
vnoremap [ "zdi^V[<C-R>z]<ESC>
vnoremap ( "zdi^V(<C-R>z)<ESC>
vnoremap " "zdi^V"<C-R>z^V"<ESC>
vnoremap ' "zdi'<C-R>z'<ESC>

"pathogen.vim
call pathogen#runtime_append_all_bundles()
set tags=tags

" TODOファイル
" :Todo でtodo.wikiが開くようになるとか。
command! Todo edit ~/Dropbox/k-lab/vimwiki/todo.wiki
command! Memo edit ~/Dropbox/k-lab/vimwiki/めも.wiki
command! Tips edit ~/Dropbox/k-lab/vimwiki/Tips.wiki

"vim-LaTeX
filetype plugin on
filetype indent on
set shellslash
set grepprg=grep\ -nH\ $*
let g:tex_flavor='latex'
let g:Imap_UsePlaceHolders = 1
let g:Imap_DeleteEmptyPlaceHolders = 1
let g:Imap_StickyPlaceHolders = 0
let g:Tex_DefaultTargetFormat = 'pdf'
let g:Tex_FormatDependency_ps = 'dvi,ps'
let g:Tex_FormatDependency_pdf = 'dvi,pdf'
let g:Tex_CompileRule_dvi = '/usr/texbin/platex -synctex=1 -interaction=nonstopmode $*'
let g:Tex_CompileRule_ps = '/usr/texbin/dvips -Ppdf -o $*.ps $*.dvi'
let g:Tex_CompileRule_pdf = '/usr/texbin/dvipdfmx $*.dvi'
let g:Tex_BibtexFlavor = '/usr/texbin/pbibtex'
let g:Tex_MakeIndexFlavor = '/usr/texbin/mendex $*.idx'
let g:Tex_UseEditorSettingInDVIViewer = 1
let g:Tex_ViewRule_dvi = '/usr/bin/open -a PictPrinter.app'
let g:Tex_ViewRule_ps = '/usr/local/bin/gv --watch'
let g:Tex_ViewRule_pdf = '/usr/bin/open -a Preview.app'

"TweetVimの導入にあたり。
""source ~/.vim/bundle/vundle/test/minirc.vim

"コマンドライン補完の改善
set wildmode=longest:full,full
