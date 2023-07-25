local status, null_ls = pcall(require, 'null-ls')
if (not status) then return end

local formatter = null_ls.builtins.formatting

null_ls.setup({
    sources = {
        formatter.stylua,
        formatter.prettier.with({
            args = { '--tab-width', '4' },
        }),
        null_ls.builtins.diagnostics.eslint,
        null_ls.builtins.completion.spell,
    },
})
