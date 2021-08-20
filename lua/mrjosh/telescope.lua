local M = {}
local tele = require 'telescope'
local builtin = require 'telescope.builtin'
local themes = require 'telescope.themes'
local actions = require 'telescope.actions'

tele.setup {
  defaults = {
    file_ignore_patterns = {
      "vendor",
      "node_modules",
    },
    mappings = {
      i = {
        ['<C-k>'] = actions.move_selection_previous,
        ['<C-j>'] = actions.move_selection_next,
      },
    },
  },
}

M.live_grep = function ()
 builtin.live_grep(
   themes.get_dropdown({
     shorten_path = false,
     border = true,
     prompt_title = "< LiveGrep >",
   })
 )
end

M.search_files = function()
  builtin.find_files(
    themes.get_dropdown({
      shorten_path = false,
      border = true,
      previewer = false,
      prompt_title = "< FindFiles >",
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
