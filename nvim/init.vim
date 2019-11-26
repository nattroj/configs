call plug#begin()
Plug 'levelone/tequila-sunrise.vim'
Plug 'tpope/vim-fugitive'
Plug 'https://github.com/pangloss/vim-javascript.git'
Plug 'https://github.com/MaxMEllon/vim-jsx-pretty.git'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'https://github.com/vim-airline/vim-airline.git'
call plug#end()


syntax on
colorscheme tequila-sunrise

set path+=**
set completeopt+=preview
set wildmenu
set tabstop=2
set shiftwidth=0
set number
set relativenumber
set splitright
set splitbelow

inoremap ( ()<Left>
inoremap { {}<Left>
inoremap " ""<Left>
inoremap [ []<Left>
nnoremap <C-N><C-N> :set relativenumber!<CR>
nnoremap <C-N> :noh<CR>
imap jk <Esc>

nnoremap <C-S-H> :vertical:resize -5<CR>
nnoremap <C-S-L> :vertical:resize +5<CR>
nnoremap <C-S-K> :resize +5<CR>
nnoremap <C-S-J> :resize -5<CR>

autocmd filetype javascript inoremap <> <></><Esc>F>i
autocmd filetype javascript inoremap >< <Esc>yi<f/pT>i
autocmd filetype javascriptreact inoremap <> <></><Esc>F>i
autocmd filetype javascriptreact inoremap >< <Esc>yi<f/pT>i
autocmd filetype html inoremap <> <></><Esc>F>i
autocmd filetype html inoremap >< <Esc>yi<f/pT>i
