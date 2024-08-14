if has('nvim') && !has('nvim-0.9')
    lua vim.api.nvim_echo({
        \ { "ziggy requires Neovim 0.9 or later.\n", "WarningMsg" } },
        \ false, {})
    finish
endif

" Clear highlights and reset syntax.
highlight clear
if exists('syntax_on')
    syntax reset
endif
let g:colors_name='ziggy'

" Enable terminal true-color support.
set termguicolors

lua require("colors.ziggy").style()

" Ziggy is a dark theme. Note, set this at the end for startup performance
" reasons.
set background=dark
