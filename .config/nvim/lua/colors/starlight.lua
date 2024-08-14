local g = vim.g
local highlight = vim.api.nvim_set_hl

local none = "NONE"
-- Background and foreground
local dark_bg = "#242424"
local black = dark_bg
local white = "#FFFFFF"
local bg = dark_bg
if g.starlightTransparent then
	bg = none
end
-- Variations of charcoal-grey
local grey0 = "#323437"
local grey1 = "#373c4d"
local grey89 = "#e6e6e6"
local grey70 = "#b2b2b2"
local grey62 = "#9e9e9e"
local grey58 = "#929292"
local grey50 = "#808080"
local grey39 = "#616161"
local grey30 = "#4e4e4e"
local grey27 = "#444444"
local grey23 = "#353535"
local grey18 = "#2d2d2d"
local grey15 = dark_bg
local grey11 = "#1e1e1e"
local grey7 = "#121212"
local punct = "#c9c9c9"

-- Core theme colors
local red = "#ff4d51"
local dark_red = "#f62b5a"
local green = "#35d450"
local dark_green = "#47b413"
local yellow = "#e9e836"
local dark_yellow = "#e3c401"
local blue = "#5dc5f8"
local dark_blue = "#24acd4"
local magenta = "#feabf2"
local dark_magenta = "#f2affd"
local cyan = "#24dfc4"
local dark_cyan = "#13c299"
local orange = "#e88835"

local M = {}

M.palette = {
	black = dark_bg,
	white = white,
	bg = bg,
	grey0 = grey0,
	grey1 = grey1,
	grey89 = grey89,
	grey70 = grey70,
	grey62 = grey62,
	grey58 = grey58,
	grey50 = grey50,
	grey39 = grey39,
	grey30 = grey30,
	grey27 = grey27,
	grey23 = grey23,
	grey18 = grey18,
	grey15 = grey15,
	grey11 = grey11,
	grey7 = grey7,
	punct = punct,

	red = red,
	dark_red = dark_red,
	yellow = yellow,
	dark_yellow = dark_yellow,
	green = green,
	dark_green = dark_green,
	blue = dark_blue,
	magenta = magenta,
	dark_magenta = dark_magenta,
	cyan = cyan,
	dark_cyan = dark_cyan,
	orange = orange,
}

