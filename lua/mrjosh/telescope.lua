local telescoic_johnson = require('telescope')
local builtin = require('telescope.builtin')
local themes = require('telescope.themes')
local actions = require('telescope.actions')

telescoic_johnson.setup {
  defaults = {
    mappings = {
      i = {
        ['<C-k>'] = actions.move_selection_previous,
        ['<C-j>'] = actions.move_selection_next,
      },
    },
  },
}

local M = {}
M.search_files = function()
  builtin.find_files(
    themes.get_dropdown({
      shorten_path = false,
      border = true,
      previewer = false
    }
  ))
end

M.search_dotfiles = function()
  builtin.find_files(
    themes.get_dropdown({
      shorten_path = false,
      border = true,
      previewer = false,
      prompt_title = "< Dotfiles >",
      cwd = "$HOME/.config/nvim",
    })
  )
end
return M

