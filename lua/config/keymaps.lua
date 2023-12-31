-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

--Discipline to be fixedlocalocalocalocal
-- local discipline = require("thilak.discipline")
-- discipline.cowboy()

local keymap = vim.keymap
local opts = { noremap = true, silent = true }

keymap.set("n", "+", "<C-a>")
keymap.set("n", "-", "<C-x>")

--Delete a word backwords
keymap.set("n", "dw", "vb_d")

--select all
keymap.set("n", "<C-a>", "gg<S-v>G")

--Jumplist
keymap.set("n", "<C-m>", "<C-i>", opts)

--New tab
keymap.set("n", "te", "tabedit", opts)
keymap.set("n", "<tab>", "tabnext<Return>", opts)
keymap.set("n", "<s-tab>", "tabprev<Return>", opts)

--Esc
keymap.set("i", "jk", "<ESC>", opts)

--Split window
keymap.set("n", "ss", ":split<Return>", opts)
keymap.set("n", "sv", ":vsplit<Return>", opts)

--Move window
keymap.set("n", "sh", "<C-w>h")
keymap.set("n", "sk", "<C-w>k")
keymap.set("n", "sj", "<C-w>j")
keymap.set("n", "sl", "<C-w>l")

--Resize window
keymap.set("n", "<C-S-left>", "<C-w><")
keymap.set("n", "<C-S-right>", "<C-w>>")
keymap.set("n", "<C-S-up>", "<C-w>+")
keymap.set("n", "<C-S-down>", "<C-w>-")

--Diagnotics
keymap.set("n", "<C-j>", function()
  vim.diagnostic.goto_next()
end, opts)

function Toggle_terminal()
  -- Split the current window horizontally
  vim.cmd("split")

  -- Open the terminal in the new split
  vim.cmd("terminal")

  -- Set the height of the terminal window (adjust the value as needed)
  vim.cmd("resize 14")
end

-- Map a key to toggle the terminal
vim.api.nvim_set_keymap("n", "<Leader>t", "<cmd>lua Toggle_terminal()<CR>", { noremap = true, silent = true })
