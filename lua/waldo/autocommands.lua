local augroup = vim.api.nvim_create_augroup;
local nvim_ghost_user_autocommands = augroup("nvim_ghost_user_autocommands", {});

local autocmd = vim.api.nvim_create_autocmd;

-- Fixes auto comments
autocmd({ 'BufWinEnter' }, {
    callback = function()
        vim.cmd 'set formatoptions-=cro'
    end,
})

-- Use 'q' to quit from common plugins
autocmd({ 'Filetype' }, {
    pattern = { 'qf', 'help', 'man', 'lspinfo', 'spectre_panel', 'lir' },
    callback = function()
        vim.cmd [[
            noremap <silent> <buffer> q :close<CR>
            set nobuflisted
        ]]
    end,
})

-- Navigate through netrw
autocmd({ "Filetype" }, {
    pattern = { "netrw" },
    callback = function()
        vim.cmd [[
            nmap <buffer> H u
            nmap <buffer> h -^
            nmap <buffer> l <CR>
            nmap <buffer> . gh
            nmap <buffer> P <C-w>z
        ]]
    end
})

