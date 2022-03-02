local map = vim.api.nvim_set_keymap
local opt = { noremap = true, silent = true }

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- default space forbid and set leader
map("", "<Space>", "<Nop>", opt)

vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Normal Mode
map("n", "J", "5j", opt)
map("n", "K", "5k", opt)
map("n", "H", "5h", opt)
map("n", "L", "5l", opt)

map("n", "Q", ":q<CR>", opt)
map("n", "S", ":w<CR>", opt)

-- Inster a empty row in normal mode
map("n", "W", "o<ESC>", opt)

  -- Navigation
  map("n", "<C-h>", "<C-w>h", opt)
  map("n", "<C-j>", "<C-w>j", opt)
  map("n", "<C-k>", "<C-w>k", opt)
  map("n", "<C-l>", "<C-w>l", opt)

  -- Nvim-tree keys
  map("n", "<C-b>", ":NvimTreeToggle<CR>", opt)

  -- bufferline 左右Tab切换
  map("n", "<Leader>h", ":BufferLineCyclePrev<CR>", opt)
  map("n", "<Leader>l", ":BufferLineCycleNext<CR>", opt)

  -- TeleScope
  map("n", "F", "<cmd>lua require('telescope.builtin').find_files(require('telescope.themes').get_dropdown{previewer = false})<cr>", opt)

-- Insert Mode
  map("i", "jk", "<ESC>", opt)

-- Visual Mode
  -- Move text up and down
  map("v", "J", ":move '>+1<CR>gv-gv", opt)
  map("v", "K", ":move '<-2<CR>gv-gv", opt)
  map("v", "p", '"_dP', opt)
  -- Move rows left or right
  map("v", "<", "<gv", opt)
  map("v", ">", ">gv", opt)
