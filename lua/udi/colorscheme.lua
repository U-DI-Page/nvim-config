
vim.cmd [[
  try
    colorscheme darkblue
  catch /^Vim\%((\a\+)\)\=:E185/
    colorscheme default
    set background=dark
  endtry
]]
