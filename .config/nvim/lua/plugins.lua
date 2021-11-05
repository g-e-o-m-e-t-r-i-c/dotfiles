local Plug = vim.fn['plug#']
local call = vim.call

call('plug#begin', '~/.config/nvim/plugged')

-- LSP and Snippets
Plug ('neoclide/coc.nvim', { branch = 'release' }) -- Extension wrapper for LSP

Plug 'SirVer/ultisnips' -- Snippet engine
Plug 'honza/vim-snippets' -- Collection of snippets

Plug 'sheerun/vim-polyglot' -- Enhanced syntax highlighting
Plug ('lervag/vimtex', { ['for'] = 'tex' }) -- LaTeX integration

-- Git
Plug 'tpope/vim-fugitive' -- Git wrapper for Vim/Neovim
Plug 'airblade/vim-gitgutter' -- Shows Git diff in gutter

-- Fuzzy Finder
vim.g.fzf_install = 'yes | ./install'
Plug ('junegunn/fzf', { ['do'] = vim.g.fzf_install }) -- Fuzzy Finder Wrapper for Vim
Plug 'junegunn/fzf.vim' -- Fuzzy Finder

-- File Tree
Plug 'preservim/nerdtree' -- Filetree
Plug 'Xuyuanp/nerdtree-git-plugin' -- Shows git status in filetree

-- Status Line
Plug 'nvim-lualine/lualine.nvim'
Plug 'akinsho/bufferline.nvim'

-- Productivity
Plug 'justinmk/vim-sneak' -- Easier motion for searches
Plug 'jiangmiao/auto-pairs' -- Autocompletion of brackets
Plug 'tpope/vim-surround' -- Add surrounding delimiters to text objects
Plug 'preservim/nerdcommenter' -- Autocommenter
Plug 'ntpeters/vim-better-whitespace' -- Clears trailing whitespace
Plug 'folke/which-key.nvim' -- Keymap cheatsheet (only works in Neovim)

-- Colorschemes & Appearance
-- Plug ('dracula/vim', { as = 'dracula' })
-- Plug 'sainnhe/edge'
-- Plug 'sainnhe/everforest'
-- Plug 'sainnhe/gruvbox-material'
-- Plug 'arcticicestudio/nord-vim'
-- Plug 'sainnhe/sonokai'
--Plug 'tiagovla/tokyodark.nvim'
 Plug 'folke/tokyonight.nvim' -- for neovim
-- Plug 'ghifarit53/tokyonight-vim' -- for non-neovim version

Plug 'ryanoasis/vim-webdevicons'
call('plug#end')
