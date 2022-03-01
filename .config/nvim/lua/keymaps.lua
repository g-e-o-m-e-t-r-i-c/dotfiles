local g = vim.g
local o = vim.o
local map = vim.api.nvim_set_keymap
local w = require('which-key')

-- leader key
g.mapleader = ' '

-- terminal mode escape
map('t', '<esc>', [[<c-\><c-n>]], { noremap = true })

-- windows
local opts = { silent = true, noremap = true }
map('n', '<C-h>', '<C-w>h', opts)
map('n', '<C-j>', '<C-w>j', opts)
map('n', '<C-k>', '<C-w>k', opts)
map('n', '<C-l>', '<C-w>l', opts)
map('n', '<C-s>', '<C-w>x', opts)
map('n', '<C-q>', '<C-w>q', opts)
map('n', '<C-w>', '<C-w>w', opts) -- put this last to avoid conflicts

w.register({
	['<leader>'] = {
		-- buffers
		b = {
			name = '+buffers',
			['1'] = { ':BufferGoto 1<cr>', 'buffer-1' },
			['2'] = { ':BufferGoto 2<cr>', 'buffer-2' },
			['3'] = { ':BufferGoto 3<cr>', 'buffer-3' },
			['4'] = { ':BufferGoto 4<cr>', 'buffer-4' },
			['5'] = { ':BufferGoto 5<cr>', 'buffer-5' },
			['6'] = { ':BufferGoto 6<cr>', 'buffer-6' },
			['7'] = { ':BufferGoto 7<cr>', 'buffer-7' },
			['8'] = { ':BufferGoto 8<cr>', 'buffer-8' },
			['9'] = { ':BufferLast<cr>', 'last-buffer' },
			a = { ':BufferOrderByLanguage<cr>', 'sort-by-lang' },
			b = { ':BufferOrderByBufferNumber<cr>', 'sort-by-bufnum' },
			c = { ':BufferClose<cr>', 'close' },
			d = { ':BufferOrderByDirectory<cr>', 'sort-by-dir' },
			g = { ':Telescope live_grep<cr>', 'grep' },
			h = { ':BufferMovePrevious<cr>', 'move-left' },
			H = { ':BufferCloseBuffersLeft<cr>', 'close-to-left' },
			i = { ':BufferPin<cr>', 'pin' },
			j = { ':BufferNext<cr>', 'next-buffer' },
			k = { ':BufferPrevious<cr>', 'prev-buffer' },
			l = { ':BufferMoveNext<cr>', 'move-right' },
			L = { ':BufferCloseBuffersRight<cr>', 'close-to-right' },
			o = { ':BufferOrderByWindowNumber<cr>', 'sort-by-winnum' },
			p = { ':BufferPick<cr>', 'pick' },
			q = { ':BufferCloseAllButPinned<cr>', 'close-all-but-pinned' },
			s = { ':sp<cr>', 'horizontal-split' },
			v = { ':vs<cr>', 'vert-split' },
			w = { ':BufferWipeout<cr>', 'wipeout' },
			x = { ':BufferCloseAllButCurrent<cr>', 'close-all-but-current' },
			['['] = { ':vert res -5<cr>', 'width-5' },
			[']'] = { ':vert res +5<cr>', 'width+5' },
			['+'] = { ':res +5<cr>', 'height+5' },
			['-'] = { ':res -5<cr>', 'height-5' },
			['.'] = { ':SessionSave<cr>', 'save-session' },
			[','] = { ':SessionLoad<cr>', 'load-session' },
			[';'] = { ':new<cr>', 'new-buffer' },
		},

		-- telescope
		f = {
			name = '+find',
			['?'] = { ':Telescope man_pages<cr>', 'manpages' },
			['.'] = { ':Telescope colorscheme<cr>', 'colorschemes' },
			['/'] = { ':Telescope search_history<cr>', 'search-history' },
			[':'] = { ':Telescope command_history<cr>', 'command-history' },
			['"'] = { ':Telescope registers<cr>', 'registers' },
			[';'] = { ':Telescope autocommands<cr>', 'autocmds' },
			['-'] = { ':Telescope spell_suggest<cr>', 'spelling-suggestions' },
			['='] = { ':Telescope current_buffer_tags<cr>', 'buf-tags' },
			b = { ':Telescope buffers<cr>', 'buffers' },
			B = { ':Telescope git_branches<cr>', 'branches' },
			c = { ':Telescope git_commits<cr>', 'commits' },
			C = { ':Telescope git_bcommits<cr>', 'commits-in-buffer' },
			d = { ':Telescope commands<cr>', 'commands' },
			f = { ':Telescope find_files<cr>', 'find-files' },
			F = { ':Telescope filetypes<cr>', 'filetypes' },
			g = { ':Telescope git_files<cr>', 'git-files' },
			h = { ':Telescope oldfiles<cr>', 'file-history' },
			i = { ':Telescope highlights<cr>', 'highlights' },
			j = { ':Telescope jumplist<cr>', 'jump-list' },
			k = { ':Telescope keymaps<cr>', 'keymappings' },
			l = {
				name = '+lsp',
				a = { ':Telescope lsp_code_actions<cr>', 'code-actions' },
				A = { ':Telescope lsp_range_code_actions<cr>', 'code-actions-range' },
				d = { ':Telescope lsp_definitions<cr>', 'definitions' },
				e = { ':Telescope diagnostics<cr>', 'diagnostics' },
				i = { ':Telescope lsp_implementation<cr>', 'implementations' },
				r = { ':Telescope lsp_references<cr>', 'references' },
				s = { ':Telescope lsp_document_symbols<cr>', 'doc-symbols' },
				S = { ':Telescope lsp_workspace_symbols<cr>', 'workspace-symbols' },
				t = { ':Telescope lsp_type_definitions<cr>', 'typedefs' },
				['?'] = { ':Telescope lsp_dynamic_workspace_symbols', 'dynamic-workspace-symbols' },
			},
			L = { ':Telescope loclist<cr>', 'loclist' },
			m = { ':Telescope marks<cr>', 'marks' },
			o = { ':Telescope vim_options<cr>', 'options' },
			O = { ':TodoTelescope<cr>', 'todo-comments' },
			q = { ':Telescope quickfix<cr>', 'quickfixes' },
			r = { ':Telescope live_grep<cr>', 'ripgrep' },
			R = { ':Telescope grep_string<cr>', 'grep-strings' },
			s = { ':Telescope git_status<cr>', 'git-status' },
			S = { ':Telescope git_stash<cr>', 'git-stash' },
			t = { ':Telescope tags<cr>', 'tags' },
			T = { ':Telescope help_tags<cr>', 'helptags' },
			w = { ':Windows<cr>', 'windows' },
			z = { ':Telescope current_buffer_fuzzy_find<cr>', 'fuzzy-find' },
		},

		-- Git
		g = {
			name = '+git',
			a = { ':G add ', 'stage', silent = false },
			A = { ':G add -A<cr>', 'stage-all' },
			b = { ':G branch ', 'branch', silent = false },
			B = { ':G branch master<cr>', 'branch-to-master' },
			c = { ':G commit -m ""', 'commit', silent = false },
			C = { ':Telescope commits<cr>', 'commits' },
			d = { ':G rm ', 'delete', silent = false },
			e = { ':Telescope git_files<cr>', 'explorer' },
			f = { ':G fetch ', 'fetch', silent = false },
			h = { ':G reset HEAD~1<cr>', 'reset-last-commit' },
			H = { ':Gitsigns toggle_line_hl<cr>', 'line-highlight' },
			i = { ':Gitsigns preview_hunk<cr>', 'preview-hunk' },
			j = { ':Gitsigns next_hunk<cr>', 'next-hunk' },
			k = { ':Gitsigns prev_hunk<cr>', 'prev-hunk' },
			m = { ':G merge ', 'merge', silent = false },
			M = { ':G merge origin/master<cr>', 'merge-with-origin/master' },
			p = { ':G push<cr>', 'push' },
			P = { ':G pull<cr>', 'pull' },
			r = { ':G reset ', 'reset', silent = false },
			R = { ':G restore .<cr>', 'restore-unstaged' },
			s = { ':Telescope git_status<cr>', 'status' },
			S = { ':G restore -S .<cr>', 'restore-staged' },
			v = { ':G revert HEAD~1<cr>', 'revert-last-commit' },
			w = { ':Gitsigns toggle_word_diff<cr>', 'word-diff' },
			['>'] = { ':GMove ', 'move-current-file', silent = false },
			["'"] = { ':GRename ', 'rename-current-file', silent = false },
			['*'] = { ':Gitsigns toggle_signs<cr>', 'git-indicators' },
			['#'] = { ':Gitsigns toggle_num_hl<cr>', 'num-highlight' },
			['/'] = { ':Gitsigns blame_line<cr>', 'line-blame' },
			['+'] = { ':Gitsigns stage_hunk<cr>', 'stage-hunk' },
			['-'] = { ':Gitsigns unstage_hunk<cr>', 'unstage-hunk' },
			['['] = { ':Gitsigns reset_hunk<cr>', 'reset-hunk' },
			[']'] = { ':Gitsigns reset_buffer<cr>', 'reset-buffer' },
			['='] = { ':Telescope git_stash', 'stash' },
			['<space>'] = {
				':lua require("toggleterm.terminal").Terminal:new({cmd = "lazygit", hidden=true}):toggle()<cr>',
				'lazygit',
			},
		},

		-- lsp
		l = {
			name = '+lsp',
			a = { ':lua vim.lsp.buf.code_action()<cr>', 'codeaction' },
			d = { ':lua vim.lsp.buf.definition()<cr>', 'definition' },
			D = { ':lua vim.lsp.buf.declaration()<cr>', 'declaration' },
			e = { ':Trouble document_diagnostics<cr>', 'diagnostics' },
			f = { ':lua vim.lsp.buf.formatting()<cr>', 'format' },
			h = { ':lua vim.lsp.buf.hover()<cr>', 'hover-doc' },
			i = { ':lua vim.lsp.buf.implementation()<cr>', 'implementation' },
			j = { ':lua vim.lsp.diagnostic.goto_next({ wrap = false })<cr>', 'next-diagnostic' },
			k = { ':lua vim.lsp.diagnostic.goto_prev({ wrap = false })<cr>', 'prev-diagnostic' },
			r = { ':lua vim.lsp.buf.rename()<cr>', 'rename' },
			R = { ':Trouble lsp_references<cr>', 'references' },
			S = { ':lua vim.lsp.buf.document_symbol()<cr>', 'document-symbols' },
			t = { ':lua vim.lsp.buf.type_definition()<cr>', 'type-definition' },
		},

		-- trouble
		t = {
			name = '+trouble',
			['<space>'] = { ':TroubleToggle<cr>', 'trouble' },
			d = { ':TroubleToggle workspace_diagnostics<cr>', 'workspace-diagnostics' },
			e = { ':TroubleToggle document_diagnostics<cr>', 'doc-diagnostics' },
			o = { ':TodoTrouble<cr>', 'todo-comments' },
			l = { ':TroubleToggle loclist<cr>', 'loclist' },
			r = { ':TroubleToggle lsp_references<cr>', 'references' },
			q = { ':TroubleToggle quickfix<cr>', 'quickfix' },
		},

		-- windows
		w = {
			name = '+windows',
			h = { '<C-w>h', 'left-window' },
			H = { '<C-w>H', 'move-left' },
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
		},

		-- vimtex
		x = {
			name = '+latex',
			c = { ':VimtexCompile<cr>', 'compile' },
			C = { ':VimtexClean<cr>', 'clean-files' },
			d = { ':VimtexClearCache<cr>', 'clear-cache' },
			e = { ':VimtexErrors<cr>', 'errors' },
			i = { ':VimtexImapsList<cr>', 'mappings' },
			l = { ':VimtexLog<cr>', 'compile-log' },
			p = { ':VimtexDocPackage<cr>', 'package-docs' },
			r = { ':VimtexReload<cr>', 'reload' },
			s = { ':VimtexStatus<cr>', 'compile-status' },
			S = { ':VimtexStop<cr>', 'stop-compiling' },
			t = { ':VimtexTocToggle<cr>', 'toggle-toc' },
			v = { ':VimtexView<cr>', 'view' },
		},
	},

	-- new file
	['<leader>,'] = { ':new<cr>', 'new-file' },

	-- finder
	['<leader>.'] = { ':Telescope find_files<cr>', 'find-file' },

	-- dashboard
	['<leader>;'] = { ':Dashboard<cr>', 'dashboard' },

	-- hover
	['<leader>?'] = { ':lua vim.lsp.buf.hover()<cr>', 'lsp-hover' },

	-- autosave
	-- ['<leader>a'] = { ':ASToggle<cr>', 'toggle-autosave' },

	-- terminal toggle all
	['<leader>c'] = { ':ToggleTermToggleAll<cr>', 'toggle-all-term' },

	-- explorer focus
	['<leader>e'] = { ':NvimTreeFocus<cr>', 'explorer' },

	-- trouble
	['<leader>i'] = { ':TroubleToggle<cr>', 'info' },

	-- term
	['<leader>m'] = { ':ToggleTerm<cr>', 'terminal' },

	-- float
	['<leader>M'] = { ':ToggleTerm size=80 direction=float<cr>', 'terminal-float' },

	-- strip whitespace
	['<leader>s'] = { ':StripWhitespace<cr>', 'strip-whitespace' },

	-- terminal (vertical)
	['<leader>v'] = { ':ToggleTerm size=60 direction=vertical<cr>', 'terminal-vert' },

	-- zen
	['<leader>z'] = { ':ZenMode<cr>', 'zenmode' },
})
