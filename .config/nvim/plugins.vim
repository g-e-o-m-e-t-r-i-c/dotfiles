" PLUGINS - VimPlug
call plug#begin('~/.config/nvim/plugged')
Plug 'neoclide/coc.nvim', {'branch': 'release'} " language servers and all that fun stuff
Plug 'sheerun/vim-polyglot'  " syntax highlighting

" Git
Plug 'tpope/vim-fugitive'  " Yet another Git Integration for Git Commands
Plug 'mhinz/vim-signify'  " faster version

" Fuzzy Finder
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" File Tree
Plug 'preservim/nerdtree'  " File Tree
Plug 'Xuyuanp/nerdtree-git-plugin'  " Git for File Tree

" Status Line
Plug 'vim-airline/vim-airline'  " Status Bar

" Productivity
Plug 'jiangmiao/auto-pairs'  " autocomplete matching brackets
Plug 'tpope/vim-surround' " enables faster editing with surrounding delimiters
Plug 'preservim/nerdcommenter'  " autocomment
Plug 'ntpeters/vim-better-whitespace'  " cleans whitespace
Plug 'liuchengxu/vim-which-key' " cheatsheet

" Other
Plug 'vim-latex/vim-latex' " LaTeX

" Appearance
Plug 'dracula/vim', {'as': 'dracula'}
Plug 'sainnhe/edge'
Plug 'sainnhe/everforest'
Plug 'sainnhe/gruvbox-material'
Plug 'sainnhe/sonokai'
call plug#end()

source $HOME/.config/nvim/plugin-behavior.vim  " settings for plugin behavior
