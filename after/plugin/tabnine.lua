local status, tabnine = pcall(require, 'tabnine')
if (not status) then return end

tabnine.setup({
  disable_auto_comment=true,
  accept_keymap="<leader>tn",
  dismiss_keymap = "<leader>dtn",
  debounce_ms = 800,
  suggestion_color = {gui = "#808080", cterm = 244},
  exclude_filetypes = {"TelescopePrompt"},
  log_file_path = nil, -- absolute path to Tabnine log file
})

