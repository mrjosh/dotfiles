local M = {}
local tele = require 'telescope'
local builtin = require 'telescope.builtin'
local themes = require 'telescope.themes'
local actions = require 'telescope.actions'

tele.setup {
  pickers = {
    find_files = {
      hidden = true,
    },
    live_grep = {
      hidden = true,
    },
  },
  defaults = {
    file_ignore_patterns = {
      "vendor",
      "node_modules",
      ".git",
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
    {
      shorten_path = false,
      border = true,
      prompt_title = "< LiveGrep >",
      file_ignore_patterns = {
        "vendor",
        "node_modules",
        "go.sum",
      },
    }
  )
end

M.buffers = function()
  builtin.buffers(
    themes.get_dropdown({
      shorten_path = false,
      border = true,
      prompt_title = "< Buffers >",
    }
  ))
end

M.search_files = function()
  builtin.find_files(
    themes.get_dropdown({
      shorten_path = false,
      border = true,
      prompt_title = "< FindFiles >",
    })
  )
end

M.search_dotfiles = function()
  builtin.find_files(
    themes.get_dropdown({
      shorten_path = false,
      border = true,
      previewer = false,
      prompt_title = "< Dotfiles >",
      cwd = "$HOME/.config/nvim",
      file_ignore_patterns = {
        "vendor",
        "node_modules",
        ".git",
        "plugged",
      },
    })
  )
end

return M
