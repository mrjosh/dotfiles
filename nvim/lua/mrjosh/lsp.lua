local vim = vim
local lspconfig = require 'lspconfig'
local util = require 'lspconfig.util'

local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

--local function on_attach(client, bufnr)
local function on_attach()
  --require'lsp_compl'.attach(client, bufnr, { server_side_fuzzy_completion = true })
end

lspconfig.rust_analyzer.setup {
  cmd = {"/Users/josh/.local/share/nvim/lsp_servers/rust/rust-analyzer"},
  capabilities = capabilities,
}

--lspconfig.yamlls.setup{
  --cmd = {"/Users/josh/.local/share/nvim/lsp_servers/yaml/node_modules/yaml-language-server/bin/yaml-language-server"},
  --on_attach=on_attach,
--}

require'lspconfig'.html.setup {
  capabilities = capabilities,
  on_attach=on_attach,
}

require'lspconfig'.tsserver.setup{}

require'lspconfig'.cssls.setup {
  filetypes = { "css", "scss", "less" },
  capabilities = capabilities,
}

require'lspconfig'.cssmodules_ls.setup{
  filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact" },
  cmd = {"cssmodules-language-server"},
  capabilities = capabilities,
}

lspconfig.gopls.setup{
  on_attach=on_attach,
  filetypes = { "go", "gomod" },
  cmd = {"/Users/josh/.bin/gopls", "serve"},
  capabilities = capabilities,
}

local configs = require'lspconfig.configs'
if not configs.helm_lint_ls then
  configs.helm_lint_ls = {
    default_config = {
      cmd = {"/Users/josh/code/personal/helm-lint-ls/bin/helm_lint_ls", "serve"},
      filetypes = {'helm', 'yaml'},
      root_dir = function(fname)
        return util.root_pattern('Chart.yaml')(fname)
      end,
    },
  }
end

lspconfig.helm_lint_ls.setup {}

lspconfig.golangci_lint_ls.setup{
  on_attach=on_attach,
  filetypes = {"go", "gomod"},
  cmd = {
    "/Users/josh/.local/share/nvim/lsp_servers/golangci_lint_ls/golangci-lint-langserver",
  },
  capabilities = capabilities,
  init_options = {
    command = {
      'golangci-lint',
      'run',
      --'--enable-all',
      --'--disable',
      --'lll',
      '--skip-files', '.*.gen.go',
      '--skip-files', '.*_test.go',
      '--disable-all',
      '-E', 'structcheck',
      '-E', 'deadcode',
      '-E', 'gocyclo',
      '-E', 'ineffassign',
      '-E', 'revive',
      '-E', 'goimports',
      '-E', 'errcheck',
      '-E', 'varcheck',
      '-E', 'goconst',
      '-E', 'megacheck',
      '-E', 'misspell',
      '-E', 'unused',
      '-E', 'typecheck',
      '-E', 'staticcheck',
      '-E', 'govet',
      '--out-format', 'json',
    },
  },
  --root_dir = util.root_pattern('go.work') or util.root_pattern('go.mod', '.golangci.yaml', '.git'),
  root_dir = function(fname)
    return util.root_pattern 'go.work'(fname) or util.root_pattern('go.mod', '.git')(fname)
  end,
}

lspconfig.sumneko_lua.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  cmd = {"/Users/josh/.local/share/nvim/lsp_servers/sumneko_lua/extension/server/bin/lua-language-server"};
  settings = {
    Lua = {
      runtime = {
        -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
        version = 'LuaJIT',
        -- Setup your lua path
        path = vim.split(package.path, ';'),
      },
      diagnostics = {
        -- Get the language server to recognize the `vim` global
        globals = {'vim'},
      },
      workspace = {
        -- Make the server aware of Neovim runtime files
        library = {
          [vim.fn.expand('$VIMRUNTIME/lua')] = true,
          [vim.fn.expand('$VIMRUNTIME/lua/vim/lsp')] = true,
        },
      },
    },
  },
}

vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
  vim.lsp.diagnostic.on_publish_diagnostics, {
    update_in_insert = true,
  }
)

require 'mrjosh.lsp-compe'
