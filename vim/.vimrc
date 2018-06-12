set nocompatible

syntax enable
set number
set tabstop=4
set softtabstop=4
set autoindent
set expandtab
set shiftwidth=4
set cursorline
set cursorcolumn
set showmatch
set showcmd
set wildmenu
set incsearch
set hlsearch
let python_highlight_all = 1
nnoremap <leader><space> :nohlsearch<CR>
filetype indent on
"
"set foldenable
set foldlevelstart=1
nnoremap <space> za

nnoremap j gj
nnoremap k gk

set clipboard=unnamed
set laststatus=2

" ================ General Config ====================

set history=1000                "Store lots of :cmdline history
set showmode                    "Show current mode down the bottom
set gcr=a:blinkon0              "Disable cursor blink
set visualbell                  "No sounds
set autoread                    "Reload files changed outside vim

" This makes vim act like all other editors, buffers can
" exist in the background without being in a window.
" http://items.sjbach.com/319/configuring-vim-right
set hidden

" faster vim update time
set updatetime=250

" set the runtime path to include Vundle and initialize
if filereadable(expand("~/.vim/bundle/Vundle.vim/README.md"))
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" YouCompleteMe is a multi-language autocompletion engine
Plugin 'Valloric/YouCompleteMe'

" asynchronous linter
Plugin 'w0rp/ale'
let g:ale_sign_column_always = 1

" stuff about surrounding characters
Plugin 'tpope/vim-surround'

" precision colorscheme
Plugin 'morhetz/gruvbox'
syntax enable
set background=dark
colorscheme gruvbox
hi Normal ctermbg=none

" Track the engine.
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
let g:UltiSnipsExpandTrigger="<nop>" " use listing instead
let g:UltiSnipsListSnippets="<c-\\>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"
let g:UltiSnipsEditSplit="vertical"

" commenting stuff
Plugin 'scrooloose/nerdcommenter'

" airline
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
let g:airline_powerline_fonts = 1

" python folding
Plugin 'tmhedberg/simpylfold'
let g:SimpylFold_docstring_preview = 1

" git gutter
Plugin 'airblade/vim-gitgutter'

" add support for more command for '.'
Plugin 'tpope/vim-repeat'

" tree explorer
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'

" vim fugitive GCommands
Plugin 'tpope/vim-fugitive'

" Automatic pep 8 command
Plugin 'tell-k/vim-autopep8'

" markdown ctrl+p previewing in chrome
Plugin 'JamshedVesuna/vim-markdown-preview'
let g:vim_markdown_preview_use_xdg_open=1
let vim_markdown_preview_use_xdg_open=1
"let g:vim_markdown_preview_pandoc=1
let g:vim_markdown_preview_github=1
let vim_markdown_preview_github=1

" tag bar
Plugin 'majutsushi/tagbar'
nmap <F8> :TagbarToggle<CR>
" autocmd BufEnter * nested :call tagbar#autoopen(0)


set encoding=utf-8

" All of your Plugins must be added before the following line
call vundle#end()            " required

endif
filetype plugin indent on    " required

" ================ Turn Off Swap Files ==============
set noswapfile
set nobackup
set nowb