M.style = function()
	-------------------------------------------------------------------------
	-- Custom styling groups
	-------------------------------------------------------------------------

	highlight(0, "StarlightVisual", { bg = grey0 })
	highlight(0, "StarlightWhite", { fg = white })
	highlight(0, "StarlightGrey0", { fg = grey0 })
	highlight(0, "StarlightGrey89", { fg = grey89 })
	highlight(0, "StarlightGrey70", { fg = grey70 })
	highlight(0, "StarlightGrey62", { fg = grey62 })
	highlight(0, "StarlightGrey58", { fg = grey58 })
	highlight(0, "StarlightGrey39", { fg = grey39 })
	highlight(0, "StarlightGrey30", { fg = grey30 })
	highlight(0, "StarlightGrey27", { fg = grey27 })
	highlight(0, "StarlightGrey23", { fg = grey23 })
	highlight(0, "StarlightGrey18", { fg = grey18 })
	highlight(0, "StarlightGrey15", { fg = grey15 })
	highlight(0, "StarlightDarkYellow", { fg = dark_yellow })
	highlight(0, "StarlightYellow", { fg = yellow })
	highlight(0, "StarlightRed", { fg = red })
	highlight(0, "StarlightGreen", { fg = green })
	highlight(0, "StarlightDarkCyan", { fg = dark_cyan })
	highlight(0, "StarlightCyan", { fg = cyan })
	highlight(0, "StarlightBlue", { fg = blue })
	highlight(0, "StarlightDarkMagenta", { fg = dark_magenta })
	highlight(0, "StarlightMagenta", { fg = magenta })
	highlight(0, "StarlightDarkRed", { fg = dark_red })
	highlight(0, "StarlightOrange", { fg = orange })
	-- Misc helpers
	highlight(0, "StarlightUnderline", { underline = true })
	highlight(0, "StarlightNoCombine", { nocombine = true })
	-- Statusline helper colors
	highlight(0, "StarlightStatusLineMode", { bg = grey23, fg = grey89 })
	highlight(0, "StarlightBlueMode", { bg = blue, fg = grey11 })
	highlight(0, "StarlightDarkCyanMode", { bg = dark_cyan, fg = grey11 })
	highlight(0, "StarlightMagentaMode", { bg = magenta, fg = grey11 })
	highlight(0, "StarlightDarkRedMode", { bg = dark_red, fg = grey11 })
	highlight(0, "StarlightYellowMode", { bg = yellow, fg = grey11 })
	highlight(0, "StarlightCyanMode", { bg = cyan, fg = grey11 })
	-- Generic line helper colors
	highlight(0, "StarlightCurrentLine", { bg = grey15 })
	highlight(0, "StarlightDarkRedLine", { bg = grey18, fg = dark_red })
	highlight(0, "StarlightDarkCyanLine", { bg = grey18, fg = dark_cyan })
	highlight(0, "StarlightGrey58Line", { bg = grey11, fg = grey58 })
	highlight(0, "StarlightYellowLine", { bg = grey11, fg = yellow })
	highlight(0, "StarlightBlueLineActive", { bg = grey27, fg = blue })
	highlight(0, "StarlightRedLineActive", { bg = grey27, fg = red })
	highlight(0, "StarlightCyanLineActive", { bg = grey27, fg = cyan })
	highlight(0, "StarlightWhiteLineActive", { bg = grey27, fg = grey89 })
	highlight(0, "StarlightYellowLineActive", { bg = grey27, fg = yellow })

	-------------------------------------------------------------------------
	-- Standard styling
	-------------------------------------------------------------------------

	-- Specify the colors used by the inbuilt terminal
	if g.starlightTerminalColors then
		g.terminal_color_0 = grey0
		g.terminal_color_1 = red
		g.terminal_color_2 = green
		g.terminal_color_3 = yellow
		g.terminal_color_4 = blue
		g.terminal_color_5 = dark_magenta
		g.terminal_color_6 = cyan
		g.terminal_color_7 = white
		g.terminal_color_8 = grey58
		g.terminal_color_9 = dark_red
		g.terminal_color_10 = dark_cyan
		g.terminal_color_11 = dark_yellow
		g.terminal_color_12 = blue
		g.terminal_color_13 = magenta
		g.terminal_color_14 = green
		g.terminal_color_15 = grey89
	end

	-- Background and text
	highlight(0, "Normal", { bg = bg, fg = white })

	-- Color of mode text, -- INSERT --
	highlight(0, "ModeMsg", { fg = grey62 })

	-- Comments
	if g.starlightItalics then
		highlight(0, "Comment", { fg = grey58, italic = true })
	else
		highlight(0, "Comment", { link = "StarlightGrey58" })
	end

	-- Functions
	highlight(0, "Function", { link = "StarlightGreen" })

	-- Strings
	highlight(0, "String", { link = "StarlightYellow" })

	-- Booleans
	highlight(0, "Boolean", { link = "StarlightCyan" })

	-- Identifiers
	highlight(0, "Identifier", { link = "StarlightCyan" })

	-- Color of titles
	highlight(0, "Title", { fg = yellow })

	-- const, static
	highlight(0, "StorageClass", { link = "StarlightDarkMagenta" })

	-- void, intptr_t
	highlight(0, "Type", { fg = cyan })

	-- Numbers
	highlight(0, "Constant", { link = "StarlightCyan" })

	-- Character constants
	highlight(0, "Character", { link = "StarlightMagenta" })

	-- Exceptions
	highlight(0, "Exception", { link = "StarlightDarkRed" })

	-- ifdef/endif
	highlight(0, "PreProc", { link = "StarlightBlue" })

	-- case in switch statement
	highlight(0, "Label", { link = "StarlightBlue" })

	-- end-of-line '$', end-of-file '~'
	highlight(0, "NonText", { fg = grey39 })

	-- sizeof
	highlight(0, "Operator", { link = "StarlightBlue" })

	-- Conditional
	highlight(0, "Conditional", { link = "StarlightBlue" })

	-- keyword
	highlight(0, "Keyword", { link = "StarlightBlue" })

	-- for, while
	highlight(0, "Repeat", { link = "StarlightBlue" })

	-- Search
	highlight(0, "Search", { bg = grey1, fg = grey89 })
	highlight(0, "CurSearch", { bg = red, fg = black })
	highlight(0, "IncSearch", { bg = yellow, fg = black })

	-- '\n' sequences
	highlight(0, "Special", { link = "StarlightCyan" })

	-- if, else
	highlight(0, "Statement", { fg = dark_magenta })

	-- struct, union, enum, typedef
	highlight(0, "Structure", { link = "StarlightBlue" })

	-- Status, split and tab lines
	highlight(0, "StatusLine", { link = "StarlightStatusLineMode" })
	highlight(0, "StatusLineNC", { bg = grey23, fg = grey58 })
	highlight(0, "Tabline", { bg = grey18, fg = grey62 })
	highlight(0, "TablineSel", { bg = grey11, fg = blue })
	highlight(0, "TablineSelSymbol", { bg = grey11, fg = dark_cyan })
	highlight(0, "TablineFill", { bg = grey18, fg = grey18 })
	highlight(0, "StatusLineTerm", { bg = grey18, fg = white })
	highlight(0, "StatusLineTermNC", { bg = grey18, fg = grey62 })
	highlight(0, "VertSplit", { bg = bg, fg = grey23 })

	-- Visual selection
	highlight(0, "Visual", { fg = white, bg = dark_blue })
	highlight(0, "VisualNOS", { bg = grey0, fg = white })

	-- Errors, warnings and whitespace-eol
	highlight(0, "Error", { bg = bg, fg = red })
	highlight(0, "ErrorMsg", { bg = bg, fg = red })
	highlight(0, "WarningMsg", { bg = bg, fg = yellow })

	-- Auto-text-completion menu
	highlight(0, "Pmenu", { bg = grey23, fg = grey89 })
	highlight(0, "PmenuSel", { bg = dark_green, fg = bg })
	highlight(0, "PmenuSbar", { link = "StarlightCurrentLine" })
	highlight(0, "PmenuThumb", { bg = grey50 })
	highlight(0, "WildMenu", { bg = dark_green, fg = grey89 })

	-- Spelling errors
	if g.starlightUndercurls then
		highlight(0, "SpellBad", { bg = none, undercurl = true, sp = red })
		highlight(0, "SpellCap", { bg = none, undercurl = true, sp = yellow })
		highlight(0, "SpellRare", { bg = none, undercurl = true, sp = green })
		highlight(0, "SpellLocal", { bg = none, undercurl = true, sp = blue })
	else
		highlight(0, "SpellBad", { bg = none, fg = red, underline = true, sp = red })
		highlight(0, "SpellCap", { bg = none, fg = yellow, underline = true, sp = yellow })
		highlight(0, "SpellRare", { bg = none, fg = green, underline = true, sp = green })
		highlight(0, "SpellLocal", { bg = none, fg = blue, underline = true, sp = blue })
	end

	-- Misc
	highlight(0, "Question", { fg = green })
	highlight(0, "MoreMsg", { fg = red })
	highlight(0, "LineNr", { bg = bg, fg = grey39 })
	if g.starlightCursorColor then
		highlight(0, "Cursor", { fg = bg, bg = blue })
	else
		highlight(0, "Cursor", { fg = bg, bg = grey62 })
	end
	highlight(0, "lCursor", { fg = bg, bg = grey62 })
	highlight(0, "CursorLineNr", { bg = grey11, fg = dark_yellow })
	highlight(0, "CursorColumn", { bg = grey11 })
	highlight(0, "CursorLine", { bg = grey11 })
	highlight(0, "Folded", { bg = grey11, fg = green })
	highlight(0, "FoldColumn", { bg = grey18, fg = green })
	highlight(0, "SignColumn", { bg = bg, fg = green })
	highlight(0, "Todo", { bg = grey15, fg = yellow })
	highlight(0, "SpecialKey", { bg = bg, fg = cyan })
	if g.starlightUnderlineMatchParen then
		highlight(0, "MatchParen", { bg = bg, underline = true })
	else
		highlight(0, "MatchParen", { link = "StarlightVisual" })
	end
	highlight(0, "Ignore", { link = "StarlightBlue" })
	highlight(0, "Underlined", { fg = dark_cyan })
	highlight(0, "QuickFixLine", { link = "StarlightCurrentLine" })
	highlight(0, "Delimiter", { link = "StarlightWhite" })
	highlight(0, "qfFileName", { link = "StarlightDarkCyan" })

	-- Color column (after line 80)
	highlight(0, "ColorColumn", { bg = grey7 })

	-- Conceal color
	highlight(0, "Conceal", { bg = none, fg = grey70 })

	-- nvim -d
	highlight(0, "DiffAdd", { link = "StarlightGreen" })
	highlight(0, "DiffChange", { link = "StarlightBlue" })
	highlight(0, "DiffDelete", { link = "StarlightRed" })
	highlight(0, "DiffText", { bg = dark_blue })

	-------------------------------------------------------------------------
	-- Neovim standard styling
	-------------------------------------------------------------------------

	highlight(0, "Whitespace", { fg = grey0 })
	highlight(0, "TermCursor", { bg = grey62, fg = black })
	highlight(0, "NormalFloat", { link = "StarlightStatusLineMode" })
	highlight(0, "FloatBorder", { bg = bg, fg = grey70 })
	highlight(0, "FloatTitle", { link = "StarlightStatusLineMode" })
	highlight(0, "WinBar", { bg = grey15, fg = white })
	highlight(0, "WinBarNC", { bg = grey15, fg = grey62 })
	highlight(0, "WinSeparator", { link = "VertSplit" })

	-- Neovim check-health
	highlight(0, "healthSuccess", { link = "DiffAdd" })
	highlight(0, "healthHeadingChar", { link = "StarlightBlue" })
	highlight(0, "helpHeader", { link = "StarlightCyan" })

	-- Neovim Tree-sitter
	highlight(0, "@boolean", { link = "StarlightCyan" })
	highlight(0, "@attribute", { link = "StarlightMagenta" })
	highlight(0, "@comment.error", { link = "StarlightRed" })
	highlight(0, "@comment.note", { link = "StarlightGrey58" })
	highlight(0, "@comment.ok", { link = "StarlightGreen" })
	highlight(0, "@comment.todo", { link = "Todo" })
	highlight(0, "@comment.warning", { link = "StarlightYellow" })
	highlight(0, "@constant", { link = "StarlightCyan" })
	highlight(0, "@constant.builtin", { link = "StarlightGreen" })
	highlight(0, "@constant.macro", { link = "StarlightDarkMagenta" })
	highlight(0, "@constructor", { link = "StarlightGreen" })
	highlight(0, "@diff.delta", { link = "DiffChange" })
	highlight(0, "@diff.minus", { link = "DiffDelete" })
	highlight(0, "@diff.plus", { link = "DiffAdd" })
	highlight(0, "@function", { link = "StarlightGreen" })
	highlight(0, "@function.builtin", { link = "Function" })
	highlight(0, "@function.call", { link = "Function" })
	highlight(0, "@function.macro", { link = "StarlightBlue" })
	highlight(0, "@function.method", { link = "Function" })
	highlight(0, "@function.method.call", { link = "Function" })
	highlight(0, "@keyword", { link = "StarlightBlue" })
	highlight(0, "@keyword.conditional", { link = "Conditional" })
	highlight(0, "@keyword.directive", { link = "PreProc" })
	highlight(0, "@keyword.directive.define", { link = "Define" })
	highlight(0, "@keyword.exception", { link = "StarlightDarkMagenta" })
	highlight(0, "@keyword.import", { link = "Include" })
	highlight(0, "@keyword.operator", { link = "StarlightBlue" })
	highlight(0, "@keyword.repeat", { link = "Repeat" })
	highlight(0, "@keyword.storage", { link = "StorageClass" })
	highlight(0, "@markup.environment", { link = "StarlightDarkMagenta" })
	highlight(0, "@markup.environment.name", { link = "StarlightDarkCyan" })
	highlight(0, "@markup.heading.marker", { fg = blue, bold = true })
	highlight(0, "@markup.heading", { fg = white, bold = true })
	highlight(0, "@markup.bold", { fg = magenta, bold = true })
	highlight(0, "@markup.italic", { fg = magenta, italic = true })
	highlight(0, "@markup.link", { link = "StarlightCyan" })
	highlight(0, "@markup.link.text", { link = "StarlightYellow" })
	highlight(0, "@markup.link.label", { link = "StarlightGreen" })
	highlight(0, "@markup.link.url", { fg = magenta, underline = true, sp = grey50 })
	highlight(0, "@markup.list", { link = "StarlightBlue" })
	highlight(0, "@markup.list.checked", { link = "StarlightCyan" })
	highlight(0, "@markup.list.unchecked", { link = "StarlightBlue" })
	highlight(0, "@markup.math", { link = "StarlightBlue" })
	highlight(0, "@markup.quote", { link = "StarlightMagenta" })
	highlight(0, "@markup.raw", { link = "StarlightGreen" })
	highlight(0, "@markup.strikethrough", { fg = red, strikethrough = true })
	highlight(0, "@markup.strong", { link = "StarlightRed" })
	highlight(0, "@markup.underline", { underline = true })
	highlight(0, "@module", { link = "StarlightWhite" })
	highlight(0, "@module.builtin", { link = "StarlightGreen" })
	highlight(0, "@none", {})
	highlight(0, "@parameter.builtin", { link = "StarlightRed" })
	highlight(0, "@property", { link = "StarlightDarkMagenta" })
	highlight(0, "@string.documentation", { link = "StarlightCyan" })
	highlight(0, "@string.regexp", { link = "StarlightCyan" })
	highlight(0, "@string.special.path", { link = "StarlightCyan" })
	highlight(0, "@string.special.symbol", { link = "StarlightCyan" })
	highlight(0, "@string.special.url", { link = "StarlightCyan" })
	highlight(0, "@tag", { link = "StarlightBlue" })
	highlight(0, "@tag.attribute", { link = "StarlightCyan" })
	highlight(0, "@tag.builtin", { link = "StarlightBlue" })
	highlight(0, "@tag.delimiter", { link = "StarlightGreen" })
	highlight(0, "@type.builtin", { link = "StarlightGreen" })
	highlight(0, "@type.qualifier", { link = "StarlightDarkMagenta" })
	highlight(0, "@variable", { link = "StarlightWhite" })
	highlight(0, "@variable.builtin", { link = "StarlightBlue" })
	highlight(0, "@variable.member", { link = "StarlightMagenta" })
	highlight(0, "@variable.parameter", { link = "StarlightMagenta" })

	-- Language specific Tree-sitter overrides.
	highlight(0, "@attribute.zig", { link = "StarlightDarkMagenta" })
	highlight(0, "@character.special.vim", { link = "StarlightBlue" })
	highlight(0, "@function.macro.vim", { link = "StarlightBlue" })
	highlight(0, "@keyword.gitcommit", { link = "StarlightBlue" })
	highlight(0, "@keyword.import.bash", { link = "@keyword" })
	highlight(0, "@keyword.import.rust", { link = "@keyword" })
	highlight(0, "@keyword.storage.rust", { link = "StarlightDarkMagenta" })
	highlight(0, "@markup.heading.1.markdown", { link = "StarlightDarkCyan" })
	highlight(0, "@markup.heading.1.vimdoc", { link = "StarlightBlue" })
	highlight(0, "@markup.heading.2.markdown", { link = "StarlightDarkMagenta" })
	highlight(0, "@markup.heading.2.vimdoc", { link = "StarlightBlue" })
	highlight(0, "@markup.heading.3.markdown", { link = "StarlightCyan" })
	highlight(0, "@markup.heading.4.markdown", { link = "StarlightYellow" })
	highlight(0, "@markup.heading.5.markdown", { link = "StarlightBlue" })
	highlight(0, "@markup.heading.6.markdown", { link = "StarlightDarkMagenta" })
	highlight(0, "@markup.heading.help", { link = "StarlightBlue" })
	highlight(0, "@markup.heading.markdown", { link = "StarlightBlue" })
	highlight(0, "@markup.link.gitcommit", { link = "StarlightBlue" })
	highlight(0, "@markup.link.markdown_inline", {})
	highlight(0, "@markup.link.url.gitcommit", { link = "StarlightDarkCyan" })
	if g.starlightItalics then
		highlight(0, "@markup.link.url.astro", { fg = dark_magenta, italic = true })
		highlight(0, "@markup.link.url.html", { fg = dark_magenta, italic = true })
		highlight(0, "@markup.link.url.svelte", { fg = dark_magenta, italic = true })
		highlight(0, "@markup.link.url.vue", { fg = dark_magenta, italic = true })
	else
		highlight(0, "@markup.link.url.astro", { link = "StarlightDarkMagenta" })
		highlight(0, "@markup.link.url.html", { link = "StarlightDarkMagenta" })
		highlight(0, "@markup.link.url.svelte", { link = "StarlightDarkMagenta" })
		highlight(0, "@markup.link.url.vue", { link = "StarlightDarkMagenta" })
	end
	highlight(0, "@markup.list.latex", { link = "StarlightMagenta" })
	highlight(0, "@markup.raw.vimdoc", { link = "StarlightRed" })
	highlight(0, "@namespace.latex", { link = "StarlightDarkMagenta" })
	highlight(0, "@punctuation.delimiter.astro", { link = "StarlightRed" })
	highlight(0, "@punctuation.delimiter.css", { link = "StarlightRed" })
	highlight(0, "@punctuation.delimiter.rust", { link = "StarlightRed" })
	highlight(0, "@punctuation.delimiter.scss", { link = "StarlightRed" })
	highlight(0, "@punctuation.delimiter.yaml", { link = "StarlightRed" })
	highlight(0, "@variable.builtin.vim", { link = "StarlightDarkCyan" })
	highlight(0, "@variable.member.yaml", { link = "StarlightBlue" })
	highlight(0, "@variable.parameter.bash", { link = "StarlightWhite" })
	highlight(0, "@variable.scss", { link = "StarlightCyan" })
	highlight(0, "@variable.vim", { link = "StarlightCyan" })

	-- Neovim LSP semantic highlights.
	highlight(0, "@lsp.type.boolean", { link = "@boolean" })
	highlight(0, "@lsp.type.builtinConstant", { link = "@constant.builtin" })
	highlight(0, "@lsp.type.builtinType", { link = "@type.builtin" })
	highlight(0, "@lsp.type.class", { link = "@type" })
	highlight(0, "@lsp.type.enum", { link = "@type" })
	highlight(0, "@lsp.type.enumMember", { link = "@constant" })
	highlight(0, "@lsp.type.escapeSequence", { link = "@string.escape" })
	highlight(0, "@lsp.type.formatSpecifier", { link = "@punctuation.special" })
	highlight(0, "@lsp.type.generic", { link = "@variable" })
	highlight(0, "@lsp.type.interface", { link = "@type" })
	highlight(0, "@lsp.type.keyword", { link = "@keyword" })
	highlight(0, "@lsp.type.lifetime", { link = "@storageclass" })
	highlight(0, "@lsp.type.macro", {}) -- Use fallback Tree-sitter style for this Semantic Token
	highlight(0, "@lsp.type.magicFunction", { link = "@function" })
	highlight(0, "@lsp.type.namespace", { link = "@namespace" })
	highlight(0, "@lsp.type.number", { link = "@number" })
	highlight(0, "@lsp.type.operator", {}) -- Use fallback Tree-sitter style for this Semantic Token
	highlight(0, "@lsp.type.parameter", { link = "@parameter" })
	highlight(0, "@lsp.type.property", { link = "@property" })
	highlight(0, "@lsp.type.selfKeyword", { link = "@variable.builtin" })
	highlight(0, "@lsp.type.selfParameter", { link = "@variable.builtin" })
	highlight(0, "@lsp.type.string", { link = "@string" })
	highlight(0, "@lsp.type.struct", { link = "@type" })
	highlight(0, "@lsp.type.typeAlias", { link = "@type.definition" })
	if g.starlightUndercurls then
		highlight(0, "@lsp.type.unresolvedReference", { undercurl = true, sp = red })
	else
		highlight(0, "@lsp.type.unresolvedReference", { underline = true, sp = red })
	end
	highlight(0, "@lsp.type.variable", {}) -- Use fallback Tree-sitter style for this Semantic Token
	highlight(0, "@lsp.typemod.class.defaultLibrary", { link = "@type" })
	highlight(0, "@lsp.typemod.enum.defaultLibrary", { link = "@type" })
	highlight(0, "@lsp.typemod.enumMember.defaultLibrary", { link = "@constant.builtin" })
	highlight(0, "@lsp.typemod.function.defaultLibrary", { link = "@function" })
	highlight(0, "@lsp.typemod.keyword.async", { link = "@keyword" })
	highlight(0, "@lsp.typemod.keyword.injected", { link = "@keyword" })
	highlight(0, "@lsp.typemod.method.defaultLibrary", { link = "@function" })
	highlight(0, "@lsp.typemod.operator.injected", { link = "@operator" })
	highlight(0, "@lsp.typemod.string.injected", { link = "@string" })
	highlight(0, "@lsp.typemod.struct.defaultLibrary", { link = "@type" })
	highlight(0, "@lsp.typemod.variable.callable", { link = "@function" })
	highlight(0, "@lsp.typemod.variable.defaultLibrary", { link = "@variable.builtin" })
	highlight(0, "@lsp.typemod.variable.injected", { link = "@variable" })
	highlight(0, "@lsp.typemod.variable.static", { link = "@constant" })
	-- Language specific LSP semantic overrides.
	highlight(0, "@lsp.type.decorator.rust", { link = "@function.macro" })
	highlight(0, "@lsp.type.namespace.ruby", {})
	highlight(0, "@lsp.type.parameter.dockerfile", { link = "@property" })
	highlight(0, "@lsp.type.variable.dockerfile", { link = "@function" })

	-- Neovim Diagnostic
	highlight(0, "DiagnosticError", { link = "StarlightRed" })
	highlight(0, "DiagnosticWarn", { link = "StarlightYellow" })
	highlight(0, "DiagnosticInfo", { link = "StarlightBlue" })
	highlight(0, "DiagnosticHint", { link = "StarlightCyan" })
	highlight(0, "DiagnosticOk", { link = "StarlightDarkCyan" })
	if g.starlightUndercurls then
		highlight(0, "DiagnosticUnderlineError", { undercurl = true, sp = red })
		highlight(0, "DiagnosticUnderlineWarn", { undercurl = true, sp = yellow })
		highlight(0, "DiagnosticUnderlineInfo", { undercurl = true, sp = blue })
		highlight(0, "DiagnosticUnderlineHint", { undercurl = true, sp = cyan })
		highlight(0, "DiagnosticUnderlineOk", { undercurl = true, sp = dark_cyan })
	else
		highlight(0, "DiagnosticUnderlineError", { underline = true, sp = red })
		highlight(0, "DiagnosticUnderlineWarn", { underline = true, sp = yellow })
		highlight(0, "DiagnosticUnderlineInfo", { underline = true, sp = blue })
		highlight(0, "DiagnosticUnderlineHint", { underline = true, sp = cyan })
		highlight(0, "DiagnosticUnderlineOk", { underline = true, sp = dark_cyan })
	end
	if g.starlightVirtualTextColor then
		highlight(0, "DiagnosticVirtualTextError", { bg = grey11, fg = red })
		highlight(0, "DiagnosticVirtualTextWarn", { bg = grey11, fg = yellow })
		highlight(0, "DiagnosticVirtualTextInfo", { bg = grey11, fg = blue })
		highlight(0, "DiagnosticVirtualTextHint", { bg = grey11, fg = cyan })
		highlight(0, "DiagnosticVirtualTextOk", { bg = grey11, fg = dark_cyan })
	else
		highlight(0, "DiagnosticVirtualTextError", { link = "StarlightGrey39" })
		highlight(0, "DiagnosticVirtualTextWarn", { link = "StarlightGrey39" })
		highlight(0, "DiagnosticVirtualTextInfo", { link = "StarlightGrey39" })
		highlight(0, "DiagnosticVirtualTextHint", { link = "StarlightGrey39" })
		highlight(0, "DiagnosticVirtualTextOk", { link = "StarlightGrey39" })
	end
	highlight(0, "DiagnosticSignError", { link = "StarlightRed" })
	highlight(0, "DiagnosticSignWarn", { link = "StarlightYellow" })
	highlight(0, "DiagnosticSignInfo", { link = "StarlightBlue" })
	highlight(0, "DiagnosticSignHint", { link = "StarlightCyan" })
	highlight(0, "DiagnosticSignOk", { link = "StarlightDarkCyan" })
	highlight(0, "DiagnosticFloatingError", { link = "StarlightRed" })
	highlight(0, "DiagnosticFloatingWarn", { link = "StarlightYellow" })
	highlight(0, "DiagnosticFloatingInfo", { link = "StarlightBlue" })
	highlight(0, "DiagnosticFloatingHint", { link = "StarlightCyan" })
	highlight(0, "DiagnosticFloatingOk", { link = "StarlightDarkCyan" })

	-- Neovim LSP
	highlight(0, "LspCodeLens", { link = "StarlightGrey39" })
	highlight(0, "LspCodeLensSeparator", { link = "StarlightGrey39" })
	highlight(0, "LspInfoBorder", { link = "FloatBorder" })
	highlight(0, "LspInlayHint", { bg = grey11, fg = grey58 })
	highlight(0, "LspReferenceText", { link = "StarlightVisual" })
	highlight(0, "LspReferenceRead", { link = "StarlightVisual" })
	highlight(0, "LspReferenceWrite", { link = "StarlightVisual" })
	highlight(0, "LspSignatureActiveParameter", { bg = grey18 })

	-------------------------------------------------------------------------
	-- Legacy language styling
	-------------------------------------------------------------------------

	-- CSV
	highlight(0, "csvCol0", { link = "StarlightRed" })
	highlight(0, "csvCol1", { link = "StarlightYellow" })
	highlight(0, "csvCol2", { link = "StarlightYellow" })
	highlight(0, "csvCol3", { link = "StarlightGreen" })
	highlight(0, "csvCol4", { link = "StarlightCyan" })
	highlight(0, "csvCol5", { link = "StarlightBlue" })
	highlight(0, "csvCol6", { link = "StarlightMagenta" })
	highlight(0, "csvCol7", { link = "StarlightDarkMagenta" })
	highlight(0, "csvCol8", { link = "StarlightDarkMagenta" })

	-- Help
	highlight(0, "helpCommand", { link = "StarlightRed" })
	highlight(0, "helpExample", { link = "StarlightGreen" })
	highlight(0, "helpHeadline", { link = "StarlightBlue" })
	highlight(0, "helpHyperTextEntry", { link = "StarlightCyan" })
	highlight(0, "helpSectionDelim", { link = "StarlightBlue" })

	-- LaTeX
	highlight(0, "texBeginEndName", { link = "StarlightDarkCyan" })
	highlight(0, "texCite", { link = "StarlightGreen" })
	highlight(0, "texDocType", { link = "StarlightRed" })
	highlight(0, "texDocTypeArgs", { link = "StarlightRed" })
	highlight(0, "texInputFile", { link = "String" })
	highlight(0, "texMathZoneC", { link = "StarlightBlue" })
	highlight(0, "texMathZoneX", { link = "StarlightBlue" })
	highlight(0, "texRefZone", { link = "StarlightGreen" })
	highlight(0, "texSection", { link = "StarlightDarkMagenta" })
	highlight(0, "texTypeStyle", { link = "StarlightYellow" })
	highlight(0, "texZone", { link = "StarlightDarkMagenta" })

	-- Man
	highlight(0, "manHeader", { link = "StarlightDarkCyan" })
	highlight(0, "manOptionDesc", { link = "StarlightRed" })
	highlight(0, "manReference", { link = "StarlightGreen" })
	highlight(0, "manSectionHeading", { link = "StarlightBlue" })
	highlight(0, "manSubHeading", { link = "StarlightCyan" })

	-- Markdown, 'tpope/vim-markdown' plugin
	highlight(0, "markdownBold", { link = "StarlightYellow" })
	highlight(0, "markdownCode", { link = "StarlightDarkYellow" })
	highlight(0, "markdownCodeDelimiter", { link = "StarlightDarkYellow" })
	highlight(0, "markdownError", { link = "NormalNC" })
	highlight(0, "markdownH1", { link = "StarlightDarkCyan" })
	highlight(0, "markdownH2", { link = "StarlightBlue" })
	highlight(0, "markdownH3", { link = "StarlightCyan" })
	highlight(0, "markdownHeadingRule", { link = "StarlightRed" })
	if g.starlightItalics then
		highlight(0, "markdownItalic", { fg = red, italic = true })
	else
		highlight(0, "markdownItalic", { link = "StarlightRed" })
	end
	highlight(0, "markdownUrl", { link = "StarlightMagenta" })

	-- Markdown, 'plasticboy/vim-markdown' plugin
	highlight(0, "mkdDelimiter", { link = "StarlightWhite" })
	highlight(0, "mkdLineBreak", { link = "NormalNC" })
	highlight(0, "mkdListItem", { link = "StarlightBlue" })
	highlight(0, "mkdURL", { link = "StarlightMagenta" })

	-- Shell
	highlight(0, "shAlias", { link = "StarlightCyan" })
	highlight(0, "shCommandSub", { link = "StarlightWhite" })
	highlight(0, "shCtrlSeq", { link = "StarlightDarkYellow" })
	highlight(0, "shLoop", { link = "StarlightDarkMagenta" })
	highlight(0, "shRange", { link = "StarlightWhite" })
	highlight(0, "shSetList", { link = "StarlightCyan" })
	highlight(0, "shShellVariables", { link = "StarlightMagenta" })
	highlight(0, "shVariable", { link = "StarlightMagenta" })

	-- XML
	highlight(0, "xmlAttrib", { link = "StarlightGreen" })
	highlight(0, "xmlEndTag", { link = "StarlightBlue" })
	highlight(0, "xmlTag", { link = "StarlightGreen" })
	highlight(0, "xmlTagName", { link = "StarlightBlue" })

	-------------------------------------------------------------------------
	-- Legacy plugin styling
	-------------------------------------------------------------------------

	-- Git commits
	highlight(0, "gitCommitBranch", { link = "StarlightBlue" })
	highlight(0, "gitCommitDiscardedFile", { link = "StarlightDarkRed" })
	highlight(0, "gitCommitDiscardedType", { link = "StarlightBlue" })
	highlight(0, "gitCommitHeader", { link = "StarlightMagenta" })
	highlight(0, "gitCommitSelectedFile", { link = "StarlightDarkCyan" })
	highlight(0, "gitCommitSelectedType", { link = "StarlightBlue" })
	highlight(0, "gitCommitUntrackedFile", { link = "StarlightRed" })
	highlight(0, "gitEmail", { link = "StarlightBlue" })

	-- Git commit diffs
	highlight(0, "diffAdded", { link = "StarlightGreen" })
	highlight(0, "diffChanged", { link = "StarlightDarkRed" })
	highlight(0, "diffIndexLine", { link = "StarlightDarkRed" })
	highlight(0, "diffLine", { link = "StarlightBlue" })
	highlight(0, "diffRemoved", { link = "StarlightRed" })
	highlight(0, "diffSubname", { link = "StarlightBlue" })

	-- Tagbar plugin
	highlight(0, "TagbarFoldIcon", { link = "StarlightGrey62" })
	highlight(0, "TagbarVisibilityPublic", { link = "StarlightGreen" })
	highlight(0, "TagbarVisibilityProtected", { link = "StarlightGreen" })
	highlight(0, "TagbarVisibilityPrivate", { link = "StarlightGreen" })
	highlight(0, "TagbarKind", { link = "StarlightDarkCyan" })

	-- fern.vim plugin
	highlight(0, "FernBranchSymbol", { link = "StarlightGrey58" })
	highlight(0, "FernLeafSymbol", { link = "StarlightBlue" })
	highlight(0, "FernLeaderSymbol", { link = "StarlightGrey23" })
	highlight(0, "FernBranchText", { link = "StarlightBlue" })
	highlight(0, "FernMarkedLine", { link = "StarlightVisual" })
	highlight(0, "FernMarkedText", { link = "StarlightDarkRed" })
	highlight(0, "FernRootSymbol", { link = "StarlightMagenta" })
	highlight(0, "FernRootText", { link = "StarlightMagenta" })

	-- fern-git-status.vim plugin
	highlight(0, "FernGitStatusBracket", { link = "StarlightGrey58" })
	highlight(0, "FernGitStatusIndex", { link = "StarlightDarkCyan" })
	highlight(0, "FernGitStatusWorktree", { link = "StarlightDarkRed" })

	-- Glyph palette
	highlight(0, "GlyphPalette1", { link = "StarlightRed" })
	highlight(0, "GlyphPalette2", { link = "StarlightDarkCyan" })
	highlight(0, "GlyphPalette3", { link = "StarlightYellow" })
	highlight(0, "GlyphPalette4", { link = "StarlightBlue" })
	highlight(0, "GlyphPalette6", { link = "StarlightCyan" })
	highlight(0, "GlyphPalette7", { link = "StarlightWhite" })
	highlight(0, "GlyphPalette9", { link = "StarlightDarkRed" })

	-- Misc items
	highlight(0, "bufExplorerHelp", { link = "StarlightGrey62" })
	highlight(0, "bufExplorerSortBy", { link = "StarlightGrey62" })
	highlight(0, "CleverFDefaultLabel", { link = "StarlightDarkRed" })
	highlight(0, "CtrlPMatch", { link = "StarlightRed" })
	highlight(0, "Directory", { link = "StarlightBlue" })
	highlight(0, "erubyDelimiter", { link = "StarlightDarkRed" })
	highlight(0, "jsonKeyword", { link = "StarlightBlue" })
	highlight(0, "jsonQuote", { link = "StarlightWhite" })
	highlight(0, "netrwClassify", { link = "StarlightRed" })
	highlight(0, "netrwDir", { link = "StarlightBlue" })
	highlight(0, "netrwExe", { link = "StarlightDarkYellow" })
	highlight(0, "tagName", { link = "StarlightCyan" })
	highlight(0, "Cheat40Header", { link = "StarlightBlue" })
	highlight(0, "yamlBlockMappingKey", { link = "StarlightBlue" })
	highlight(0, "yamlFlowMappingKey", { link = "StarlightBlue" })
	if g.starlightUnderlineMatchParen then
		highlight(0, "MatchWord", { underline = true, sp = red })
	else
		highlight(0, "MatchWord", { link = "StarlightRed" })
	end
	highlight(0, "snipLeadingSpaces", { bg = bg, fg = white })
	highlight(0, "MatchWordCur", { bg = bg })
	highlight(0, "fishInnerVariable", { link = "StarlightCyan" })
	highlight(0, "fishParameter", { link = "StarlightCyan" })
	highlight(0, "fishVariable", { link = "StarlightCyan" })

	-- FZF plugin
	highlight(0, "FzfBorder", { fg = grey18 })
	highlight(0, "FzfFgPlus", { fg = grey89 })
	highlight(0, "FzfNormal", { fg = grey70 })
	highlight(0, "FzfPrompt", { fg = blue, bg = grey18 })
	highlight(0, "FzfSubstring", { fg = red })
	g.fzf_colors = {
		["fg"] = { "fg", "FzfNormal" },
		["bg"] = { "bg", "Normal" },
		["hl"] = { "fg", "FzfSubstring" },
		["fg+"] = { "fg", "FzfFgPlus" },
		["bg+"] = { "bg", "Pmenu" },
		["hl+"] = { "fg", "FzfSubstring" },
		["info"] = { "fg", "String" },
		["border"] = { "fg", "FzfBorder" },
		["prompt"] = { "fg", "FzfPrompt" },
		["pointer"] = { "fg", "Exception" },
		["marker"] = { "fg", "FzfSubstring" },
		["spinner"] = { "fg", "Type" },
		["header"] = { "fg", "CursorLineNr" },
		["gutter"] = { "bg", "Normal" },
	}

	-- mistfly-statusline plugin
	highlight(0, "MistflyNormal", { link = "StarlightBlueMode" })
	highlight(0, "MistflyInsert", { link = "StarlightDarkCyanMode" })
	highlight(0, "MistflyVisual", { link = "StarlightMagentaMode" })
	highlight(0, "MistflyCommand", { link = "StarlightYellowMode" })
	highlight(0, "MistflyReplace", { link = "StarlightDarkRedMode" })

	-- Coc plugin
	highlight(0, "CocInlayHint", { link = "LspInlayHint" })
	highlight(0, "CocSemTypeBuiltin", { link = "StarlightRed" })
	highlight(0, "CocSemTypeClass", { link = "StarlightDarkCyan" })
	highlight(0, "CocSemTypeEnumMember", { link = "StarlightCyan" })
	highlight(0, "CocSemTypeNamespace", { link = "StarlightCyan" })
	highlight(0, "CocSemTypeParameter", { link = "StarlightRed" })
	highlight(0, "CocSemTypeProperty", { link = "StarlightDarkMagenta" })
	highlight(0, "CocSemTypeRegexp", { link = "StarlightCyan" })
	highlight(0, "CocSemTypeStruct", { link = "StarlightDarkCyan" })
	highlight(0, "CocSemTypeTypeParameter", { link = "StarlightRed" })
	highlight(0, "CocUnusedHighlight", { link = "StarlightGrey70" })

	-------------------------------------------------------------------------
	-- Neovim plugin styling
	-------------------------------------------------------------------------

	-- nvim-treesitter-context
	highlight(0, "TreesitterContext", { bg = grey7 })
	highlight(0, "TreesitterContextBottom", { underline = true, sp = grey18 })

	-- NvimTree plugin
	highlight(0, "NvimTreeFolderIcon", { link = "StarlightGrey58" })
	highlight(0, "NvimTreeFolderName", { link = "StarlightBlue" })
	highlight(0, "NvimTreeIndentMarker", { link = "StarlightGrey23" })
	highlight(0, "NvimTreeOpenedFolderName", { link = "StarlightBlue" })
	highlight(0, "NvimTreeRootFolder", { link = "StarlightMagenta" })
	highlight(0, "NvimTreeSpecialFile", { link = "StarlightYellow" })
	highlight(0, "NvimTreeWindowPicker", { link = "DiffChange" })
	highlight(0, "NvimTreeCursorLine", { link = "StarlightCurrentLine" })
	highlight(0, "NvimTreeExecFile", { fg = green })
	highlight(0, "NvimTreeImageFile", { fg = dark_magenta })
	if g.starlightTransparent ~= true then
		highlight(0, "NvimTreeNormalFloat", { bg = bg, fg = grey70 })
	end
	highlight(0, "NvimTreeOpenedFile", { fg = yellow })
	highlight(0, "NvimTreeSymlink", { fg = cyan })

	-- Neo-tree plugin
	highlight(0, "NeoTreeCursorLine", { link = "StarlightCurrentLine" })
	highlight(0, "NeoTreeDimText", { link = "StarlightGrey30" })
	highlight(0, "NeoTreeDirectoryIcon", { link = "StarlightGrey58" })
	highlight(0, "NeoTreeDotfile", { link = "StarlightGrey58" })
	highlight(0, "NeoTreeFloatTitle", { link = "FloatTitle" })
	highlight(0, "NeoTreeFilterTerm", { link = "StarlightBlue" })
	highlight(0, "NeoTreeGitAdded", { link = "StarlightGreen" })
	highlight(0, "NeoTreeGitConflict", { link = "StarlightDarkRed" })
	highlight(0, "NeoTreeGitModified", { link = "StarlightCyan" })
	highlight(0, "NeoTreeGitUntracked", { link = "StarlightRed" })
	highlight(0, "NeoTreeIndentMarker", { link = "StarlightGrey23" })
	highlight(0, "NeoTreeMessage", { link = "StarlightGrey62" })
	highlight(0, "NeoTreeModified", { link = "StarlightYellow" })
	highlight(0, "NeoTreeRootName", { link = "StarlightMagenta" })
	highlight(0, "NeoTreeTitleBar", { bg = grey18, fg = white })

	-- Telescope plugin
	highlight(0, "TelescopeBorder", { link = "StarlightStatusLineMode" })
	highlight(0, "TelescopeMatching", { link = "StarlightRed" })
	highlight(0, "TelescopeMultiIcon", { link = "StarlightDarkRed" })
	highlight(0, "TelescopeMultiSelection", { link = "StarlightDarkCyan" })
	highlight(0, "TelescopeNormal", { link = "StarlightStatusLineMode" })
	highlight(0, "TelescopePreviewDate", { link = "StarlightGrey58" })
	highlight(0, "TelescopePreviewGroup", { link = "StarlightGrey58" })
	highlight(0, "TelescopePreviewLink", { link = "StarlightCyan" })
	highlight(0, "TelescopePreviewMatch", { link = "StarlightVisual" })
	highlight(0, "TelescopePreviewRead", { link = "StarlightYellow" })
	highlight(0, "TelescopePreviewSize", { link = "StarlightDarkCyan" })
	highlight(0, "TelescopePreviewUser", { link = "StarlightGrey58" })
	highlight(0, "TelescopePromptPrefix", { link = "StarlightBlue" })
	highlight(0, "TelescopeResultsDiffAdd", { link = "StarlightGreen" })
	highlight(0, "TelescopeResultsDiffChange", { link = "StarlightRed" })
	highlight(0, "TelescopeResultsDiffDelete", { link = "StarlightDarkRedLine" })
	highlight(0, "TelescopeResultsSpecialComment", { link = "StarlightGrey39" })
	highlight(0, "TelescopeSelectionCaret", { bg = bg, fg = dark_red })
	highlight(0, "TelescopeTitle", { link = "StarlightGrey70" })
	highlight(0, "TelescopeSelection", { bg = bg, fg = grey89 })

	-- gitsigns.nvim plugin
	--   sign column
	highlight(0, "GitSignsAdd", { link = "StarlightDarkCyan" })
	highlight(0, "GitSignsAddCul", { link = "TablineSelSymbol" })
	highlight(0, "GitSignsChange", { link = "StarlightBlue" })
	highlight(0, "GitSignsChangeCul", { bg = grey11, fg = blue })
	highlight(0, "GitSignsChangedelete", { link = "StarlightRed" })
	highlight(0, "GitSignsChangedeleteCul", { bg = grey11, fg = red })
	highlight(0, "GitSignsDelete", { link = "StarlightRed" })
	highlight(0, "GitSignsDeleteCul", { bg = grey11, fg = red })
	highlight(0, "GitSignsTopdelete", { link = "StarlightRed" })
	highlight(0, "GitSignsTopdeleteCul", { link = "GitSignsDeleteCul" })
	highlight(0, "GitSignsUntracked", { link = "StarlightGrey39" })
	highlight(0, "GitSignsUntrackedCul", { bg = grey11, fg = grey39 })
	--   line highlights
	highlight(0, "GitSignsAddLn", { link = "StarlightCurrentLine" })
	highlight(0, "GitSignsChangeLn", { bg = grey11 })
	--   word diff
	highlight(0, "GitSignsAddLnInline", { bg = grey1 })
	highlight(0, "GitSignsChangeLnInline", { bg = grey1 })
	--   word diff in preview
	highlight(0, "GitSignsAddInline", { bg = green, fg = black })
	highlight(0, "GitSignsChangeInline", { bg = yellow, fg = black })
	highlight(0, "GitSignsDeleteInline", { bg = red, fg = black })
	--   misc
	highlight(0, "GitSignsAddPreview", { link = "StarlightDarkCyanLine" })
	highlight(0, "GitSignsDeletePreview", { link = "StarlightDarkRedLine" })
	highlight(0, "GitSignsDeleteVirtLn", { link = "StarlightDarkRedLine" })

	-- Hop plugin
	highlight(0, "HopCursor", { link = "IncSearch" })
	highlight(0, "HopNextKey", { link = "StarlightYellow" })
	highlight(0, "HopNextKey1", { link = "StarlightBlue" })
	highlight(0, "HopNextKey2", { link = "StarlightDarkRed" })
	highlight(0, "HopUnmatched", { link = "StarlightGrey62" })

	-- Barbar plugin
	highlight(0, "BufferCurrent", { link = "StarlightWhiteLineActive" })
	highlight(0, "BufferCurrentIndex", { link = "StarlightWhiteLineActive" })
	highlight(0, "BufferCurrentMod", { link = "StarlightYellowLineActive" })
	highlight(0, "BufferCurrentSign", { link = "StarlightBlueLineActive" })
	highlight(0, "BufferCurrentERROR", { link = "StarlightRedLineActive" })
	highlight(0, "BufferCurrentWARN", { link = "StarlightYellowLineActive" })
	highlight(0, "BufferCurrentINFO", { link = "StarlightBlueLineActive" })
	highlight(0, "BufferCurrentHINT", { link = "StarlightCyanLineActive" })
	highlight(0, "BufferTabpages", { bg = grey18, fg = blue })
	highlight(0, "BufferVisible", { link = "StarlightGrey58Line" })
	highlight(0, "BufferVisibleIndex", { link = "StarlightGrey58Line" })
	highlight(0, "BufferVisibleMod", { link = "StarlightYellowLine" })
	highlight(0, "BufferVisibleSign", { link = "StarlightGrey58Line" })
	highlight(0, "BufferVisibleERROR", { link = "GitSignsDeleteCul" })
	highlight(0, "BufferVisibleWARN", { bg = grey11, fg = yellow })
	highlight(0, "BufferVisibleINFO", { bg = grey11, fg = blue })
	highlight(0, "BufferVisibleHINT", { bg = grey11, fg = cyan })
	highlight(0, "BufferInactive", { bg = grey18, fg = grey58 })
	highlight(0, "BufferInactiveMod", { bg = grey18, fg = yellow })
	highlight(0, "BufferInactiveSign", { bg = grey18, fg = grey62 })
	highlight(0, "BufferInactiveERROR", { bg = grey18, fg = red })
	highlight(0, "BufferInactiveWARN", { bg = grey18, fg = yellow })
	highlight(0, "BufferInactiveINFO", { link = "BufferTabpages" })
	highlight(0, "BufferInactiveHINT", { bg = grey18, fg = cyan })
	highlight(0, "BufferAlternate", { link = "BufferCurrent" })
	highlight(0, "BufferAlternateIndex", { link = "BufferCurrentIndex" })
	highlight(0, "BufferAlternateMod", { link = "BufferCurrentMod" })
	highlight(0, "BufferAlternateSign", { link = "BufferCurrentSign" })
	highlight(0, "BufferAlternateERROR", { link = "BufferCurrentERROR" })
	highlight(0, "BufferAlternateWARN", { link = "BufferCurrentWARN" })
	highlight(0, "BufferAlternateINFO", { link = "BufferCurrentINFO" })
	highlight(0, "BufferAlternateHINT", { link = "BufferCurrentHINT" })

	-- Bufferline plugin
	highlight(0, "BufferLineTabSelected", { fg = blue })
	highlight(0, "BufferLineIndicatorSelected", { fg = blue })

	-- nvim-cmp plugin
	highlight(0, "CmpItemAbbrMatch", { link = "StarlightYellow" })
	highlight(0, "CmpItemAbbrMatchFuzzy", { link = "StarlightRed" })
	highlight(0, "CmpItemKind", { link = "StarlightWhite" })
	highlight(0, "CmpItemKindClass", { link = "StarlightDarkCyan" })
	highlight(0, "CmpItemKindColor", { link = "StarlightCyan" })
	highlight(0, "CmpItemKindConstant", { link = "StarlightMagenta" })
	highlight(0, "CmpItemKindConstructor", { link = "StarlightBlue" })
	highlight(0, "CmpItemKindEnum", { link = "StarlightDarkMagenta" })
	highlight(0, "CmpItemKindEnumMember", { link = "StarlightCyan" })
	highlight(0, "CmpItemKindEvent", { link = "StarlightDarkMagenta" })
	highlight(0, "CmpItemKindField", { link = "StarlightCyan" })
	highlight(0, "CmpItemKindFile", { link = "StarlightBlue" })
	highlight(0, "CmpItemKindFolder", { link = "StarlightBlue" })
	highlight(0, "CmpItemKindFunction", { link = "StarlightBlue" })
	highlight(0, "CmpItemKindInterface", { link = "StarlightDarkCyan" })
	highlight(0, "CmpItemKindKeyword", { link = "StarlightDarkMagenta" })
	highlight(0, "CmpItemKindMethod", { link = "StarlightBlue" })
	highlight(0, "CmpItemKindModule", { link = "StarlightDarkCyan" })
	highlight(0, "CmpItemKindOperator", { link = "StarlightDarkMagenta" })
	highlight(0, "CmpItemKindProperty", { link = "StarlightCyan" })
	highlight(0, "CmpItemKindReference", { link = "StarlightCyan" })
	highlight(0, "CmpItemKindSnippet", { link = "StarlightGreen" })
	highlight(0, "CmpItemKindStruct", { link = "StarlightDarkCyan" })
	highlight(0, "CmpItemKindText", { link = "StarlightGrey70" })
	highlight(0, "CmpItemKindTypeParameter", { link = "StarlightDarkCyan" })
	highlight(0, "CmpItemKindUnit", { link = "StarlightCyan" })
	highlight(0, "CmpItemKindValue", { link = "StarlightCyan" })
	highlight(0, "CmpItemKindVariable", { link = "StarlightCyan" })
	highlight(0, "CmpItemMenu", { link = "StarlightGrey62" })

	-- Indent Blankline plugin v3 & later
	highlight(0, "IblIndent", { fg = grey15, nocombine = true })
	highlight(0, "IblScope", { fg = dark_magenta, nocombine = true })
	highlight(0, "IblWhitespace", { fg = grey15, nocombine = true })
	-- Indent Blankline plugin v2 & earlier
	highlight(0, "IndentBlanklineChar", { link = "IblIndent" })
	highlight(0, "IndentBlanklineSpaceChar", { link = "IblWhitespace" })
	highlight(0, "IndentBlanklineSpaceCharBlankline", { link = "IblWhitespace" })

	-- Mini.nvim plugin
	highlight(0, "MiniAnimateNormalFloat", { link = "NormalFloat" })
	highlight(0, "MiniClueBorder", { link = "FloatBorder" })
	highlight(0, "MiniClueDescGroup", { link = "DiagnosticFloatingWarn" })
	highlight(0, "MiniClueDescSingle", { link = "NormalFloat" })
	highlight(0, "MiniClueNextKey", { link = "DiagnosticFloatingHint" })
	highlight(0, "MiniClueNextKeyWithPostkeys", { link = "DiagnosticFloatingError" })
	highlight(0, "MiniClueSeparator", { link = "DiagnosticFloatingInfo" })
	highlight(0, "MiniClueTitle", { link = "FloatTitle" })
	highlight(0, "MiniCompletionActiveParameter", { link = "StarlightVisual" })
	highlight(0, "MiniCursorword", { link = "StarlightUnderline" })
	highlight(0, "MiniCursorwordCurrent", { link = "StarlightUnderline" })
	highlight(0, "MiniDepsChangeAdded", { link = "diffAdded" })
	highlight(0, "MiniDepsChangeRemoved", { link = "diffRemoved" })
	highlight(0, "MiniDepsHint", { link = "DiagnosticHint" })
	highlight(0, "MiniDepsInfo", { link = "DiagnosticInfo" })
	highlight(0, "MiniDepsMsgBreaking", { link = "DiagnosticWarn" })
	highlight(0, "MiniDepsPlaceholder", { link = "Comment" })
	highlight(0, "MiniDepsTitle", { link = "Title" })
	highlight(0, "MiniDepsTitleError", { link = "StarlightDarkRedLine" })
	highlight(0, "MiniDepsTitleSame", { link = "DiffText" })
	highlight(0, "MiniDepsTitleUpdate", { link = "DiffAdd" })
	highlight(0, "MiniDiffOverAdd", { link = "DiffAdd" })
	highlight(0, "MiniDiffOverChange", { link = "DiffText" })
	highlight(0, "MiniDiffOverContext", { link = "DiffChange" })
	highlight(0, "MiniDiffOverDelete", { link = "StarlightDarkRedLine" })
	highlight(0, "MiniDiffSignAdd", { link = "StarlightDarkCyan" })
	highlight(0, "MiniDiffSignChange", { link = "StarlightBlue" })
	highlight(0, "MiniDiffSignDelete", { link = "StarlightRed" })
	highlight(0, "MiniFilesBorder", { link = "FloatBorder" })
	highlight(0, "MiniFilesBorderModified", { link = "DiagnosticFloatingWarn" })
	highlight(0, "MiniFilesCursorLine", { link = "StarlightCurrentLine" })
	highlight(0, "MiniFilesDirectory", { link = "Directory" })
	highlight(0, "MiniFilesFile", { link = "StarlightWhite" })
	highlight(0, "MiniFilesNormal", { link = "NormalFloat" })
	highlight(0, "MiniFilesTitle", { link = "FloatTitle" })
	highlight(0, "MiniFilesTitleFocused", { link = "StarlightDarkCyanLine" })
	highlight(0, "MiniIconsAzure", { link = "StarlightBlue" })
	highlight(0, "MiniIconsBlue", { link = "StarlightBlue" })
	highlight(0, "MiniIconsCyan", { link = "StarlightCyan" })
	highlight(0, "MiniIconsGreen", { link = "StarlightGreen" })
	highlight(0, "MiniIconsGrey", { link = "StarlightGrey89" })
	highlight(0, "MiniIconsOrange", { link = "StarlightYellow" })
	highlight(0, "MiniIconsPurple", { link = "StarlightMagenta" })
	highlight(0, "MiniIconsRed", { link = "StarlightDarkRed" })
	highlight(0, "MiniIconsYellow", { link = "StarlightYellow" })
	highlight(0, "MiniIndentscopePrefix", { link = "StarlightNoCombine" })
	highlight(0, "MiniIndentscopeSymbol", { link = "StarlightWhite" })
	highlight(0, "MiniJump", { link = "SpellRare" })
	highlight(0, "MiniJump2dDim", { link = "StarlightGrey58" })
	highlight(0, "MiniMapNormal", { link = "NormalFloat" })
	highlight(0, "MiniMapSymbolCount", { link = "Special" })
	highlight(0, "MiniMapSymbolLine", { link = "Title" })
	highlight(0, "MiniMapSymbolView", { link = "Delimiter" })
	highlight(0, "MiniNotifyBorder", { link = "FloatBorder" })
	highlight(0, "MiniNotifyNormal", { link = "NormalFloat" })
	highlight(0, "MiniNotifyTitle", { link = "FloatTitle" })
	highlight(0, "MiniOperatorsExchangeFrom", { link = "IncSearch" })
	highlight(0, "MiniPickBorder", { link = "FloatBorder" })
	highlight(0, "MiniPickBorderBusy", { link = "DiagnosticFloatingWarn" })
	highlight(0, "MiniPickBorderText", { link = "FloatTitle" })
	highlight(0, "MiniPickHeader", { link = "DiagnosticFloatingHint" })
	highlight(0, "MiniPickIconDirectory", { link = "Directory" })
	highlight(0, "MiniPickIconFile", { link = "MiniPickNormal" })
	highlight(0, "MiniPickMatchCurrent", { link = "StarlightCurrentLine" })
	highlight(0, "MiniPickMatchMarked", { link = "DiffAdd" })
	highlight(0, "MiniPickMatchRanges", { link = "DiagnosticFloatingHint" })
	highlight(0, "MiniPickNormal", { link = "NormalFloat" })
	highlight(0, "MiniPickPreviewLine", { link = "CursorLine" })
	highlight(0, "MiniPickPreviewRegion", { link = "IncSearch" })
	highlight(0, "MiniPickPrompt", { link = "DiagnosticFloatingInfo" })
	highlight(0, "MiniStarterCurrent", { link = "StarlightNoCombine" })
	highlight(0, "MiniStarterFooter", { link = "Title" })
	highlight(0, "MiniStarterHeader", { link = "StarlightDarkMagenta" })
	highlight(0, "MiniStarterInactive", { link = "Comment" })
	highlight(0, "MiniStarterItem", { link = "Normal" })
	highlight(0, "MiniStarterItemBullet", { link = "Delimiter" })
	highlight(0, "MiniStarterItemPrefix", { link = "StarlightYellow" })
	highlight(0, "MiniStarterQuery", { link = "StarlightBlue" })
	highlight(0, "MiniStarterSection", { link = "StarlightDarkRed" })
	highlight(0, "MiniStatuslineModeCommand", { link = "StarlightStatusLineMode" })
	highlight(0, "MiniStatuslineModeInsert", { link = "StarlightStatusLineMode" })
	highlight(0, "MiniStatuslineModeNormal", { link = "StarlightStatusLineMode" })
	highlight(0, "MiniStatuslineModeOther", { link = "StarlightStatusLineMode" })
	highlight(0, "MiniStatuslineModeReplace", { link = "StarlightStatusLineMode" })
	highlight(0, "MiniStatuslineModeVisual", { link = "StarlightStatusLineMode" })
	highlight(0, "MiniSurround", { link = "IncSearch" })
	highlight(0, "MiniTablineCurrent", { link = "StarlightWhiteLineActive" })
	highlight(0, "MiniTablineFill", { link = "TabLineFill" })
	highlight(0, "MiniTablineModifiedCurrent", { link = "StarlightYellowLineActive" })
	highlight(0, "MiniTablineModifiedVisible", { link = "StarlightYellowLine" })
	highlight(0, "MiniTablineTabpagesection", { link = "StarlightBlueMode" })
	highlight(0, "MiniTablineVisible", { link = "StarlightGrey58Line" })
	highlight(0, "MiniTestEmphasis", { link = "StarlightUnderline" })
	highlight(0, "MiniTestFail", { link = "StarlightRed" })
	highlight(0, "MiniTestPass", { link = "StarlightGreen" })
	highlight(0, "MiniTrailspace", { link = "StarlightDarkRedMode" })
	highlight(0, "MiniAnimateCursor", { reverse = true, nocombine = true })
	highlight(0, "MiniHipatternsFixme", { fg = bg, bg = red })
	highlight(0, "MiniHipatternsHack", { fg = bg, bg = yellow })
	highlight(0, "MiniHipatternsNote", { fg = bg, bg = blue })
	highlight(0, "MiniHipatternsTodo", { fg = bg, bg = cyan })
	highlight(0, "MiniJump2dSpot", { fg = yellow, underline = true, nocombine = true })
	highlight(0, "MiniJump2dSpotAhead", { fg = blue, bg = grey15, nocombine = true })
	highlight(0, "MiniJump2dSpotUnique", { fg = dark_cyan, underline = true, nocombine = true })
	highlight(0, "MiniStatuslineDevinfo", { link = "StarlightStatusLineMode" })
	highlight(0, "MiniStatuslineFileinfo", { link = "StarlightStatusLineMode" })
	highlight(0, "MiniStatuslineFilename", { link = "StarlightStatusLineMode" })
	highlight(0, "MiniStatuslineInactive", { bg = grey23, fg = grey58 })
	highlight(0, "MiniTablineHidden", { bg = grey18, fg = grey58 })
	highlight(0, "MiniTablineModifiedHidden", { bg = grey18, fg = yellow })

	-- Dashboard plugin
	highlight(0, "DashboardCenter", { link = "StarlightDarkMagenta" })
	highlight(0, "DashboardFooter", { link = "StarlightRed" })
	highlight(0, "DashboardHeader", { link = "StarlightBlue" })
	highlight(0, "DashboardShortCut", { link = "StarlightCyan" })

	-- nvim-notify plugin
	highlight(0, "NotifyERRORBorder", { link = "FloatBorder" })
	highlight(0, "NotifyWARNBorder", { link = "FloatBorder" })
	highlight(0, "NotifyINFOBorder", { link = "FloatBorder" })
	highlight(0, "NotifyDEBUGBorder", { link = "FloatBorder" })
	highlight(0, "NotifyTRACEBorder", { link = "FloatBorder" })
	highlight(0, "NotifyERRORIcon", { link = "StarlightRed" })
	highlight(0, "NotifyWARNIcon", { link = "StarlightYellow" })
	highlight(0, "NotifyINFOIcon", { link = "StarlightBlue" })
	highlight(0, "NotifyDEBUGIcon", { link = "StarlightGrey58" })
	highlight(0, "NotifyTRACEIcon", { link = "StarlightMagenta" })
	highlight(0, "NotifyERRORTitle", { link = "StarlightRed" })
	highlight(0, "NotifyWARNTitle", { link = "StarlightYellow" })
	highlight(0, "NotifyINFOTitle", { link = "StarlightBlue" })
	highlight(0, "NotifyDEBUGTitle", { link = "StarlightGrey58" })
	highlight(0, "NotifyTRACETitle", { link = "StarlightMagenta" })

	-- lazy.nvim plugin
	highlight(0, "LazyCommit", { link = "StarlightDarkCyan" })
	highlight(0, "LazyCommitType", { link = "StarlightDarkMagenta" })
	highlight(0, "LazyDimmed", { fg = grey58 })
	highlight(0, "LazyH1", { link = "StarlightBlueMode" })
	highlight(0, "LazyProgressDone", { link = "StarlightBlue" })
	highlight(0, "LazyProgressTodo", { link = "StarlightGrey0" })
	highlight(0, "LazyReasonCmd", { link = "StarlightGreen" })
	highlight(0, "LazyReasonPlugin", { link = "StarlightRed" })
	highlight(0, "LazyReasonRuntime", { link = "StarlightDarkMagenta" })
	highlight(0, "LazySpecial", { link = "StarlightBlue" })
	highlight(0, "LazyButton", { bg = grey15, fg = white })
	highlight(0, "LazyButtonActive", { bg = grey30, fg = grey89 })

	-- mason.nvim plugin
	highlight(0, "MasonError", { link = "StarlightRed" })
	highlight(0, "MasonHeader", { link = "StarlightBlueMode" })
	highlight(0, "MasonHeaderSecondary", { link = "StarlightBlueMode" })
	highlight(0, "MasonHeading", { link = "StarlightGrey89" })
	highlight(0, "MasonHighlight", { link = "StarlightBlue" })
	highlight(0, "MasonHighlightBlock", { link = "StarlightBlueMode" })
	highlight(0, "MasonHighlightBlockBold", { link = "StarlightBlueMode" })
	highlight(0, "MasonHighlightBlockBoldSecondary", { link = "StarlightDarkCyanMode" })
	highlight(0, "MasonHighlightBlockSecondary", { link = "StarlightDarkCyanMode" })
	highlight(0, "MasonHighlightSecondary", { link = "StarlightDarkCyan" })
	highlight(0, "MasonLink", { link = "StarlightMagenta" })
	highlight(0, "MasonMuted", { link = "StarlightGrey39" })
	highlight(0, "MasonMutedBlock", { bg = grey15, fg = white })
	highlight(0, "MasonMutedBlockBold", { bg = grey15, fg = grey89 })

	-- linefly plugin
	highlight(0, "LineflyNormal", { link = "StarlightBlueMode" })
	highlight(0, "LineflyInsert", { link = "StarlightDarkCyanMode" })
	highlight(0, "LineflyVisual", { link = "StarlightMagentaMode" })
	highlight(0, "LineflyCommand", { link = "StarlightYellowMode" })
	highlight(0, "LineflyReplace", { link = "StarlightDarkRedMode" })

	-- lspsaga.nvim plugin
	highlight(0, "TitleString", { link = "StarlightBlue" })
	highlight(0, "TitleIcon", { link = "StarlightBlue" })
	highlight(0, "TitleSymbol", { link = "StarlightBlue" })
	highlight(0, "SagaBorder", { link = "FloatBorder" })
	highlight(0, "SagaNormal", { link = "Normal" })
	highlight(0, "SagaExpand", { link = "StarlightRed" })
	highlight(0, "SagaCollapse", { link = "StarlightRed" })
	highlight(0, "SagaBeacon", { link = "StarlightMagentaMode" })
	highlight(0, "ActionPreviewTitle", { link = "StarlightBlue" })
	highlight(0, "CodeActionText", { link = "StarlightYellow" })
	highlight(0, "CodeActionConceal", { link = "StarlightGreen" })
	highlight(0, "FinderSelection", { link = "StarlightCyan" })
	highlight(0, "FinderFName", { link = "StarlightWhite" })
	highlight(0, "FinderCode", { link = "StarlightWhite" })
	highlight(0, "FinderIcon", { link = "StarlightCyan" })
	highlight(0, "FinderType", { link = "StarlightDarkMagenta" })
	highlight(0, "FinderSpinnerTitle", { link = "StarlightMagenta" })
	highlight(0, "FinderSpinner", { link = "StarlightMagenta" })
	highlight(0, "RenameNormal", { link = "StarlightYellow" })
	highlight(0, "DiagnosticSource", { link = "StarlightGrey39" })
	highlight(0, "DiagnosticText", { link = "StarlightRed" })
	highlight(0, "CallHierarchyIcon", { link = "StarlightDarkMagenta" })
	highlight(0, "CallHierarchyTitle", { link = "StarlightRed" })
	highlight(0, "SagaShadow", { link = "Normal" })
	highlight(0, "OutlineIndent", { link = "StarlightMagenta" })

	-- Noice plugin
	highlight(0, "NoiceCmdlinePopup", { link = "StarlightGrey50" })
	highlight(0, "NoiceCmdlinePopupBorder", { link = "StarlightGrey27" })
	highlight(0, "NoiceCmdlinePopupBorderSearch", { link = "StarlightGrey27" })
	highlight(0, "NoiceCmdlinePrompt", { link = "StarlightBlue" })
	highlight(0, "NoiceCompletionItemKindDefault", { link = "StarlightCyan" })
	highlight(0, "NoiceConfirmBorder", { link = "StarlightBlue" })
	highlight(0, "NoiceFormatTitle", { link = "StarlightRed" })

	-- nvim-navic plugin
	highlight(0, "NavicText", { bg = grey18, fg = grey70 })
	highlight(0, "NavicSeparator", { bg = grey18, fg = white })
	highlight(0, "NavicIconsOperator", { bg = grey18, fg = red })
	highlight(0, "NavicIconsBoolean", { link = "NavicIconsOperator" })
	highlight(0, "NavicIconsClass", { bg = grey18, fg = dark_cyan })
	highlight(0, "NavicIconsConstant", { bg = grey18, fg = yellow })
	highlight(0, "NavicIconsConstructor", { bg = grey18, fg = blue })
	highlight(0, "NavicIconsEnum", { bg = grey18, fg = dark_magenta })
	highlight(0, "NavicIconsEnumMember", { bg = grey18, fg = cyan })
	highlight(0, "NavicIconsEvent", { link = "NavicIconsConstant" })
	highlight(0, "NavicIconsField", { link = "NavicIconsEnumMember" })
	highlight(0, "NavicIconsFile", { bg = grey18, fg = blue })
	highlight(0, "NavicIconsFunction", { link = "NavicIconsConstructor" })
	highlight(0, "NavicIconsInterface", { link = "NavicIconsEnum" })
	highlight(0, "NavicIconsKey", { link = "NavicIconsEnumMember" })
	highlight(0, "NavicIconsMethod", { link = "NavicIconsConstructor" })
	highlight(0, "NavicIconsModule", { link = "NavicIconsEnumMember" })
	highlight(0, "NavicIconsNamespace", { link = "NavicIconsEnumMember" })
	highlight(0, "NavicIconsNull", { bg = grey18, fg = green })
	highlight(0, "NavicIconsNumber", { link = "NavicIconsConstant" })
	highlight(0, "NavicIconsObject", { link = "NavicIconsEnumMember" })
	highlight(0, "NavicIconsPackage", { link = "NavicIconsEnumMember" })
	highlight(0, "NavicIconsProperty", { link = "NavicIconsEnumMember" })
	highlight(0, "NavicIconsString", { bg = grey18, fg = dark_yellow })
	highlight(0, "NavicIconsStruct", { link = "NavicIconsClass" })
	highlight(0, "NavicIconsTypeParameter", { link = "NavicIconsEnumMember" })
	highlight(0, "NavicIconsVariable", { link = "NavicIconsEnumMember" })

	-- Rainbow Delimiters plugin
	highlight(0, "RainbowDelimiterRed", { link = "StarlightRed" })
	highlight(0, "RainbowDelimiterYellow", { link = "StarlightYellow" })
	highlight(0, "RainbowDelimiterBlue", { link = "StarlightBlue" })
	highlight(0, "RainbowDelimiterOrange", { link = "StarlightYellow" })
	highlight(0, "RainbowDelimiterGreen", { link = "StarlightGreen" })
	highlight(0, "RainbowDelimiterViolet", { link = "StarlightDarkMagenta" })
	highlight(0, "RainbowDelimiterCyan", { link = "StarlightCyan" })

	-- Neogit plugin
	highlight(0, "NeogitBranch", { link = "StarlightBlue" })
	highlight(0, "NeogitDiffAddHighlight", { link = "StarlightDarkCyanLine" })
	highlight(0, "NeogitDiffContextHighlight", { bg = grey11 })
	highlight(0, "NeogitDiffDeleteHighlight", { link = "StarlightDarkRedLine" })
	highlight(0, "NeogitHunkHeader", { link = "Pmenu" })
	highlight(0, "NeogitHunkHeaderHighlight", { link = "StarlightBlueLineActive" })
	highlight(0, "NeogitRemote", { link = "StarlightMagenta" })

	-- nvim-window-picker plugin
	highlight(0, "WindowPickerStatusLine", { link = "WinBar" })
	highlight(0, "WindowPickerStatusLineNC", { link = "WinBar" })
	highlight(0, "WindowPickerWinBar", { link = "WinBar" })
	highlight(0, "WindowPickerWinBarNC", { link = "WinBar" })

	-- nvim-dap-ui
	highlight(0, "DapUIBreakpointsCurrentLine", { bg = grey11, fg = green })
	highlight(0, "DapUIBreakpointsDisabledLine", { link = "Comment" })
	highlight(0, "DapUIBreakpointsInfo", { link = "StarlightBlue" })
	highlight(0, "DapUIBreakpointsPath", { link = "StarlightCyan" })
	highlight(0, "DapUIDecoration", { link = "StarlightBlue" })
	highlight(0, "DapUIFloatBorder", { link = "FloatBorder" })
	highlight(0, "DapUILineNumber", { link = "Number" })
	highlight(0, "DapUIModifiedValue", { fg = white, underline = true })
	highlight(0, "DapUIPlayPause", { bg = grey15, fg = green })
	highlight(0, "DapUIRestart", { link = "DapUIPlayPause" })
	highlight(0, "DapUIScope", { link = "StarlightBlue" })
	highlight(0, "DapUISource", { link = "StarlightDarkMagenta" })
	highlight(0, "DapUIStepBack", { bg = grey15, fg = cyan })
	highlight(0, "DapUIStepInto", { link = "DapUIStepBack" })
	highlight(0, "DapUIStepOut", { link = "DapUIStepBack" })
	highlight(0, "DapUIStepOver", { link = "DapUIStepBack" })
	highlight(0, "DapUIStop", { bg = grey15, fg = red })
	highlight(0, "DapUIStoppedThread", { link = "StarlightCyan" })
	highlight(0, "DapUIThread", { link = "StarlightGreen" })
	highlight(0, "DapUIType", { link = "Type" })
	highlight(0, "DapUIUnavailable", { bg = grey15, fg = grey39 })
	highlight(0, "DapUIWatchesEmpty", { link = "StarlightRed" })
	highlight(0, "DapUIWatchesError", { link = "StarlightRed" })
	highlight(0, "DapUIWatchesValue", { link = "StarlightGreen" })
	highlight(0, "DapUIWinSelect", { link = "StarlightBlue" })

	-- arrow.nvim
	highlight(0, "ArrowCurrentFile", { link = "StarlightDarkCyan" })

	-- NvCheatsheet.nvim
	highlight(0, "NvChSection", { link = "Pmenu" })
	highlight(0, "NvChAsciiHeader", { link = "Directory" })
	highlight(0, "NvCheatsheetWhite", { bg = white, fg = grey11 })
	highlight(0, "NvCheatsheetGray", { bg = red, fg = grey11 })
	highlight(0, "NvCheatsheetBlue", { link = "StarlightBlueMode" })
	highlight(0, "NvCheatsheetCyan", { link = "StarlightCyanMode" })
	highlight(0, "NvCheatsheetRed", { link = "StarlightDarkRedMode" })
	highlight(0, "NvCheatsheetGreen", { link = "StarlightDarkCyanMode" })
	highlight(0, "NvCheatsheetYellow", { link = "StarlightYellowMode" })
	highlight(0, "NvCheatsheetOrange", { bg = red, fg = grey11 })
	highlight(0, "NvCheatsheetPurple", { link = "StarlightMagentaMode" })
	highlight(0, "NvCheatsheetMagenta", { bg = dark_magenta, fg = grey11 })

	-- fzf-lua
	highlight(0, "FzfLuaBorder", { link = "FloatBorder" })
	highlight(0, "FzfLuaBufFlagAlt", { link = "StarlightCyan" })
	highlight(0, "FzfLuaBufFlagCur", { link = "StarlightYellow" })
	highlight(0, "FzfLuaBufNr", { link = "StarlightDarkYellow" })
	highlight(0, "FzfLuaFzfHeader", { link = "StarlightBlue" })
	highlight(0, "FzfLuaFzfInfo", { link = "String" })
	highlight(0, "FzfLuaFzfMarker", { link = "StarlightRed" })
	highlight(0, "FzfLuaFzfPointer", { link = "StarlightDarkRed" })
	highlight(0, "FzfLuaFzfPrompt", { link = "StarlightBlue" })
	highlight(0, "FzfLuaFzfSpinner", { link = "StarlightDarkCyan" })
	highlight(0, "FzfLuaHeaderBind", { link = "StarlightGreen" })
	highlight(0, "FzfLuaHeaderText", { link = "StarlightCyan" })
	highlight(0, "FzfLuaLiveSym", { link = "StarlightGreen" })
	highlight(0, "FzfLuaPathColNr", { link = "StarlightBlue" })
	highlight(0, "FzfLuaTabMarker", { link = "StarlightDarkYellow" })
	highlight(0, "FzfLuaTabTitle", { link = "StarlightBlue" })
	highlight(0, "FzfLuaTitle", { link = "FloatTitle" })

	-- which-key plugin
	highlight(0, "WhichKeyDesc", { link = "StarlightGrey89" })
	highlight(0, "WhichKey", { link = "StarlightGrey89" })
