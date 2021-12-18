local g = vim.g
local o = vim.o
local wk = require('which-key')

-- Leader Key --
g.mapleader = ' '
o.timeoutlen = 500 -- set timeoutlen so that we have enough time to type out the whole keymap

wk.register({ ['<leader>'] = {
	-- Buffers --
	b = {
		name = '+buffers',
		['1'] = { '<Cmd>BufferLineGoToBuffer 1<CR>', 'buffer-1' },
		['2'] = { '<Cmd>BufferLineGoToBuffer 2<CR>', 'buffer-2' },
		['3'] = { '<Cmd>BufferLineGoToBuffer 3<CR>', 'buffer-3' },
		['4'] = { '<Cmd>BufferLineGoToBuffer 4<CR>', 'buffer-4' },
		['5'] = { '<Cmd>BufferLineGoToBuffer 5<CR>', 'buffer-5' },
		['6'] = { '<Cmd>BufferLineGoToBuffer 6<CR>', 'buffer-6' },
		['7'] = { '<Cmd>BufferLineGoToBuffer 7<CR>', 'buffer-7' },
		['8'] = { '<Cmd>BufferLineGoToBuffer 8<CR>', 'buffer-8' },
		['9'] = { '<Cmd>BufferLineGoToBuffer 9<CR>', 'buffer-9' },
		['.'] = { '<Cmd>BufferLineSortByExtension<CR>', 'sort-by-ext' },
		['/'] = { '<Cmd>BufferLineSortByDirectory<CR>', 'sort-by-dir' },
		B = { '<Cmd>BufferLineMovePrev<CR>', 'move-buffer-back' },
		c = { '<Cmd>BufferLinePick<CR>', 'pick-buffer' },
		F = { '<Cmd>BufferLineMoveNext<CR>', 'move-buffer-forward' },
		N = { '<Cmd>BufferLineCycleNext<CR>', 'next-visible-buffer' },
		P = { '<Cmd>BufferLineCyclePrev<CR>', 'prev-visible-buffer' },
		f = { '<Cmd>Buffers<CR>', 'find-buffer' },
		l = { '<Cmd>ls<CR>', 'list-buffers' },
		L = { '<Cmd>BLines<CR>', 'lines' }, n = { '<Cmd>bn!<CR>', 'next-buffer-id' },
		p = { '<Cmd>bp!<CR>', 'prev-buffer-id' },
		s = { ':sp ', 'horizontal-split-file', silent = false},
		S = { ':sp<CR>',  'horizontal-split' },
		t = { '<Cmd>BufferLineSortByTabs<CR>', 'sort-by-tabs' },
		v = { ':vs ', 'vert-split-file', silent = false },
		V = { ':vs<CR>',  'vert-split' },
		['['] = { '<Cmd>vert res -5<CR>', 'width-5' },
		[']'] = { '<Cmd>vert res +5<CR>', 'width+5' },
		['+'] = { '<Cmd>res +5<CR>', 'height+5' },
		['-'] = { '<Cmd>res -5<CR>', 'height-5' },
	},

	-- NvimTree --
	e = {
		name = '+explorer',
		['<space>'] = { '<Cmd>NvimTreeOpen<CR>', 'open' },
		c = { '<Cmd>NvimTreeClose<CR>', 'close' },
		f = { '<Cmd>NvimTreeFocus<CR>', 'focus' },
		i = { '<Cmd>NvimTreeFindFile<CR>', 'find' },
		p = { '<Cmd>NvimTreeClipboard<CR>', 'clipboard' },
		r = { '<Cmd>NvimTreeRefresh<CR>', 'refresh' },
		s = { '<Cmd>NvimTreeResize<CR>', 'resize' },
		t = { '<Cmd>NvimTreeToggle<CR>', 'toggle' },
	},

	-- FZF --
	f = {
		name = '+find',
		['/'] = { '<Cmd>History/<CR>', 'search-history' },
		[':'] = { '<Cmd>History:<CR>', 'command-history' },
		b = { '<Cmd>Buffers<CR>', 'buffers' },
		c = { '<Cmd>Commits<CR>', 'commits' },
		C = { '<Cmd>BCommits<CR>', 'commits-in-buffer' },
		f = { '<Cmd>Files<CR>', 'files' },
		g = { '<Cmd>GFiles<CR>', 'git-files' },
		h = { '<Cmd>History<CR>', 'file-history' },
		l = { '<Cmd>BLines<CR>', 'lines-in-buffer' },
		L = { '<Cmd>Lines<CR>', 'lines-in-dir' },
		m = { '<Cmd>Marks<CR>', 'marks' },
		r = { '<Cmd>Rg<CR>', 'ripgrep' },
		s = { '<Cmd>GFiles?<CR>', 'git-status' },
		t = { '<Cmd>BTags<CR>', 'tags-in-buffer' },
		T = { '<Cmd>Tags<CR>', 'tags-in-dir' },
		w = { '<Cmd>Windows<CR>', 'windows' }
	},

	-- Git --
	g = {
		name = '+git',
		a = { ':G add ', 'stage', silent = false },
		A = { '<Cmd>G add -A<CR>', 'stage-all' },
		b = { ':G branch ', 'branch', silent = false },
		B = { '<Cmd>G branch master<CR>', 'branch-to-master' },
		c = { ':G commit -m ""', 'commit', silent = false },
		C = { '<Plug>(coc-git-commit)', 'commit-info', silent = false, noremap = false },
		d = { ':G rm ', 'delete', silent = false },
		e = { '<Cmd>GitFiles<CR>', 'explorer' },
		f = { ':G fetch ', 'fetch', silent = false },
		h = { '<Cmd>G reset HEAD~1<CR>', 'reset-last-commit' },
		H = { '<Cmd>Gitsigns toggle_line_hl<CR>', 'line-highlight' },
		i = { '<Cmd>Gitsigns preview_hunk<CR>', 'preview-hunk' },
		j = { '<Cmd>Gitsigns next_hunk<CR>', 'next-hunk'},
		k = { '<Cmd>Gitsigns prev_hunk<CR>', 'prev-hunk'},
		l = { '<Cmd>CocList commits<CR>', 'commit-list' },
		L = { '<Cmd>CocList bcommits<CR>', 'buffer-commit-list' },
		m = { ':G merge ', 'merge', silent = false },
		M = { '<Cmd>G merge origin/master<CR>', 'merge-with-origin/master' },
		p = { '<Cmd>G push<CR>', 'push' },
		P = { '<Cmd>G pull<CR>', 'pull' },
		r = { ':G reset ', 'reset', silent = false },
		R = { '<Cmd>G restore .<CR>', 'restore-unstaged' },
		s = { '<Cmd>GitFiles?<CR>', 'status' },
		S = { '<Cmd>G restore -S .<CR>', 'restore-staged' },
		v = { '<Cmd>G revert HEAD~1<CR>', 'revert-last-commit' },
		w = { '<Cmd>Gitsigns toggle_word_diff<CR>', 'word-diff' },
		['>'] = { ':GMove ', 'move-current-file', silent = false },
		["'"] = { ':GRename ', 'rename-current-file', silent = false },
		['*'] = { '<Cmd>Gitsigns toggle_signs<CR>', 'git-indicators' },
		['#'] = { '<Cmd>Gitsigns toggle_num_hl<CR>', 'num-highlight' },
		['/'] = { '<Cmd>Gitsigns blame_line<CR>', 'line-blame' },
		['+'] = { '<Cmd>Gitsigns stage_hunk<CR>', 'stage-hunk' },
		['-'] = { '<Cmd>Gitsigns unstage_hunk<CR>', 'unstage-hunk' },
		["["] = { '<Cmd>Gitsigns reset_hunk<CR>', 'reset-hunk' },
		["]"] = { '<Cmd>Gitsigns reset_buffer<CR>', 'reset-buffer' },
		-- [";"] = { '<Plug>(GitGutterPreviewHunk)', 'preview-hunk', noremap = false },
		-- ["+"] = { '<Plug>(GitGutterStageHunk)', 'stage-hunk', noremap = false },
		-- ["-"] = { '<Plug>(GitGutterUndoHunk)', 'undo-stage-hunk', noremap = false },
	},

	-- LSP ft. CoC --
	l = {
		name = '+lsp',
		['('] = { '<Plug>(coc-funcobj-i)', 'insert-func', silent = false, noremap = false },
		[')'] = { '<Plug>(coc-funcobj-a)', 'append-func', silent = false, noremap = false },
		['['] = { '<Plug>(coc-classobj-i)', 'insert-class', silent = false, noremap = false },
		[']'] = { '<Plug>(coc-classobj-a)', 'append-class', silent = false, noremap = false },
		a = { '<Plug>(coc-codeaction)', 'codeaction', noremap = false, silent = false },
		A = { '<Plug>(coc-codeaction-selected)', 'codeaction-selected', noremap = false, silent = false },
		c = { '<Cmd>CocList commands<CR>', 'commands', noremap = false, silent = false },
		d = { '<Plug>(coc-definition)', 'definition', noremap = false, silent = false },
		e = { '<Cmd>CocList diagnostics<CR>', 'diagnostics', noremap = false, silent = false },
		E = { '<Cmd>CocList extensions<CR>', 'extensions', noremap = false, silent = false },
		f = { '<Plug>(coc-format)', 'format', noremap = false, silent = false },
		F = { '<Plug>(coc-format-selected)', 'format-selected', noremap = false, silent = false },
		i = { '<Plug>(coc-implementation)', 'implementation', noremap = false, silent = false },
		j = { '<Plug>(coc-diagnostic-next)', 'next-error', noremap = false, silent = false },
		k = { '<Plug>(coc-diagnostic-prev)', 'prev-error', noremap = false, silent = false },
		m = { '<Cmd>CocList marketplace<CR>', 'marketplace', noremap = false, silent = false },
		o = { '<Cmd>CocList outline<CR>', 'outline', noremap = false, silent = false },
		p = { '<Cmd>CocCommand prettier.formatFile<CR>', 'prettier', noremap = false, silent = false },
		r = { '<Plug>(coc-rename)', 'rename', noremap = false, silent = false },
		R = { '<Plug>(coc-references)', 'references', noremap = false, silent = false },
		s = { '<Cmd>CocList -I symbols<CR>', 'symbols', noremap = false, silent = false },
		S = { '<Plug>(coc-convert-snippet)', 'convert-to-snippet', mode = 'v', noremap = false, silent = false },
		t = { '<Plug>(coc-type-definition)', 'typedef', noremap = false, silent = false },
		q = { '<Plug>(coc-fix-current)', 'quickfix', noremap = false, silent = false },
	},

	-- Toggles --
	t = {
		name = '+toggle',
		e = { '<Cmd>NvimTreeToggle<CR>', 'explorer' },
		g = { '<Cmd>Gitsigns toggle_signs<CR>', 'git-indicator' },
		i = { '<Cmd>IndentBlanklineToggle<CR>', 'indent-guide' },
	},

	-- Windows --
	w = {
		name = '+windows',
		h = { '<C-w>h', 'left-window' },
		H = { '<C-w>H', 'move-left' },
		i = { '<Cmd>Windows<CR>', 'list-windows' },
		j = { '<C-w>j', 'bottom-window' },
		J = { '<C-w>J', 'move-down' },
		k = { '<C-w>k', 'top-window' },
		K = { '<C-w>K', 'move-up' },
		l = { '<C-w>l', 'right-window' },
		L = { '<C-w>L', 'move-right' },
		q = { '<C-w>q', 'quit-window' },
		s = { '<C-w>s', 'horizontal-split' },
		v = { '<C-w>v', 'vert-split' },
		w = { '<C-w>w', 'switch-windows' },
		x = { '<C-w>x', 'exchange-windows' },
		['='] = { '<C-w>=', 'make-all-windows-equal-sized' },
	},

	-- Vimtex --
	x = {
		name = '+vimtex',
		c = { '<Cmd>VimtexCompile<CR>', 'compile' },
		C = { '<Cmd>VimtexClean<CR>', 'clean-files' },
		d = { '<Cmd>VimtexClearCache<CR>', 'clear-cache' },
		e = { '<Cmd>VimtexErrors<CR>', 'errors' },
		i = { '<Cmd>VimtexImapsList<CR>', 'mappings' },
		-- j = { '<C-]>', 'jump-to-ref' },
		-- k = { '<C-t>', 'jump-to-label' },
		l = { '<Cmd>VimtexLog<CR>', 'compile-log' },
		p = { '<Cmd>VimtexDocPackage<CR>', 'package-docs' },
		r = { '<Cmd>VimtexReload<CR>', 'reload' },
		s = { '<Cmd>VimtexStatus<CR>', 'compile-status' },
		S = { '<Cmd>VimtexStop<CR>', 'stop-compiling' },
		t = { '<Cmd>VimtexTocToggle<CR>', 'toggle-toc' },
		v = { '<Cmd>VimtexView<CR>', 'view' },
	}
},

	-- BetterWhitespace --
	['<leader>s'] = { '<Cmd>StripWhitespace<CR>', 'strip-whitespace' },
})
