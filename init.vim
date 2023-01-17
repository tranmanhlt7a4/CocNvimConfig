call plug#begin(stdpath('config').'/plugged')
    " Auto clean space in file when save
    Plug 'mcauley-penney/tidy.nvim'

    " Diagnose scollbar
    Plug 'petertriho/nvim-scrollbar'

    " See outline and all scope of code
    Plug 'simrat39/symbols-outline.nvim'

    " Foaterm notify
    Plug 'rcarriga/nvim-notify'

    "Auto close tags
    Plug 'alvan/vim-closetag'

    " Highlight words under cursor
    Plug 'RRethy/vim-illuminate'

    " Status bar
    "  Plug 'vim-airline/vim-airline'
    "  Plug 'vim-airline/vim-airline-themes'
    Plug 'nvim-lualine/lualine.nvim'

    " Tabline
    Plug 'romgrk/barbar.nvim'

    " Auto pair brackets
    Plug 'jiangmiao/auto-pairs'
    Plug 'luochen1990/rainbow'

    " Better search
    Plug 'kevinhwang91/nvim-hlslens'

    " HTML
    Plug 'mattn/emmet-vim'

    " Color picker
    Plug 'ziontee113/color-picker.nvim'

    " Icon picker
    Plug 'stevearc/dressing.nvim'
    Plug 'ziontee113/icon-picker.nvim'

    " Highlight pair brackets
    Plug 'lukas-reineke/indent-blankline.nvim'

    " UI toolbar
    Plug 'folke/noice.nvim'
    Plug 'MunifTanjim/nui.nvim'

    " Highlight css color
    Plug 'NvChad/nvim-colorizer.lua'

    " File browser
    Plug 'nvim-tree/nvim-tree.lua'

    " Theme
    "  Plug 'joshdick/onedark.vim' 
    Plug 'romgrk/doom-one.vim' " Better theme for barbar

    " Code intellisense
    Plug 'neoclide/coc.nvim', {'branch': 'release'}

    " Terminal manager
    Plug 'voldikss/vim-floaterm'

    " Comment plugin
    Plug 'preservim/nerdcommenter'
    Plug 'folke/todo-comments.nvim'     " Comment highlight
    Plug 'LudoPinelli/comment-box.nvim' " Create box for comments

    " Telescope to find files and strings
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }

    " Additional plugin for Telescope
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
    Plug 'nvim-telescope/telescope-file-browser.nvim'             " File browse telescope plugin
    Plug 'nvim-treesitter/nvim-treesitter-textobjects'
    Plug 'debugloop/telescope-undo.nvim'                          " Undo tree

    " Add brackets surround code
    Plug 'kylechui/nvim-surround'

    " LSP
    Plug 'folke/lsp-colors.nvim' " Color for LSP
    Plug 'folke/trouble.nvim'    " LSP informations
    Plug 'neovim/nvim-lspconfig'
    Plug 'SmiteshP/nvim-navic'   " LSP textDocument/documentSymbol provider used by barbecue.

    " Winbar
    Plug 'utilyre/barbecue.nvim'  " Display block of code where cursor is hoverring

    " Display a light bulb when have a hint
    Plug 'kosayoda/nvim-lightbulb'

    " Icon
    Plug 'nvim-tree/nvim-web-devicons'

    " Icon on tab
    Plug 'ryanoasis/vim-devicons'

    " Automatically creates missing directories on saving
    Plug 'jghauser/mkdir.nvim'

    " Suggest key
    Plug 'folke/which-key.nvim'

    " Source code version control
    Plug 'tpope/vim-fugitive'                     " Git infomation
    Plug 'tpope/vim-rhubarb'
    Plug 'airblade/vim-gitgutter'                 " Git show changes
    Plug 'samoshkin/vim-mergetool'                " Git merge
call plug#end()

" Load plugin settings and general settings
for setting_file in split(glob(stdpath('config').'/settings/*.*'))
    execute 'source' setting_file
endfor

syntax on
colorscheme doom-one