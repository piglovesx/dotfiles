local status, telescope = pcall(require, "telescope")
if (not status) then return end
local actions = require('telescope.actions')
local builtin = require('telescope.builtin')

local fb_actions = require 'telescope'.extensions.file_browser.actions

telescope.setup {
	extensions = {
		file_browser = {
			theme = 'dropdown',
			hijack_netrw = true,
			mappings = {
				["n"] = {
					["N"] = fb_actions.create,
					["h"] = fb_actions.goto_parent_dir
				},
			},
		},
	},
}

telescope.load_extension("file_browser")

vim.keymap.set('n', ';f', function()
	builtin.find_files({
		no_ignore = false,
		hidden = true,
	})
end)

vim.keymap.set('n', ';r', function()
	builtin.live_grep()
end)

vim.keymap.set('n', '\\\\', function()
	builtin.buffers()
end)

vim.keymap.set('n', ';;', function()
	builtin.resume()
end)

vim.keymap.set('n', 'sf', function()
	telescope.extensions.file_browser.file_browser({
		path = "%:p:h",
		previewer = false,
		initial_mode = "normal"
	})
end)
