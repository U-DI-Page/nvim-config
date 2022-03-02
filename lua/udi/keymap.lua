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

-- Insert Mode
   map("i", "jk", "<ESC>", opt)

-- Visual Mode
   -- Move text up and down
   map("v", "<A-j>", ":m .+1<CR>==", opt)
   map("v", "<A-k>", ":m .-2<CR>==", opt)
   map("v", "p", '"_dP', opt)
