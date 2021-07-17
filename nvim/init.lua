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

