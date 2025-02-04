-- LSP aware status
local get_errors = function(bufnr) return vim.diagnostic.get(bufnr, { severity = vim.diagnostic.severity.ERROR }) end
local errors = get_errors(0) -- pass the current buffer; pass nil to get errors for all buffers

vim.api.nvim_create_autocmd("DiagnosticChanged", {
    callback = function()
        errors = get_errors(0)
    end
})

require "cord".setup {
    editor = {
        client = "neovim",
        tooltip = "Bset editor without mouse",
    },
    text = {
        editing = function(opts)
            return string.format("Editing %s - %s errors", opts.filename, #errors)
        end
    },
}
