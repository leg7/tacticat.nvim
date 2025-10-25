local M = {}

local colors = {
	white = {
		regular = '#fbfbfb',
		dark    = '#ededed',
		bright  = '#ffffff',
	},

	purple = {
		regular = '#580dad',
		bright  = '#6e32b3',
		dark    = '#440a86'
	},


	blue = {
		regular = '#152eaf',
		bright  = '#394cb5',
		dark    = '#102388',
	},

	pink = {
		regular = '#c9007a',
		bright  = '#cd2c8E',
		dark    = '#9c005f'
	},

	orange = {
		regular = '#FF4C00',
		bright  = '#ff5c39',
		dark    = '#c62200'
	},

	yellow = {
		regular = '#ffec00',
		bright  = '#fff35f',
		dark    = '#c7b900'
	},

	red = {
		regular = '#fd0006',
		bright  = '#fd3338',
		dark    = '#c50005',
	},

	black = {
		regular = '#000000',
		bright  = '#4e4e4e'
	},

	green = {
		regular = '#58e000',
		bright  = '#78E233',
		dark    = '#45AE00'
	}
}

M.opts = {
	autoload = false,
	highlight_column = {
		enable = true,
		number = 120,
	},
	integrations = {
		which_key = false,
		git_signs = false,
		cmp = false,
	}
}

M.setup = function(opts)
	M.opts = vim.tbl_deep_extend("force", M.opts, opts or {})

	if M.opts.autoload then
		vim.cmd('colorscheme tacticat')
	end
end

