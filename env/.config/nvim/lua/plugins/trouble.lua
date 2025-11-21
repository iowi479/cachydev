return {
    "folke/trouble.nvim",
    opts = {}, -- for default options, refer to the configuration section for custom setup.
    cmd = "Trouble",
    keys = {
        {
            "<leader>tt",
            "<cmd>Trouble diagnostics toggle<cr>",
            desc = "Diagnostics (Trouble)",
        },
        {
            "<leader>tT",
            "<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
            desc = "Buffer Diagnostics (Trouble)",
        },
        {
            "<leader>cs",
            "<cmd>Trouble symbols toggle focus=false<cr>",
            desc = "Symbols (Trouble)",
        },
        {
            "<leader>cl",
            "<cmd>Trouble lsp toggle focus=false win.position=right<cr>",
            desc = "LSP Definitions / references / ... (Trouble)",
        },
        {
            "<leader>tL",
            "<cmd>Trouble loclist toggle<cr>",
            desc = "Location List (Trouble)",
        },
        {
            "<leader>tQ",
            "<cmd>Trouble qflist toggle<cr>",
            desc = "Quickfix List (Trouble)",
        },
    },
}
-- 	-- dependencies = { "nvim-tree/nvim-web-devicons" },
-- 	config = function()
-- 		require("trouble").setup({
-- 			icons = false,
-- 			fold_open = "v",
-- 			fold_closed = ">",
-- 			indent_lines = false,
-- 			signs = {
-- 				error = "E",
-- 				warning = "W",
-- 				hint = "H",
-- 				information = "I",
-- 			},
-- 			use_diagnostic_signs = false, -- enabling this will use the signs defined in your lsp client
-- 		})
--
-- 		local trouble = require("trouble")
--
-- 		vim.keymap.set("n", "<leader>to", function()
-- 			trouble.open()
-- 		end)
-- 		vim.keymap.set("n", "<leader>tc", function()
-- 			trouble.close()
-- 		end)
-- 		vim.keymap.set("n", "<leader>tt", function()
-- 			trouble.toggle()
-- 		end)
-- 		vim.keymap.set("n", "<leader>tw", function()
-- 			trouble.toggle("workspace_diagnostics")
-- 		end)
-- 		vim.keymap.set("n", "<leader>td", function()
-- 			trouble.toggle("document_diagnostics")
-- 		end)
-- 		vim.keymap.set("n", "<leader>tp", function()
-- 			trouble.previous({ skip_groups = true, jump = true })
-- 		end)
-- 		vim.keymap.set("n", "<leader>tn", function()
-- 			trouble.next({ skip_groups = true, jump = true })
-- 		end)
-- 		vim.keymap.set("n", "<leader>tq", function()
-- 			trouble.toggle("quickfix")
-- 		end)
-- 		vim.keymap.set("n", "<leader>tl", function()
-- 			trouble.toggle("loclist")
-- 		end)
-- 		vim.keymap.set("n", "gR", function()
-- 			trouble.toggle("lsp_references")
-- 		end)
-- 	end,
-- }
