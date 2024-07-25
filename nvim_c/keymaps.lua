-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set({ "n", "v" }, "H", "^")
vim.keymap.set({ "n", "v" }, "L", "$")
vim.keymap.set("n", "mn", "mciw*<Cmd>nohl<CR>", { remap = true })

-- 展开所有折叠
vim.api.nvim_set_keymap("n", "zR", "<Cmd>call VSCodeNotify('editor.unfoldAll')<CR>", { noremap = true })
-- 关闭所有折叠
vim.api.nvim_set_keymap("n", "zM", "<Cmd>call VSCodeNotify('editor.foldAll')<CR>", { noremap = true })
-- 展开当下折叠
vim.api.nvim_set_keymap("n", "zo", "<Cmd>call VSCodeNotify('editor.unfold')<CR>", { noremap = true })
-- 关闭当下折叠
vim.api.nvim_set_keymap("n", "zc", "<Cmd>call VSCodeNotify('editor.fold')<CR>", { noremap = true })
-- 切换当下折叠
vim.api.nvim_set_keymap("n", "zz", "<Cmd>call VSCodeNotify('editor.toggleFold')<CR>", { noremap = true })
-- 转到文件中上一个问题
vim.api.nvim_set_keymap(
  "n",
  "<leader>G",
  "<Cmd>call VSCodeNotify('editor.action.marker.prevInFiles')<CR>",
  { noremap = true }
)
-- 转到文件中下一个问题
vim.api.nvim_set_keymap(
  "n",
  "<leader>g",
  "<Cmd>call VSCodeNotify('editor.action.marker.nextInFiles')<CR>",
  { noremap = true }
)

vim.api.nvim_set_keymap(
  "n",
  "<leader>r",
  "<Cmd>call VSCodeNotify('editor.debug.action.toggleBreakpoint')<CR>",
  { noremap = true, silent = true }
)
vim.api.nvim_set_keymap(
  "n",
  "tn",
  "<Cmd>call VSCodeNotify('workbench.action.nextEditor')<CR>",
  { noremap = true, silent = true }
)
vim.api.nvim_set_keymap(
  "n",
  "tp",
  "<Cmd>call VSCodeNotify('workbench.action.previousEditor')<CR>",
  { noremap = true, silent = true }
)
--go to introduction
vim.api.nvim_set_keymap(
  "n",
  "ge",
  "<Cmd>call VSCodeNotify('editor.action.goToReferences')<CR>",
  { noremap = true, silent = true }
)
-- 调试强制运行到这里
vim.api.nvim_set_keymap(
  "n",
  "<leader>d",
  "<Cmd>call VSCodeNotify('editor.debug.action.runToCursor')<CR>",
  { noremap = true, silent = true }
)
-- runToCursor
vim.api.nvim_set_keymap(
  "n",
  "<leader>s",
  "<Cmd>call VSCodeNotify('editor.debug.action.runToCursor')<CR>",
  { noremap = true, silent = true }
)
-- 显示变量信息
vim.api.nvim_set_keymap(
  "n",
  "<leader>a",
  "<Cmd>call VSCodeNotify('editor.debug.action.showDebugHover')<CR>",
  { noremap = true, silent = true }
)
