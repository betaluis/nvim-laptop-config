-- Colorizer configurations
local status, colorizer = pcall(require, 'colorizer')
if (not status) then return end

colorizer.setup({
    'css';
    'javascript';
    'javascriptreact';
    'typescript';
    'typescriptreact';
    html = {
        mode = 'foreground';
    }
})
