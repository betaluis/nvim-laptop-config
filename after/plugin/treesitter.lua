local status, ts = pcall(require, 'nvim-treesitter.configs')
if (not status) then return end

ts.setup {
    highlight = {
        enable = true,
        disable = {},
    },
    indent = {
        enable = true,
        disable = {},
    },
    ensure_installed = {
        'tsx',
        "typescript",
        'lua',
        'json',
        'css',
        'html',
        'astro',
        'javascript',
        'rust',
        'svelte',
    },
    autotag = {
        enable = true,
    }
}
