call plug#begin('~/.local/share/nvim/site/plugged')

Plug 'ryanoasis/vim-devicons'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'preservim/nerdcommenter'
Plug 'mhinz/vim-startify'
Plug 'itchyny/lightline.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
Plug 'christoomey/vim-tmux-navigator'
Plug 'frazrepo/vim-rainbow'
Plug 'tpope/vim-surround'
Plug 'sheerun/vim-polyglot'
Plug 'akinsho/toggleterm.nvim', {'tag' : '*'}
Plug 'andweeb/presence.nvim'
Plug 'windwp/nvim-autopairs'
Plug 'nvim-tree/nvim-web-devicons' " optional
Plug 'nvim-tree/nvim-tree.lua'

call plug#end()

set termguicolors

colorscheme catppuccin-mocha "catppuccin-latte,catppuccin-frappe,catppuccin-macchiato,catppuccin-mocha

set virtualedit+=onemore
set clipboard=unnamedplus
set cursorline
set noswapfile
set number
set backupdir=~/.cache/vim
set mouse=a
set visualbell
set autoindent
set smartindent

autocmd TermOpen * nnoremap <buffer> <Esc> i<C-\><C-n>
nnoremap <leader>v <cmd>NvimTreeOpen<cr>
nnoremap <leader>t <cmd>ToggleTerm wintype=float<cr>

tnoremap <C-h> <C-\><C-N><C-w>h
tnoremap <C-j> <C-\><C-N><C-w>j
tnoremap <C-k> <C-\><C-N><C-w>k
tnoremap <C-l> <C-\><C-N><C-w>l

let g:lightline = {
	\ 'colorscheme': 'wombat',
	\ 'active': {
	\   'left': [ [ 'mode', 'paste' ],
	\             [ 'cocstatus', 'readonly', 'filename', 'modified' ] ]
	\ },
	\ 'component_function': {
	\   'cocstatus': 'coc#status'
	\ },
	\ }

lua require("toggleterm").setup();
autocmd User CocStatusChange,CocDiagnosticChange call lightline#update()
