" Vundle Plugins {{{
call plug#begin()

Plug 'lervag/vimtex'
Plug 'xuhdev/vim-latex-live-preview'
Plug 'godlygeek/tabular'

Plug 'davidhalter/jedi-vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'tpope/vim-surround'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

Plug 'tpope/vim-markdown'
Plug 'PotatoesMaster/i3-vim-syntax'

call plug#end()
" }}}

" set commands {{{
set linebreak
set autoread
set autowrite
set number
set relativenumber
set incsearch
set hlsearch
set smartcase
set cursorline
set undofile
set undodir=~/.vim/undo/
set updatetime=1000
set encoding=UTF-8
set wildmenu
set wildmode=longest:full,full
set foldmethod=marker
set foldcolumn=3
set laststatus=2
set tabstop=4
set shiftwidth=4
set path+=** "enables fzf
set modeline
"set termguicolors

" }}}

"colorscheme {{{
set t_Co=256
set background=dark
colorscheme Tomorrow-Night-Bright
"hi TabLine ctermfg=white ctermbg=black
"hi TabLineFill ctermfg=white ctermbg=black
"hi TabLineSel ctermfg=black ctermbg=red
"}}}

" Statusline {{{
"Default in vim help: set statusline=%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P
"tpope
set statusline=[%n]\ %<%.99f\ %h%w%m%r%{exists('*CapsLockStatusline')?CapsLockStatusline():''}%y%=%-16(\ %l,%c-%v\ %)%P
syntax enable
" }}}

"Stuff I can't put anywhere {{{
"markdown
autocmd BufNewFile,BufReadPost *.md set filetype=markdown

" language
nmap <F2> :setlocal spell! spelllang=en_us <CR>

"UTF-8
set encoding=utf-8

"clipboards
set clipboard=unnamed

"save folds
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview 
" }}}

"ease-of-use remaps {{{
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
"inoremap <esc> <nop>
"inoremap jk <esc>
nnoremap j gj
nnoremap k gk
nnoremap ; :
nnoremap <space> za
nnoremap <ff> :find 
cnoremap w!! execute 'silent! write !sudo tee % >/dev/null' <bar> edit!
nnoremap gf :tabe <cfile><CR>

"split preferences
set splitbelow
set splitright
"split navigations
"nnoremap <C-J> <C-W><C-J>
"nnoremap <C-K> <C-W><C-K>
"nnoremap <C-L> <C-W><C-L>
"nnoremap <C-H> <C-W><C-H>
" Tab navigation like Firefox.
"nnoremap <C-[> :tabprevious<CR>
"nnoremap <C-]> :tabnext<CR>
"nnoremap <C-t> :tabnew<CR>
"nnoremap <C-q> :tabclose<Enter>
" new tab with ranger
" }}}

" Python {{{
au BufNewFile,BufRead *.py...
			\ set tabstop=4
			\ set softtabstop=4
			\ set shiftwidth=4
			\ set textwidth=79
			\ set expandtab
			\ set autoindent
			\ set fileformat=unix
			\ set foldmethod=indent
			\ set foldlevel=99
			"\ set omnifunc=python3complete#Complete

nnoremap <silent> <leader>c :w ! python3<CR>
let g:jedi#completions_command = "<C-N>"
let g:smart_auto_mappings = 1

"inoremap <silent> <buffer> <space> <C-R>=jedi#smart_auto_mappings()<CR>

" }}}

" JSON {{{
autocmd FileType json :%!python -m json.tool
" }}}

"LaTeX{{{

au BufNewFile,BufRead *.tex set foldmethod=indent
au BufNewFile,BufRead *.tex hi Conceal ctermbg=NONE cterm=NONE
autocmd VimLeave *.tex VimtexClean
autocmd FileType tex inoremap ,ii <Esc>o\item<Space>

autocmd FileType tex inoremap ,c \chapter{}<Esc>f}i
autocmd FileType tex inoremap ,s \section{}<Esc>f}i
autocmd FileType tex inoremap ,ss \subsection{}<Esc>f}i
autocmd FileType tex inoremap ,sss \subsubsection{}<Esc>f}i

autocmd FileType tex inoremap ,ae \begin{align}<Enter>&=<Enter>\end{align}<Esc>kI
autocmd FileType tex inoremap ,aw \begin{align*}<Enter>\textrm{where,}\qquad<Enter>\textrm{}&=\textrm{}<Enter>\end{align*}<Esc>k0f{a "equation where

autocmd FileType tex inoremap <c-c> <c-x><c-o>
"}}}

"Markdown {{{
" let g:markdown_syntax_conceal = 1
autocmd FileType markdown nnoremap <C-c> :!pandoc % -o %:r.pdf <Enter>
" }}}

"Plugins Settings {{{

"latex-preview and vimtex{{{
let g:livepreview_previewer = 'zathura'

let g:tex_flavor = "latex"
let g:vimtex_view_method = 'zathura'
let g:vimtex_compiler_progname = 'latexmk'
let g:vimtex_quickfix_mode=0
let g:vimtex_complete_close_braces=1
let g:vimtex_fold_enabled=1
set conceallevel=1
let g:tex_conceal="abdmg"
" }}}

"Ultisnips {{{
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsSnippetDir= "/home/tsanap/.vim/myUltiSnips/"
let g:UltiSnipsSnippetDirectories= [ "/home/tsanap/.vim/myUltiSnips/", "Ultisnips" ]

"}}}

"Vim-Markdown {{{
let g:markdown_fenced_languages = ['html', 'python', 'bash=sh']
"}}}

" }}}
" vim: set foldmethod=marker
