
local lsp = require('lspconfig')
-- Set up lspconfig.
local capabilities = require('cmp_nvim_lsp').default_capabilities()

--lsp.rust_analyzer.setup {
--    capabilities = capabilities
--}

--lsp.pyright.setup {}
--lsp.clangd.setup {}

require("mason-lspconfig").setup_handlers({
    function(server_name)
        lsp[server_name].setup {
            capabilities = capabilities
        }
    end,
    ["rust_analyzer"] = function()
        lsp.rust_analyzer.setup {
            capabilities = capabilities
        }
    end,
    ["pyright"] = function()
        lsp.pyright.setup {
            capabilities = capabilities
        }
    end,
    ["clangd"] = function()
        lsp.clangd.setup {
            capabilities = capabilities
        }
    end,
    ["cssls"] = function()
        lsp.cssls.setup {
            capabilities = capabilities
        }
    end,
})

vim.api.nvim_set_keymap('n', '<leader>e', '<cmd>lua vim.diagnostic.open_float()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>a', '<cmd>lua vim.lsp.buf.code_action()<CR>', { noremap = true, silent = true })

