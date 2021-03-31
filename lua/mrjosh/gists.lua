local vim = vim
local api = vim.api
local flatten = vim.tbl_flatten
local utils = require "telescope.utils"
local finders = require "telescope.finders"
local pickers = require "telescope.pickers"
local actions = require "telescope.actions"
local conf = require "telescope.config".values
local action_state = require "telescope.actions.state"
local tele_previewers = require "telescope.previewers"

local M = {}
local function gist_previewer(opts)
  return tele_previewers.new_termopen_previewer {
    get_command = opts.get_command or function(entry)
      local tmp_table = vim.split(entry.value, "\t")
      if vim.tbl_isempty(tmp_table) then
        return {"echo", ""}
      end
      local result = {"gh", "gist", "view", tmp_table[1]}
      return flatten(result)
    end
  }
end

local function open_gist(prompt_bufnr)
  local selection = action_state.get_selected_entry()
  actions.close(prompt_bufnr)
  local tmp_table = vim.split(selection.value, "\t")
  if vim.tbl_isempty(tmp_table) then
    return
  end
  local gist_id = tmp_table[1]
  local cmd = {"gh", "gist", "view",  gist_id, "-r"}
  local gist = utils.get_os_command_output(cmd)
  print(gist)
  if gist and vim.api.nvim_buf_get_option(vim.api.nvim_get_current_buf(), "modifiable") then
    api.nvim_put(gist, "b", true, true)
  end
end

M.gists = function (opts)

  opts = opts or {}
  opts.limit = opts.limit or 100

  local cmd = {"gh", "gist", "list", "--limit", opts.limit}
  local output = utils.get_os_command_output(cmd)

  if not output or #output == 0 then
    api.nvim_err_writeln("No gists found")
    return
  end

  pickers.new(
    opts,
    {
      prompt_prefix = "Gists > ",
      finder = finders.new_table {
        results = output,
      },
      sorter = conf.generic_sorter(opts),
      previewer = gist_previewer(opts),
      attach_mappings = function(_, map)
        map("i", "<CR>", open_gist)
        return true
      end
    }
  ):find()

end

return M
