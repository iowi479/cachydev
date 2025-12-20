return {
	{ -- Collection of various small independent plugins/modules
		"nvim-mini/mini.nvim",
		version = false, -- use main branch
		config = function()
			-- Better Around/Inside textobjects
			--
			-- Examples:
			--  - va)  - [V]isually select [A]round [)]paren
			--  - yin' - [Y]ank [I]nside [N]ext [']quote
			--  - ci'  - [C]hange [I]nside [']quote
			require("mini.ai").setup({
				n_lines = 500, -- increase how many lines to scan for textobject from default 50
			})

			-- Automatic commenting
			--
			-- "gc" to comment visual selection
			-- "gcc" to comment current line
			require("mini.comment").setup()

			-- Add/delete/replace surroundings (brackets, quotes, etc.)
			--
			-- - saiw) - [S]urround [A]dd [I]nner [W]ord [)]Paren
			-- - sd'   - [S]urround [D]elete [']quotes
			-- - sr)'  - [S]urround [R]eplace [)] [']
			require("mini.surround").setup()

			require("mini.jump").setup()

			local statusline = require("mini.statusline")
			statusline.setup({
				content = {
					active = nil,
					inactive = nil,
				},
				use_icons = false,
			})

			-- You can configure sections in the statusline by overriding their
			-- default behavior. For example, here we disable the section for
			-- cursor information because line numbers are already enabled
			---@diagnostic disable-next-line: duplicate-set-field
			statusline.section_location = function()
				return ""
			end
		end,
	},

	-- Highlight todo, notes, etc in comments
	{
		"folke/todo-comments.nvim",
		-- event = "VimEnter", -- TODO: I don't think this is still needed
		dependencies = { "nvim-lua/plenary.nvim" },
		opts = { signs = false },
	},

	{
		"github/copilot.vim",
		config = function()
			-- remap <C-V> to accept the next line
			vim.keymap.set("i", "<C-V>", "<Plug>(copilot-accept-line)")
			vim.g.copilot_no_tab_map = true
		end,
	},
}
