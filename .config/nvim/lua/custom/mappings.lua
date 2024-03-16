local M = {}

M.general = {
  n = {
    ["<C-h>"] = { "<cmd> TmuxNavigateLeft<CR>", "window left" },
    ["<C-l>"] = { "<cmd> TmuxNavigateRight<CR>", "window right" },
    ["<C-j>"] = { "<cmd> TmuxNavigateRight<CR>", "window down" },
    ["<C-k>"] = { "<cmd> TmuxNavigateRight<CR>", "window up" },
  },
}
return M
