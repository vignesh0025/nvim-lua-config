require('packer-config')

local cmd = vim.cmd
local fn = vim.fn
local g = vim.g
local opt = vim.opt

-- Check if its working
vim.api.nvim_set_keymap("c", "w!!", "w  !sudo tee > /dev/null", {noremap=false})

g.mapleader=","
g.maplocalleader="<space>"

cmd("syntax enable")

opt.mouse="a"
opt.cmdheight=2 -- Height of command line
opt.startofline = false -- Do not jump to first character with page commands
opt.relativenumber = true
opt.splitright = true
opt.splitbelow = true
opt.showmode = false   -- Don't show the current mode
opt.hidden = true
-- opt.guioptions = nil   -- Check how

-- Enable snippetSupport
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true
capabilities.textDocument.completion.completionItem.resolveSupport = {
  properties = {
    'documentation',
    'detail',
    'additionalTextEdits',
  }
}

-- npm install -g pyright
require'lspconfig'.pyright.setup{
	capabilities = capabilities,
}
