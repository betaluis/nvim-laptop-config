local opts = { noremap = true, silent = true }
local term_opts = { silent = true }
local keymap = vim.keymap.set

-- Save
keymap("n", "<Space>w", ":w<CR>", opts);

-- Leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "

-- netrw
keymap('n', '<leader>ee', '<cmd>Ex<CR>', opts)
keymap('n', '<leader>ec', '<cmd>Rex<CR>', opts)

-- Backspace
keymap("n", "<C-h>", "<Backspace>", opts)

-- Telescope
local tl = require('telescope.builtin')
keymap('n', '<leader>pf', tl.find_files, {})
keymap('n', '<leader>pg', tl.git_files, {})
keymap('n', '<leader>pl', tl.live_grep, {})
keymap('n', '<leader>ps', function()
    tl.grep_string({ search = vim.fn.input("Grep > ") });
end)

-- Undotree
keymap('n', '<leader>u', ':UndotreeToggle<CR>', opts)

-- Insert commands
keymap("i", "<C-h>", "<backspace>")

-- Move commands
keymap("v", "J", ":m '>+1<CR>gv=gv")
keymap("v", "K", ":m '<-2<CR>gv=gv")
keymap("n", "J", "mzJ`z")
keymap("n", "<C-d>", "<C-d>zz")
keymap("n", "<C-u>", "<C-u>zz")
keymap("n", "n", "nzzzv")
keymap("n", "N", "Nzzzv")

-- Greatest keymap
keymap("x", "<leader>p", "\"_dP")

-- Clipboard keymaps
keymap("n", "<leader>y", "\"+y")
keymap("v", "<leader>y", "\"+y")
keymap("n", "<leader>Y", "\"+Y")

keymap("n", "<leader>d", "\"_d")
keymap("v", "<leader>d", "\"_d")

-- openai
-- keymap("i", "<C-A>", "<cmd>AI<CR>", opts)


-- This is going to get me canceled
keymap("i", "<C-c>", "<Esc>")

keymap("n", "Q", "<nop>")
keymap("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
keymap("n", "<leader>f", function()
    vim.lsp.buf.format()
end)


keymap("n", "<C-k>", "<cmd>cnext<CR>zz")
keymap("n", "<C-y>", "<cmd>cprev<CR>zz")
keymap("n", "<leader>k", "<cmd>lnext<CR>zz")
keymap("n", "<leader>y", "<cmd>cprev<CR>zz")

keymap("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
keymap("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- Keymap for comments
keymap("n", "<leader>/", ":CommentToggle<CR>", opts)
keymap("v", "<leader>/", ":CommentToggle<CR>", opts)

-- Keymap for copilot
vim.g.copilot_no_tab_map = true
keymap("n", "<leader>g", '<cmd>Copilot enable<CR>', opts)
keymap("n", "<leader>G", '<cmd>Copilot disable<CR>', opts)
vim.api.nvim_set_keymap("i", "<C-g>", 'copilot#Accept("<CR>")', { silent = true, expr = true })
vim.api.nvim_set_keymap("i", "<C-]>", 'copilot#Next()', { silent = true, expr = true })
vim.api.nvim_set_keymap("i", "<C-[>", 'copilot#Previous()', { silent = true, expr = true })

-- Format selected
vim.api.nvim_set_keymap("v", "<leader>f", '<cmd>lua vim.lsp.buf.format()<CR>', opts)
