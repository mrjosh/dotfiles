P = function(v)
  print(vim.inspect(v))
  return v
end


-- Plugins
require 'mrjosh.plugins'

-- Settings for plugins
require 'mrjosh.settings'

require 'mrjosh.neogit'

-- Nvim treesitter
require 'mrjosh.treesitter'

-- Global options
require 'mrjosh.options'

-- Global remaps
require 'mrjosh.keymaps'

-- Vim autocommands
require 'mrjosh.autocmds'

-- nvim snippets
require 'mrjosh.snippets'

-- nvim builtin lsp configurations
require 'mrjosh.lsp'

-- nvim colors configurations
require 'mrjosh.colors'