function M.load()
	vim.cmd('highlight clear')
	vim.cmd('syntax reset')
	vim.o.termguicolors = true
	vim.o.background = 'light'
	vim.g.colors_name = 'tacticat'

	local set = vim.api.nvim_set_hl

	-- Conceal -- Placeholder characters substituted for concealed text (see 'conceallevel').

	set(0, 'Cursor', {})
	-- set(0, 'lCursor', { link = 'Cursor' })
	-- set(0, 'CursorIM', { link = 'Cursor' })

	set(0, 'CursorLine', { fg = 'none', bg = colors.white.regular })
	set(0, 'CursorColumn', { link = 'CursorLine' })
	set(0, 'ColorColumn', { link = 'CursorLine' })

	set(0, 'Directory', { link = 'Normal' })

	set(0, 'DiffAdd',    { fg = colors.black.regular, bg = colors.green.bright })
	set(0, 'DiffChange', { fg = colors.white.bright, bg = colors.blue.bright })
	set(0, 'DiffDelete', { fg = colors.black.regular, bg = colors.red.bright })
	set(0, 'DiffText',   { fg = colors.white.bright, bg = colors.orange.bright })

	-- TermCursor
	-- set(0, 'ErrorMsg', { fg = colors.red.bright, bg = colors.blue.regular })
	-- WinSeparator

	-- Folded
	-- FoldColumn

	-- set(0, 'SignColumn', { fg = colors.red.dark })

	set(0, 'Search', { fg = colors.black.regular, bg = colors.yellow.bright })
	set(0, 'CurSearch', { fg = colors.black.regular, bg = colors.yellow.dark })
	set(0, 'IncSearch', { fg = colors.black.regular, bg = colors.yellow.dark, bold = true})
	set(0, 'Substitute', { link = 'Search' })

	-- LineNr
	-- LineNrAbove
	-- LineNrBelow
	-- CursorLineNr
	-- CursorLineFold
	-- CursorLineSign

	set(0, 'MatchParen', { fg = colors.black.regular, bg = colors.yellow.regular, bold = true })

	set(0, 'ModeMsg',      { fg = colors.black.regular }); -- Small box around mode message (-- INSERT --)
	set(0, 'MsgArea',      { fg = colors.black.regular }); -- Entire bottom bar for messages
	-- set(0, 'MsgSeparator', { fg = colors.black.regular, bg = colors.purple.bright });
	-- set(0, 'MoreMsg',      { fg = colors.black.regular, bg = colors.yellow.bright });
	set(0, 'EndOfBuffer', { link = 'Normal' });
	set(0, 'NormalNC', { link = 'Normal' });

	set(0, 'Normal', { fg = colors.black.regular, bg = colors.white.bright });
	set(0, 'NormalFloat', {});
	set(0, 'FloatBorder', { link = 'Normal' });
	-- TODO
	set(0, 'FloatTitle', { fg = colors.red.regular, bg = colors.purple.bright });
	set(0, 'FloatFooter', { fg = colors.yellow.regular, bg = colors.purple.bright });


	-- Pmenu
	set(0, 'Pmenu', { bg = colors.white.dark });
	set(0, 'PmenuSel', { fg = colors.black.regular, bg = colors.yellow.regular });
	-- set(0, 'PmenuKind', { bg = colors.purple.regular })
	-- set(0, 'PmenuKindSel', { bg = colors.pink.regular })
	-- set(0, 'PmenuExtra', { bg = colors.purple.regular })
	-- set(0, 'PmenuExtraSel', { bg = colors.purple.regular })
	-- set(0, 'PmenuSbar', { bg = colors.purple.regular })
	-- set(0, 'PmenuThumb', { bg = colors.purple.regular })
	set(0, 'PmenuMatch', { fg = colors.pink.regular, bold = true})
	set(0, 'PmenuMatchSel', { fg = colors.black.regular })

	set(0, 'ComplMatchIns', { fg = colors.orange.regular })
	set(0, 'Question', { fg = colors.blue.regular })
	set(0, 'QuickFixLine', { fg = colors.blue.regular })

	-- SnippetTabstop
	-- SpecialKey

	set(0, 'SpellBad',   { undercurl = true, sp = colors.red.regular })
	set(0, 'SpellCap',   { undercurl = true, sp = colors.orange.regular })
	set(0, 'SpellLocal', { undercurl = true, sp = colors.green.regular })
	set(0, 'SpellRare',  { undercurl = true, sp = colors.purple.regular })

	set(0, 'StatusLine', { link = 'Normal' })
	-- Todo: Doesn't work? maybe because of lualine
	set(0, 'StatusLineNC', { bg = colors.black.regular })
	set(0, 'StatusLineTerm', { link = 'Normal' })
	set(0, 'StatusLineTermNC', { link = 'Normal' })

	-- TabLine
	-- TabLineFill
	-- TabLineSel

	-- set(0, 'Title', { bg = colors.red.regular })

	set(0, 'Visual', { fg = colors.black.regular, bg = colors.yellow.regular })
	set(0, 'VisualNOS', { link = 'Visual' })

	-- WarningMsg
	-- set(0, 'Whitespace', { link = 'Visual' })
	-- WildMenu
	--
	-- WinBar
	-- WinBarNC

	-- Syntax groups

	set(0, 'Comment', { fg = colors.black.regular, bg = colors.white.dark })

	set(0, 'Constant',  { fg = colors.pink.regular })
	set(0, 'String',    { link = 'Constant' })
	set(0, 'Character', { link = 'Constant' })
	set(0, 'Number',    { link = 'Constant' })
	set(0, 'Boolean',   { link = 'Constant' })
	set(0, 'Float',     { link = 'Constant' })

	set(0, 'Identifier', { fg = colors.black.bright })
	set(0, 'Function', { fg = colors.purple.regular })

	set(0, 'Statement',   { fg = colors.black.regular })
	set(0, 'Conditional', { fg = colors.black.regular, italic = true })
	set(0, 'Repeat',      { fg = colors.black.regular, italic = true })

	set(0, 'Keyword',     { fg = colors.black.regular, italic = true })
	set(0, 'Exception',   { link = 'Statement' })

	set(0, 'PreProc',   { link = 'Constant' })
	set(0, 'Include',   { link = 'PreProc' })
	set(0, 'Define',    { link = 'PreProc' })
	set(0, 'Macro',     { link = 'PreProc' })
	set(0, 'PreCondit', { link = 'PreProc' })

	set(0, 'Type',         { fg = colors.blue.bright })
	set(0, 'StorageClass', { link = 'Type' })
	set(0, 'Structure',    { link = 'Type' })
	set(0, 'Typedef',      { link = 'Type' })

	set(0, 'Special',        { fg = colors.pink.regular })
	set(0, 'SpecialChar',    { link = 'Special' })
	set(0, 'Tag',            { link = 'Special' })
	set(0, 'Delimiter',      { fg = colors.black.regular })
	set(0, 'SpecialComment', { fg = colors.orange.regular })
	set(0, 'Debug',          { link = 'Special' })

	set(0, 'Underlined', { underline = true, sp = colors.pink.regular })

	-- Ignore		left blank, hidden  |hl-Ignore|

	set(0, 'Error', { fg = colors.red.regular })

	set(0, 'Todo', { bg = colors.pink.bright })

	set(0, 'Added', { link = 'Identifier' })
	set(0, 'Changed', { link = 'Identifier' })
	set(0, 'Removed', { link = 'Identifier' })

	-- Tree sitter groups

	set(0, '@variable',                    { link = 'Identifier' })
	set(0, '@variable.builtin',            { link = '@variable' })
	set(0, '@variable.parameter',          { link = '@variable' })
	set(0, '@variable.parameter.builtin',  { link = '@variable' })
	set(0, '@variable.member',             { link = '@variable' })

	set(0, '@constant',                    { link = 'Constant' })
	set(0, '@constant.builtin',            { link = '@constant' })
	set(0, '@constant.macro',              { link = '@constant' })

	set(0, '@module',                      { link = 'PreProc' })
	set(0, '@module.builtin',              { link = '@module' })
	set(0, '@label',                       { link = 'Label' })

	set(0, '@string',                      { link = 'String' })
	set(0, '@string.documentation',        { link = '@string' })
	set(0, '@string.regexp',               { link = '@string' })
	set(0, '@string.escape',               { link = '@string' })
	set(0, '@string.special',              { link = '@string' })
	set(0, '@string.special.symbol',       { link = '@string' })
	set(0, '@string.special.path',         { link = '@string' })
	set(0, '@string.special.url',          { link = '@string' })

	set(0, '@character',                   { link = 'Character' })
	set(0, '@character.special',           { link = 'SpecialChar' })

	set(0, '@boolean',                     { link = 'Boolean' })
	set(0, '@number',                      { link = 'Number' })
	set(0, '@number.float',                { link = 'Float' })

	set(0, '@type',                        { link = 'Type'})
	set(0, '@type.builtin',                { link = '@type'})
	set(0, '@type.definition',             { link = '@type'})

	set(0, '@attribute',                   { link = 'Identifier'})
	set(0, '@attribute.builtin',           { link = '@attribute'})
	set(0, '@property',                    { link = '@attribute'})

	set(0, '@function',                    { link = 'Function' })
	set(0, '@function.builtin',            { link = '@function' })
	set(0, '@function.call',               { link = '@function' })
	set(0, '@function.macro',              { link = '@function' })

	set(0, '@function.method',             { link = '@function' })
	set(0, '@function.method.call',        { link = '@function' })

	set(0, '@constructor',                 { link = '@function' })
	set(0, '@operator',                    { link = 'Operator' })

	set(0, '@keyword',                     { link = 'Keyword' })
	set(0, '@keyword.coroutine',           { link = '@keyword' })
	set(0, '@keyword.function',            { link = '@keyword' })
	set(0, '@keyword.operator',            { link = '@keyword' })
	set(0, '@keyword.import',              { link = '@keyword' })
	set(0, '@keyword.type',                { link = 'Type' })
	set(0, '@keyword.modifier',            { link = 'Type' })
	set(0, '@keyword.repeat',              { link = '@keyword' })
	set(0, '@keyword.return',              { link = '@keyword' })
	set(0, '@keyword.debug',               { link = '@keyword' })
	set(0, '@keyword.exception',           { link = '@keyword' })

	set(0, '@keyword.conditional',         { link = '@keyword' })
	set(0, '@keyword.conditional.ternary', { link = '@keyword' })

	set(0, '@keyword.directive',           { link = '@keyword' })
	set(0, '@keyword.directive.define',    { link = '@keyword' })

	set(0, '@punctuation.delimiter',       { link = 'Delimiter' })
	set(0, '@punctuation.bracket',         { link = 'Delimiter' })
	set(0, '@punctuation.special',         { link = 'Special' })

	set(0, '@comment',                     { link = 'Comment' })
	set(0, '@comment.documentation',       { link = 'SpecialComment' })

	set(0, '@comment.error',               { link = 'SpecialComment' })
	set(0, '@comment.warning',             { link = 'SpecialComment' })
	set(0, '@comment.todo',                { link = 'SpecialComment' })
	set(0, '@comment.note',                { link = 'SpecialComment' })

	-- set(0, '@markup.strong',               { link = '@markup.strong' })
	-- set(0, '@markup.italic',               { link = '@markup.italic' })
	-- set(0, '@markup.strikethrough',        { link = '@markup.strikethrough' })
	-- set(0, '@markup.underline',            { link = '@markup.underline' })

	-- set(0, '@markup.heading',              { link = '@markup.heading' })
	-- set(0, '@markup.heading.1',            { link = '@markup.heading.1' })
	-- set(0, '@markup.heading.2',            { link = '@markup.heading.2' })
	-- set(0, '@markup.heading.3',            { link = '@markup.heading.3' })
	-- set(0, '@markup.heading.4',            { link = '@markup.heading.4' })
	-- set(0, '@markup.heading.5',            { link = '@markup.heading.5' })
	-- set(0, '@markup.heading.6',            { link = '@markup.heading.6' })

	-- set(0, '@markup.quote',                { link = '@markup.quote' })
	-- set(0, '@markup.math',                 { link = '@markup.math' })

	-- set(0, '@markup.link',                 { link = '@markup.link' })
	-- set(0, '@markup.link.label',           { link = '@markup.link.label' })
	-- set(0, '@markup.link.url',             { link = '@markup.link.url' })

	-- set(0, '@markup.raw',                  { link = '@markup.raw' })
	-- set(0, '@markup.raw.block',            { link = '@markup.raw.block' })

	-- set(0, '@markup.list',                 { link = '@markup.list' })
	-- set(0, '@markup.list.checked',         { link = '@markup.list.checked' })
	-- set(0, '@markup.list.unchecked',       { link = '@markup.list.unchecked' })

	set(0, '@diff.plus',                   { link = 'DiffAdd' })
	set(0, '@diff.minus',                  { link = 'DiffDelete' })
	set(0, '@diff.delta',                  { link = 'DiffChange' })

	-- set(0, '@tag',                         { link = '@tag' })
	-- set(0, '@tag.builtin',                 { link = '@tag.builtin' })
	-- set(0, '@tag.attribute',               { link = '@tag.attribute' })
	-- set(0, '@tag.delimiter',               { link = '@tag.delimiter' })

	-- Diagnostics

	set(0, 'DiagnosticError', { fg = colors.red.regular })
	set(0, 'DiagnosticWarn',  { fg = colors.orange.regular })
	set(0, 'DiagnosticInfo',  { fg = colors.blue.dark })
	set(0, 'DiagnosticHint',  { fg = colors.blue.dark })
	set(0, 'DiagnosticOk',    { fg = colors.blue.dark })

	set(0, 'DiagnosticUnderlineError', { underline = true, sp = colors.red.regular })
	set(0, 'DiagnosticUnderlineWarn',  { underline = true, sp = colors.orange.regular })
	set(0, 'DiagnosticUnderlineInfo',  { underline = true, sp = colors.blue.dark })
	set(0, 'DiagnosticUnderlineHint',  { underline = true, sp = colors.blue.dark })
	set(0, 'DiagnosticUnderlineOk',    { underline = true, sp = colors.blue.dark })

	if M.opts.integrations.git_signs then
		set(0, 'GitSignsChange', {fg = colors.blue.regular})
		set(0, 'GitSignsAdd',    {fg = colors.green.dark})
		set(0, 'GitSignsDelete', {fg = colors.red.regular})
	end

	if M.opts.integrations.cmp then
		-- CmpItemAbbr
		-- CmpItemAbbrDeprecated
		set(0, 'CmpItemKind',              { link = 'Type' })
		-- set(0, 'CmpItemMenu',           {})
		set(0, 'CmpItemAbbrMatch',         { fg = colors.pink.regular, bold = true })
		set(0, 'CmpItemAbbrMatchFuzzy',    { link = 'CmpItemAbbrMatch'})

		set(0, 'CmpItemKindSnippet',       { fg = colors.orange.regular })
		set(0, 'CmpItemKindKeyword',       { link = 'Keyword' })
		set(0, 'CmpItemKindText',          { link = 'String' })
		set(0, 'CmpItemKindMethod',        { link = 'Function' })
		set(0, 'CmpItemKindConstructor',   { link = 'Function' })
		set(0, 'CmpItemKindFunction',      { link = 'Function' })
		set(0, 'CmpItemKindFolder',        { link = 'Directory' })
		set(0, 'CmpItemKindModule',        { link = '@module'})
		set(0, 'CmpItemKindConstant',      { link = 'Constant' })
		set(0, 'CmpItemKindField',         { link = '@attribute' })
		set(0, 'CmpItemKindProperty',      { link = '@property' })
		set(0, 'CmpItemKindEnum',          { link = 'Type' })
		-- CmpItemKindUnit
		set(0, 'CmpItemKindClass',         { link = 'Type' })
		set(0, 'CmpItemKindVariable',      { link = 'Identifier' })
		set(0, 'CmpItemKindFile',          { link = 'Underlined' })
		set(0, 'CmpItemKindInterface',     { link = 'Type' })
		-- CmpItemKindColor
		set(0, 'CmpItemKindReference',     { link = 'Identifier' })
		set(0, 'CmpItemKindEnumMember',    { link = 'Constant' })
		set(0, 'CmpItemKindStruct',        { link = 'Structure'})
		set(0, 'CmpItemKindValue',         { link = 'Constant' })
		set(0, 'CmpItemKindEvent',         { link = 'Type' })
		set(0, 'CmpItemKindOperator',      { link = 'Operator' })
		set(0, 'CmpItemKindTypeParameter', { link = 'Identifier'})
		set(0, 'CmpItemKindCopilot',       { link = 'Special' })
	end

	if M.opts.integrations.which_key then
		set(0, 'WhichKeySeparator', { link = 'Normal' })
		set(0, 'WhichKeyNormal',    { bg = colors.white.dark })
		set(0, 'WhichKeyBorder',    { bg = colors.white.dark })
	end

	if M.opts.highlight_column.enable then
		vim.api.nvim_create_autocmd({'BufEnter'}, {
			desc = string.format("Highlight column %d", M.opts.highlight_column.number),
			callback = function()
				vim.fn.matchadd('ColorColumn', string.format("\\%%%dv", M.opts.highlight_column.number), 100)
			end
		})
		set(0, 'ColorColumn', { fg = colors.white.bright, bg = colors.orange.regular })
	end
end

M.colors = colors

return M
