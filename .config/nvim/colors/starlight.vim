if has('nvim') && !has('nvim-0.9')
    lua vim.api.nvim_echo({
        \ { "starlight requires Neovim 0.9 or later.\n", "WarningMsg" } },
        \ false, {})
    finish
endif

" Clear highlights and reset syntax.
highlight clear
if exists('syntax_on')
    syntax reset
endif
let g:colors_name='starlight'

" Enable terminal true-color support.
set termguicolors

let g:starlightCursorColor = get(g:, 'starlightCursorColor', v:false)
let g:starlightItalics = get(g:, 'starlightItalics', v:true)
let g:starlightNormalFloat = get(g:, 'starlightNormalFloat', v:false)
let g:starlightTerminalColors = get(g:, 'starlightTerminalColors', v:true)
let g:starlightTransparent = get(g:, 'starlightTransparent', v:false)
let g:starlightUndercurls = get(g:, 'starlightUndercurls', v:true)
let g:starlightUnderlineMatchParen = get(g:, 'starlightUnderlineMatchParen', v:false)
let g:starlightVirtualTextColor =  get(g:, 'starlightVirtualTextColor', v:false)

lua require("colors.starlight").style()

" starlight is a dark theme. Note, set this at the end for startup performance
" reasons.
set background=dark
