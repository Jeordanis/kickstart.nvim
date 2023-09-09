return {
    {
        -- Make virtual diagnostic only visible on current line unless ERROR
        'MrGrinst/lsp-virtual-improved.nvim',
        event = {'LspAttach'},
        config = function()
            require('lsp-virtual-improved').setup()

            local diagnostics = {
                virtual_text = false,
                virtual_improved = {
                    current_line = 'only',
                    always_show_severity = vim.diagnostic.severity.ERROR
                }
            }
            vim.diagnostic.config(diagnostics)
        end
    }
}