end

-- User customization of theme colors.
--
M.custom_colors = function(colors)
	black = colors.black and colors.black or M.palette.black
	white = colors.white and colors.white or M.palette.white
	bg = colors.bg and colors.bg or M.palette.bg
	grey0 = colors.grey0 and colors.grey0 or M.palette.grey0
	grey1 = colors.grey1 and colors.grey1 or M.palette.grey1
	grey89 = colors.grey89 and colors.grey89 or M.palette.grey89
	grey70 = colors.grey70 and colors.grey70 or M.palette.grey70
	grey62 = colors.grey62 and colors.grey62 or M.palette.grey62
	grey58 = colors.grey58 and colors.grey58 or M.palette.grey58
	grey50 = colors.grey50 and colors.grey50 or M.palette.grey50
	grey39 = colors.grey39 and colors.grey39 or M.palette.grey39
	grey30 = colors.grey30 and colors.grey30 or M.palette.grey30
	grey27 = colors.grey27 and colors.grey27 or M.palette.grey27
	grey23 = colors.grey23 and colors.grey23 or M.palette.grey23
	grey18 = colors.grey18 and colors.grey18 or M.palette.grey18
	grey15 = colors.grey15 and colors.grey15 or M.palette.grey15
	grey11 = colors.grey11 and colors.grey11 or M.palette.grey11
	grey7 = colors.grey7 and colors.grey7 or M.palette.grey7
	punct = colors.punct and colors.punct or M.palette.punct

	yellow = colors.yellow and colors.yellow or M.palette.yellow
	dark_yellow = colors.dark_yellow and colors.dark_yellow or M.palette.dark_yellow
	red = colors.red and colors.red or M.palette.red
	dark_red = colors.dark_red and colors.dark_red or M.palette.dark_red
	green = colors.green and colors.green or M.palette.green
	dark_green = colors.dark_green and colors.dark_green or M.palette.dark_green
	cyan = colors.cyan and colors.cyan or M.palette.cyan
	dark_cyan = colors.dark_cyan and colors.dark_cyan or M.palette.dark_cyan
	blue = colors.blue and colors.blue or M.palette.blue
	dark_blue = colors.dark_blue and colors.dark_blue or M.palette.dark_blue
	magenta = colors.magenta and colors.magenta or M.palette.magenta
	dark_magenta = colors.dark_magenta and colors.dark_magenta or M.palette.dark_magenta
	orange = colors.orange and colors.orange or M.palette.orange
end

return M
